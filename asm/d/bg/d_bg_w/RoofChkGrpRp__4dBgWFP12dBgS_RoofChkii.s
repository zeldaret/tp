lbl_8007D330:
/* 8007D330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007D334  7C 08 02 A6 */	mflr r0
/* 8007D338  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007D33C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D340  48 2E 4E 95 */	bl _savegpr_27
/* 8007D344  7C 7D 1B 78 */	mr r29, r3
/* 8007D348  7C 9E 23 78 */	mr r30, r4
/* 8007D34C  7C BB 2B 78 */	mr r27, r5
/* 8007D350  7C DF 33 78 */	mr r31, r6
/* 8007D354  80 63 00 A8 */	lwz r3, 0xa8(r3)
/* 8007D358  54 A0 28 34 */	slwi r0, r5, 5
/* 8007D35C  7F 83 02 14 */	add r28, r3, r0
/* 8007D360  38 7C 00 04 */	addi r3, r28, 4
/* 8007D364  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8007D368  48 1F 19 21 */	bl CrossY__8cM3dGAabCFPC4cXyz
/* 8007D36C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D370  41 82 00 2C */	beq lbl_8007D39C
/* 8007D374  38 7C 00 04 */	addi r3, r28, 4
/* 8007D378  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8007D37C  48 1F 19 55 */	bl UnderPlaneYUnder__8cM3dGAabCFf
/* 8007D380  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D384  41 82 00 18 */	beq lbl_8007D39C
/* 8007D388  38 7C 00 04 */	addi r3, r28, 4
/* 8007D38C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8007D390  48 1F 19 55 */	bl TopPlaneYUnder__8cM3dGAabCFf
/* 8007D394  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D398  41 82 00 0C */	beq lbl_8007D3A4
lbl_8007D39C:
/* 8007D39C  38 60 00 00 */	li r3, 0
/* 8007D3A0  48 00 00 B8 */	b lbl_8007D458
lbl_8007D3A4:
/* 8007D3A4  7F A3 EB 78 */	mr r3, r29
/* 8007D3A8  7F 64 DB 78 */	mr r4, r27
/* 8007D3AC  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8007D3B0  7F E6 FB 78 */	mr r6, r31
/* 8007D3B4  81 9D 00 04 */	lwz r12, 4(r29)
/* 8007D3B8  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007D3BC  7D 89 03 A6 */	mtctr r12
/* 8007D3C0  4E 80 04 21 */	bctrl 
/* 8007D3C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D3C8  41 82 00 0C */	beq lbl_8007D3D4
/* 8007D3CC  38 60 00 00 */	li r3, 0
/* 8007D3D0  48 00 00 88 */	b lbl_8007D458
lbl_8007D3D4:
/* 8007D3D4  3B 80 00 00 */	li r28, 0
/* 8007D3D8  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007D3DC  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8007D3E0  1C 1B 00 34 */	mulli r0, r27, 0x34
/* 8007D3E4  7F 63 02 14 */	add r27, r3, r0
/* 8007D3E8  A0 BB 00 2E */	lhz r5, 0x2e(r27)
/* 8007D3EC  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007D3F0  41 82 00 1C */	beq lbl_8007D40C
/* 8007D3F4  7F A3 EB 78 */	mr r3, r29
/* 8007D3F8  7F C4 F3 78 */	mr r4, r30
/* 8007D3FC  4B FF FE 0D */	bl RoofChkRp__4dBgWFP12dBgS_RoofChki
/* 8007D400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D404  41 82 00 08 */	beq lbl_8007D40C
/* 8007D408  3B 80 00 01 */	li r28, 1
lbl_8007D40C:
/* 8007D40C  A3 7B 00 28 */	lhz r27, 0x28(r27)
lbl_8007D410:
/* 8007D410  3C 1B 00 00 */	addis r0, r27, 0
/* 8007D414  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007D418  41 82 00 3C */	beq lbl_8007D454
/* 8007D41C  7F A3 EB 78 */	mr r3, r29
/* 8007D420  7F C4 F3 78 */	mr r4, r30
/* 8007D424  7F 65 DB 78 */	mr r5, r27
/* 8007D428  38 DF 00 01 */	addi r6, r31, 1
/* 8007D42C  4B FF FF 05 */	bl RoofChkGrpRp__4dBgWFP12dBgS_RoofChkii
/* 8007D430  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D434  41 82 00 08 */	beq lbl_8007D43C
/* 8007D438  3B 80 00 01 */	li r28, 1
lbl_8007D43C:
/* 8007D43C  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007D440  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007D444  1C 7B 00 34 */	mulli r3, r27, 0x34
/* 8007D448  38 03 00 26 */	addi r0, r3, 0x26
/* 8007D44C  7F 64 02 2E */	lhzx r27, r4, r0
/* 8007D450  4B FF FF C0 */	b lbl_8007D410
lbl_8007D454:
/* 8007D454  7F 83 E3 78 */	mr r3, r28
lbl_8007D458:
/* 8007D458  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D45C  48 2E 4D C5 */	bl _restgpr_27
/* 8007D460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007D464  7C 08 03 A6 */	mtlr r0
/* 8007D468  38 21 00 20 */	addi r1, r1, 0x20
/* 8007D46C  4E 80 00 20 */	blr 
