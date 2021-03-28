lbl_80D23868:
/* 80D23868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2386C  7C 08 02 A6 */	mflr r0
/* 80D23870  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D23874  88 03 06 00 */	lbz r0, 0x600(r3)
/* 80D23878  28 00 00 00 */	cmplwi r0, 0
/* 80D2387C  40 82 00 40 */	bne lbl_80D238BC
/* 80D23880  3C 60 80 D2 */	lis r3, lit_3717@ha
/* 80D23884  C0 23 3E 14 */	lfs f1, lit_3717@l(r3)
/* 80D23888  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D2388C  3C 60 80 D2 */	lis r3, lit_4031@ha
/* 80D23890  C0 03 3E 24 */	lfs f0, lit_4031@l(r3)
/* 80D23894  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D23898  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D2389C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D238A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D238A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D238A8  38 80 00 02 */	li r4, 2
/* 80D238AC  38 A0 00 1F */	li r5, 0x1f
/* 80D238B0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80D238B4  4B 34 C2 5C */	b StartQuake__12dVibration_cFii4cXyz
/* 80D238B8  48 00 00 3C */	b lbl_80D238F4
lbl_80D238BC:
/* 80D238BC  3C 60 80 D2 */	lis r3, lit_3717@ha
/* 80D238C0  C0 23 3E 14 */	lfs f1, lit_3717@l(r3)
/* 80D238C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D238C8  3C 60 80 D2 */	lis r3, lit_4031@ha
/* 80D238CC  C0 03 3E 24 */	lfs f0, lit_4031@l(r3)
/* 80D238D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D238D4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D238D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D238DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D238E0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D238E4  38 80 00 04 */	li r4, 4
/* 80D238E8  38 A0 00 1F */	li r5, 0x1f
/* 80D238EC  38 C1 00 08 */	addi r6, r1, 8
/* 80D238F0  4B 34 C2 20 */	b StartQuake__12dVibration_cFii4cXyz
lbl_80D238F4:
/* 80D238F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D238F8  7C 08 03 A6 */	mtlr r0
/* 80D238FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D23900  4E 80 00 20 */	blr 
