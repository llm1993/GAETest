package com.llm.domain;

/**
 * Created by 87762 on 2017/2/4.
 */


import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

@PersistenceCapable
public class MyFile {

        @PrimaryKey
        @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
        private Key key;

        @Persistent
        private String filename;

        @Persistent
        private Text filecode;

        public Key getKey() {
            return key;
        }

        public void setKey(Key key) {
            this.key = key;
        }

        public String getFilename() {
            return filename;
        }

        public void setFilename(String filename) {
            this.filename = filename;
        }

        public Text getFilecode() {
            return filecode;
        }

        public void setFilecode(Text filecode) {
            this.filecode = filecode;
        }
    }
