**README**

1. **Generate Terraform graph:** 
   ```
   terraform graph > graph.dot
   ```

2. **Install Graphviz:** 
   ```
   sudo apt install graphviz
   ```

3. **Convert DOT to SVG:** 
   ```
   cat graph.dot | dot -Tsvg > graph.svg
   ```

4. **View the graph:** 
   Open `graph.svg` in your preferred browser.
