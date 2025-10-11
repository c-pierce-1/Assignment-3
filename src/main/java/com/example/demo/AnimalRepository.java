import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface AnimalRepository extends JpaRepository<Animal, Long> {
    List<Animal> getAnimalsByType(String animalType);
    List<Animal> getOlderAnimals(double age);
    List<Animal> getAnimalsByName(String name);
}