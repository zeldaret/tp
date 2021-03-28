lbl_80610D24:
/* 80610D24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80610D28  7C 08 02 A6 */	mflr r0
/* 80610D2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80610D30  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80610D34  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80610D38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80610D3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80610D40  2C 04 00 00 */	cmpwi r4, 0
/* 80610D44  40 82 00 C4 */	bne lbl_80610E08
/* 80610D48  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80610D4C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80610D50  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80610D54  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80610D58  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80610D5C  28 03 00 00 */	cmplwi r3, 0
/* 80610D60  41 82 00 A8 */	beq lbl_80610E08
/* 80610D64  2C 04 00 02 */	cmpwi r4, 2
/* 80610D68  41 80 00 A0 */	blt lbl_80610E08
/* 80610D6C  2C 04 00 04 */	cmpwi r4, 4
/* 80610D70  41 81 00 98 */	bgt lbl_80610E08
/* 80610D74  A8 03 47 C4 */	lha r0, 0x47c4(r3)
/* 80610D78  3C 60 80 62 */	lis r3, lit_4017@ha
/* 80610D7C  C8 23 AD 9C */	lfd f1, lit_4017@l(r3)
/* 80610D80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80610D84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80610D88  3C 00 43 30 */	lis r0, 0x4330
/* 80610D8C  90 01 00 08 */	stw r0, 8(r1)
/* 80610D90  C8 01 00 08 */	lfd f0, 8(r1)
/* 80610D94  EF E0 08 28 */	fsubs f31, f0, f1
/* 80610D98  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80610D9C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80610DA0  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80610DA4  7C 60 F2 14 */	add r3, r0, r30
/* 80610DA8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80610DAC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80610DB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80610DB4  4B D3 56 FC */	b PSMTXCopy
/* 80610DB8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610DBC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610DC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80610DC4  FC 00 F8 1E */	fctiwz f0, f31
/* 80610DC8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80610DCC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80610DD0  4B 9F B6 FC */	b mDoMtx_ZrotM__FPA4_fs
/* 80610DD4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610DD8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610DDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80610DE0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80610DE4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80610DE8  7C 80 F2 14 */	add r4, r0, r30
/* 80610DEC  4B D3 56 C4 */	b PSMTXCopy
/* 80610DF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610DF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610DF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80610DFC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80610E00  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80610E04  4B D3 56 AC */	b PSMTXCopy
lbl_80610E08:
/* 80610E08  38 60 00 01 */	li r3, 1
/* 80610E0C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80610E10  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80610E14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80610E18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80610E1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80610E20  7C 08 03 A6 */	mtlr r0
/* 80610E24  38 21 00 30 */	addi r1, r1, 0x30
/* 80610E28  4E 80 00 20 */	blr 
