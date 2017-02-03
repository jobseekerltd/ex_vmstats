defmodule ExVmstats.Backends.Statix do
  alias ExVmstats.Backends.Statix.Server, as: S

  def counter(value, metric, opts \\ default_options()) do
    S.increment(metric, value, merge_opts(opts))
  end

  def gauge(value, metric, opts \\ default_options()) do
    S.gauge(metric, value, merge_opts(opts))
  end

  def histogram(value, metric, opts \\ default_options()) do
    S.histogram(metric, value, merge_opts(opts))
  end

  def timer(value, metric, opts \\ default_options()) do
    S.timing(metric, value, merge_opts(opts))
  end

  defp merge_opts(opts), do: Keyword.merge(opts, default_options, fn _k, v1, _v2 -> v1 end)

  defp default_options, do: [sample_rate: 1, tags: []]
end

defmodule ExVmstats.Backends.Statix.Server do
  use Statix
end
