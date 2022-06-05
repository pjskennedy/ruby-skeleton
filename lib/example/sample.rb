# typed: strict
# frozen_string_literal: true

module Example
  class Sample
    extend T::Sig

    sig {returns(String)}
    def static
      "Hello World!"
    end
  end
end
