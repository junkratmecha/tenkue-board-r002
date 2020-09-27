crumb :root do
  link "投稿一覧", root_path
end

crumb :post_new do
  link "新規投稿", new_post_path
end

crumb :post_show do |post|
  link "#{post.user.name}さんの投稿", post_path
  parent :root
end

crumb :post_edit do |post|
  link "#{post.user.name}さんの投稿の編集", edit_post_path
  parent :root
end