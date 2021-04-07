lbl_8071E1A4:
/* 8071E1A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071E1A8  7C 08 02 A6 */	mflr r0
/* 8071E1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071E1B0  A8 03 05 62 */	lha r0, 0x562(r3)
/* 8071E1B4  2C 00 00 00 */	cmpwi r0, 0
/* 8071E1B8  41 82 00 20 */	beq lbl_8071E1D8
/* 8071E1BC  38 80 00 00 */	li r4, 0
/* 8071E1C0  B0 83 05 62 */	sth r4, 0x562(r3)
/* 8071E1C4  38 00 00 03 */	li r0, 3
/* 8071E1C8  B0 03 05 DA */	sth r0, 0x5da(r3)
/* 8071E1CC  B0 83 05 DC */	sth r4, 0x5dc(r3)
/* 8071E1D0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8071E1D4  D0 03 04 AC */	stfs f0, 0x4ac(r3)
lbl_8071E1D8:
/* 8071E1D8  80 03 04 A4 */	lwz r0, 0x4a4(r3)
/* 8071E1DC  90 01 00 08 */	stw r0, 8(r1)
/* 8071E1E0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8071E1E4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8071E1E8  38 81 00 08 */	addi r4, r1, 8
/* 8071E1EC  4B 8F B6 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8071E1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071E1F4  7C 08 03 A6 */	mtlr r0
/* 8071E1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8071E1FC  4E 80 00 20 */	blr 
