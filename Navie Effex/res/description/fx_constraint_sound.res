CONTAINER fx_constraint_sound
{
	NAME fx_constraint_sound;
	INCLUDE fx_constraint;
	
	GROUP ID_FORCE_BASE
	{
		GROUP ID_PORT_BASE
		{
			LINK CONSTRAINT_SOUND { ACCEPT{ fx_sound; }}
			BUTTON CONSTRAINT_SOUND_SELECTOR {}
		}
		GROUP CONSTRAINT_PARAMS_SID
		{			
			BITMAPBUTTON CONSTRAINT_SOUND_FREQGRAPH {FIT_H;BORDER;}
			GRADIENT CONSTRAINT_SOUND_MAP_COLOR {COLOR;ICC_BASEDOCUMENT;}
			GROUP 
			{
				COLUMNS 4;
				REAL CONSTRAINT_SOUND_FREQMIN { MIN 0; MAX 44098; STEP 10;}
				SEPARATOR {LINE;}STATICTEXT {JOINENDSCALE;}
				REAL CONSTRAINT_SOUND_FREQMAX { MIN 1; MAX 44099; STEP 10;}
			}

			//******************************************
			//SPACE MAPPING
			//******************************************
			GROUP CONSTRAINT_SOUND_MAPPING_G
			{			
				DEFAULT 0;
				LONG CONSTRAINT_SOUND_MAP
				{
					CYCLE
					{
						CONSTRAINT_SOUND_MAP_WORLD;
						CONSTRAINT_SOUND_MAP_PHYSICAL;
						CONSTRAINT_SOUND_MAP_OBJECT;
						CONSTRAINT_SOUND_MAP_INDEX;
					}
				}
				LONG CONSTRAINT_SOUND_MAP_PLANE
				{
					CYCLE
					{
						CONSTRAINT_SOUND_MAP_PLANE_XY;
						CONSTRAINT_SOUND_MAP_PLANE_YZ;
						CONSTRAINT_SOUND_MAP_PLANE_XZ;
					}
				}
				LONG CONSTRAINT_SOUND_MAP_COORDINATES
				{
					CYCLE
					{
						CONSTRAINT_SOUND_MAP_COORDINATES_LINEAR;
						CONSTRAINT_SOUND_MAP_COORDINATES_POLAR;
					}
				}

				BOOL CONSTRAINT_SOUND_MAP_USEBOUNDS {} //Bounding box Range
				REAL CONSTRAINT_SOUND_MAP_STARTUV {UNIT METER;}
				REAL CONSTRAINT_SOUND_MAP_ENDUV {UNIT METER;}

				REAL CONSTRAINT_SOUND_MAP_STARTPOLAR {MIN -360; MAX 360; UNIT DEGREE;}
				REAL CONSTRAINT_SOUND_MAP_ENDPOLAR {MIN -360; MAX 360; UNIT DEGREE;}	
				
			}
			GROUP CONSTRAINT_MAPPING_SID
			{
				DEFAULT 0;
			}
		}
	}
	GROUP FX_BASE_DISPLAYTAB
	{
		SEPARATOR {LINE;}

		LONG CONSTRAINT_SOUND_PREVIEWSIZE { MIN 100; MAX 800; CUSTOMGUI LONGSLIDER; }
	}
}