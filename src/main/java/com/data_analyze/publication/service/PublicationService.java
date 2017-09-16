package com.data_analyze.publication.service;

import com.data_analyze.core.service.BaseService;
import com.data_analyze.publication.entity.Publication;

import java.io.File;

/**
 * Created by jiacheng on 17-3-18.
 */
public interface PublicationService extends BaseService<Publication>{
    public void importPublication(File excel, String fileType, int year);
}
