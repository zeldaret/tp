lbl_80590E8C:
/* 80590E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80590E90  7C 08 02 A6 */	mflr r0
/* 80590E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80590E98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80590E9C  7C 7F 1B 78 */	mr r31, r3
/* 80590EA0  80 03 0A 18 */	lwz r0, 0xa18(r3)
/* 80590EA4  90 01 00 08 */	stw r0, 8(r1)
/* 80590EA8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80590EAC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80590EB0  38 81 00 08 */	addi r4, r1, 8
/* 80590EB4  4B A8 89 44 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80590EB8  28 03 00 00 */	cmplwi r3, 0
/* 80590EBC  41 82 00 0C */	beq lbl_80590EC8
/* 80590EC0  38 00 00 01 */	li r0, 1
/* 80590EC4  98 03 07 00 */	stb r0, 0x700(r3)
lbl_80590EC8:
/* 80590EC8  7F E3 FB 78 */	mr r3, r31
/* 80590ECC  48 00 0D 2D */	bl setMagneHoleEffect__11daObjMarm_cFv
/* 80590ED0  38 00 00 00 */	li r0, 0
/* 80590ED4  98 1F 0A 17 */	stb r0, 0xa17(r31)
/* 80590ED8  38 00 00 01 */	li r0, 1
/* 80590EDC  98 1F 0A 14 */	stb r0, 0xa14(r31)
/* 80590EE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80590EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80590EE8  7C 08 03 A6 */	mtlr r0
/* 80590EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80590EF0  4E 80 00 20 */	blr 
