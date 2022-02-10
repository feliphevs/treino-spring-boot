package br.com.solinftec.treino.domain.repository;

import br.com.solinftec.treino.domain.model.Fazendeiro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FazendeiroRepository extends JpaRepository<Fazendeiro, Long> {

}
