# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.new
@user.name = 'maruyamayuta'
@user.username = 'ゆうた'
@user.location = 'saitama, Japan'
@user.about = 'Nice to meet you. I am from database!'
@user.created_at = '2016-10-20 12:22:24.597690'
@user.updated_at = '2016-10-26 00:56:29.837442'
@user.email = 'yoshiosakai@icloud.com'
@user.encrypted_password = '$2a$11$xoPAMkE2tMVkJnUoVWNB..JFMldsM5dKAShYYtCDX/JNBD/28ZYF1'
@user.reset_password_token = ''
@user.reset_password_sent_at = ''
@user.remember_created_at = '2016-10-24 07:14:59.206487'
@user.sign_in_count = '14'
@user.current_sign_in_at = '2016-10-26 00:56:29.835886'
@user.last_sign_in_at = '2016-10-24 07:14:59.229389'
@user.current_sign_in_ip = '::2'
@user.last_sign_in_ip = '::2'
@user.save
