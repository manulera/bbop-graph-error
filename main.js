import { OboGraphViz } from "obographviz";

const resp = await fetch("http://current.geneontology.org/ontology/go.json");
const goJson = await resp.json();

const goGraph = new OboGraphViz(goJson);
const bbopGraph = goGraph.createBbopGraph();

const subgraph = bbopGraph.get_descendent_subgraph(
  "http://purl.obolibrary.org/obo/GO_0030864"
);

subgraph
  .all_edges()
  .forEach((edge) =>
    console.log(
      edge
        .subject_id()
        .replace("http://purl.obolibrary.org/obo/", "")
        .replace("_", ":")
    )
  );
