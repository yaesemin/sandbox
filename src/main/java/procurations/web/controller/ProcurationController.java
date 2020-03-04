package procurations.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import procurations.model.Procuration;
import procurations.model.ProcurationDto;
import procurations.service.ProcurationService;

import javax.validation.Valid;

@RestController
@RequestMapping(value = ProcurationController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class ProcurationController {

    static final String REST_URL = "/procuration";

    @Autowired
    ProcurationService procurationService;

    @PostMapping("/create")
    public ProcurationDto createByType(@Valid @RequestBody Procuration procuration) {
        return procurationService.create(procuration);
    }

    @GetMapping("/get/{id}")
    public ProcurationDto get(@PathVariable int id) {
        return procurationService.get(id);
    }
}
