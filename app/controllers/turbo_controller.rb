class TurboController < ApplicationController
  def index
    render json: {
      "settings": {
        "enable-feature-x": true,

        "navbar": {
          "background": "#888888",
          "foreground": "#ffffff"
        },
        "tabbar": {
          "background": "#888888",
          "selected": "#ffffff",
          "unselected": "#bbbbbb"
        },

        "tabs": [
          {
            "title": "Home",
            "icon_ios": "house",
            "visit": root_path,
            "protected": false
          },
          {
            "title": "Admin",
            "icon_ios": "gearshape",
            "visit": posts_path,
            "protected": true
          },
          {
            title: "Profile",
            "icon_ios": "person",
            "visit": pages_my_profile_path,
            "protected": true
          }
        ]
      },

      "rules": [
        {
          "patterns": ["/new$", "/edit$"],
          "properties": {
            "presentation": "modal"
          }
        },
        {
          "patterns": [
            "/users/login"
          ],
          "properties": {
            "presentation": "modal"
          }
        },
        {
          "patterns": [
            "/users/logout"
          ],
          "properties": {
            "presentation": "replace"
          }
        }
      ]
    }
  end
end