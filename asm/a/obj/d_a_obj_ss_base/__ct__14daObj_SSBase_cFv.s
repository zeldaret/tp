lbl_8015E3F8:
/* 8015E3F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015E3FC  7C 08 02 A6 */	mflr r0
/* 8015E400  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015E404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015E408  7C 7F 1B 78 */	mr r31, r3
/* 8015E40C  4B EB A7 59 */	bl __ct__10fopAc_ac_cFv
/* 8015E410  3C 60 80 3C */	lis r3, __vt__14daObj_SSBase_c@ha
/* 8015E414  38 03 A0 88 */	addi r0, r3, __vt__14daObj_SSBase_c@l
/* 8015E418  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8015E41C  38 80 00 00 */	li r4, 0
/* 8015E420  90 9F 05 6C */	stw r4, 0x56c(r31)
/* 8015E424  B0 9F 05 70 */	sth r4, 0x570(r31)
/* 8015E428  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8015E42C  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8015E430  B0 1F 05 72 */	sth r0, 0x572(r31)
/* 8015E434  B0 9F 05 74 */	sth r4, 0x574(r31)
/* 8015E438  7F E3 FB 78 */	mr r3, r31
/* 8015E43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015E440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E444  7C 08 03 A6 */	mtlr r0
/* 8015E448  38 21 00 10 */	addi r1, r1, 0x10
/* 8015E44C  4E 80 00 20 */	blr 
