lbl_8007D208:
/* 8007D208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007D20C  7C 08 02 A6 */	mflr r0
/* 8007D210  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007D214  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D218  48 2E 4F B9 */	bl _savegpr_26
/* 8007D21C  7C 7E 1B 78 */	mr r30, r3
/* 8007D220  7C 9F 23 78 */	mr r31, r4
/* 8007D224  7C BA 2B 78 */	mr r26, r5
/* 8007D228  80 63 00 AC */	lwz r3, 0xac(r3)
/* 8007D22C  1C 1A 00 1C */	mulli r0, r26, 0x1c
/* 8007D230  7F A3 02 14 */	add r29, r3, r0
/* 8007D234  7F A3 EB 78 */	mr r3, r29
/* 8007D238  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8007D23C  48 1F 1A 4D */	bl CrossY__8cM3dGAabCFPC4cXyz
/* 8007D240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D244  41 82 00 2C */	beq lbl_8007D270
/* 8007D248  7F A3 EB 78 */	mr r3, r29
/* 8007D24C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8007D250  48 1F 1A 81 */	bl UnderPlaneYUnder__8cM3dGAabCFf
/* 8007D254  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D258  41 82 00 18 */	beq lbl_8007D270
/* 8007D25C  7F A3 EB 78 */	mr r3, r29
/* 8007D260  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8007D264  48 1F 1A 81 */	bl TopPlaneYUnder__8cM3dGAabCFf
/* 8007D268  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D26C  41 82 00 0C */	beq lbl_8007D278
lbl_8007D270:
/* 8007D270  38 60 00 00 */	li r3, 0
/* 8007D274  48 00 00 A4 */	b lbl_8007D318
lbl_8007D278:
/* 8007D278  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007D27C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8007D280  1C 1A 00 14 */	mulli r0, r26, 0x14
/* 8007D284  7F 83 02 14 */	add r28, r3, r0
/* 8007D288  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8007D28C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007D290  41 82 00 40 */	beq lbl_8007D2D0
/* 8007D294  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007D298  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007D29C  1C 00 00 06 */	mulli r0, r0, 6
/* 8007D2A0  7C 83 02 2E */	lhzx r4, r3, r0
/* 8007D2A4  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007D2A8  41 82 00 20 */	beq lbl_8007D2C8
/* 8007D2AC  7F C3 F3 78 */	mr r3, r30
/* 8007D2B0  7F E5 FB 78 */	mr r5, r31
/* 8007D2B4  4B FF FE 29 */	bl RwgRoofChk__4dBgWFUsP12dBgS_RoofChk
/* 8007D2B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D2BC  41 82 00 0C */	beq lbl_8007D2C8
/* 8007D2C0  38 60 00 01 */	li r3, 1
/* 8007D2C4  48 00 00 54 */	b lbl_8007D318
lbl_8007D2C8:
/* 8007D2C8  38 60 00 00 */	li r3, 0
/* 8007D2CC  48 00 00 4C */	b lbl_8007D318
lbl_8007D2D0:
/* 8007D2D0  3B 60 00 00 */	li r27, 0
/* 8007D2D4  3B 40 00 00 */	li r26, 0
/* 8007D2D8  3B A0 00 00 */	li r29, 0
lbl_8007D2DC:
/* 8007D2DC  38 1D 00 04 */	addi r0, r29, 4
/* 8007D2E0  7C BC 02 2E */	lhzx r5, r28, r0
/* 8007D2E4  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007D2E8  41 82 00 1C */	beq lbl_8007D304
/* 8007D2EC  7F C3 F3 78 */	mr r3, r30
/* 8007D2F0  7F E4 FB 78 */	mr r4, r31
/* 8007D2F4  4B FF FF 15 */	bl RoofChkRp__4dBgWFP12dBgS_RoofChki
/* 8007D2F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D2FC  41 82 00 08 */	beq lbl_8007D304
/* 8007D300  3B 60 00 01 */	li r27, 1
lbl_8007D304:
/* 8007D304  3B 5A 00 01 */	addi r26, r26, 1
/* 8007D308  2C 1A 00 08 */	cmpwi r26, 8
/* 8007D30C  3B BD 00 02 */	addi r29, r29, 2
/* 8007D310  41 80 FF CC */	blt lbl_8007D2DC
/* 8007D314  7F 63 DB 78 */	mr r3, r27
lbl_8007D318:
/* 8007D318  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D31C  48 2E 4F 01 */	bl _restgpr_26
/* 8007D320  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007D324  7C 08 03 A6 */	mtlr r0
/* 8007D328  38 21 00 20 */	addi r1, r1, 0x20
/* 8007D32C  4E 80 00 20 */	blr 
