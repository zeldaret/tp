lbl_801A60BC:
/* 801A60BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A60C0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A60C4  C0 03 10 88 */	lfs f0, 0x1088(r3)
/* 801A60C8  D0 03 10 70 */	stfs f0, 0x1070(r3)
/* 801A60CC  C0 03 10 8C */	lfs f0, 0x108c(r3)
/* 801A60D0  D0 03 10 74 */	stfs f0, 0x1074(r3)
/* 801A60D4  C0 03 10 90 */	lfs f0, 0x1090(r3)
/* 801A60D8  D0 03 10 78 */	stfs f0, 0x1078(r3)
/* 801A60DC  4E 80 00 20 */	blr 
