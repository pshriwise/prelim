
import numpy as np
import pandas as pd
import plotly.offline as py
import plotly.graph_objs as go
import plotly

models = ["FNG (facet tolerance)","FNG (length tolerance)"]
mcnp_data = [205.99,205.99]
emdag_data = [303.63,257.6]
dagmc_data = [1023.63,974.92]

mcnp_data = go.Bar(x = models,
                    y = mcnp_data,
                    name = 'MCNP5')
emdag_data = go.Bar(x = models,
                    y = emdag_data,
                    name = 'EmDAG-MCNP5')
dagmc_data = go.Bar(x = models,
                    y = dagmc_data,
                    name = 'DAG-MCNP5')
data = [mcnp_data,emdag_data,dagmc_data]
layout = go.Layout(barmode='group', font = dict(size = 20),
                   yaxis = dict(title = "Runtime (min)"),
                   legend = dict(font = dict( size = 20)))
fig = go.Figure(data=data,layout=layout)
py.plot(fig, filename="emdag_fng_performance.html", show_link = False, auto_open=False)
