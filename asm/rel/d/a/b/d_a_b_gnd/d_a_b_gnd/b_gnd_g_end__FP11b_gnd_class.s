lbl_805F98A0:
/* 805F98A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F98A4  7C 08 02 A6 */	mflr r0
/* 805F98A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F98AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805F98B0  7C 7F 1B 78 */	mr r31, r3
/* 805F98B4  38 00 00 0A */	li r0, 0xa
/* 805F98B8  B0 03 0C 58 */	sth r0, 0xc58(r3)
/* 805F98BC  80 03 1F B4 */	lwz r0, 0x1fb4(r3)
/* 805F98C0  90 01 00 08 */	stw r0, 8(r1)
/* 805F98C4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805F98C8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805F98CC  38 81 00 08 */	addi r4, r1, 8
/* 805F98D0  4B A1 FF 29 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F98D4  38 00 00 01 */	li r0, 1
/* 805F98D8  98 03 39 65 */	stb r0, 0x3965(r3)
/* 805F98DC  A8 1F 05 BC */	lha r0, 0x5bc(r31)
/* 805F98E0  2C 00 00 00 */	cmpwi r0, 0
/* 805F98E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805F98E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F98EC  7C 08 03 A6 */	mtlr r0
/* 805F98F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805F98F4  4E 80 00 20 */	blr 
