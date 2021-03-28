lbl_801069D0:
/* 801069D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801069D4  7C 08 02 A6 */	mflr r0
/* 801069D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801069DC  38 00 00 0F */	li r0, 0xf
/* 801069E0  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 801069E4  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 801069E8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801069EC  41 82 00 38 */	beq lbl_80106A24
/* 801069F0  80 83 28 10 */	lwz r4, 0x2810(r3)
/* 801069F4  28 04 00 00 */	cmplwi r4, 0
/* 801069F8  41 82 00 24 */	beq lbl_80106A1C
/* 801069FC  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80106A00  38 04 C0 00 */	addi r0, r4, -16384
/* 80106A04  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80106A08  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80106A0C  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80106A10  80 83 28 10 */	lwz r4, 0x2810(r3)
/* 80106A14  48 00 00 25 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 80106A18  48 00 00 0C */	b lbl_80106A24
lbl_80106A1C:
/* 80106A1C  38 80 00 01 */	li r4, 1
/* 80106A20  4B FB 36 B1 */	bl checkNextAction__9daAlink_cFi
lbl_80106A24:
/* 80106A24  38 60 00 01 */	li r3, 1
/* 80106A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80106A2C  7C 08 03 A6 */	mtlr r0
/* 80106A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80106A34  4E 80 00 20 */	blr 
