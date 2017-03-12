class Title < ActiveRecord::Base
  has_many :figure_titles
  has_many :figures, through: :figure_titles

  def self.titles(params)
    if params[:title][:name] != ""
      title = Title.find_or_create_by(name: params[:title][:name])
      titles = params[:figure][:title_ids]
      # titles << title.id.to_s
      new_title_array = titles.collect do |title_id|
        Title.find_by(id: title_id)
      end
    else
      titles = params[:figure][:title_ids]
      new_title_array = titles.collect do |title_id|
        Title.find_by(id: title_id)
      end
    end
    new_title_array
  end
end
