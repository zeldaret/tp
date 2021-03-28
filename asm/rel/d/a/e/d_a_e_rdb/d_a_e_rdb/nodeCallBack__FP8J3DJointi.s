lbl_8076519C:
/* 8076519C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807651A0  7C 08 02 A6 */	mflr r0
/* 807651A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807651A8  39 61 00 20 */	addi r11, r1, 0x20
/* 807651AC  4B BF D0 2C */	b _savegpr_28
/* 807651B0  2C 04 00 00 */	cmpwi r4, 0
/* 807651B4  40 82 01 44 */	bne lbl_807652F8
/* 807651B8  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 807651BC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 807651C0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 807651C4  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 807651C8  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 807651CC  28 1D 00 00 */	cmplwi r29, 0
/* 807651D0  41 82 01 28 */	beq lbl_807652F8
/* 807651D4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 807651D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807651DC  1F DC 00 30 */	mulli r30, r28, 0x30
/* 807651E0  7C 60 F2 14 */	add r3, r0, r30
/* 807651E4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807651E8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807651EC  80 84 00 00 */	lwz r4, 0(r4)
/* 807651F0  4B BE 12 C0 */	b PSMTXCopy
/* 807651F4  2C 1C 00 01 */	cmpwi r28, 1
/* 807651F8  41 82 00 0C */	beq lbl_80765204
/* 807651FC  2C 1C 00 02 */	cmpwi r28, 2
/* 80765200  40 82 00 68 */	bne lbl_80765268
lbl_80765204:
/* 80765204  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80765208  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8076520C  80 63 00 00 */	lwz r3, 0(r3)
/* 80765210  A8 1D 06 CA */	lha r0, 0x6ca(r29)
/* 80765214  7C 00 1E 70 */	srawi r0, r0, 3
/* 80765218  7C 00 01 94 */	addze r0, r0
/* 8076521C  7C 04 07 34 */	extsh r4, r0
/* 80765220  4B 8A 71 7C */	b mDoMtx_XrotM__FPA4_fs
/* 80765224  2C 1C 00 01 */	cmpwi r28, 1
/* 80765228  40 82 00 18 */	bne lbl_80765240
/* 8076522C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80765230  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80765234  80 63 00 00 */	lwz r3, 0(r3)
/* 80765238  A8 9D 06 D0 */	lha r4, 0x6d0(r29)
/* 8076523C  4B 8A 71 60 */	b mDoMtx_XrotM__FPA4_fs
lbl_80765240:
/* 80765240  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80765244  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80765248  80 63 00 00 */	lwz r3, 0(r3)
/* 8076524C  A8 1D 06 CC */	lha r0, 0x6cc(r29)
/* 80765250  7C 00 1E 70 */	srawi r0, r0, 3
/* 80765254  7C 00 01 94 */	addze r0, r0
/* 80765258  7C 00 00 D0 */	neg r0, r0
/* 8076525C  7C 04 07 34 */	extsh r4, r0
/* 80765260  4B 8A 72 6C */	b mDoMtx_ZrotM__FPA4_fs
/* 80765264  48 00 00 60 */	b lbl_807652C4
lbl_80765268:
/* 80765268  2C 1C 00 05 */	cmpwi r28, 5
/* 8076526C  41 82 00 0C */	beq lbl_80765278
/* 80765270  2C 1C 00 06 */	cmpwi r28, 6
/* 80765274  40 82 00 50 */	bne lbl_807652C4
lbl_80765278:
/* 80765278  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8076527C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80765280  80 63 00 00 */	lwz r3, 0(r3)
/* 80765284  A8 9D 06 CA */	lha r4, 0x6ca(r29)
/* 80765288  38 00 00 03 */	li r0, 3
/* 8076528C  7C 84 03 D6 */	divw r4, r4, r0
/* 80765290  A8 1D 06 D2 */	lha r0, 0x6d2(r29)
/* 80765294  7C 04 00 50 */	subf r0, r4, r0
/* 80765298  7C 04 07 34 */	extsh r4, r0
/* 8076529C  4B 8A 71 98 */	b mDoMtx_YrotM__FPA4_fs
/* 807652A0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807652A4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807652A8  80 63 00 00 */	lwz r3, 0(r3)
/* 807652AC  A8 1D 06 CC */	lha r0, 0x6cc(r29)
/* 807652B0  7C 00 1E 70 */	srawi r0, r0, 3
/* 807652B4  7C 00 01 94 */	addze r0, r0
/* 807652B8  7C 00 00 D0 */	neg r0, r0
/* 807652BC  7C 04 07 34 */	extsh r4, r0
/* 807652C0  4B 8A 72 0C */	b mDoMtx_ZrotM__FPA4_fs
lbl_807652C4:
/* 807652C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807652C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807652CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807652D0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 807652D4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 807652D8  7C 80 F2 14 */	add r4, r0, r30
/* 807652DC  4B BE 11 D4 */	b PSMTXCopy
/* 807652E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807652E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807652E8  80 63 00 00 */	lwz r3, 0(r3)
/* 807652EC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 807652F0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 807652F4  4B BE 11 BC */	b PSMTXCopy
lbl_807652F8:
/* 807652F8  38 60 00 01 */	li r3, 1
/* 807652FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80765300  4B BF CF 24 */	b _restgpr_28
/* 80765304  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80765308  7C 08 03 A6 */	mtlr r0
/* 8076530C  38 21 00 20 */	addi r1, r1, 0x20
/* 80765310  4E 80 00 20 */	blr 
