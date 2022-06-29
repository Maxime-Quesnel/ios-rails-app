class TurboController < ApplicationController
  def index
    render json: {
      "settings": {
        "enable-feature-x": true,

        "tabs": [
          {
            "title": "Home",
            "icon": "house",
            "path": root_path
          },
          {
            "title": "Admin",
            "icon": "gearshape",
            "path": posts_path
          },
          {
            title: "Profile",
            "icon": "person",
            "path": pages_my_profile_path
          }
        ]
      },

      "rules": [
        {
          "patterns": ["/new$", "/edit$"],
          "properties": {
            "presentation": "modal"
          }
        }
      ]
    }
  end
end