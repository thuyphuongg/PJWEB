package com.cdweb.Treestore.domain.output;

import com.cdweb.Treestore.dto.TreeDto;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class ListTreeOutput {
    private int page;
    private int totalPage;
    private List<TreeDto> listResult = new ArrayList<>();

}
