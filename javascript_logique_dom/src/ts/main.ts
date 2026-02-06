import { themes } from './datas.js';
import { createNode } from './createNode.js';

// CREATION LISTE DES THEMES & SKILLS
// on cible la section skills
const section: HTMLElement = document.getElementById("skills")!;
// si des thèmes sont présents, on prépare la section
if (themes.length !== 0) {
    const skillsTitle = createNode({type:"h2", content:"Liste des compétences", id:"", childs:[]});
    section.appendChild(skillsTitle);
    themes.forEach((theme, index) => {
        const themeIndex = "theme_" + index;

        // on en profite pour préparer la liste des thèmes à proposer dans le formulaire
        const themeList = createNode({type:"option", content:theme.name, id:themeIndex, childs:[]});
        const themeSelect: HTMLElement = document.getElementById("theme")!;
        themeSelect.appendChild(themeList);

        // objet contenant les définitions des éléments de thèmes à créer
        const themeNode = {
            type: "article",
            content: "",
            id: "",
            childs: [
                {
                    type: "h3",
                    content: theme.name,
                    id: "",
                    childs: []
                },
                {
                    type: "p",
                    content: theme.desc,
                    id: "",
                    childs: []
                }
            ]
        };
        // on crée l'article contenant le thème
        const article = createNode(themeNode);
        // on crée la liste des skills
        if (theme.skills.length !== 0) {
            // on ajoute l'id du thème à la liste
            // pour y ajouter des skills avec le formulaire par la suite
            const ul = createNode({type:"ul", content:"", id:themeIndex, childs:[]});
            theme.skills.forEach((skill) => {
                const newSkill = {
                    type: "li",
                    content: "",
                    id: "",
                    childs: [
                        {
                            type: "details",
                            content: "",
                            id: "",
                            childs: [
                                {
                                    type: "summary",
                                    content: skill.name,
                                    id: "",
                                    childs: []
                                },
                                {
                                    type: "p",
                                    content: skill.desc,
                                    id: "",
                                    childs: []
                                }
                            ]
                        }
                    ]
                };
                // on ajoute le skill à la liste
                const li = createNode(newSkill);
                ul.appendChild(li);
            });
            // on ajoute la liste des skills au theme
            article.appendChild(ul);
        }
        // on ajoute le thème à la section
        section.appendChild(article);
    });
}

// GESTION DU FORMULAIRE
const formBlock: HTMLElement = document.getElementById("form")!;
const formSelect = <HTMLSelectElement>document.getElementById("theme");
const formInput = <HTMLInputElement>document.getElementById("skill");
const formTextarea = <HTMLTextAreaElement>document.getElementById("desc");
const formError: HTMLElement = document.getElementById("error")!;

formBlock.addEventListener('submit', (target) => {
	target.preventDefault();

    const errorMessage = [];
    if (formSelect.value === "") {
        errorMessage.push("Un thème doit être choisi !")
    }
    if (formInput.value === "") {
        errorMessage.push("Donnez un nom de compétence !")
    }
    let errorDisplay = errorMessage.join(" ");

    if (errorDisplay === "") {
        const skillList = document.getElementById(formSelect.value);
        if (skillList !== null) {
            const newSkill = {
                type: "li",
                content: "",
                id: "",
                childs: [
                    {
                        type: "details",
                        content: "",
                        id: "",
                        childs: [
                            {
                                type: "summary",
                                content: formInput.value,
                                id: "",
                                childs: []
                            },
                            {
                                type: "p",
                                content: formTextarea.value,
                                id: "",
                                childs: []
                            }
                        ]
                    }
                ]
            };
            const addedSkill = createNode(newSkill);
            skillList.appendChild(addedSkill);
        } else {
            errorDisplay = "Thème non trouvé";
        }
    }
    formError.textContent = errorDisplay;
});