package br.com.solinftec.treino.api.controller;

import br.com.solinftec.treino.domain.dto.fazenda.GetAllFazendaDto;
import br.com.solinftec.treino.domain.service.FazendaService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/fazenda")
@RequiredArgsConstructor
public class FazendaController {

    private final FazendaService service;

    @GetMapping("")
    public ResponseEntity<List<GetAllFazendaDto>> getAll() {
        return ResponseEntity.ok().body(service.getAll());
    }

}
