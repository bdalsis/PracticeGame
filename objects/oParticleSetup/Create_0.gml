particle_system = part_system_create();

particle_walk = part_type_create();

part_type_sprite(particle_walk, sWalkParticle, 0, 0, 0);
part_type_size(particle_walk, 2, 2.5, 0.001, 0)
part_type_direction(particle_walk, 0, 359, 0, 1);
part_type_speed(particle_walk, 0.1, 0.15, -0.004, 0);
part_type_life(particle_walk, 10, 20);
part_type_alpha3(particle_walk, 0.1, 0.2, 0.01);

