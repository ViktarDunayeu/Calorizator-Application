public with sharing class CalorizatorController {

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
    MainController.TestProduct prod1 = new MainController.TestProduct(18.0, 12.0, 0.0, 180.0, 184.0);
    MainController.TestProduct prod2 = new MainController.TestProduct(7.3, 3.0, 50.0, 260.0, 139.0);
    MainController.TestProduct prod3 = new MainController.TestProduct(0.8, 72.5, 1.3, 660.0, 53.0);
    MainController.TestProduct prod4 = new MainController.TestProduct(0.9, 0.1, 3.0, 16.0, 22.0);

    List<MainController.TestProduct> listPr = new List<MainController.TestProduct>();
    listPr.add(prod1);
    listPr.add(prod2);
    listPr.add(prod3);
    listPr.add(prod4);
    MainController.calculateBZU(listPr);
    */
}