import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface AnimalRepository extends JpaRepository<Animal, Long> {
    List<Animal> getAnimalsByType(String animalType);

    @Query(value = "SELECT * FROM animals a WHERE a.age >= ?1", nativeQuery = true)
    List<Animal> getOlderAnimals(double age);

    @Query(value = "SELECT * FROM animals a WHERE a.name ILIKE %?1%", nativeQuery = true)
    List<Animal> getAnimalsByName(String name);
}