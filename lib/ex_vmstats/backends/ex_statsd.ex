defmodule ExVmstats.Backends.ExStatsD do
  def counter(value, metric, opts \\ default_options()) do
    ExStatsD.counter(value, metric, merge_opts(opts))
  end

  def gauge(value, metric, opts \\ default_options) do
    ExStatsD.gauge(value, metric, merge_opts(opts))
  end

  def histogram(value, metric, opts \\ default_options) do
    ExStatsD.histogram(value, metric, merge_opts(opts))
  end

  def timer(value, metric, opts \\ default_options) do
    ExStatsD.timer(value, metric, merge_opts(opts))
  end

  defp merge_opts(opts), do: Keyword.merge(opts, default_options, fn _k, v1, _v2 -> v1 end)

  defp default_options, do: [sample_rate: 1, sample_size: 1, tags: []]
end
