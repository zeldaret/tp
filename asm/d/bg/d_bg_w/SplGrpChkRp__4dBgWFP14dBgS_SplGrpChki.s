lbl_8007D5C4:
/* 8007D5C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007D5C8  7C 08 02 A6 */	mflr r0
/* 8007D5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007D5D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D5D4  48 2E 4B FD */	bl _savegpr_26
/* 8007D5D8  7C 7E 1B 78 */	mr r30, r3
/* 8007D5DC  7C 9F 23 78 */	mr r31, r4
/* 8007D5E0  7C BA 2B 78 */	mr r26, r5
/* 8007D5E4  80 63 00 AC */	lwz r3, 0xac(r3)
/* 8007D5E8  1C 1A 00 1C */	mulli r0, r26, 0x1c
/* 8007D5EC  7F A3 02 14 */	add r29, r3, r0
/* 8007D5F0  7F A3 EB 78 */	mr r3, r29
/* 8007D5F4  38 9F 00 3C */	addi r4, r31, 0x3c
/* 8007D5F8  48 1F 16 91 */	bl CrossY__8cM3dGAabCFPC4cXyz
/* 8007D5FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D600  41 82 00 2C */	beq lbl_8007D62C
/* 8007D604  7F A3 EB 78 */	mr r3, r29
/* 8007D608  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8007D60C  48 1F 16 C5 */	bl UnderPlaneYUnder__8cM3dGAabCFf
/* 8007D610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D614  41 82 00 18 */	beq lbl_8007D62C
/* 8007D618  7F A3 EB 78 */	mr r3, r29
/* 8007D61C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8007D620  48 1F 16 C5 */	bl TopPlaneYUnder__8cM3dGAabCFf
/* 8007D624  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D628  41 82 00 0C */	beq lbl_8007D634
lbl_8007D62C:
/* 8007D62C  38 60 00 00 */	li r3, 0
/* 8007D630  48 00 00 A8 */	b lbl_8007D6D8
lbl_8007D634:
/* 8007D634  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007D638  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8007D63C  1C 1A 00 14 */	mulli r0, r26, 0x14
/* 8007D640  7F 83 02 14 */	add r28, r3, r0
/* 8007D644  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8007D648  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007D64C  41 82 00 44 */	beq lbl_8007D690
/* 8007D650  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007D654  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007D658  1C 00 00 06 */	mulli r0, r0, 6
/* 8007D65C  7C 63 02 14 */	add r3, r3, r0
/* 8007D660  A0 83 00 04 */	lhz r4, 4(r3)
/* 8007D664  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007D668  41 82 00 20 */	beq lbl_8007D688
/* 8007D66C  7F C3 F3 78 */	mr r3, r30
/* 8007D670  7F E5 FB 78 */	mr r5, r31
/* 8007D674  4B FF FE 25 */	bl RwgSplGrpChk__4dBgWFUsP14dBgS_SplGrpChk
/* 8007D678  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D67C  41 82 00 0C */	beq lbl_8007D688
/* 8007D680  38 60 00 01 */	li r3, 1
/* 8007D684  48 00 00 54 */	b lbl_8007D6D8
lbl_8007D688:
/* 8007D688  38 60 00 00 */	li r3, 0
/* 8007D68C  48 00 00 4C */	b lbl_8007D6D8
lbl_8007D690:
/* 8007D690  3B 60 00 00 */	li r27, 0
/* 8007D694  3B 40 00 00 */	li r26, 0
/* 8007D698  3B A0 00 00 */	li r29, 0
lbl_8007D69C:
/* 8007D69C  38 1D 00 04 */	addi r0, r29, 4
/* 8007D6A0  7C BC 02 2E */	lhzx r5, r28, r0
/* 8007D6A4  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007D6A8  41 82 00 1C */	beq lbl_8007D6C4
/* 8007D6AC  7F C3 F3 78 */	mr r3, r30
/* 8007D6B0  7F E4 FB 78 */	mr r4, r31
/* 8007D6B4  4B FF FF 11 */	bl SplGrpChkRp__4dBgWFP14dBgS_SplGrpChki
/* 8007D6B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D6BC  41 82 00 08 */	beq lbl_8007D6C4
/* 8007D6C0  3B 60 00 01 */	li r27, 1
lbl_8007D6C4:
/* 8007D6C4  3B 5A 00 01 */	addi r26, r26, 1
/* 8007D6C8  2C 1A 00 08 */	cmpwi r26, 8
/* 8007D6CC  3B BD 00 02 */	addi r29, r29, 2
/* 8007D6D0  41 80 FF CC */	blt lbl_8007D69C
/* 8007D6D4  7F 63 DB 78 */	mr r3, r27
lbl_8007D6D8:
/* 8007D6D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D6DC  48 2E 4B 41 */	bl _restgpr_26
/* 8007D6E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007D6E4  7C 08 03 A6 */	mtlr r0
/* 8007D6E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8007D6EC  4E 80 00 20 */	blr 
