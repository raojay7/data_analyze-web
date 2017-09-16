package com.data_analyze.teachsum.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.teachsum.entity.Teachsum;

import java.io.File;

/**
 * Created by jiacheng on 17-3-19.
 */
public interface TeachsumService extends BaseService<Teachsum> {
    void importTeachsum(File excel, String fileType, int year);
}
