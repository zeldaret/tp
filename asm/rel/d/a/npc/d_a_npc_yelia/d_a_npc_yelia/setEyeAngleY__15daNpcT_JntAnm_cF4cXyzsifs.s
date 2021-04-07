lbl_80B51C10:
/* 80B51C10  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B51C14  7C 08 02 A6 */	mflr r0
/* 80B51C18  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B51C1C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B51C20  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B51C24  39 61 00 50 */	addi r11, r1, 0x50
/* 80B51C28  4B 81 05 B1 */	bl _savegpr_28
/* 80B51C2C  7C 7F 1B 78 */	mr r31, r3
/* 80B51C30  7C 80 23 78 */	mr r0, r4
/* 80B51C34  7C BC 2B 78 */	mr r28, r5
/* 80B51C38  7C DD 33 78 */	mr r29, r6
/* 80B51C3C  FF E0 08 90 */	fmr f31, f1
/* 80B51C40  7C FE 3B 78 */	mr r30, r7
/* 80B51C44  38 A0 00 00 */	li r5, 0
/* 80B51C48  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B51C4C  28 04 00 00 */	cmplwi r4, 0
/* 80B51C50  41 82 00 44 */	beq lbl_80B51C94
/* 80B51C54  38 61 00 08 */	addi r3, r1, 8
/* 80B51C58  7C 05 03 78 */	mr r5, r0
/* 80B51C5C  4B 71 4E D9 */	bl __mi__4cXyzCFRC3Vec
/* 80B51C60  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B51C64  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B51C68  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B51C6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B51C70  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B51C74  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B51C78  4B 71 59 FD */	bl cM_atan2s__Fff
/* 80B51C7C  7C BC 18 50 */	subf r5, r28, r3
/* 80B51C80  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B51C84  7C 1C 00 50 */	subf r0, r28, r0
/* 80B51C88  7C 00 07 34 */	extsh r0, r0
/* 80B51C8C  7C A0 28 50 */	subf r5, r0, r5
/* 80B51C90  7C A5 F2 14 */	add r5, r5, r30
lbl_80B51C94:
/* 80B51C94  2C 1D 00 00 */	cmpwi r29, 0
/* 80B51C98  41 82 00 0C */	beq lbl_80B51CA4
/* 80B51C9C  7C 05 00 D0 */	neg r0, r5
/* 80B51CA0  7C 05 07 34 */	extsh r5, r0
lbl_80B51CA4:
/* 80B51CA4  3C 60 80 B5 */	lis r3, lit_4489@ha /* 0x80B52388@ha */
/* 80B51CA8  C0 63 23 88 */	lfs f3, lit_4489@l(r3)  /* 0x80B52388@l */
/* 80B51CAC  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B51CB0  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B51CB4  3C 60 80 B5 */	lis r3, lit_4984@ha /* 0x80B523B4@ha */
/* 80B51CB8  C8 43 23 B4 */	lfd f2, lit_4984@l(r3)  /* 0x80B523B4@l */
/* 80B51CBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B51CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B51CC4  3C 60 43 30 */	lis r3, 0x4330
/* 80B51CC8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B51CCC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B51CD0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B51CD4  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B51CD8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B51CDC  7C A0 07 34 */	extsh r0, r5
/* 80B51CE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B51CE4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B51CE8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B51CEC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B51CF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B51CF4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B51CF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80B51CFC  FC 00 00 1E */	fctiwz f0, f0
/* 80B51D00  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B51D04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B51D08  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B51D0C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B51D10  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B51D14  39 61 00 50 */	addi r11, r1, 0x50
/* 80B51D18  4B 81 05 0D */	bl _restgpr_28
/* 80B51D1C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B51D20  7C 08 03 A6 */	mtlr r0
/* 80B51D24  38 21 00 60 */	addi r1, r1, 0x60
/* 80B51D28  4E 80 00 20 */	blr 
