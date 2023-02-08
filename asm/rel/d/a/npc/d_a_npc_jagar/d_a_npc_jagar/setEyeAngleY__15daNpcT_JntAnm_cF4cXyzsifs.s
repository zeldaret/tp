lbl_80A19C58:
/* 80A19C58  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A19C5C  7C 08 02 A6 */	mflr r0
/* 80A19C60  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A19C64  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A19C68  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A19C6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A19C70  4B 94 85 69 */	bl _savegpr_28
/* 80A19C74  7C 7F 1B 78 */	mr r31, r3
/* 80A19C78  7C 80 23 78 */	mr r0, r4
/* 80A19C7C  7C BC 2B 78 */	mr r28, r5
/* 80A19C80  7C DD 33 78 */	mr r29, r6
/* 80A19C84  FF E0 08 90 */	fmr f31, f1
/* 80A19C88  7C FE 3B 78 */	mr r30, r7
/* 80A19C8C  38 A0 00 00 */	li r5, 0
/* 80A19C90  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A19C94  28 04 00 00 */	cmplwi r4, 0
/* 80A19C98  41 82 00 44 */	beq lbl_80A19CDC
/* 80A19C9C  38 61 00 08 */	addi r3, r1, 8
/* 80A19CA0  7C 05 03 78 */	mr r5, r0
/* 80A19CA4  4B 84 CE 91 */	bl __mi__4cXyzCFRC3Vec
/* 80A19CA8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A19CAC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A19CB0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A19CB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A19CB8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A19CBC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A19CC0  4B 84 D9 B5 */	bl cM_atan2s__Fff
/* 80A19CC4  7C BC 18 50 */	subf r5, r28, r3
/* 80A19CC8  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A19CCC  7C 1C 00 50 */	subf r0, r28, r0
/* 80A19CD0  7C 00 07 34 */	extsh r0, r0
/* 80A19CD4  7C A0 28 50 */	subf r5, r0, r5
/* 80A19CD8  7C A5 F2 14 */	add r5, r5, r30
lbl_80A19CDC:
/* 80A19CDC  2C 1D 00 00 */	cmpwi r29, 0
/* 80A19CE0  41 82 00 0C */	beq lbl_80A19CEC
/* 80A19CE4  7C 05 00 D0 */	neg r0, r5
/* 80A19CE8  7C 05 07 34 */	extsh r5, r0
lbl_80A19CEC:
/* 80A19CEC  3C 60 80 A2 */	lis r3, lit_4475@ha /* 0x80A1A400@ha */
/* 80A19CF0  C0 63 A4 00 */	lfs f3, lit_4475@l(r3)  /* 0x80A1A400@l */
/* 80A19CF4  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A19CF8  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A19CFC  3C 60 80 A2 */	lis r3, lit_4939@ha /* 0x80A1A428@ha */
/* 80A19D00  C8 43 A4 28 */	lfd f2, lit_4939@l(r3)  /* 0x80A1A428@l */
/* 80A19D04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A19D08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A19D0C  3C 60 43 30 */	lis r3, 0x4330
/* 80A19D10  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A19D14  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A19D18  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A19D1C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A19D20  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A19D24  7C A0 07 34 */	extsh r0, r5
/* 80A19D28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A19D2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A19D30  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A19D34  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A19D38  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A19D3C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A19D40  EC 01 00 2A */	fadds f0, f1, f0
/* 80A19D44  FC 00 00 1E */	fctiwz f0, f0
/* 80A19D48  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A19D4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A19D50  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A19D54  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A19D58  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A19D5C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A19D60  4B 94 84 C5 */	bl _restgpr_28
/* 80A19D64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A19D68  7C 08 03 A6 */	mtlr r0
/* 80A19D6C  38 21 00 60 */	addi r1, r1, 0x60
/* 80A19D70  4E 80 00 20 */	blr 
