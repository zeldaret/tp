lbl_80291DBC:
/* 80291DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291DC0  7C 08 02 A6 */	mflr r0
/* 80291DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80291DCC  7C 7F 1B 78 */	mr r31, r3
/* 80291DD0  98 83 02 2B */	stb r4, 0x22b(r3)
/* 80291DD4  48 00 0C D1 */	bl getTransposeTotal__8JASTrackCFv
/* 80291DD8  88 1F 02 2B */	lbz r0, 0x22b(r31)
/* 80291DDC  7C 00 1A 14 */	add r0, r0, r3
/* 80291DE0  98 1F 02 2B */	stb r0, 0x22b(r31)
/* 80291DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80291DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291DEC  7C 08 03 A6 */	mtlr r0
/* 80291DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80291DF4  4E 80 00 20 */	blr 
