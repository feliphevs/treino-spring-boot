package br.com.solinftec.treino.domain.repository;

import br.com.solinftec.treino.domain.model.Fazenda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FazendaRepository extends JpaRepository<Fazenda, Long> {

}
