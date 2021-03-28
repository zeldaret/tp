lbl_8050A3EC:
/* 8050A3EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050A3F0  7C 08 02 A6 */	mflr r0
/* 8050A3F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050A3F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A3FC  4B E5 7D E0 */	b _savegpr_29
/* 8050A400  7C 7D 1B 78 */	mr r29, r3
/* 8050A404  7C 9E 23 78 */	mr r30, r4
/* 8050A408  3C 80 80 52 */	lis r4, lit_4208@ha
/* 8050A40C  3B E4 85 84 */	addi r31, r4, lit_4208@l
/* 8050A410  4B B0 E8 D0 */	b fopAc_IsActor__FPv
/* 8050A414  2C 03 00 00 */	cmpwi r3, 0
/* 8050A418  41 82 01 44 */	beq lbl_8050A55C
/* 8050A41C  A8 1D 00 08 */	lha r0, 8(r29)
/* 8050A420  2C 00 00 EF */	cmpwi r0, 0xef
/* 8050A424  40 82 01 38 */	bne lbl_8050A55C
/* 8050A428  88 1D 07 9D */	lbz r0, 0x79d(r29)
/* 8050A42C  7C 00 07 75 */	extsb. r0, r0
/* 8050A430  40 82 01 2C */	bne lbl_8050A55C
/* 8050A434  38 61 00 0C */	addi r3, r1, 0xc
/* 8050A438  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8050A43C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8050A440  4B D5 C6 F4 */	b __mi__4cXyzCFRC3Vec
/* 8050A444  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8050A448  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8050A44C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8050A450  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050A454  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050A458  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050A45C  38 61 00 18 */	addi r3, r1, 0x18
/* 8050A460  4B E3 CC D8 */	b PSVECSquareMag
/* 8050A464  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050A468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050A46C  40 81 00 58 */	ble lbl_8050A4C4
/* 8050A470  FC 00 08 34 */	frsqrte f0, f1
/* 8050A474  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8050A478  FC 44 00 32 */	fmul f2, f4, f0
/* 8050A47C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8050A480  FC 00 00 32 */	fmul f0, f0, f0
/* 8050A484  FC 01 00 32 */	fmul f0, f1, f0
/* 8050A488  FC 03 00 28 */	fsub f0, f3, f0
/* 8050A48C  FC 02 00 32 */	fmul f0, f2, f0
/* 8050A490  FC 44 00 32 */	fmul f2, f4, f0
/* 8050A494  FC 00 00 32 */	fmul f0, f0, f0
/* 8050A498  FC 01 00 32 */	fmul f0, f1, f0
/* 8050A49C  FC 03 00 28 */	fsub f0, f3, f0
/* 8050A4A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8050A4A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8050A4A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8050A4AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8050A4B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8050A4B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8050A4B8  FC 21 00 32 */	fmul f1, f1, f0
/* 8050A4BC  FC 20 08 18 */	frsp f1, f1
/* 8050A4C0  48 00 00 88 */	b lbl_8050A548
lbl_8050A4C4:
/* 8050A4C4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8050A4C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050A4CC  40 80 00 10 */	bge lbl_8050A4DC
/* 8050A4D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8050A4D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8050A4D8  48 00 00 70 */	b lbl_8050A548
lbl_8050A4DC:
/* 8050A4DC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8050A4E0  80 81 00 08 */	lwz r4, 8(r1)
/* 8050A4E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8050A4E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8050A4EC  7C 03 00 00 */	cmpw r3, r0
/* 8050A4F0  41 82 00 14 */	beq lbl_8050A504
/* 8050A4F4  40 80 00 40 */	bge lbl_8050A534
/* 8050A4F8  2C 03 00 00 */	cmpwi r3, 0
/* 8050A4FC  41 82 00 20 */	beq lbl_8050A51C
/* 8050A500  48 00 00 34 */	b lbl_8050A534
lbl_8050A504:
/* 8050A504  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050A508  41 82 00 0C */	beq lbl_8050A514
/* 8050A50C  38 00 00 01 */	li r0, 1
/* 8050A510  48 00 00 28 */	b lbl_8050A538
lbl_8050A514:
/* 8050A514  38 00 00 02 */	li r0, 2
/* 8050A518  48 00 00 20 */	b lbl_8050A538
lbl_8050A51C:
/* 8050A51C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050A520  41 82 00 0C */	beq lbl_8050A52C
/* 8050A524  38 00 00 05 */	li r0, 5
/* 8050A528  48 00 00 10 */	b lbl_8050A538
lbl_8050A52C:
/* 8050A52C  38 00 00 03 */	li r0, 3
/* 8050A530  48 00 00 08 */	b lbl_8050A538
lbl_8050A534:
/* 8050A534  38 00 00 04 */	li r0, 4
lbl_8050A538:
/* 8050A538  2C 00 00 01 */	cmpwi r0, 1
/* 8050A53C  40 82 00 0C */	bne lbl_8050A548
/* 8050A540  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8050A544  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8050A548:
/* 8050A548  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8050A54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050A550  40 81 00 0C */	ble lbl_8050A55C
/* 8050A554  7F A3 EB 78 */	mr r3, r29
/* 8050A558  48 00 00 08 */	b lbl_8050A560
lbl_8050A55C:
/* 8050A55C  38 60 00 00 */	li r3, 0
lbl_8050A560:
/* 8050A560  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A564  4B E5 7C C4 */	b _restgpr_29
/* 8050A568  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050A56C  7C 08 03 A6 */	mtlr r0
/* 8050A570  38 21 00 40 */	addi r1, r1, 0x40
/* 8050A574  4E 80 00 20 */	blr 
