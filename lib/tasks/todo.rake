namespace :todo do
  desc "Deletes expired to do items from list"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end
