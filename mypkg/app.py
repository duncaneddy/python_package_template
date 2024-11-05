import streamlit as st

st.title("Example Streamlit Application")

st.markdown("""
This is an example streamlit application.
""")

if st.button("Click Me"):
    st.success("You clicked me!")