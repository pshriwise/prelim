
import numpy as np
import pandas as pd
import plotly.offline as py
import plotly.graph_objs as go
import plotly

sphere_models = ["Sphere", "Nested Spheres"]
mcnp_sphere_data = [2.93,4.35]
emdag_sphere_data = [4.73,7.94]
dagmc_sphere_data = [25.13,50.82]


mcnp_data = go.Bar(x = sphere_models,
                    y = mcnp_sphere_data,
                    name = 'MCNP5')
emdag_data = go.Bar(x = sphere_models,
                    y = emdag_sphere_data,
                    name = 'EmDAG-MCNP5')
dagmc_data = go.Bar(x = sphere_models,
                    y = dagmc_sphere_data,
                    name = 'DAG-MCNP5')
data = [mcnp_data,emdag_data,dagmc_data]
layout = go.Layout(barmode='group', font = dict(size = 20),
                   yaxis = dict(title = "Runtime (min)"),
                   legend = dict(font = dict( size = 20)))
fig = go.Figure(data=data,layout=layout)
py.plot(fig, filename="emdag_sphere_performance.html", show_link = False, auto_open = False)


cube_models = ["Cube", "Nested Cubes"]
mcnp_cube_data = [5.03,4.73]
emdag_cube_data = [5.80,4.35]
dagmc_cube_data = [10.56,9.26]


mcnp_data = go.Bar(x = cube_models,
                    y = mcnp_cube_data,
                    name = 'MCNP5')
emdag_data = go.Bar(x = cube_models,
                    y = emdag_cube_data,
                    name = 'EmDAG-MCNP5')
dagmc_data = go.Bar(x = cube_models,
                    y = dagmc_cube_data,
                    name = 'DAG-MCNP5')
data = [mcnp_data,emdag_data,dagmc_data]
layout = go.Layout(barmode='group', font= dict(size = 20),
                   yaxis = dict(title = "Runtime (min)"),
                   legend = dict(font = dict( size = 20)))
fig = go.Figure(data=data,layout=layout)
py.plot(fig, filename="emdag_cube_performance.html", show_link = False, auto_open = False)

