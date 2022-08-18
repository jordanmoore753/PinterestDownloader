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

  def self.new_pins
    [
      # Paste the copied array onto this line and then put a comma. Rinse and repeat.
    ]
  end

  def self.sample_pins
    [
      "https://i.pinimg.com/originals/65/47/7e/65477ee402d87177ca2135573f3dbaa9.jpg", "https://i.pinimg.com/originals/3f/9c/5d/3f9c5dba1648771cb5cbb6edafab6d6d.jpg", "https://i.pinimg.com/originals/bc/f3/86/bcf3868a1e8a2fcd1bc1530d0ec7c751.jpg", "https://i.pinimg.com/originals/59/3b/d6/593bd64b3b212b964a56b8b97d3fe5d4.jpg", "https://i.pinimg.com/originals/f7/a1/c8/f7a1c863838e77c028a4c5fa042bfe6f.jpg", "https://i.pinimg.com/originals/02/31/ad/0231ad2dcf38dc0a0356eb7c9c8f36d1.jpg", "https://i.pinimg.com/originals/3f/5b/57/3f5b572f798a131f42b9e1c7cfe7b55d.jpg", "https://i.pinimg.com/originals/a4/ad/ba/a4adbae79f19cd6bfd1b5594ec924326.jpg", "https://i.pinimg.com/originals/6a/1b/8e/6a1b8e91b4f93b1327b21cf3183c4895.jpg", "https://i.pinimg.com/originals/68/0c/c5/680cc559289c2cfcfd524efe2df9511e.png", "https://i.pinimg.com/originals/7e/99/a0/7e99a0592099d4461e6b4f390ed92f58.jpg", "https://i.pinimg.com/originals/cb/9a/a3/cb9aa3d9d29937b9c64bef00823a8e1c.jpg", "https://i.pinimg.com/originals/00/67/89/0067892e88e80c0297a31c391976dfcd.jpg", "https://i.pinimg.com/originals/62/29/82/62298247535ea1f0b055b9d238da2c5b.png", "https://i.pinimg.com/originals/5f/b6/30/5fb630c80bd14ae981caadc1fae2f0fa.jpg", "https://i.pinimg.com/originals/b9/c3/74/b9c374e42ad406681a02b30a3baa8e45.jpg", "https://i.pinimg.com/originals/20/12/c7/2012c76ebda8c510bd9073cfa3e97dde.jpg",
      "https://i.pinimg.com/originals/65/47/7e/65477ee402d87177ca2135573f3dbaa9.jpg", "https://i.pinimg.com/originals/3f/9c/5d/3f9c5dba1648771cb5cbb6edafab6d6d.jpg", "https://i.pinimg.com/originals/bc/f3/86/bcf3868a1e8a2fcd1bc1530d0ec7c751.jpg", "https://i.pinimg.com/originals/59/3b/d6/593bd64b3b212b964a56b8b97d3fe5d4.jpg", "https://i.pinimg.com/originals/f7/a1/c8/f7a1c863838e77c028a4c5fa042bfe6f.jpg", "https://i.pinimg.com/originals/02/31/ad/0231ad2dcf38dc0a0356eb7c9c8f36d1.jpg", "https://i.pinimg.com/originals/3f/5b/57/3f5b572f798a131f42b9e1c7cfe7b55d.jpg", "https://i.pinimg.com/originals/a4/ad/ba/a4adbae79f19cd6bfd1b5594ec924326.jpg", "https://i.pinimg.com/originals/6a/1b/8e/6a1b8e91b4f93b1327b21cf3183c4895.jpg", "https://i.pinimg.com/originals/68/0c/c5/680cc559289c2cfcfd524efe2df9511e.png", "https://i.pinimg.com/originals/7e/99/a0/7e99a0592099d4461e6b4f390ed92f58.jpg", "https://i.pinimg.com/originals/cb/9a/a3/cb9aa3d9d29937b9c64bef00823a8e1c.jpg", "https://i.pinimg.com/originals/00/67/89/0067892e88e80c0297a31c391976dfcd.jpg", "https://i.pinimg.com/originals/62/29/82/62298247535ea1f0b055b9d238da2c5b.png", "https://i.pinimg.com/originals/5f/b6/30/5fb630c80bd14ae981caadc1fae2f0fa.jpg", "https://i.pinimg.com/originals/b9/c3/74/b9c374e42ad406681a02b30a3baa8e45.jpg", "https://i.pinimg.com/originals/20/12/c7/2012c76ebda8c510bd9073cfa3e97dde.jpg", "https://i.pinimg.com/originals/8b/5d/a7/8b5da749fac8aaea203c3808402c23fb.jpg", "https://i.pinimg.com/originals/41/09/48/41094852f9ee89ad043b197628d869be.jpg", "https://i.pinimg.com/originals/cb/e1/3b/cbe13bd7033e14f48271432f9e880fe3.jpg", "https://i.pinimg.com/originals/82/3b/3b/823b3b639ac5d01f29b2e1cbb2de5b54.png", "https://i.pinimg.com/originals/d5/71/a2/d571a28b6f4fd6d0702612f8a0192cdc.jpg", "https://i.pinimg.com/originals/f5/6b/21/f56b213b6e5d4cc9cf62fe20e99234cc.jpg", "https://i.pinimg.com/originals/cc/9e/a5/cc9ea542badc1457a87e8280edc904ac.jpg", "https://i.pinimg.com/originals/8d/4c/9e/8d4c9ed58eb755ef788e5f0732ad6398.jpg",
      "https://i.pinimg.com/originals/a4/ad/ba/a4adbae79f19cd6bfd1b5594ec924326.jpg", "https://i.pinimg.com/originals/6a/1b/8e/6a1b8e91b4f93b1327b21cf3183c4895.jpg", "https://i.pinimg.com/originals/68/0c/c5/680cc559289c2cfcfd524efe2df9511e.png", "https://i.pinimg.com/originals/7e/99/a0/7e99a0592099d4461e6b4f390ed92f58.jpg", "https://i.pinimg.com/originals/cb/9a/a3/cb9aa3d9d29937b9c64bef00823a8e1c.jpg", "https://i.pinimg.com/originals/00/67/89/0067892e88e80c0297a31c391976dfcd.jpg", "https://i.pinimg.com/originals/62/29/82/62298247535ea1f0b055b9d238da2c5b.png", "https://i.pinimg.com/originals/5f/b6/30/5fb630c80bd14ae981caadc1fae2f0fa.jpg", "https://i.pinimg.com/originals/b9/c3/74/b9c374e42ad406681a02b30a3baa8e45.jpg", "https://i.pinimg.com/originals/20/12/c7/2012c76ebda8c510bd9073cfa3e97dde.jpg", "https://i.pinimg.com/originals/8b/5d/a7/8b5da749fac8aaea203c3808402c23fb.jpg", "https://i.pinimg.com/originals/41/09/48/41094852f9ee89ad043b197628d869be.jpg", "https://i.pinimg.com/originals/cb/e1/3b/cbe13bd7033e14f48271432f9e880fe3.jpg", "https://i.pinimg.com/originals/82/3b/3b/823b3b639ac5d01f29b2e1cbb2de5b54.png", "https://i.pinimg.com/originals/d5/71/a2/d571a28b6f4fd6d0702612f8a0192cdc.jpg", "https://i.pinimg.com/originals/f5/6b/21/f56b213b6e5d4cc9cf62fe20e99234cc.jpg", "https://i.pinimg.com/originals/cc/9e/a5/cc9ea542badc1457a87e8280edc904ac.jpg", "https://i.pinimg.com/originals/8d/4c/9e/8d4c9ed58eb755ef788e5f0732ad6398.jpg", "https://i.pinimg.com/originals/98/51/e1/9851e1bf21fd7017228a66bf59961693.png", "https://i.pinimg.com/originals/e6/9a/8f/e69a8ffca35eaa08afbfd012cc96a077.png", "https://i.pinimg.com/originals/d8/16/9c/d8169c153f5aa8c369d1c8d3a9516f57.jpg", "https://i.pinimg.com/originals/3a/85/0d/3a850dfbfab8a9ba82bc99526ea00959.jpg", "https://i.pinimg.com/originals/e4/a9/0d/e4a90d518de15d238f24b194d9fd6f8b.jpg", "https://i.pinimg.com/originals/09/97/9a/09979aa82e221112427c68adb6693f66.jpg", "https://i.pinimg.com/originals/1d/1c/7e/1d1c7e90f60d6210bc598f619688514a.jpg", "https://i.pinimg.com/originals/52/53/f1/5253f1e3e6d6d92edad70343d7895027.jpg", "https://i.pinimg.com/originals/f9/a3/4f/f9a34fed94ab46a979c61670384eb93a.jpg", "https://i.pinimg.com/originals/d5/c9/33/d5c93344805561568757a08523ae6a0c.jpg",
      "https://i.pinimg.com/originals/b9/c3/74/b9c374e42ad406681a02b30a3baa8e45.jpg", "https://i.pinimg.com/originals/20/12/c7/2012c76ebda8c510bd9073cfa3e97dde.jpg", "https://i.pinimg.com/originals/8b/5d/a7/8b5da749fac8aaea203c3808402c23fb.jpg", "https://i.pinimg.com/originals/41/09/48/41094852f9ee89ad043b197628d869be.jpg", "https://i.pinimg.com/originals/cb/e1/3b/cbe13bd7033e14f48271432f9e880fe3.jpg", "https://i.pinimg.com/originals/82/3b/3b/823b3b639ac5d01f29b2e1cbb2de5b54.png", "https://i.pinimg.com/originals/d5/71/a2/d571a28b6f4fd6d0702612f8a0192cdc.jpg", "https://i.pinimg.com/originals/f5/6b/21/f56b213b6e5d4cc9cf62fe20e99234cc.jpg", "https://i.pinimg.com/originals/cc/9e/a5/cc9ea542badc1457a87e8280edc904ac.jpg", "https://i.pinimg.com/originals/8d/4c/9e/8d4c9ed58eb755ef788e5f0732ad6398.jpg", "https://i.pinimg.com/originals/98/51/e1/9851e1bf21fd7017228a66bf59961693.png", "https://i.pinimg.com/originals/e6/9a/8f/e69a8ffca35eaa08afbfd012cc96a077.png", "https://i.pinimg.com/originals/d8/16/9c/d8169c153f5aa8c369d1c8d3a9516f57.jpg", "https://i.pinimg.com/originals/3a/85/0d/3a850dfbfab8a9ba82bc99526ea00959.jpg", "https://i.pinimg.com/originals/e4/a9/0d/e4a90d518de15d238f24b194d9fd6f8b.jpg", "https://i.pinimg.com/originals/09/97/9a/09979aa82e221112427c68adb6693f66.jpg", "https://i.pinimg.com/originals/1d/1c/7e/1d1c7e90f60d6210bc598f619688514a.jpg", "https://i.pinimg.com/originals/52/53/f1/5253f1e3e6d6d92edad70343d7895027.jpg", "https://i.pinimg.com/originals/f9/a3/4f/f9a34fed94ab46a979c61670384eb93a.jpg", "https://i.pinimg.com/originals/d5/c9/33/d5c93344805561568757a08523ae6a0c.jpg", "https://i.pinimg.com/originals/18/e3/1e/18e31eb340da28d75acaaeb08db62022.jpg", "https://i.pinimg.com/originals/b7/1b/70/b71b70ab0072d6b0a0203e781ff855aa.png", "https://i.pinimg.com/originals/ef/6d/cc/ef6dcc75f947e82bc956eee0fd79de64.jpg", "https://i.pinimg.com/originals/c5/09/56/c50956008daaa57ceea757c9e94bc7da.png", "https://i.pinimg.com/originals/c4/c9/e2/c4c9e2578bc6d9a4f7545b104c2eee8a.jpg", "https://i.pinimg.com/originals/c4/43/27/c443275502e9e29617def8c851568fec.jpg", "https://i.pinimg.com/originals/ed/84/b0/ed84b0401fd4f7d4fe55f29906e26b4f.jpg", "https://i.pinimg.com/originals/8a/c5/29/8ac5296e9a9835eeea31d9cfa05caf90.jpg", "https://i.pinimg.com/originals/b7/0a/e6/b70ae6461de6a90494961afad05ff26e.jpg", "https://i.pinimg.com/originals/ab/c3/a9/abc3a9bb128fdf1b9ae4b4e1b513b920.jpg",
      "https://i.pinimg.com/originals/f9/a3/4f/f9a34fed94ab46a979c61670384eb93a.jpg", "https://i.pinimg.com/originals/d5/c9/33/d5c93344805561568757a08523ae6a0c.jpg", "https://i.pinimg.com/originals/18/e3/1e/18e31eb340da28d75acaaeb08db62022.jpg", "https://i.pinimg.com/originals/b7/1b/70/b71b70ab0072d6b0a0203e781ff855aa.png", "https://i.pinimg.com/originals/ef/6d/cc/ef6dcc75f947e82bc956eee0fd79de64.jpg", "https://i.pinimg.com/originals/c5/09/56/c50956008daaa57ceea757c9e94bc7da.png", "https://i.pinimg.com/originals/c4/c9/e2/c4c9e2578bc6d9a4f7545b104c2eee8a.jpg", "https://i.pinimg.com/originals/c4/43/27/c443275502e9e29617def8c851568fec.jpg", "https://i.pinimg.com/originals/ed/84/b0/ed84b0401fd4f7d4fe55f29906e26b4f.jpg", "https://i.pinimg.com/originals/8a/c5/29/8ac5296e9a9835eeea31d9cfa05caf90.jpg", "https://i.pinimg.com/originals/b7/0a/e6/b70ae6461de6a90494961afad05ff26e.jpg", "https://i.pinimg.com/originals/ab/c3/a9/abc3a9bb128fdf1b9ae4b4e1b513b920.jpg", "https://i.pinimg.com/originals/30/65/7c/30657ca41b7f17e75112ac1e20ee87eb.jpg", "https://i.pinimg.com/originals/57/a5/ad/57a5adef8f780a96ba20f567e9489428.png", "https://i.pinimg.com/originals/3b/e7/eb/3be7eb7937b70a55431daf30e60cb796.png", "https://i.pinimg.com/originals/23/83/c7/2383c70fa7d7dd0590134b20c9a977d3.jpg", "https://i.pinimg.com/originals/eb/71/f8/eb71f8938b3aed458ba6ac60aaa9ce2e.jpg", "https://i.pinimg.com/originals/ef/6b/a1/ef6ba1b1ed183db3705dfd2097b64445.jpg", "https://i.pinimg.com/originals/ec/41/f4/ec41f4b62f8399bda6aa7fee4a6f45e7.png", "https://i.pinimg.com/originals/45/39/1e/45391e3353c40082078d2bde5f0f798d.jpg", "https://i.pinimg.com/originals/00/04/d4/0004d4bd9b6113279e081a6f56d6eadc.png", "https://i.pinimg.com/originals/3b/02/ed/3b02ed4713b142297b54f4871c772bad.png", "https://i.pinimg.com/originals/0f/d4/d4/0fd4d487d0372e4ad9182707f662ec4b.png", "https://i.pinimg.com/originals/10/cd/64/10cd64c45dbdb4c770e84d9886129640.png", "https://i.pinimg.com/originals/3a/f6/ae/3af6ae9b0f534c74cd0f239974dd4df0.png", "https://i.pinimg.com/originals/5c/20/b7/5c20b76d65f68da0c4aca744982b2896.jpg", "https://i.pinimg.com/originals/04/5b/50/045b5062ea68732846d773a2c3bc79d5.jpg", "https://i.pinimg.com/originals/fa/a1/02/faa1022cbb2e5b14f621dc5f32251698.jpg", "https://i.pinimg.com/originals/6c/97/8c/6c978ca94d5c76c96f8864a3382edbe2.jpg", "https://i.pinimg.com/originals/86/16/8d/86168df7097a2e651ff608a22a390127.jpg", "https://i.pinimg.com/originals/3c/e8/e5/3ce8e59c177f977f000fe1e4996cb158.jpg",
      "https://i.pinimg.com/originals/5c/20/b7/5c20b76d65f68da0c4aca744982b2896.jpg", "https://i.pinimg.com/originals/04/5b/50/045b5062ea68732846d773a2c3bc79d5.jpg", "https://i.pinimg.com/originals/6c/97/8c/6c978ca94d5c76c96f8864a3382edbe2.jpg", "https://i.pinimg.com/originals/86/16/8d/86168df7097a2e651ff608a22a390127.jpg", "https://i.pinimg.com/originals/3c/e8/e5/3ce8e59c177f977f000fe1e4996cb158.jpg", "https://i.pinimg.com/originals/06/33/0f/06330f003f5c98b66cd3edecf605be3d.png", "https://i.pinimg.com/originals/59/c4/f2/59c4f2ea8b6a28e24beb55ed88ca284b.jpg", "https://i.pinimg.com/originals/e1/6b/be/e16bbee0c7ab973b6b38094ddf12d404.jpg", "https://i.pinimg.com/originals/54/f1/34/54f134fd86c14102e46bf47d14a48290.jpg", "https://i.pinimg.com/originals/2d/6d/da/2d6dda5995c9f5153adde379ec60bc98.png", "https://i.pinimg.com/originals/16/e9/9d/16e99d040faa89feee0c541ee1677637.jpg", "https://i.pinimg.com/originals/62/62/e0/6262e0082c61960e1677f6804dcf3afa.jpg", "https://i.pinimg.com/originals/b7/8a/e1/b78ae1acbad33e275534498144f87068.jpg", "https://i.pinimg.com/originals/e3/52/36/e35236905ac67cbdd4720337975e4481.jpg", "https://i.pinimg.com/originals/1b/b9/c7/1bb9c7590a9c0084ff31afd993789676.jpg", "https://i.pinimg.com/originals/90/85/81/90858151867af7de2b3a96e0b1277c08.jpg", "https://i.pinimg.com/originals/cc/80/28/cc8028b832f78aa619633020b7df79c2.jpg", "https://i.pinimg.com/originals/98/3b/72/983b7280fc0fd163a2bae359c6db9579.jpg", "https://i.pinimg.com/originals/b6/83/29/b683291b4f2125ac070ed5a43f179369.png", "https://i.pinimg.com/originals/7d/8c/e6/7d8ce6ec890f40ee11a87cf5515f8310.jpg", "https://i.pinimg.com/originals/85/91/75/85917578501b73b7b1c9261e19637616.jpg", "https://i.pinimg.com/originals/ca/93/ee/ca93eedaa7d750a3ab5508a19d2858bb.jpg", "https://i.pinimg.com/originals/72/62/33/726233b403f8fd9a4f82400163dce90b.png", "https://i.pinimg.com/originals/38/e0/ca/38e0ca6fee3c4ace8183237f2c5c7ae3.jpg", "https://i.pinimg.com/originals/21/09/c8/2109c8a3c6518072682864aca78cdca8.jpg", "https://i.pinimg.com/originals/87/ff/65/87ff6525cb8f3d4ce54a0b9c63dc05e9.png", "https://i.pinimg.com/originals/50/c8/de/50c8deac0949c1de8682dfe3337a6583.jpg", "https://i.pinimg.com/originals/c8/d1/64/c8d16404360ae56b99dd91fff7f4992d.png",
      "https://i.pinimg.com/originals/ca/93/ee/ca93eedaa7d750a3ab5508a19d2858bb.jpg", "https://i.pinimg.com/originals/72/62/33/726233b403f8fd9a4f82400163dce90b.png", "https://i.pinimg.com/originals/38/e0/ca/38e0ca6fee3c4ace8183237f2c5c7ae3.jpg", "https://i.pinimg.com/originals/21/09/c8/2109c8a3c6518072682864aca78cdca8.jpg", "https://i.pinimg.com/originals/87/ff/65/87ff6525cb8f3d4ce54a0b9c63dc05e9.png", "https://i.pinimg.com/originals/50/c8/de/50c8deac0949c1de8682dfe3337a6583.jpg", "https://i.pinimg.com/originals/c8/d1/64/c8d16404360ae56b99dd91fff7f4992d.png", "https://i.pinimg.com/originals/81/b1/84/81b184f551f91de51e55a65372424566.png", "https://i.pinimg.com/originals/7b/58/d8/7b58d8c97fbd2c0bc7958e7d87e1e2a7.jpg", "https://i.pinimg.com/originals/69/ff/48/69ff48f466ca05e6474bb2d6cc7cd49c.jpg", "https://i.pinimg.com/originals/ff/08/46/ff08469f59787a88c0ead7a96f2454e1.png", "https://i.pinimg.com/originals/ff/bf/ef/ffbfefe7ec44d4ae9cd42701d15dbb78.png", "https://i.pinimg.com/originals/a3/1d/e1/a31de1904b451226c66bd839f5382314.jpg", "https://i.pinimg.com/originals/28/34/55/2834559e39253443a94c0f4fc74eb9d0.jpg", "https://i.pinimg.com/originals/10/6d/fc/106dfca2b7739dc62a62e61a3e7772e8.png", "https://i.pinimg.com/originals/29/63/08/29630887eb588ef5ff5e71153a549dee.png", "https://i.pinimg.com/originals/42/fa/f8/42faf8bbf9a05dca221ec18cff6647a1.png", "https://i.pinimg.com/originals/ca/b5/c9/cab5c9edf023f512f5e3c9b004bcb2ae.jpg", "https://i.pinimg.com/originals/4f/93/c1/4f93c18f3bb9f76cd55a1cc85610778e.jpg", "https://i.pinimg.com/originals/e3/60/d0/e360d031ce5a5e7d2769a1e0442babca.jpg", "https://i.pinimg.com/originals/f1/fa/4a/f1fa4aa118aa397578d50e83ed4894a7.png", "https://i.pinimg.com/originals/f7/24/e9/f724e9f021d83f6db3b52c747007e4c4.jpg", "https://i.pinimg.com/originals/d4/d3/5f/d4d35f7ce2ca3b7b747c4cea7147835f.png", "https://i.pinimg.com/originals/74/8a/5d/748a5d66fd33c734cacfc35b6a4a4bef.jpg", "https://i.pinimg.com/originals/c0/0c/fc/c00cfcbf9ce91c87e3952dbc732a1ec1.jpg", "https://i.pinimg.com/originals/eb/cc/62/ebcc6267dad0bbb8ed9bf1852fc3ee49.jpg", "https://i.pinimg.com/originals/03/10/05/031005fe223ddbe8de31229474ef3bd0.png", "https://i.pinimg.com/originals/74/b9/74/74b974eb8896f595d23fa4511097b995.jpg",
      "https://i.pinimg.com/originals/c0/0c/fc/c00cfcbf9ce91c87e3952dbc732a1ec1.jpg", "https://i.pinimg.com/originals/eb/cc/62/ebcc6267dad0bbb8ed9bf1852fc3ee49.jpg", "https://i.pinimg.com/originals/03/10/05/031005fe223ddbe8de31229474ef3bd0.png", "https://i.pinimg.com/originals/74/b9/74/74b974eb8896f595d23fa4511097b995.jpg", "https://i.pinimg.com/originals/51/07/33/5107334b044fbeb246fc6b9bd77dfe4c.jpg", "https://i.pinimg.com/originals/08/f8/ee/08f8ee50a376c044982a4b9a4a235d9c.jpg", "https://i.pinimg.com/originals/98/10/54/981054610e2998f53373805d0c1e8b90.jpg", "https://i.pinimg.com/originals/05/40/50/05405068b5f87a30b63eec67c7befa52.jpg", "https://i.pinimg.com/originals/c3/b5/79/c3b579196af3ed0692099c8cba52e8c1.jpg", "https://i.pinimg.com/originals/27/7b/ab/277babf74d94e5983fd8263be49e696d.jpg", "https://i.pinimg.com/originals/27/7b/ab/277babf74d94e5983fd8263be49e696d.jpg", "https://i.pinimg.com/originals/1c/20/92/1c2092882b25b710a8641916d9751e6e.jpg", "https://i.pinimg.com/originals/ff/23/12/ff231260549004a10acd6154bc10e519.png", "https://i.pinimg.com/originals/d3/d3/a2/d3d3a288699b39bcc33e6d64abad1f63.jpg", "https://i.pinimg.com/originals/6b/f2/d4/6bf2d4feff278aefaa89d1488e62dfa1.jpg", "https://i.pinimg.com/originals/3c/f6/f6/3cf6f616716a27d6643b22d02954f26a.jpg", "https://i.pinimg.com/originals/ef/39/33/ef393319c4f9af427c849840ddff1c1e.jpg", "https://i.pinimg.com/originals/1e/5b/3e/1e5b3eec833853eb8212b0d2b4d5a42e.jpg", "https://i.pinimg.com/originals/f8/ee/33/f8ee33f22661523e5d6a7917c5d66806.jpg", "https://i.pinimg.com/originals/ca/f5/f9/caf5f9d803a6148c65b464ddd31a7605.png", "https://i.pinimg.com/originals/94/05/ec/9405ece2cfd278d4292bd13a5ccf0139.jpg", "https://i.pinimg.com/originals/04/96/5c/04965cd58cbfc5124c27e4e3bedfcd48.jpg", "https://i.pinimg.com/originals/69/4e/21/694e21f37eac743340a2762ad916ce6e.jpg",
      "https://i.pinimg.com/originals/3c/f6/f6/3cf6f616716a27d6643b22d02954f26a.jpg", "https://i.pinimg.com/originals/ef/39/33/ef393319c4f9af427c849840ddff1c1e.jpg", "https://i.pinimg.com/originals/1e/5b/3e/1e5b3eec833853eb8212b0d2b4d5a42e.jpg", "https://i.pinimg.com/originals/f8/ee/33/f8ee33f22661523e5d6a7917c5d66806.jpg", "https://i.pinimg.com/originals/ca/f5/f9/caf5f9d803a6148c65b464ddd31a7605.png", "https://i.pinimg.com/originals/94/05/ec/9405ece2cfd278d4292bd13a5ccf0139.jpg", "https://i.pinimg.com/originals/04/96/5c/04965cd58cbfc5124c27e4e3bedfcd48.jpg", "https://i.pinimg.com/originals/69/4e/21/694e21f37eac743340a2762ad916ce6e.jpg", "https://i.pinimg.com/originals/d3/3c/d9/d33cd92732b131c7d06b09b17dc86b6a.png", "https://i.pinimg.com/originals/0b/92/66/0b9266be16b0d376bccf04eaaf2f2de9.jpg", "https://i.pinimg.com/originals/43/9a/8d/439a8d157abeeb49d3eaa6b9c192119e.jpg", "https://i.pinimg.com/originals/da/90/77/da907757382c8d689d459dcc38f5bb3e.jpg", "https://i.pinimg.com/originals/91/65/ce/9165ce1860c2d3e5570b5e7ef0469974.jpg", "https://i.pinimg.com/originals/2a/84/64/2a846432bc2520c525cc2803214a9060.jpg", "https://i.pinimg.com/originals/41/53/e6/4153e6d85d9078aa0f22dc0610b99ad4.jpg", "https://i.pinimg.com/originals/e2/d1/c4/e2d1c4cfd0e2bcaaf12ccb36a2597289.jpg", "https://i.pinimg.com/originals/04/8e/5c/048e5c7c08928ad6b3ff9a03c7de38cc.jpg", "https://i.pinimg.com/originals/af/f6/0b/aff60b832ca896f4e742ea48f2403f82.jpg", "https://i.pinimg.com/originals/19/70/19/197019251d235bbd982cdcf457adf109.jpg", "https://i.pinimg.com/originals/8b/f0/26/8bf02685d790aace6dc6d260cf490d91.png", "https://i.pinimg.com/originals/58/a4/a9/58a4a9913359d89ec22686db0ff61ef8.png", "https://i.pinimg.com/originals/8b/cd/6f/8bcd6f300bcf4c24a54bf7a28fd01705.jpg", "https://i.pinimg.com/originals/d8/14/93/d814938838dab87be968f4cadbf7c17d.png", "https://i.pinimg.com/originals/cf/e7/0d/cfe70dcfa713fc2059e93d5ebcee1df7.png",
      "https://i.pinimg.com/originals/d5/e5/7b/d5e57bd5276a8c57e4e12c7b976534da.png", "https://i.pinimg.com/originals/eb/ef/73/ebef730b0abb71cf6dd0ddfc27a02da5.png", "https://i.pinimg.com/originals/54/4d/f6/544df63af3bec1087c0e3dc88540eb02.png", "https://i.pinimg.com/originals/11/09/37/110937bf890c902cae4f4442341aaa35.jpg", "https://i.pinimg.com/originals/49/5f/85/495f85d818c73f6a7c703816ecf790b0.jpg", "https://i.pinimg.com/originals/3b/5a/e4/3b5ae4aec3acfd06df510e2756b0eefd.jpg", "https://i.pinimg.com/originals/2c/29/43/2c2943a4867346780cf93b40abc50923.png", "https://i.pinimg.com/originals/69/c7/75/69c775886bbe6213e02e80f4fd85aea1.jpg", "https://i.pinimg.com/originals/83/45/ab/8345ab61e5b0a4f82c2f6def3ad32748.jpg", "https://i.pinimg.com/originals/da/fe/3e/dafe3e6324f40e1d778b7036243c369b.jpg", "https://i.pinimg.com/originals/c9/14/fe/c914fe71c8115e1f00096f924dd69b6d.jpg", "https://i.pinimg.com/originals/24/d1/bc/24d1bccf094f2c7da00481d8158cabbf.jpg", "https://i.pinimg.com/originals/c7/06/f5/c706f55e22db9911baa54d0b61f1ba81.jpg", "https://i.pinimg.com/originals/c9/c0/0a/c9c00a91693b1db38060586131394639.jpg", "https://i.pinimg.com/originals/5b/31/bc/5b31bcac967d40dbf8b067458ddae934.jpg", "https://i.pinimg.com/originals/f5/25/c0/f525c0f09731ec289bd2c8c63c1a5522.jpg", "https://i.pinimg.com/originals/02/b5/c4/02b5c449810058fc13682416c8ab7a8e.png", "https://i.pinimg.com/originals/3d/1b/67/3d1b67e6b1a6aab17dd3ef373385fab4.png", "https://i.pinimg.com/originals/9b/12/3b/9b123b468b425a5970a5c51e15e989e5.jpg", "https://i.pinimg.com/originals/66/46/21/664621471ee132f3aff4a71930824ebb.jpg", "https://i.pinimg.com/originals/a4/d2/2c/a4d22cf3bc1bad5213b580fe73e667f3.jpg", "https://i.pinimg.com/originals/9c/85/b6/9c85b68af514a1ca9ed0d1687b42ed14.jpg", "https://i.pinimg.com/originals/01/0f/28/010f284e1d8e456e4dc41af613ca5594.jpg", "https://i.pinimg.com/originals/c2/cb/b6/c2cbb6d34d611a2a2a404290df87f6f6.jpg", "https://i.pinimg.com/originals/85/54/90/855490f71aa9e1e030de42908207543c.jpg", "https://i.pinimg.com/originals/e5/f5/22/e5f5222d280bb61ce60512343f584b4a.jpg", "https://i.pinimg.com/originals/aa/a2/8a/aaa28a35cd0b730d7396ffab0480d87e.png", "https://i.pinimg.com/originals/58/bf/e5/58bfe552f3600606083e4e7e7a87970c.png", "https://i.pinimg.com/originals/e5/ae/56/e5ae564f797362138a14dc67c4c7ca92.jpg",
      "https://i.pinimg.com/originals/c7/06/f5/c706f55e22db9911baa54d0b61f1ba81.jpg", "https://i.pinimg.com/originals/c9/c0/0a/c9c00a91693b1db38060586131394639.jpg", "https://i.pinimg.com/originals/5b/31/bc/5b31bcac967d40dbf8b067458ddae934.jpg", "https://i.pinimg.com/originals/f5/25/c0/f525c0f09731ec289bd2c8c63c1a5522.jpg", "https://i.pinimg.com/originals/02/b5/c4/02b5c449810058fc13682416c8ab7a8e.png", "https://i.pinimg.com/originals/3d/1b/67/3d1b67e6b1a6aab17dd3ef373385fab4.png", "https://i.pinimg.com/originals/9b/12/3b/9b123b468b425a5970a5c51e15e989e5.jpg", "https://i.pinimg.com/originals/66/46/21/664621471ee132f3aff4a71930824ebb.jpg", "https://i.pinimg.com/originals/a4/d2/2c/a4d22cf3bc1bad5213b580fe73e667f3.jpg", "https://i.pinimg.com/originals/9c/85/b6/9c85b68af514a1ca9ed0d1687b42ed14.jpg", "https://i.pinimg.com/originals/01/0f/28/010f284e1d8e456e4dc41af613ca5594.jpg", "https://i.pinimg.com/originals/c2/cb/b6/c2cbb6d34d611a2a2a404290df87f6f6.jpg", "https://i.pinimg.com/originals/85/54/90/855490f71aa9e1e030de42908207543c.jpg", "https://i.pinimg.com/originals/e5/f5/22/e5f5222d280bb61ce60512343f584b4a.jpg", "https://i.pinimg.com/originals/aa/a2/8a/aaa28a35cd0b730d7396ffab0480d87e.png", "https://i.pinimg.com/originals/58/bf/e5/58bfe552f3600606083e4e7e7a87970c.png", "https://i.pinimg.com/originals/e5/ae/56/e5ae564f797362138a14dc67c4c7ca92.jpg", "https://i.pinimg.com/originals/73/4e/77/734e771c8c8be6e468913ea6ffd6f916.jpg"
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

    urls = if new_pins.any?
             new_pins.flatten.uniq
           else
             sample_pins.flatten.uniq
           end

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
