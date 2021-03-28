lbl_8007C234:
/* 8007C234  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C238  7C 08 02 A6 */	mflr r0
/* 8007C23C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C240  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C244  48 2E 5F 8D */	bl _savegpr_26
/* 8007C248  7C 7D 1B 78 */	mr r29, r3
/* 8007C24C  7C 9E 23 78 */	mr r30, r4
/* 8007C250  7C BA 2B 78 */	mr r26, r5
/* 8007C254  38 9E 00 60 */	addi r4, r30, 0x60
/* 8007C258  80 63 00 AC */	lwz r3, 0xac(r3)
/* 8007C25C  1C 1A 00 1C */	mulli r0, r26, 0x1c
/* 8007C260  7C 63 02 14 */	add r3, r3, r0
/* 8007C264  48 1E C8 A9 */	bl cM3d_Cross_AabCyl__FPC8cM3dGAabPC8cM3dGCyl
/* 8007C268  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C26C  40 82 00 0C */	bne lbl_8007C278
/* 8007C270  38 60 00 00 */	li r3, 0
/* 8007C274  48 00 00 D4 */	b lbl_8007C348
lbl_8007C278:
/* 8007C278  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007C27C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8007C280  1C 1A 00 14 */	mulli r0, r26, 0x14
/* 8007C284  7F 63 02 14 */	add r27, r3, r0
/* 8007C288  3B E0 00 00 */	li r31, 0
/* 8007C28C  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8007C290  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007C294  41 82 00 70 */	beq lbl_8007C304
/* 8007C298  80 7D 00 A4 */	lwz r3, 0xa4(r29)
/* 8007C29C  A0 1B 00 04 */	lhz r0, 4(r27)
/* 8007C2A0  1C 00 00 06 */	mulli r0, r0, 6
/* 8007C2A4  7C 63 02 14 */	add r3, r3, r0
/* 8007C2A8  A0 A3 00 02 */	lhz r5, 2(r3)
/* 8007C2AC  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C2B0  41 82 00 1C */	beq lbl_8007C2CC
/* 8007C2B4  7F A3 EB 78 */	mr r3, r29
/* 8007C2B8  7F C4 F3 78 */	mr r4, r30
/* 8007C2BC  4B FF F7 85 */	bl RwgWallCorrect__4dBgWFP9dBgS_AcchUs
/* 8007C2C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C2C4  41 82 00 08 */	beq lbl_8007C2CC
/* 8007C2C8  3B E0 00 01 */	li r31, 1
lbl_8007C2CC:
/* 8007C2CC  80 7D 00 A4 */	lwz r3, 0xa4(r29)
/* 8007C2D0  A0 1B 00 04 */	lhz r0, 4(r27)
/* 8007C2D4  1C 00 00 06 */	mulli r0, r0, 6
/* 8007C2D8  7C A3 02 2E */	lhzx r5, r3, r0
/* 8007C2DC  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C2E0  41 82 00 1C */	beq lbl_8007C2FC
/* 8007C2E4  7F A3 EB 78 */	mr r3, r29
/* 8007C2E8  7F C4 F3 78 */	mr r4, r30
/* 8007C2EC  4B FF F7 55 */	bl RwgWallCorrect__4dBgWFP9dBgS_AcchUs
/* 8007C2F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C2F4  41 82 00 08 */	beq lbl_8007C2FC
/* 8007C2F8  3B E0 00 01 */	li r31, 1
lbl_8007C2FC:
/* 8007C2FC  7F E3 FB 78 */	mr r3, r31
/* 8007C300  48 00 00 48 */	b lbl_8007C348
lbl_8007C304:
/* 8007C304  3B 40 00 00 */	li r26, 0
/* 8007C308  3B 80 00 00 */	li r28, 0
lbl_8007C30C:
/* 8007C30C  38 1C 00 04 */	addi r0, r28, 4
/* 8007C310  7C BB 02 2E */	lhzx r5, r27, r0
/* 8007C314  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C318  41 82 00 1C */	beq lbl_8007C334
/* 8007C31C  7F A3 EB 78 */	mr r3, r29
/* 8007C320  7F C4 F3 78 */	mr r4, r30
/* 8007C324  4B FF FF 11 */	bl WallCorrectRp__4dBgWFP9dBgS_Acchi
/* 8007C328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C32C  41 82 00 08 */	beq lbl_8007C334
/* 8007C330  3B E0 00 01 */	li r31, 1
lbl_8007C334:
/* 8007C334  3B 5A 00 01 */	addi r26, r26, 1
/* 8007C338  2C 1A 00 08 */	cmpwi r26, 8
/* 8007C33C  3B 9C 00 02 */	addi r28, r28, 2
/* 8007C340  41 80 FF CC */	blt lbl_8007C30C
/* 8007C344  7F E3 FB 78 */	mr r3, r31
lbl_8007C348:
/* 8007C348  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C34C  48 2E 5E D1 */	bl _restgpr_26
/* 8007C350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C354  7C 08 03 A6 */	mtlr r0
/* 8007C358  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C35C  4E 80 00 20 */	blr 
