lbl_80C41270:
/* 80C41270  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C41274  7C 08 02 A6 */	mflr r0
/* 80C41278  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4127C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C41280  4B 72 0F 5C */	b _savegpr_29
/* 80C41284  2C 04 00 00 */	cmpwi r4, 0
/* 80C41288  40 82 00 A8 */	bne lbl_80C41330
/* 80C4128C  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80C41290  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C41294  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80C41298  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80C4129C  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80C412A0  28 1D 00 00 */	cmplwi r29, 0
/* 80C412A4  41 82 00 8C */	beq lbl_80C41330
/* 80C412A8  2C 04 00 01 */	cmpwi r4, 1
/* 80C412AC  40 82 00 84 */	bne lbl_80C41330
/* 80C412B0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80C412B4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C412B8  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80C412BC  7C 60 F2 14 */	add r3, r0, r30
/* 80C412C0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C412C4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C412C8  80 84 00 00 */	lwz r4, 0(r4)
/* 80C412CC  4B 70 51 E4 */	b PSMTXCopy
/* 80C412D0  C0 3D 2A FC */	lfs f1, 0x2afc(r29)
/* 80C412D4  3C 60 80 C4 */	lis r3, lit_3689@ha
/* 80C412D8  C0 43 39 E8 */	lfs f2, lit_3689@l(r3)
/* 80C412DC  FC 60 10 90 */	fmr f3, f2
/* 80C412E0  38 60 00 01 */	li r3, 1
/* 80C412E4  4B 62 FB 78 */	b MtxTrans__FfffUc
/* 80C412E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C412EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C412F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C412F4  A8 9D 2B 00 */	lha r4, 0x2b00(r29)
/* 80C412F8  4B 3C B0 A4 */	b mDoMtx_XrotM__FPA4_fs
/* 80C412FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C41300  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C41304  80 63 00 00 */	lwz r3, 0(r3)
/* 80C41308  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80C4130C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C41310  7C 80 F2 14 */	add r4, r0, r30
/* 80C41314  4B 70 51 9C */	b PSMTXCopy
/* 80C41318  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C4131C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C41320  80 63 00 00 */	lwz r3, 0(r3)
/* 80C41324  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80C41328  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80C4132C  4B 70 51 84 */	b PSMTXCopy
lbl_80C41330:
/* 80C41330  38 60 00 01 */	li r3, 1
/* 80C41334  39 61 00 20 */	addi r11, r1, 0x20
/* 80C41338  4B 72 0E F0 */	b _restgpr_29
/* 80C4133C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C41340  7C 08 03 A6 */	mtlr r0
/* 80C41344  38 21 00 20 */	addi r1, r1, 0x20
/* 80C41348  4E 80 00 20 */	blr 
