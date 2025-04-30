import nbformat
from nbconvert import MarkdownExporter

def convert_ipynb_to_md(ipynb_file, md_file):
    with open(ipynb_file, 'r', encoding='utf-8') as f:
        nb = nbformat.read(f, as_version=4)
    
    exporter = MarkdownExporter()
    body, _ = exporter.from_notebook_node(nb)
    
    with open(md_file, 'w', encoding='utf-8') as f:
        f.write(body)

# 使用示例
# convert_ipynb_to_md('PMSM_Basic_Note.ipynb', 'output.md')
convert_ipynb_to_md('Observer.ipynb' ,'Observer.md')
convert_ipynb_to_md('Observer_SM.ipynb' ,'Observer_SM.md')
convert_ipynb_to_md('PMSM_Estimation_BEMF.ipynb' ,'PMSM_Estimation_BEMF.md')
convert_ipynb_to_md('PMSM_Estimation_BEMF_Luenberger.ipynb' ,'PMSM_Estimation_BEMF_Luenberger.md')
convert_ipynb_to_md('PMSM_Estimation_BEMF_NXP.ipynb' ,'PMSM_Estimation_BEMF_NXP.md')
convert_ipynb_to_md('PMSM_Estimation_Infineon_Flux_001.ipynb' ,'PMSM_Estimation_Infineon_Flux_001.md')
convert_ipynb_to_md('PMSM_Estimation_Infineon_Flux_002.ipynb' ,'PMSM_Estimation_Infineon_Flux_002.md')
convert_ipynb_to_md('PMSM_Estimation_Renesas.ipynb' ,'PMSM_Estimation_Renesas.md')
convert_ipynb_to_md('PMSM_Estimation_RL.ipynb' ,'PMSM_Estimation_RL.md')
