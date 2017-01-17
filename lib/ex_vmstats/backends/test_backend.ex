defmodule ExVmstats.TestBackend do
  require Logger

  def counter(value, metric) do
    Logger.info "counter #{inspect {value, metric}}"
  end
  def counter(value, metric, opts) do
    Logger.info "counter #{inspect {value, metric}} with opts #{inspect opts}"
  end

  def gauge(value, metric) do
    Logger.info "gauge #{inspect {value, metric}}"
  end
  def gauge(value, metric, opts) do
    Logger.info "gauge #{inspect {value, metric}} with opts #{inspect opts}"
  end

  def histogram(value, metric) do
    Logger.info "histogram #{inspect {value, metric}}"
  end
  def histogram(value, metric, opts) do
    Logger.info "histogram #{inspect {value, metric}} with opts #{inspect opts}"
  end

  def timer(value, metric) do
    Logger.info "timer #{inspect {value, metric}}"
  end
  def timer(value, metric, opts) do
    Logger.info "timer #{inspect {value, metric}} with opts #{inspect opts}"
  end
end
