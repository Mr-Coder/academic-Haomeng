---
title: "Qualia role-based quantity relation extraction for solving algebra story problems"
authors:
- admin
- Bin He
- Tianyu Zhang
date: "2023-01-01T00:00:00Z"
doi: "10.32604/cmes.2023.023242"

# Schedule page publish date (NOT publication's date).
publishDate: "2023-01-01T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "*Computer Modeling in Engineering and Sciences*"
publication_short: "*CMES*"

abstract: "A qualia role-based entity-dependency graph (EDG) is proposed to represent and extract quantity relations for solving algebra story problems stated in Chinese. Traditional neural solvers use end-to-end models to translate problem texts into math expressions, which lack quantity relation acquisition in sophisticated scenarios. The proposed method leverages EDG to represent quantity relations hidden in the qualia roles of math objects. Algorithms were designed for EDG generation and quantity relation extraction to solve algebra story problems."

# Summary. An optional shortened abstract.
summary: "提出了基于感质角色的实体依赖图（EDG）来表示和提取数量关系，用于求解中文代数文字题。"

tags:
- Algebra Story Problems
- Quantity Relation Extraction
- Educational Technology
- Natural Language Processing
- Knowledge Graphs

featured: true

links:
- name: DOI
  url: "https://doi.org/10.32604/cmes.2023.023242"
url_pdf: ''
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Qualia role-based entity-dependency graph for algebra story problems'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---

This paper presents a novel approach to solving algebra story problems in Chinese using a qualia role-based entity-dependency graph (EDG). The method addresses the limitations of traditional neural solvers by explicitly modeling quantity relations hidden in the qualia roles of mathematical objects.

## Key Contributions

1. **Entity-Dependency Graph (EDG)**: A novel representation that captures quantity relations in algebra story problems
2. **Qualia Role Integration**: Leverages qualia structure to understand implicit relationships between mathematical entities
3. **Algorithm Design**: Develops specific algorithms for EDG generation and quantity relation extraction
4. **Chinese Language Support**: Addresses the unique challenges of solving algebra problems stated in Chinese

## Methodology

The proposed approach consists of several key components:

- **Problem Text Analysis**: Natural language processing to understand the problem statement
- **Entity Extraction**: Identification of mathematical objects and their properties
- **Qualia Role Assignment**: Mapping entities to their qualia roles (formal, constitutive, telic, agentive)
- **EDG Construction**: Building the entity-dependency graph based on qualia relationships
- **Quantity Relation Extraction**: Deriving mathematical relationships from the EDG
- **Solution Generation**: Converting extracted relations into mathematical expressions

## Experimental Results

The experimental evaluation demonstrates the effectiveness of the proposed method in solving Chinese algebra story problems, showing improvements over traditional end-to-end neural approaches in terms of accuracy and interpretability.

## Impact

This work contributes to the field of educational technology by providing a more interpretable and effective approach to automated math problem solving, with potential applications in intelligent tutoring systems and educational AI. 