CONTAINER fx_particle_gridtoparticles
{
	NAME fx_particle_gridtoparticles;
	INCLUDE fx_force_base;
	INCLUDE fx_base_constraints;

	GROUP ID_FORCE_BASE
	{
		DEFAULT 1;
		GROUP ID_PORT_BASE
		{
			COLUMNS 2;
			LONG PARTICLE_GTP_PARTICLES_MODE
			{
				CYCLE
				{
					PARTICLE_GTP_PARTICLES_MODE_INCLUDE;
					PARTICLE_GTP_PARTICLES_MODE_EXCLUDE;
				}
			} STATICTEXT { JOINEND;}
			IN_EXCLUDE PARTICLE_GTP_PARTICLES
			{
				SEND_SELCHNGMSG 1;
				NUM_FLAGS 4; 
				INIT_STATE 2;
				SCALE_H;
				IMAGE_01_ON 1024284;
				IMAGE_01_OFF 1024283;
				IMAGE_02_ON 1024285;
				IMAGE_02_OFF 1024283;
				IMAGE_03_ON 1024286;
				IMAGE_03_OFF 1024283;
				IMAGE_04_ON 1024287;
				IMAGE_04_OFF 1024283;
				ACCEPT { fx_particlegroup;}; //1001381; 1027133; Obase; Oparticle;				
			}
			BUTTON PARTICLE_GTP_PARTICLES_SELECTOR {SCALE_V; FIT_H;}

			LINK	PARTICLE_GTP_CHANNEL {ACCEPT{ fx_channel_velocity; fx_channel_levelset; fx_group; fx_fluid; fx_liquid; fx_volume; fx_volume_multi; fx_channel_scalar; fx_channel_vector; fx_channel_fuel; fx_channel_fire; fx_channel_temp;}}
			BUTTON PARTICLE_GTP_CHANNEL_SELECTOR {SCALE_V;FIT_H;}
			
			LINK	PARTICLE_GTP_PROPERTY {ACCEPT{ fx_group;fx_property_vector; fx_property_scalar; fx_property_state;}}
			BUTTON	PARTICLE_GTP_PROPERTY_SELECTOR {SCALE_V; FIT_H;}

			LINK	PARTICLE_GTP_DURATION {ACCEPT{fx_duration; fx_group;}}
			BUTTON	PARTICLE_GTP_DURATION_SELECTOR {SCALE_V; FIT_H;}		
		}		

		LONG PARTICLE_GTP_MODE
		{
			CYCLE
			{
				PARTICLE_GTP_MODE_ADD;
				PARTICLE_GTP_MODE_SET;
			}
		}
		LONG PARTICLE_GTP_INTERPOLATOR
		{
			CYCLE
			{
				PARTICLE_GTP_INTERPOLATOR_LINEAR;
				PARTICLE_GTP_INTERPOLATOR_COSINE;
				PARTICLE_GTP_INTERPOLATOR_CUBIC;
				PARTICLE_GTP_INTERPOLATOR_HERMITE;
				PARTICLE_GTP_INTERPOLATOR_QUADRATIC;
			}
		}
	}
}
			