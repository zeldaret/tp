lbl_80D1A3EC:
/* 80D1A3EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1A3F0  7C 08 02 A6 */	mflr r0
/* 80D1A3F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1A3F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D1A3FC  7C 7F 1B 78 */	mr r31, r3
/* 80D1A400  38 60 00 00 */	li r3, 0
/* 80D1A404  7C 64 1B 78 */	mr r4, r3
/* 80D1A408  38 00 00 03 */	li r0, 3
/* 80D1A40C  7C 09 03 A6 */	mtctr r0
lbl_80D1A410:
/* 80D1A410  38 C3 07 14 */	addi r6, r3, 0x714
/* 80D1A414  7C BF 32 AE */	lhax r5, r31, r6
/* 80D1A418  38 05 FF FF */	addi r0, r5, -1
/* 80D1A41C  7C 1F 33 2E */	sthx r0, r31, r6
/* 80D1A420  7C 1F 32 AE */	lhax r0, r31, r6
/* 80D1A424  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A428  41 81 00 08 */	bgt lbl_80D1A430
/* 80D1A42C  7C 9F 33 2E */	sthx r4, r31, r6
lbl_80D1A430:
/* 80D1A430  38 63 00 02 */	addi r3, r3, 2
/* 80D1A434  42 00 FF DC */	bdnz lbl_80D1A410
/* 80D1A438  88 1F 07 11 */	lbz r0, 0x711(r31)
/* 80D1A43C  2C 00 00 01 */	cmpwi r0, 1
/* 80D1A440  41 82 00 2C */	beq lbl_80D1A46C
/* 80D1A444  40 80 00 10 */	bge lbl_80D1A454
/* 80D1A448  2C 00 00 00 */	cmpwi r0, 0
/* 80D1A44C  40 80 00 14 */	bge lbl_80D1A460
/* 80D1A450  48 00 00 B0 */	b lbl_80D1A500
lbl_80D1A454:
/* 80D1A454  2C 00 00 03 */	cmpwi r0, 3
/* 80D1A458  40 80 00 A8 */	bge lbl_80D1A500
/* 80D1A45C  48 00 00 9C */	b lbl_80D1A4F8
lbl_80D1A460:
/* 80D1A460  7F E3 FB 78 */	mr r3, r31
/* 80D1A464  4B FF F1 F5 */	bl WaitAction__12daObjTOMBO_cFv
/* 80D1A468  48 00 00 98 */	b lbl_80D1A500
lbl_80D1A46C:
/* 80D1A46C  7F E3 FB 78 */	mr r3, r31
/* 80D1A470  4B FF FC C9 */	bl MoveAction__12daObjTOMBO_cFv
/* 80D1A474  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80D1A478  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D1A47C  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80D1A480  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D1A484  EC 41 00 2A */	fadds f2, f1, f0
/* 80D1A488  3C 60 80 D2 */	lis r3, lit_3942@ha /* 0x80D1B730@ha */
/* 80D1A48C  C0 03 B7 30 */	lfs f0, lit_3942@l(r3)  /* 0x80D1B730@l */
/* 80D1A490  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D1A494  40 81 00 0C */	ble lbl_80D1A4A0
/* 80D1A498  FC 00 10 34 */	frsqrte f0, f2
/* 80D1A49C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80D1A4A0:
/* 80D1A4A0  C0 3F 07 20 */	lfs f1, 0x720(r31)
/* 80D1A4A4  4B 54 D1 D1 */	bl cM_atan2s__Fff
/* 80D1A4A8  7C 60 07 34 */	extsh r0, r3
/* 80D1A4AC  3C 60 80 D2 */	lis r3, lit_4212@ha /* 0x80D1B798@ha */
/* 80D1A4B0  C8 23 B7 98 */	lfd f1, lit_4212@l(r3)  /* 0x80D1B798@l */
/* 80D1A4B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D1A4B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1A4BC  3C 00 43 30 */	lis r0, 0x4330
/* 80D1A4C0  90 01 00 08 */	stw r0, 8(r1)
/* 80D1A4C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D1A4C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D1A4CC  3C 60 80 D2 */	lis r3, lit_4210@ha /* 0x80D1B794@ha */
/* 80D1A4D0  C0 03 B7 94 */	lfs f0, lit_4210@l(r3)  /* 0x80D1B794@l */
/* 80D1A4D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D1A4D8  FC 00 00 1E */	fctiwz f0, f0
/* 80D1A4DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D1A4E0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D1A4E4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80D1A4E8  38 A0 00 02 */	li r5, 2
/* 80D1A4EC  38 C0 06 00 */	li r6, 0x600
/* 80D1A4F0  4B 55 61 19 */	bl cLib_addCalcAngleS2__FPssss
/* 80D1A4F4  48 00 00 0C */	b lbl_80D1A500
lbl_80D1A4F8:
/* 80D1A4F8  7F E3 FB 78 */	mr r3, r31
/* 80D1A4FC  4B FF F9 4D */	bl LinkAction__12daObjTOMBO_cFv
lbl_80D1A500:
/* 80D1A500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D1A504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1A508  7C 08 03 A6 */	mtlr r0
/* 80D1A50C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1A510  4E 80 00 20 */	blr 
