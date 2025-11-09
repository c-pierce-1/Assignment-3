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

import jakarta.websocket.server.PathParam;


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

    @GetMapping("/animals/new")
    public String showCreateForm(Model model){
        model.addAttribute("animal", new Animal());
        return "animal-create";
    }

    @GetMapping("/animals/updateForm/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model){
        Animal animal = animalService.getAnimalById(id);
        model.addAttribute("animal", animal);
        return "animal-update";
    }

    @PostMapping("/animals/new")
    public String addAnimal( Animal animal){
        Animal newAnimal = animalService.addAnimal(animal);
        return "redirect:/animals/" + newAnimal.getAnimalId();
    }

    @PutMapping("/animals/update")
    public String updateAnimal(Animal animal){
        animalService.updateAnimal(animal.getAnimalId(), animal);
        return "redirect:/animals/" + animal.getAnimalId();
    }

    @GetMapping("/animals/delete/{id}")
    public String deleteAnimal(@PathVariable Long id){
        animalService.deleteAnimal(id);
        return "redirect:/animals";
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