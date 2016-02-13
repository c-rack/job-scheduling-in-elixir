defmodule Example1 do

  use GenServer

  def init(state) do
    Process.send_after(self, :tick, 1000)
    {:ok, state}
  end

  def handle_info(:tick, state) do
    Process.send_after(self, :tick, 1000)
    IO.puts "Executing every second"
    {:noreply, state}
  end

end

# GenServer.start_link(Example1, nil)
