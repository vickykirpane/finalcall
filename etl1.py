import streamlit as st
import pandas as pd
data = {
    "Task" : ["Extract" , "Transform" , "Load"],
    "status" : ["completed", "Processing", "Pending"]
   }
df = pd.DataFrame (data)
st.title("streamlit App")
st.write(df)