defmodule Sigils do
  def function1() do
    regex = ~r/gato|perro/
    "perro" =~ regex
  end

  def function2() do
    regex = ~r/hello/
    "HELLO" =~ regex
  end

  def function3() do
    regex = ~r/hello/i
    "HELLO" =~ regex
  end

  def list_string_sigils() do
    ~s{this is a string with "double" quotes, not 'singl' ones}
    "this is a string with \"double\" quoutes, not 'single' ones"
  end

  def list_string_sigils2() do
    ~s{this is a string with \n \e \s \x26 --- "double" quotes, not 'singl' ones}
  end

  def list_string_sigils3() do
    ~s"""
    this is
    a multiple line string  --
       hola
    """
  end

  def list_character_sigils() do
    ~c{this is a string with 'single' ones}
  end

  def list_words_sigils() do
    ~w{foo bar bat fish dog cat}
  end

  def calendar_date_sigils() do
    # YYYYMMDD
    d = ~D[2021-02-22]
    {d.day, d.month, d.year}
  end

  def calendar_time_sigils() do
    # t = ~T[23:42:05]
    t = ~T[09:42:05]
    {t.second, t.minute, t.hour}
  end

  def calendar_date_time_sigils() do\
    #NaiveDateTime
    dt = ~N[2021-02-22 09:48:07]
    {dt.day, dt.month, dt.year, dt.second, dt.minute, dt.hour}
  end

  def calendar_date_time_sigils3() do\
    #UTCDateTime
    dt = ~U[2021-02-22 09:48:07.090789Z]
    {dt.day, dt.month, dt.year, dt.second, dt.minute, dt.hour, dt.time_zone}
  end

  def calendar_date_time_sigils2() do
    %DateTime{day: day, month: month, year: year, second: second, minute: minute, hour: hour} =
      DateTime.utc_now()
    {day, month, year, hour, minute, second}
  end
end
