lbl_801A76D8:
/* 801A76D8  2C 04 00 00 */	cmpwi r4, 0
/* 801A76DC  40 80 00 08 */	bge lbl_801A76E4
/* 801A76E0  38 80 00 00 */	li r4, 0
lbl_801A76E4:
/* 801A76E4  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 801A76E8  38 A5 CA 54 */	addi r5, r5, g_env_light@l /* 0x8042CA54@l */
/* 801A76EC  54 80 10 3A */	slwi r0, r4, 2
/* 801A76F0  7C 85 02 14 */	add r4, r5, r0
/* 801A76F4  80 84 03 F8 */	lwz r4, 0x3f8(r4)
/* 801A76F8  C0 04 00 00 */	lfs f0, 0(r4)
/* 801A76FC  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A7700  C0 04 00 04 */	lfs f0, 4(r4)
/* 801A7704  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A7708  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A770C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A7710  4E 80 00 20 */	blr 
