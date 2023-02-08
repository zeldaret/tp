lbl_805F4C00:
/* 805F4C00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F4C04  7C 08 02 A6 */	mflr r0
/* 805F4C08  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F4C0C  39 61 00 30 */	addi r11, r1, 0x30
/* 805F4C10  4B D6 D5 C9 */	bl _savegpr_28
/* 805F4C14  2C 04 00 00 */	cmpwi r4, 0
/* 805F4C18  40 82 01 98 */	bne lbl_805F4DB0
/* 805F4C1C  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 805F4C20  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 805F4C24  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 805F4C28  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 805F4C2C  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 805F4C30  28 1D 00 00 */	cmplwi r29, 0
/* 805F4C34  41 82 01 7C */	beq lbl_805F4DB0
/* 805F4C38  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 805F4C3C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805F4C40  1F DC 00 30 */	mulli r30, r28, 0x30
/* 805F4C44  7C 60 F2 14 */	add r3, r0, r30
/* 805F4C48  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805F4C4C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805F4C50  80 84 00 00 */	lwz r4, 0(r4)
/* 805F4C54  4B D5 18 5D */	bl PSMTXCopy
/* 805F4C58  2C 1C 00 01 */	cmpwi r28, 1
/* 805F4C5C  40 82 00 28 */	bne lbl_805F4C84
/* 805F4C60  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4C64  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4C68  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4C6C  A8 1D 0C 8C */	lha r0, 0xc8c(r29)
/* 805F4C70  7C 00 16 70 */	srawi r0, r0, 2
/* 805F4C74  7C 00 01 94 */	addze r0, r0
/* 805F4C78  7C 04 07 34 */	extsh r4, r0
/* 805F4C7C  4B A1 77 21 */	bl mDoMtx_XrotM__FPA4_fs
/* 805F4C80  48 00 00 FC */	b lbl_805F4D7C
lbl_805F4C84:
/* 805F4C84  2C 1C 00 04 */	cmpwi r28, 4
/* 805F4C88  40 82 00 70 */	bne lbl_805F4CF8
/* 805F4C8C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4C90  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4C94  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4C98  3C 80 80 60 */	lis r4, lit_3902@ha /* 0x80602680@ha */
/* 805F4C9C  C0 44 26 80 */	lfs f2, lit_3902@l(r4)  /* 0x80602680@l */
/* 805F4CA0  A8 1D 0C 8C */	lha r0, 0xc8c(r29)
/* 805F4CA4  3C 80 80 60 */	lis r4, lit_3904@ha /* 0x80602684@ha */
/* 805F4CA8  C8 24 26 84 */	lfd f1, lit_3904@l(r4)  /* 0x80602684@l */
/* 805F4CAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805F4CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F4CB4  3C 00 43 30 */	lis r0, 0x4330
/* 805F4CB8  90 01 00 08 */	stw r0, 8(r1)
/* 805F4CBC  C8 01 00 08 */	lfd f0, 8(r1)
/* 805F4CC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F4CC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805F4CC8  FC 00 00 1E */	fctiwz f0, f0
/* 805F4CCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F4CD0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805F4CD4  4B A1 76 C9 */	bl mDoMtx_XrotM__FPA4_fs
/* 805F4CD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4CDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4CE0  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4CE4  A8 1D 0C 8E */	lha r0, 0xc8e(r29)
/* 805F4CE8  7C 00 00 D0 */	neg r0, r0
/* 805F4CEC  7C 04 07 34 */	extsh r4, r0
/* 805F4CF0  4B A1 77 DD */	bl mDoMtx_ZrotM__FPA4_fs
/* 805F4CF4  48 00 00 88 */	b lbl_805F4D7C
lbl_805F4CF8:
/* 805F4CF8  2C 1C 00 1C */	cmpwi r28, 0x1c
/* 805F4CFC  40 82 00 1C */	bne lbl_805F4D18
/* 805F4D00  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4D04  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4D08  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4D0C  A8 9D 1F CA */	lha r4, 0x1fca(r29)
/* 805F4D10  4B A1 76 8D */	bl mDoMtx_XrotM__FPA4_fs
/* 805F4D14  48 00 00 68 */	b lbl_805F4D7C
lbl_805F4D18:
/* 805F4D18  2C 1C 00 11 */	cmpwi r28, 0x11
/* 805F4D1C  40 82 00 1C */	bne lbl_805F4D38
/* 805F4D20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4D24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4D28  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4D2C  A8 9D 1F CC */	lha r4, 0x1fcc(r29)
/* 805F4D30  4B A1 77 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 805F4D34  48 00 00 48 */	b lbl_805F4D7C
lbl_805F4D38:
/* 805F4D38  2C 1C 00 25 */	cmpwi r28, 0x25
/* 805F4D3C  40 82 00 1C */	bne lbl_805F4D58
/* 805F4D40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4D44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4D48  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4D4C  A8 9D 26 C0 */	lha r4, 0x26c0(r29)
/* 805F4D50  4B A1 76 4D */	bl mDoMtx_XrotM__FPA4_fs
/* 805F4D54  48 00 00 28 */	b lbl_805F4D7C
lbl_805F4D58:
/* 805F4D58  2C 1C 00 29 */	cmpwi r28, 0x29
/* 805F4D5C  40 82 00 20 */	bne lbl_805F4D7C
/* 805F4D60  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4D64  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4D68  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4D6C  A8 1D 26 C0 */	lha r0, 0x26c0(r29)
/* 805F4D70  7C 00 00 D0 */	neg r0, r0
/* 805F4D74  7C 04 07 34 */	extsh r4, r0
/* 805F4D78  4B A1 76 25 */	bl mDoMtx_XrotM__FPA4_fs
lbl_805F4D7C:
/* 805F4D7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4D80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4D84  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4D88  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 805F4D8C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805F4D90  7C 80 F2 14 */	add r4, r0, r30
/* 805F4D94  4B D5 17 1D */	bl PSMTXCopy
/* 805F4D98  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805F4D9C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805F4DA0  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4DA4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 805F4DA8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 805F4DAC  4B D5 17 05 */	bl PSMTXCopy
lbl_805F4DB0:
/* 805F4DB0  38 60 00 01 */	li r3, 1
/* 805F4DB4  39 61 00 30 */	addi r11, r1, 0x30
/* 805F4DB8  4B D6 D4 6D */	bl _restgpr_28
/* 805F4DBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F4DC0  7C 08 03 A6 */	mtlr r0
/* 805F4DC4  38 21 00 30 */	addi r1, r1, 0x30
/* 805F4DC8  4E 80 00 20 */	blr 
