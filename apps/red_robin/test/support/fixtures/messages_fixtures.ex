defmodule RedRobin.MessagesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `RedRobin.Messages` context.
  """

  @doc """
  Generate a service.
  """
  def service_fixture(attrs \\ %{}) do
    {:ok, service} =
      attrs
      |> Enum.into(%{
        alias_name: "some alias_name",
        config: %{},
        provider: "some provider"
      })
      |> RedRobin.Messages.create_service()

    service
  end
end
