package com.cdweb.Treestore.api.output;


import com.cdweb.Treestore.dto.TreeDto;

import java.util.ArrayList;
import java.util.List;

public class TreeOutput {
    private int page;
    private int totalPage;
    private List<TreeDto> listResult = new ArrayList<>();

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<TreeDto> getListResult() {
        return listResult;
    }

    public void setListResult(List<TreeDto> listResult) {
        this.listResult = listResult;
    }
}
