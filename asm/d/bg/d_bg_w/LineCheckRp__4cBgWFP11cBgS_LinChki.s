lbl_8007A3A0:
/* 8007A3A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007A3A4  7C 08 02 A6 */	mflr r0
/* 8007A3A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A3AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A3B0  48 2E 7E 21 */	bl _savegpr_26
/* 8007A3B4  7C 7C 1B 78 */	mr r28, r3
/* 8007A3B8  7C 9D 23 78 */	mr r29, r4
/* 8007A3BC  7C BA 2B 78 */	mr r26, r5
/* 8007A3C0  80 63 00 AC */	lwz r3, 0xac(r3)
/* 8007A3C4  1C 1A 00 1C */	mulli r0, r26, 0x1c
/* 8007A3C8  7C 63 02 14 */	add r3, r3, r0
/* 8007A3CC  38 BD 00 24 */	addi r5, r29, 0x24
/* 8007A3D0  38 C5 00 0C */	addi r6, r5, 0xc
/* 8007A3D4  38 83 00 0C */	addi r4, r3, 0xc
/* 8007A3D8  48 1E EC 79 */	bl cM3d_Cross_MinMaxBoxLine__FPC3VecPC3VecPC3VecPC3Vec
/* 8007A3DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A3E0  40 82 00 0C */	bne lbl_8007A3EC
/* 8007A3E4  38 60 00 00 */	li r3, 0
/* 8007A3E8  48 00 01 2C */	b lbl_8007A514
lbl_8007A3EC:
/* 8007A3EC  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007A3F0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8007A3F4  1C 1A 00 14 */	mulli r0, r26, 0x14
/* 8007A3F8  7F E3 02 14 */	add r31, r3, r0
/* 8007A3FC  3B C0 00 00 */	li r30, 0
/* 8007A400  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8007A404  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007A408  41 82 00 C8 */	beq lbl_8007A4D0
/* 8007A40C  88 1D 00 50 */	lbz r0, 0x50(r29)
/* 8007A410  28 00 00 00 */	cmplwi r0, 0
/* 8007A414  41 82 00 38 */	beq lbl_8007A44C
/* 8007A418  80 7C 00 A4 */	lwz r3, 0xa4(r28)
/* 8007A41C  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8007A420  1C 00 00 06 */	mulli r0, r0, 6
/* 8007A424  7C 63 02 14 */	add r3, r3, r0
/* 8007A428  A0 83 00 02 */	lhz r4, 2(r3)
/* 8007A42C  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007A430  41 82 00 1C */	beq lbl_8007A44C
/* 8007A434  7F 83 E3 78 */	mr r3, r28
/* 8007A438  7F A5 EB 78 */	mr r5, r29
/* 8007A43C  4B FF FD C5 */	bl RwgLineCheck__4cBgWFUsP11cBgS_LinChk
/* 8007A440  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A444  41 82 00 08 */	beq lbl_8007A44C
/* 8007A448  3B C0 00 01 */	li r30, 1
lbl_8007A44C:
/* 8007A44C  88 1D 00 51 */	lbz r0, 0x51(r29)
/* 8007A450  28 00 00 00 */	cmplwi r0, 0
/* 8007A454  41 82 00 38 */	beq lbl_8007A48C
/* 8007A458  80 7C 00 A4 */	lwz r3, 0xa4(r28)
/* 8007A45C  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8007A460  1C 00 00 06 */	mulli r0, r0, 6
/* 8007A464  7C 63 02 14 */	add r3, r3, r0
/* 8007A468  A0 83 00 04 */	lhz r4, 4(r3)
/* 8007A46C  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007A470  41 82 00 1C */	beq lbl_8007A48C
/* 8007A474  7F 83 E3 78 */	mr r3, r28
/* 8007A478  7F A5 EB 78 */	mr r5, r29
/* 8007A47C  4B FF FD 85 */	bl RwgLineCheck__4cBgWFUsP11cBgS_LinChk
/* 8007A480  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A484  41 82 00 08 */	beq lbl_8007A48C
/* 8007A488  3B C0 00 01 */	li r30, 1
lbl_8007A48C:
/* 8007A48C  88 1D 00 52 */	lbz r0, 0x52(r29)
/* 8007A490  28 00 00 00 */	cmplwi r0, 0
/* 8007A494  41 82 00 34 */	beq lbl_8007A4C8
/* 8007A498  80 7C 00 A4 */	lwz r3, 0xa4(r28)
/* 8007A49C  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8007A4A0  1C 00 00 06 */	mulli r0, r0, 6
/* 8007A4A4  7C 83 02 2E */	lhzx r4, r3, r0
/* 8007A4A8  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007A4AC  41 82 00 1C */	beq lbl_8007A4C8
/* 8007A4B0  7F 83 E3 78 */	mr r3, r28
/* 8007A4B4  7F A5 EB 78 */	mr r5, r29
/* 8007A4B8  4B FF FD 49 */	bl RwgLineCheck__4cBgWFUsP11cBgS_LinChk
/* 8007A4BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A4C0  41 82 00 08 */	beq lbl_8007A4C8
/* 8007A4C4  3B C0 00 01 */	li r30, 1
lbl_8007A4C8:
/* 8007A4C8  7F C3 F3 78 */	mr r3, r30
/* 8007A4CC  48 00 00 48 */	b lbl_8007A514
lbl_8007A4D0:
/* 8007A4D0  3B 40 00 00 */	li r26, 0
/* 8007A4D4  3B 60 00 00 */	li r27, 0
lbl_8007A4D8:
/* 8007A4D8  38 1B 00 04 */	addi r0, r27, 4
/* 8007A4DC  7C BF 02 2E */	lhzx r5, r31, r0
/* 8007A4E0  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007A4E4  41 82 00 1C */	beq lbl_8007A500
/* 8007A4E8  7F 83 E3 78 */	mr r3, r28
/* 8007A4EC  7F A4 EB 78 */	mr r4, r29
/* 8007A4F0  4B FF FE B1 */	bl LineCheckRp__4cBgWFP11cBgS_LinChki
/* 8007A4F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A4F8  41 82 00 08 */	beq lbl_8007A500
/* 8007A4FC  3B C0 00 01 */	li r30, 1
lbl_8007A500:
/* 8007A500  3B 5A 00 01 */	addi r26, r26, 1
/* 8007A504  2C 1A 00 08 */	cmpwi r26, 8
/* 8007A508  3B 7B 00 02 */	addi r27, r27, 2
/* 8007A50C  41 80 FF CC */	blt lbl_8007A4D8
/* 8007A510  7F C3 F3 78 */	mr r3, r30
lbl_8007A514:
/* 8007A514  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A518  48 2E 7D 05 */	bl _restgpr_26
/* 8007A51C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007A520  7C 08 03 A6 */	mtlr r0
/* 8007A524  38 21 00 20 */	addi r1, r1, 0x20
/* 8007A528  4E 80 00 20 */	blr 
