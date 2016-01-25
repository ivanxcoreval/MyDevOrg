public class Fridge {
    public String brend   {get;set;}
    public String color;
    public static String word = 'wow!';
    public final static String made = 'China';

    public Fridge(String bName, String cName){
        brend = bName;
        color = cName;
        System.debug(bName);
        System.debug(cName);
    }

}