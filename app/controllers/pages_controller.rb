class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :logistics, :touristinfo ]

  def home
  end

  def logistics
    @timelineData = TimelineInfo
  end

  def touristinfo
  end

  private

  TimelineInfo = {
    turin: {
      one: {
        h5: 'Torino Airport'
      },
      two: {
        h5: 'Torino Porta Susa',
        icons: ['train', 'bus', 'taxi'],
        descriptions: [
          '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.',
          '2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.',
          '3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.'
        ]
      },
      three: {
        h5: 'Pinerolo',
        icons: ['train'],
        descriptions: [
          '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.'
        ]
      },
      four: {
        h5: 'Hotel Barrage',
        icons: ['walking', 'bus', 'taxi'],
        descriptions: [
          '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.',
          '2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.',
          '3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.'
        ]
      },
      five: {
        h5: 'Suit up!'
      },
      six: {
        h5: 'Tenuta La Morra',
        icons: ['shuttle-van'],
        descriptions: [
          '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.'
        ]
      },
      seven: {
        h5: 'Enjoy the party'
      },
      eight: {
        h5: 'Hotel Barrage',
        icons: ['shuttle-van'],
        descriptions: [
          '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et ante metus. Donec suscipit eleifend mi aliquet feugiat. Vestibulum in mi id nulla viverra accumsan nec eu felis.'
        ]
      }
    }
  }
end
