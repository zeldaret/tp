lbl_80CC652C:
/* 80CC652C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CC6530  7C 08 02 A6 */	mflr r0
/* 80CC6534  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CC6538  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC653C  4B 69 BC 9D */	bl _savegpr_28
/* 80CC6540  7C 7C 1B 78 */	mr r28, r3
/* 80CC6544  3C 80 80 CC */	lis r4, M_attr__14daObjItaRope_c@ha /* 0x80CC68F0@ha */
/* 80CC6548  C0 04 68 F0 */	lfs f0, M_attr__14daObjItaRope_c@l(r4)  /* 0x80CC68F0@l */
/* 80CC654C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80CC6550  4B FF F9 7D */	bl setNormalRopePos__14daObjItaRope_cFv
/* 80CC6554  38 61 00 20 */	addi r3, r1, 0x20
/* 80CC6558  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80CC655C  4B 39 4F D5 */	bl dKyw_get_AllWind_vecpow__FP4cXyzP4cXyz
/* 80CC6560  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CC6564  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CC6568  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CC656C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC6570  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CC6574  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC6578  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 80CC657C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC6580  3B A3 00 0C */	addi r29, r3, 0xc
/* 80CC6584  83 DC 06 1C */	lwz r30, 0x61c(r28)
/* 80CC6588  3B E0 00 01 */	li r31, 1
/* 80CC658C  48 00 00 58 */	b lbl_80CC65E4
lbl_80CC6590:
/* 80CC6590  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CC6594  38 9D 00 0C */	addi r4, r29, 0xc
/* 80CC6598  7F A5 EB 78 */	mr r5, r29
/* 80CC659C  4B 5A 05 99 */	bl __mi__4cXyzCFRC3Vec
/* 80CC65A0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CC65A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC65A8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CC65AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CC65B0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CC65B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CC65B8  7F A3 EB 78 */	mr r3, r29
/* 80CC65BC  38 9D 00 0C */	addi r4, r29, 0xc
/* 80CC65C0  4B 5A A6 45 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80CC65C4  38 03 40 00 */	addi r0, r3, 0x4000
/* 80CC65C8  7C 05 07 34 */	extsh r5, r0
/* 80CC65CC  7F C3 F3 78 */	mr r3, r30
/* 80CC65D0  38 81 00 08 */	addi r4, r1, 8
/* 80CC65D4  4B FF ED 41 */	bl execute__9Sakuita_cFP4cXyzs
/* 80CC65D8  3B FF 00 01 */	addi r31, r31, 1
/* 80CC65DC  3B BD 00 0C */	addi r29, r29, 0xc
/* 80CC65E0  3B DE 00 3C */	addi r30, r30, 0x3c
lbl_80CC65E4:
/* 80CC65E4  88 7C 06 35 */	lbz r3, 0x635(r28)
/* 80CC65E8  38 03 FF FF */	addi r0, r3, -1
/* 80CC65EC  7C 1F 00 00 */	cmpw r31, r0
/* 80CC65F0  41 80 FF A0 */	blt lbl_80CC6590
/* 80CC65F4  38 60 00 01 */	li r3, 1
/* 80CC65F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC65FC  4B 69 BC 29 */	bl _restgpr_28
/* 80CC6600  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CC6604  7C 08 03 A6 */	mtlr r0
/* 80CC6608  38 21 00 50 */	addi r1, r1, 0x50
/* 80CC660C  4E 80 00 20 */	blr 
