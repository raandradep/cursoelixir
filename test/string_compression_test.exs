defmodule StringCompressionTest do
  use ExUnit.Case
  alias StringCompression
  alias StringCompressionLight

  @param "aaabbbccc"
  test "compression/1 valid when is correct" do
    string = "aaabbbccc"
    assert StringCompression.compression(@param) == "a3b3c3"
    assert StringCompressionLight.compression(@param) == "a3b3c3"
  end

  test "compression/1 when is error" do
    string = "aaabbbccc"
    assert StringCompression.compression(@param) != "a4b3c3"
    assert StringCompressionLight.compression(@param) != "a4b3c3"
  end


end
