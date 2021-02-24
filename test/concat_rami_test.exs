defmodule ConcatRamiTest do
  use ExUnit.Case
  alias ConcatRami

  test "reduction/1 valid when is correct"  do
    string = "abcccc"
    assert ConcatRami.reduction(string) == "abc"
  end

  test "reduction/1 valid when is correct2"  do
    string = "aaaaabc"
    assert ConcatRami.reduction(string) == "abc"
  end

  ########################################################

  test "search_list/1 valid when is correct"  do
    list = [1,2,3]
    search = 3
    assert ConcatRami.search_list(list,search) == true
  end

  test "search_list/1 valid when is no correct"  do
    list = [1,2,3]
    search = 5
    assert ConcatRami.search_list(list,search) == false
  end


  ########################################################

    test "unir/1 valid when is correct"  do
      str1 = "abc"
      str2 = "abc"
      salida ="aabbcc"
      assert ConcatRami.unir(str1,str2) == salida
    end

    test "unir/2 valid when is correct"  do
      str1 = "ramiro"
      str2 = "andrade"
      salida ="raanmdirraode"
      assert ConcatRami.unir(str1,str2) == salida
    end

  ########################################################

  test "compression/1 valid when is correct"  do
  string = "aaabbbcccd"
  assert ConcatRami.compression(string) == "a3b3c3d"
  end

  test "compression/2 valid when is correct"  do
    string = "abc"
    assert ConcatRami.compression(string) == "abc"
  end



############################################################
  test "intercalar_dos_caracteres/1 valid when is correct"  do
  string = "abc"
  assert ConcatRami.intercalar_dos_caracteres(string) == "bac"
end


############################################################
test "super_digit/1 valid when is correct"  do
  valor = 93
  result = [3]
  assert ConcatRami.super_digit(valor) == result
end


############################################################
test "intercepcion_r/1 valid when is correct"  do
  lista1 = [1,2,4]
  lista2 = [1,2,3]
  salida = [4]
  assert ConcatRami.intercepcion_r(lista1, lista2) == salida
end


##########################################################

  #test ordenar_letras_abc
  test "ordenar_letras_abc/1 valid when is correct"  do
    string = "aababc"
    assert ConcatRami.ordenar_letras_abc(string) == "aaabbc"
   end

   test "ordenar_letras_abc/1 valid when is correct2"  do
    string = "ababacba"
    assert ConcatRami.ordenar_letras_abc(string) == "aaabbcab"
   end

   test "ordenar_letras_abc/1 valid when is correct3"  do
    string = "bbaaccbbaacc"
    assert ConcatRami.ordenar_letras_abc(string) == "aabbccaabbcc"
   end
   ##################################################

end
