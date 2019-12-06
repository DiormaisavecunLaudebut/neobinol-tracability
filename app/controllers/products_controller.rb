class ProductsController < ApplicationController
  before_action :set_text
  skip_before_action :authenticate_user!

  def product
    @lang = "en"
    if params["lang"]
      @lang = params["lang"]["en"] ? "en" : "fr"
    end
    @product = Product.where(code: params["product"]["code"].to_i) if params["product"]
  end

  private

  def set_text
    @text = [
      { fr: {
            title: "NANO-PHYTOCANNABINOÏDES",
            body:  "Les produits Neobinol contiennent des phytocannabinoïdes en provenance de chanvre de grade premium rigoureusement contrôlé et issu de méthodes de culture respectueuses de l'environnement. Le procédé d’extraction s'effectue en laboratoire en Suisse. Les phytocannabinoïdes sont distillés plusieurs fois pour atteindre un degré de pureté exceptionnelle leur permettant ainsi de délivrer leurs précieuses propriétés.",
            img:   "Les Nano-Phytocannabinoides © Neobinol 2019"
            },
        en: {
            title: "NANO-PHYTOCANNABINOIDES",
            body:  "Neobinol products contain phytocannabinoids from premium grade hemp that are carefully controlled and produced using environmentally friendly cultivation methods. The extraction process is carried out in a laboratory in Switzerland. Phytocannabinoids are distilled several times to achieve an exceptional degree of purity allowing them to deliver their valuable properties.",
            img:   "The Nano-Phytocannabinoids © Neobinol 2019"
      }},
      { fr: {
            title: "AUTRES INGREDIENTS",
            body:  "Notre engagement en faveur d’un développement durable et respectueux de l’environnement est total. Nous apportons un soin tout particulier au sourcing de nos matières premières végétales et travaillons main dans la main avec des entreprises locales qui partagent cette démarche. Les ingrédients qui viennent valoriser nos formulations répondent à de stricts critères qualitatifs afin d'offrir à nos clients des produits innovants et sûrs.",
            img:   "Producers of Rapeseed oil © Neobinol 2019"
        },
        en: {
            title: "OTHER INGREDIENTS",
            body:  "Our commitment to sustainable development is respectful of the environment. We take special care in sourcing our  raw materials and work hand in hand with local companies that share this approach. The ingredients that enhance our formulations meet strict quality criteria to offer our customers innovative and safe products.",
            img:   "Producers of Rapeseed oil © Neobinol 2019"
      }},
        { fr: {
              title: "FABRICATION",
              body:  "Neobinol est fabriqué par Swissbis Research, un laboratoire indépendant, propriété d’une entreprise familiale. Son équipe d'experts plaide en faveur de produits éthiques et sans risques fondé sur la science,  l'intégrité et les valeurs humanistes. Swissbis Research s’engage à délivrer des produits sûrs et de grande qualité.",
              img:   "Sampling at Swissbis Research © Neobinol 2019"
        },
          en: {
              title: "MANUFACTURING",
              body:  "Neobinol is manufactured by Swissbis Research, an independent laboratory owned by a family business. Its team of experts advocates for ethical and risk-free products based on real science and humanistic values. Swissbis Research is committed to delivering safe and high quality products.",
              img:   "Sampling at Swissbis Research © Neobinol 2019"
          }},

        { fr: {
              title: "CONTROLE QUALITE",
              body:  "La sécurité des produits Neobinol est en enjeu prioritaire. Les différentes étapes de notre process de travail font l’objet d'un contrôle- qualité rigoureux en interne. Nos produits finis sont répertoriés par lots facilement traçables. Chaque lot est testé individuellement en laboratoire tiers, accrédité et aux normes ISO/CEI 17025.",
              img:   "The Quality Control © Neobinol 2019-2020"
        },
          en: {
              title: "QUALITY CONTROL",
              body:  "The safety of Neobinol products is a priority. The different stages of our work process are subject to rigorous quality control internally. Our finished products are listed in easily traceable batches. Each batch is individually tested in a third party laboratory, accredited and to ISO / IEC 17025 standards.",
              img: "  The Quality Control © Neobinol 2019-2020"
          }},
        { fr: {
          title: "LOGISTIQUE",
          body:  "Nous privilégions les circuits courts et faisons appel à des entreprises de transport locales qui ont pris l’engagement de minimiser leur impact carbone. Nous mettons tout en œuvre pour que nos produits soient parfaitement emballés avant que nos partenaires en assurent l’acheminement auprès de nos distributeurs. C’est avec la Poste que vos produits vous parviennent dans toute la Suisse.",
          img:   "Logistics © Neobinol 2019-2020"
        },
          en: {
            title: "LOGISTIC",
            body:  "Neobinol favor short circuits and use local transport companies that have made the commitment to minimize their carbon impact. Neobinol strive to ensure that our products are perfectly packaged before our partners ensure delivery to our distributors. It's with Swiss Post that your products reach you all over Switzerland.",
            img:   "Logistics © Neobinol 2019-2020"
          }},
        { fr: {
              title: "POINT DE VENTES",
              body:  "Nous collaborons avec des entreprises de distribution suisse jeunes et dynamiques, qui proposent des produits toujours plus innovants tout en assurant un service à la clientèle proche et dévoué.",
              img:   "Sweet Spot Shop © Sweet Spot 2019-2020"
        },
          en: {
            title: "POINT DE VENTES",
            body:  "Neobinol collaborate with young and dynamic Swiss distribution companies, which offer ever more innovative products while ensuring close and dedicated customer service.",
            img:   "Sweet Spot Shop © Sweet Spot 2019-2020"
          }
        }
      ]
  end
end
