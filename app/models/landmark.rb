class Landmark < ActiveRecord::Base
  belongs_to :figure

  def self.landmarks(params)
    # binding.pry
    if params[:landmark][:name] != ""
      landmark = Landmark.find_or_create_by(name: params[:landmark][:name])
      landmarks = params[:figure][:landmark_ids]
      # landmarks << landmark.id.to_s
      new_landmark_array = landmarks.collect do |landmark_id|
        Landmark.find_by(id: landmark_id)
      end
    else
      landmarks = params[:figure][:landmark_ids]
      new_landmark_array = landmarks.collect do |landmark_id|
        Landmark.find_by(id: landmark_id)
      end
    end
    new_landmark_array
  end
end
