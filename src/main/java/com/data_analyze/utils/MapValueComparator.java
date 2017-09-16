package com.data_analyze.utils;

import java.util.Comparator;
import java.util.Map;

/**
 * Created by cx on 2017/04/09.
 */
class MapValueComparator implements Comparator<Map.Entry<String, Float>>
{

    @Override
    public int compare(Map.Entry<String, Float> o1, Map.Entry<String, Float> o2) {
        return o1.getValue().compareTo(o2.getValue());
    }
}