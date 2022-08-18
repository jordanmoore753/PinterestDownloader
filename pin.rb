require "bundler/inline"
require "securerandom"

gemfile do
  source "https://rubygems.org"
  gem "colorize"
  gem "typhoeus"
end

class Pinterest
  def self.run
    clear_screen
    remove_images
    download_images
  end

  # THIS IS THE METHOD YOU PASTE INTO
  def self.pins
    [
      # Paste the copied array onto this line and then put a comma. Rinse and repeat.
    ]
  end

  def self.start_msg(msg, step_number)
    step = "[STEP #{step_number}]".yellow
    puts "#{step}: #{msg}..."
  end

  def self.end_msg
    puts "DONE".green
    puts ""
  end

  def self.remove_images
    start_msg("Removing ./images directory...", 1)

    FileUtils.rm_r("images") if Dir.exist?("images")
    Dir.mkdir("images")

    end_msg
  end

  def self.format_urls
    start_msg("Preparing list of URLs", 2)

    urls = pins.flatten.uniq

    end_msg

    urls
  end

  def self.download_images
    urls = format_urls
    hydra = Typhoeus::Hydra.hydra

    start_msg("Downloading images", 3)

    urls.each do |url|
      request = Typhoeus::Request.new(url)
      request.on_complete { |response| File.open("images/#{SecureRandom.uuid}.jpg", "wb") { |file| file.write(response.body) } }
      hydra.queue(request)
    end

    hydra.run

    end_msg
  end

  def self.clear_screen
    system("clear") || system("cls")
  end
end

Pinterest.run
