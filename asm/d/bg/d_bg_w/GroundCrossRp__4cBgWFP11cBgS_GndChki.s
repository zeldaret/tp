lbl_8007A8F4:
/* 8007A8F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007A8F8  7C 08 02 A6 */	mflr r0
/* 8007A8FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007A900  39 61 00 30 */	addi r11, r1, 0x30
/* 8007A904  48 2E 78 C5 */	bl _savegpr_24
/* 8007A908  7C 7C 1B 78 */	mr r28, r3
/* 8007A90C  7C 9D 23 78 */	mr r29, r4
/* 8007A910  3B E0 00 00 */	li r31, 0
/* 8007A914  80 83 00 A0 */	lwz r4, 0xa0(r3)
/* 8007A918  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 8007A91C  1C 05 00 14 */	mulli r0, r5, 0x14
/* 8007A920  7F C4 02 14 */	add r30, r4, r0
/* 8007A924  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8007A928  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007A92C  41 82 00 7C */	beq lbl_8007A9A8
/* 8007A930  80 9C 00 A4 */	lwz r4, 0xa4(r28)
/* 8007A934  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8007A938  1C 00 00 06 */	mulli r0, r0, 6
/* 8007A93C  7C 84 02 14 */	add r4, r4, r0
/* 8007A940  A0 84 00 04 */	lhz r4, 4(r4)
/* 8007A944  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007A948  41 82 00 18 */	beq lbl_8007A960
/* 8007A94C  7F A5 EB 78 */	mr r5, r29
/* 8007A950  4B FF FE 25 */	bl RwgGroundCheckGnd__4cBgWFUsP11cBgS_GndChk
/* 8007A954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A958  41 82 00 08 */	beq lbl_8007A960
/* 8007A95C  3B E0 00 01 */	li r31, 1
lbl_8007A960:
/* 8007A960  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 8007A964  28 00 00 00 */	cmplwi r0, 0
/* 8007A968  41 82 00 38 */	beq lbl_8007A9A0
/* 8007A96C  80 7C 00 A4 */	lwz r3, 0xa4(r28)
/* 8007A970  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8007A974  1C 00 00 06 */	mulli r0, r0, 6
/* 8007A978  7C 63 02 14 */	add r3, r3, r0
/* 8007A97C  A0 83 00 02 */	lhz r4, 2(r3)
/* 8007A980  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007A984  41 82 00 1C */	beq lbl_8007A9A0
/* 8007A988  7F 83 E3 78 */	mr r3, r28
/* 8007A98C  7F A5 EB 78 */	mr r5, r29
/* 8007A990  4B FF FE 95 */	bl RwgGroundCheckWall__4cBgWFUsP11cBgS_GndChk
/* 8007A994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A998  41 82 00 08 */	beq lbl_8007A9A0
/* 8007A99C  3B E0 00 01 */	li r31, 1
lbl_8007A9A0:
/* 8007A9A0  7F E3 FB 78 */	mr r3, r31
/* 8007A9A4  48 00 00 94 */	b lbl_8007AA38
lbl_8007A9A8:
/* 8007A9A8  3B 20 00 00 */	li r25, 0
/* 8007A9AC  3B 60 00 00 */	li r27, 0
lbl_8007A9B0:
/* 8007A9B0  3B 5B 00 04 */	addi r26, r27, 4
/* 8007A9B4  7C 1E D2 2E */	lhzx r0, r30, r26
/* 8007A9B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007A9BC  41 82 00 68 */	beq lbl_8007AA24
/* 8007A9C0  80 7C 00 AC */	lwz r3, 0xac(r28)
/* 8007A9C4  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 8007A9C8  7F 03 02 14 */	add r24, r3, r0
/* 8007A9CC  7F 03 C3 78 */	mr r3, r24
/* 8007A9D0  38 9D 00 24 */	addi r4, r29, 0x24
/* 8007A9D4  48 1F 42 B5 */	bl CrossY__8cM3dGAabCFPC4cXyz
/* 8007A9D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A9DC  41 82 00 48 */	beq lbl_8007AA24
/* 8007A9E0  7F 03 C3 78 */	mr r3, r24
/* 8007A9E4  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8007A9E8  48 1F 42 E9 */	bl UnderPlaneYUnder__8cM3dGAabCFf
/* 8007A9EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A9F0  41 82 00 34 */	beq lbl_8007AA24
/* 8007A9F4  7F 03 C3 78 */	mr r3, r24
/* 8007A9F8  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8007A9FC  48 1F 42 E9 */	bl TopPlaneYUnder__8cM3dGAabCFf
/* 8007AA00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AA04  40 82 00 20 */	bne lbl_8007AA24
/* 8007AA08  7F 83 E3 78 */	mr r3, r28
/* 8007AA0C  7F A4 EB 78 */	mr r4, r29
/* 8007AA10  7C BE D2 2E */	lhzx r5, r30, r26
/* 8007AA14  4B FF FE E1 */	bl GroundCrossRp__4cBgWFP11cBgS_GndChki
/* 8007AA18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AA1C  41 82 00 08 */	beq lbl_8007AA24
/* 8007AA20  3B E0 00 01 */	li r31, 1
lbl_8007AA24:
/* 8007AA24  3B 39 00 01 */	addi r25, r25, 1
/* 8007AA28  2C 19 00 08 */	cmpwi r25, 8
/* 8007AA2C  3B 7B 00 02 */	addi r27, r27, 2
/* 8007AA30  41 80 FF 80 */	blt lbl_8007A9B0
/* 8007AA34  7F E3 FB 78 */	mr r3, r31
lbl_8007AA38:
/* 8007AA38  39 61 00 30 */	addi r11, r1, 0x30
/* 8007AA3C  48 2E 77 D9 */	bl _restgpr_24
/* 8007AA40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007AA44  7C 08 03 A6 */	mtlr r0
/* 8007AA48  38 21 00 30 */	addi r1, r1, 0x30
/* 8007AA4C  4E 80 00 20 */	blr 
