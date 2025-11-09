package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.ui.Model;
import java.util.List;
import org.springframework.stereotype.Controller;


@Controller
public class AnimalController{

    @Autowired
    private AnimalService animalService;

    @GetMapping("/animals")
    public String getAllAnimals(Model model){
        List<Animal> animals = (List<Animal>) animalService.getAllAnimals();
        model.addAttribute("animalList", animals);
        return "animal-list";
    }

    @GetMapping("/animals/name")
    public Object getAnimalsByName(@RequestParam String key){
        if (key != null){
            return animalService.getAnimalsByName(key);
        } else{
            return animalService.getAllAnimals();
        }
        
    }

    @GetMapping("/animals/{id}")
    public String getAnimalById(@PathVariable long id, Model model){
        Animal animal = animalService.getAnimalById(id);
        model.addAttribute("animal", animal);
        return "animal-details";
    }

    @GetMapping("/animals/type/{type}")
    public Object getAnimalsByAnimalType(@PathVariable String type){
        return animalService.getAnimalsByAnimalType(type);
    }

    @GetMapping("/animals/olderThan")
    public Object getOlderAnimals(@RequestParam(name = "age", defaultValue = "5.0") double age){
        return new ResponseEntity<>(animalService.getOlderAnimals(age), HttpStatus.OK);
    }

    @PostMapping("/animals")
    public Object addAnimal(@RequestBody Animal animal){
        return animalService.addAnimal(animal);
    }

    @PutMapping("/animals/{id}")
    public Animal updateAnimal(@PathVariable Long id, @RequestBody Animal animal){
        animalService.updateAnimal(id, animal);
        return animalService.getAnimalById(id);
    }

    @DeleteMapping("/animals/{id}")
    public Object deleteAnimal(@PathVariable Long id){
        animalService.deleteAnimal(id);
        return animalService.getAllAnimals();
    }

    @PostMapping("/animals/writeFile")
    public Object writeJson(@RequestBody Animal animal){
        return animalService.writeJson(animal);
    }
    
    @GetMapping("/animals/readFile")
    public Object readJson(){
        return animalService.readJson();
    }

}