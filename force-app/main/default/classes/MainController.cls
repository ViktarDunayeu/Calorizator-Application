public with sharing class MainController {

    public static void calculateBZU(List<TestProduct> listPr){
        Decimal totalWeight = 0.0;
        for(TestProduct pr: listPr){
            totalWeight += pr.weight;
        }

        for(TestProduct pr: listPr){
            pr.procent = pr.weight / totalWeight;
        }

        Decimal totalKkal = 0.0;
        Decimal totalProteins = 0.0;
        Decimal totalFats = 0.0;
        Decimal totalCarboh = 0.0;

        for(TestProduct pr: listPr){
            totalKkal = totalKkal + (pr.kkal * pr.procent);
            totalProteins = totalProteins + (pr.proteins * pr.procent);
            totalFats = totalFats + (pr.fats * pr.procent);
            totalCarboh = totalCarboh + (pr.carbohydrates * pr.procent);
        }
    }
    public class TestProduct {
        Decimal proteins;
        Decimal fats;
        Decimal carbohydrates;
        Decimal kkal;
        Decimal weight;
        Decimal procent;

        public TestProduct(Decimal prot, Decimal fat, Decimal carboh, Decimal kkal, Decimal weight){
            this.proteins = prot;
            this.fats = fat;
            this.carbohydrates = carboh;
            this.kkal = kkal;
            this.weight = weight;
        }
    }

    /*
    MainController.TestProduct prod1 = new MainController.TestProduct(6.1, 0.0, 14.9, 84.0, 410.0);
    MainController.TestProduct prod2 = new MainController.TestProduct(3.7, 1.7, 1.1, 34.0, 294.0);
    MainController.TestProduct prod3 = new MainController.TestProduct(1.4, 0.0, 10.4, 47.0, 94.0);
    MainController.TestProduct prod4 = new MainController.TestProduct(11.0, 0.5, 75.0, 350.0, 100.0);
    MainController.TestProduct prod5 = new MainController.TestProduct(0.7, 0.8, 23.0, 102.0, 5.0);
    MainController.TestProduct prod6 = new MainController.TestProduct(3.5, 0.0, 10.0, 55.0, 17.0);
    MainController.TestProduct prod7 = new MainController.TestProduct(0.0, 99.9, 0.0, 899.0, 51.0);

    List<MainController.TestProduct> listPr = new List<MainController.TestProduct>();
    listPr.add(prod1);
    listPr.add(prod2);
    listPr.add(prod3);
    listPr.add(prod4);
    listPr.add(prod5);
    listPr.add(prod6);
    listPr.add(prod7);
    MainController.calculateBZU(listPr);
    */
}
