package hello.controller;

import hello.repository.AgentRepository;
import hello.model.Agent;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.Optional;


@RestController
@RequestMapping("/")
public class AgentController {


    @Autowired
    private AgentRepository agentRepo;

    //create
    @ApiOperation(value = "Kreiraj novog")
    @PostMapping("/agent")
    Agent createAgent(@RequestBody Agent agent){
        return agentRepo.save(agent);
    }

    //read
    @ApiOperation(value = "Dohvati sve")
    @GetMapping("/")
    @CrossOrigin(origins = "http://localhost:4000")
    public Iterable<Agent> getAllAgents(){
        return agentRepo.findAll();
    }

    //update
    @ApiOperation(value = "Uredi")
    @ApiParam(format = "application/json")
    @PutMapping("/agent")
    Agent updateAgent(@RequestBody Agent agent){
        return agentRepo.save(agent);
    }

    //delete
    @ApiOperation(value = "Izbrisi agenta pomocu ID-a")
    @CrossOrigin(origins = "http://localhost:4000")
    @DeleteMapping("/agent/{id}") void deleteAgent(@PathVariable Integer id){
        agentRepo.deleteById(id);
    }


    //findbyID
    @ApiOperation(value = "Dohvati agenta pomocu ID-a")
    @GetMapping("/agent/{id}")
    Optional<Agent> findAgentWithID(@PathVariable Integer id){
        return agentRepo.findById(id);
    }
}
