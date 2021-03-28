lbl_800D08B0:
/* 800D08B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D08B4  7C 08 02 A6 */	mflr r0
/* 800D08B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D08BC  38 00 00 2B */	li r0, 0x2b
/* 800D08C0  98 03 05 6A */	stb r0, 0x56a(r3)
/* 800D08C4  38 63 28 54 */	addi r3, r3, 0x2854
/* 800D08C8  48 08 E3 F1 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800D08CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D08D0  7C 08 03 A6 */	mtlr r0
/* 800D08D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D08D8  4E 80 00 20 */	blr 
