defmodule Yappay.Numbers do
  def sum_from_file(filename) do
    {:ok, file} = File.read("#{filename}.csv")
    handle_file(file)
  end

  defp handle_file({:ok, file}), do: file
  defp handle_file({:error, _reason}), do: {:error, "Invalid file!"}
end
