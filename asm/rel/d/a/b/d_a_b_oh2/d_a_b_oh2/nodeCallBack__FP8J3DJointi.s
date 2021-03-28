lbl_8061DCB8:
/* 8061DCB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061DCBC  7C 08 02 A6 */	mflr r0
/* 8061DCC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061DCC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8061DCC8  4B D4 45 10 */	b _savegpr_28
/* 8061DCCC  2C 04 00 00 */	cmpwi r4, 0
/* 8061DCD0  40 82 00 C4 */	bne lbl_8061DD94
/* 8061DCD4  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8061DCD8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8061DCDC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8061DCE0  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8061DCE4  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8061DCE8  28 1C 00 00 */	cmplwi r28, 0
/* 8061DCEC  41 82 00 A8 */	beq lbl_8061DD94
/* 8061DCF0  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8061DCF4  7C 7C 02 14 */	add r3, r28, r0
/* 8061DCF8  C0 23 06 60 */	lfs f1, 0x660(r3)
/* 8061DCFC  C0 43 06 64 */	lfs f2, 0x664(r3)
/* 8061DD00  C0 63 06 68 */	lfs f3, 0x668(r3)
/* 8061DD04  38 60 00 00 */	li r3, 0
/* 8061DD08  4B C5 31 54 */	b MtxTrans__FfffUc
/* 8061DD0C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061DD10  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061DD14  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DD18  1F BF 00 06 */	mulli r29, r31, 6
/* 8061DD1C  7C 9C EA 14 */	add r4, r28, r29
/* 8061DD20  A8 84 07 D6 */	lha r4, 0x7d6(r4)
/* 8061DD24  4B 9E E7 10 */	b mDoMtx_YrotM__FPA4_fs
/* 8061DD28  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061DD2C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061DD30  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DD34  7C 9C EA 14 */	add r4, r28, r29
/* 8061DD38  A8 84 07 D4 */	lha r4, 0x7d4(r4)
/* 8061DD3C  4B 9E E6 60 */	b mDoMtx_XrotM__FPA4_fs
/* 8061DD40  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061DD44  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061DD48  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DD4C  38 80 C0 00 */	li r4, -16384
/* 8061DD50  4B 9E E6 E4 */	b mDoMtx_YrotM__FPA4_fs
/* 8061DD54  57 E0 10 3A */	slwi r0, r31, 2
/* 8061DD58  7C 7C 02 14 */	add r3, r28, r0
/* 8061DD5C  C0 43 05 E8 */	lfs f2, 0x5e8(r3)
/* 8061DD60  3C 60 80 62 */	lis r3, lit_3678@ha
/* 8061DD64  C0 23 EA 38 */	lfs f1, lit_3678@l(r3)
/* 8061DD68  FC 60 10 90 */	fmr f3, f2
/* 8061DD6C  38 60 00 01 */	li r3, 1
/* 8061DD70  4B C5 31 34 */	b MtxScale__FfffUc
/* 8061DD74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061DD78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061DD7C  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DD80  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8061DD84  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8061DD88  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8061DD8C  7C 84 02 14 */	add r4, r4, r0
/* 8061DD90  4B D2 87 20 */	b PSMTXCopy
lbl_8061DD94:
/* 8061DD94  38 60 00 01 */	li r3, 1
/* 8061DD98  39 61 00 20 */	addi r11, r1, 0x20
/* 8061DD9C  4B D4 44 88 */	b _restgpr_28
/* 8061DDA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061DDA4  7C 08 03 A6 */	mtlr r0
/* 8061DDA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8061DDAC  4E 80 00 20 */	blr 
