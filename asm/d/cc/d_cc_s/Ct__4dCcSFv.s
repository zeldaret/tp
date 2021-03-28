lbl_80085ED4:
/* 80085ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80085ED8  7C 08 02 A6 */	mflr r0
/* 80085EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80085EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80085EE4  7C 7F 1B 78 */	mr r31, r3
/* 80085EE8  48 1D EB AD */	bl Ct__4cCcSFv
/* 80085EEC  38 7F 28 4C */	addi r3, r31, 0x284c
/* 80085EF0  4B FF F6 F5 */	bl Ct__12dCcMassS_MngFv
/* 80085EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80085EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80085EFC  7C 08 03 A6 */	mtlr r0
/* 80085F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80085F04  4E 80 00 20 */	blr 
