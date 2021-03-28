lbl_800D08DC:
/* 800D08DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D08E0  7C 08 02 A6 */	mflr r0
/* 800D08E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D08E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D08EC  7C 7F 1B 78 */	mr r31, r3
/* 800D08F0  38 00 00 01 */	li r0, 1
/* 800D08F4  98 03 05 6A */	stb r0, 0x56a(r3)
/* 800D08F8  38 7F 28 54 */	addi r3, r31, 0x2854
/* 800D08FC  48 08 E3 BD */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800D0900  38 00 00 01 */	li r0, 1
/* 800D0904  90 1F 06 14 */	stw r0, 0x614(r31)
/* 800D0908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D090C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0910  7C 08 03 A6 */	mtlr r0
/* 800D0914  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0918  4E 80 00 20 */	blr 
