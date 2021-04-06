lbl_8012D3E4:
/* 8012D3E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012D3E8  7C 08 02 A6 */	mflr r0
/* 8012D3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012D3F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012D3F4  7C 7F 1B 78 */	mr r31, r3
/* 8012D3F8  38 80 00 00 */	li r4, 0
/* 8012D3FC  4B FF C7 49 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012D400  2C 03 00 00 */	cmpwi r3, 0
/* 8012D404  40 82 00 58 */	bne lbl_8012D45C
/* 8012D408  7F E3 FB 78 */	mr r3, r31
/* 8012D40C  4B F8 96 25 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8012D410  2C 03 00 00 */	cmpwi r3, 0
/* 8012D414  40 82 00 48 */	bne lbl_8012D45C
/* 8012D418  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 8012D41C  28 00 00 02 */	cmplwi r0, 2
/* 8012D420  40 82 00 28 */	bne lbl_8012D448
/* 8012D424  C0 5F 33 98 */	lfs f2, 0x3398(r31)
/* 8012D428  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 8012D42C  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha /* 0x8038EF28@ha */
/* 8012D430  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l /* 0x8038EF28@l */
/* 8012D434  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8012D438  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012D43C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012D440  40 81 00 08 */	ble lbl_8012D448
/* 8012D444  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_8012D448:
/* 8012D448  7F E3 FB 78 */	mr r3, r31
/* 8012D44C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8012D450  4B FF B3 F5 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 8012D454  A8 1F 2F EC */	lha r0, 0x2fec(r31)
/* 8012D458  B0 1F 30 A2 */	sth r0, 0x30a2(r31)
lbl_8012D45C:
/* 8012D45C  38 60 00 01 */	li r3, 1
/* 8012D460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D468  7C 08 03 A6 */	mtlr r0
/* 8012D46C  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D470  4E 80 00 20 */	blr 
