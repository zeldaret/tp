lbl_8015A3E4:
/* 8015A3E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015A3E8  7C 08 02 A6 */	mflr r0
/* 8015A3EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015A3F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8015A3F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8015A3F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8015A3FC  48 20 7D D9 */	bl _savegpr_27
/* 8015A400  7C 7B 1B 78 */	mr r27, r3
/* 8015A404  7C 9C 23 78 */	mr r28, r4
/* 8015A408  80 03 00 00 */	lwz r0, 0(r3)
/* 8015A40C  7C 00 E0 40 */	cmplw r0, r28
/* 8015A410  41 82 00 A8 */	beq lbl_8015A4B8
/* 8015A414  3B DC 04 D0 */	addi r30, r28, 0x4d0
/* 8015A418  80 7B 00 08 */	lwz r3, 8(r27)
/* 8015A41C  80 9B 00 20 */	lwz r4, 0x20(r27)
/* 8015A420  4B EF 73 91 */	bl dPath_GetPnt__FPC5dPathi
/* 8015A424  7C 7F 1B 78 */	mr r31, r3
/* 8015A428  C0 02 9B 20 */	lfs f0, lit_5050(r2)
/* 8015A42C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015A430  80 7B 00 00 */	lwz r3, 0(r27)
/* 8015A434  3B A3 04 D0 */	addi r29, r3, 0x4d0
/* 8015A438  80 7B 00 04 */	lwz r3, 4(r27)
/* 8015A43C  28 03 00 00 */	cmplwi r3, 0
/* 8015A440  41 82 00 28 */	beq lbl_8015A468
/* 8015A444  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 8015A448  7F A3 EB 78 */	mr r3, r29
/* 8015A44C  48 1E CF 51 */	bl PSVECSquareDistance
/* 8015A450  FF E0 08 90 */	fmr f31, f1
/* 8015A454  7F A3 EB 78 */	mr r3, r29
/* 8015A458  7F C4 F3 78 */	mr r4, r30
/* 8015A45C  48 1E CF 41 */	bl PSVECSquareDistance
/* 8015A460  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8015A464  40 80 00 54 */	bge lbl_8015A4B8
lbl_8015A468:
/* 8015A468  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8015A46C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8015A470  C0 7D 00 00 */	lfs f3, 0(r29)
/* 8015A474  C0 9D 00 08 */	lfs f4, 8(r29)
/* 8015A478  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8015A47C  C0 DF 00 0C */	lfs f6, 0xc(r31)
/* 8015A480  38 61 00 08 */	addi r3, r1, 8
/* 8015A484  38 81 00 0C */	addi r4, r1, 0xc
/* 8015A488  38 A1 00 10 */	addi r5, r1, 0x10
/* 8015A48C  48 10 E1 A1 */	bl cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 8015A490  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015A494  41 82 00 24 */	beq lbl_8015A4B8
/* 8015A498  C8 22 9B 48 */	lfd f1, lit_5359(r2)
/* 8015A49C  C8 42 9B 18 */	lfd f2, lit_4972(r2)
/* 8015A4A0  48 21 22 E1 */	bl pow
/* 8015A4A4  FC 20 08 18 */	frsp f1, f1
/* 8015A4A8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8015A4AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8015A4B0  40 80 00 08 */	bge lbl_8015A4B8
/* 8015A4B4  93 9B 00 04 */	stw r28, 4(r27)
lbl_8015A4B8:
/* 8015A4B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8015A4BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8015A4C0  39 61 00 30 */	addi r11, r1, 0x30
/* 8015A4C4  48 20 7D 5D */	bl _restgpr_27
/* 8015A4C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015A4CC  7C 08 03 A6 */	mtlr r0
/* 8015A4D0  38 21 00 40 */	addi r1, r1, 0x40
/* 8015A4D4  4E 80 00 20 */	blr 
