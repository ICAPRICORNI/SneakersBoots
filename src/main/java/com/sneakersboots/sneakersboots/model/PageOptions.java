package com.sneakersboots.sneakersboots.model;

import lombok.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

@Value
public class PageOptions {
    private static final int DEFAULT_LIMIT = 6;

    private final Integer page;
    private final Integer limit;

    public Integer getPage() {
        return (page == null || page < 1) ? 1 : page;
    }

    public Integer getLimit() {
        return (limit == null || limit < 1) ? DEFAULT_LIMIT : limit;
    }

    public Pageable toPageable() {
        return PageRequest.of(getPage() - 1, getLimit(), Sort.by("id").descending());
    }
}
