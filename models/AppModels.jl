module AppModels

using Stipple

export AppModel

@reactive mutable struct AppModel <: ReactiveModel
  message::R{String} = "Hello World!"
  predict::R{Bool} = false
  myinput::R{String} = ""
end

function handlers(model::AppModel) :: AppModel
  
  # on(model.predict) do pred
  #   @info "Predicting..."
  #   pred = false
  # end

  onbutton(model.predict) do
    @info "Predicting... "
  end

  on(model.myinput) do ip
    @info "Input changed $ip"
  end
  
  model
end

end
