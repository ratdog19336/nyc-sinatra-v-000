class Figure < ActiveRecord::Base
  has_many :figure_titles
  has_many :titles, through: :figure_titles
  has_many :landmarks

  def self.update_figure(params)
    # binding.pry
    @landmark = Landmark.find_by(id: params[:id])
    if !params[:figure][:name].empty?
      figure = Figure.find_or_create_by(name: params[:figure][:name])
    else
      figure = Figure.find_by(id: params[:landmark][:figure_ids][0])
    end
    figure
  end
end
