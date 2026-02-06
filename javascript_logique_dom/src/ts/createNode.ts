export function createNode(node) {
    // 'node' est un objet qui est un element DOM à créer :
    // {
    //      type: "balise à créer",
    //      content: "contenu textuel dans la balise",
    //      id: "classes de la balise",
    //      childs: []
    // }
    // dans la clef 'childs' se trouve un tableau pouvant contenir :
    // un ou plusieurs objets définissant de nouveaux éléments
    // (ayant les mêmes propriétés 'type', 'content', 'id', 'childs')
    // ces éléments supplémentaires seront insérés comme enfant de l'élément en cours de création
    if (node.childs.length > 0) {
        // on crée le parent
        const nodeDefinition = {
            type: node.type,
            content: node.content,
            id: node.id,
            childs: []
        };
        const parentNode = createNode(nodeDefinition);
        // on crée les enfants
        node.childs.forEach((child) => {
            const childDefinition = {
                type: child.type,
                content: child.content,
                id: child.id,
                childs: child.childs
            };
            // si l'enfant lui-même a 1 ou plusieurs enfants
            // la fonction continue à se boucler pour les créer et les ajouter
            const newChild = createNode(childDefinition);
            // on ajoute l'enfant au parent
            parentNode.appendChild(newChild);
        });
        return parentNode;
    // un seul élément à créer sans enfants :
    } else {
        const type = node.type;
        const content = node.content;
        const id = node.id;
        // on crée un nouvel element du DOM
        const newNode = document.createElement(type);
        if (type == "option") {
            // cas particulier des balises <option>
            // l'id sert à spécifier la value
            newNode.value = id;
        } else {
            // pour les autres balises
            // on lui ajoute un id si demandé
            if (id != "") {
                newNode.id = id;
            }
        }
        // on lui injecte un contenu si spécifié
        if (content != "") {
            newNode.textContent = content;
        }
        // on renvoie l'élément prêt à l'emploi
        return newNode;
    }
}