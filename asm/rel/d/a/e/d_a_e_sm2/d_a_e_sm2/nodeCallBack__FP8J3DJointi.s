lbl_80798C48:
/* 80798C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80798C4C  7C 08 02 A6 */	mflr r0
/* 80798C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80798C54  39 61 00 20 */	addi r11, r1, 0x20
/* 80798C58  4B BC 95 81 */	bl _savegpr_28
/* 80798C5C  2C 04 00 00 */	cmpwi r4, 0
/* 80798C60  40 82 01 14 */	bne lbl_80798D74
/* 80798C64  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80798C68  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80798C6C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80798C70  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80798C74  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80798C78  28 1C 00 00 */	cmplwi r28, 0
/* 80798C7C  41 82 00 F8 */	beq lbl_80798D74
/* 80798C80  2C 1F 00 01 */	cmpwi r31, 1
/* 80798C84  41 80 00 F0 */	blt lbl_80798D74
/* 80798C88  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80798C8C  7C 7C 02 14 */	add r3, r28, r0
/* 80798C90  C0 23 07 98 */	lfs f1, 0x798(r3)
/* 80798C94  C0 43 07 9C */	lfs f2, 0x79c(r3)
/* 80798C98  C0 63 07 A0 */	lfs f3, 0x7a0(r3)
/* 80798C9C  38 60 00 00 */	li r3, 0
/* 80798CA0  4B AD 81 BD */	bl MtxTrans__FfffUc
/* 80798CA4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80798CA8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80798CAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80798CB0  1F BF 00 06 */	mulli r29, r31, 6
/* 80798CB4  7C 9C EA 14 */	add r4, r28, r29
/* 80798CB8  A8 84 07 FA */	lha r4, 0x7fa(r4)
/* 80798CBC  4B 87 37 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 80798CC0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80798CC4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80798CC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80798CCC  7C 9C EA 14 */	add r4, r28, r29
/* 80798CD0  A8 84 07 F8 */	lha r4, 0x7f8(r4)
/* 80798CD4  4B 87 36 C9 */	bl mDoMtx_XrotM__FPA4_fs
/* 80798CD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80798CDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80798CE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80798CE4  7F BC EA 14 */	add r29, r28, r29
/* 80798CE8  A8 9D 07 6C */	lha r4, 0x76c(r29)
/* 80798CEC  4B 87 37 E1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80798CF0  57 E0 10 3A */	slwi r0, r31, 2
/* 80798CF4  C0 7C 08 34 */	lfs f3, 0x834(r28)
/* 80798CF8  7C 7C 02 14 */	add r3, r28, r0
/* 80798CFC  C0 43 06 E8 */	lfs f2, 0x6e8(r3)
/* 80798D00  C0 83 06 C8 */	lfs f4, 0x6c8(r3)
/* 80798D04  EC 04 10 2A */	fadds f0, f4, f2
/* 80798D08  EC 23 00 32 */	fmuls f1, f3, f0
/* 80798D0C  EC 04 10 28 */	fsubs f0, f4, f2
/* 80798D10  EC 43 00 32 */	fmuls f2, f3, f0
/* 80798D14  C0 1C 08 30 */	lfs f0, 0x830(r28)
/* 80798D18  EC 63 00 32 */	fmuls f3, f3, f0
/* 80798D1C  38 60 00 01 */	li r3, 1
/* 80798D20  4B AD 81 85 */	bl MtxScale__FfffUc
/* 80798D24  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80798D28  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80798D2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80798D30  A8 1D 07 6C */	lha r0, 0x76c(r29)
/* 80798D34  7C 00 00 D0 */	neg r0, r0
/* 80798D38  7C 04 07 34 */	extsh r4, r0
/* 80798D3C  4B 87 37 91 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80798D40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80798D44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80798D48  80 63 00 00 */	lwz r3, 0(r3)
/* 80798D4C  38 80 C0 00 */	li r4, -16384
/* 80798D50  4B 87 36 E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80798D54  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80798D58  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80798D5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80798D60  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80798D64  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80798D68  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 80798D6C  7C 84 02 14 */	add r4, r4, r0
/* 80798D70  4B BA D7 41 */	bl PSMTXCopy
lbl_80798D74:
/* 80798D74  38 60 00 01 */	li r3, 1
/* 80798D78  39 61 00 20 */	addi r11, r1, 0x20
/* 80798D7C  4B BC 94 A9 */	bl _restgpr_28
/* 80798D80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80798D84  7C 08 03 A6 */	mtlr r0
/* 80798D88  38 21 00 20 */	addi r1, r1, 0x20
/* 80798D8C  4E 80 00 20 */	blr 
