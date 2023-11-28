defmodule Verify do
  def broken() do
    defmodule Foo do
      @after_verify __MODULE__

      def __after_verify__(_) do
        raise "what"
      end
    end
  rescue
    _e ->
      {:error, "something went wrong"}
  end

  def not_broken() do
    defmodule Bar do
      @after_compile __MODULE__

      def __after_compile__(_, _) do
        raise "what"
      end
    end

    :ok
  rescue
    _e ->
      {:error, "something went wrong"}
  end
end
