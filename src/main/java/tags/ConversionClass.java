package tags;

public class ConversionClass {
    public static float konvertiere(String sourceUnit, String targetUnit, float value) {
        // Implementiere hier deine Umrechnungslogik
        // Beispiel:
        if (sourceUnit.equals("km") && targetUnit.equals("miles")) {
            return value * 0.621371f;
        } else {
            return -1; // Hier solltest du einen sinnvollen Defaultwert oder Fehlerwert zurückgeben
        }
    }
}
