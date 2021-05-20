defmodule Pparks.Accounts do

    import Ecto.Query, warn: false
    alias Pparks.Repo

    alias Pparks.Accounts.Park

    def list_parks do
        Repo.all(Park)
    end

    def get_park!(id), do: Repo.get!(Park, id)

    def create_park(attrs \\ %{}) do
        %Park{}
        |> Park.changeset(attrs)
        |> Repo.insert()
    end

    def update_park(%Park{} = park, attrs) do
        park
        |> Park.changeset(attrs)
        |> Repo.update()
    end

    def delete_park(%Park{} = park) do
        Repo.delete(park)
    end

    def change_park(%Park{} = park) do
        Park.changeset(park, %{})
    end
end
