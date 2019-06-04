# frozen_string_literal: true

class OlaMundoController < ApplicationController
  def index
    render text: "Ol\xC3\xA1 mundo"
  end
end
