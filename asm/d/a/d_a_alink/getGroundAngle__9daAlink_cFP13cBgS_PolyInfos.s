lbl_800B0098:
/* 800B0098  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B009C  7C 08 02 A6 */	mflr r0
/* 800B00A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B00A4  39 61 00 30 */	addi r11, r1, 0x30
/* 800B00A8  48 2B 21 35 */	bl _savegpr_29
/* 800B00AC  7C 9D 23 78 */	mr r29, r4
/* 800B00B0  7C BE 2B 78 */	mr r30, r5
/* 800B00B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B00B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B00BC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800B00C0  7F E3 FB 78 */	mr r3, r31
/* 800B00C4  4B FC 45 9D */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800B00C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B00CC  40 82 00 0C */	bne lbl_800B00D8
/* 800B00D0  38 60 00 00 */	li r3, 0
/* 800B00D4  48 00 00 64 */	b lbl_800B0138
lbl_800B00D8:
/* 800B00D8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B00DC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B00E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B00E4  7F E3 FB 78 */	mr r3, r31
/* 800B00E8  7F A4 EB 78 */	mr r4, r29
/* 800B00EC  38 A1 00 08 */	addi r5, r1, 8
/* 800B00F0  4B FC 46 55 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B00F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B00F8  41 82 00 14 */	beq lbl_800B010C
/* 800B00FC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800B0100  48 1B 80 E5 */	bl cBgW_CheckBGround__Ff
/* 800B0104  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B0108  40 82 00 18 */	bne lbl_800B0120
lbl_800B010C:
/* 800B010C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B0110  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B0114  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B0118  38 60 00 00 */	li r3, 0
/* 800B011C  48 00 00 1C */	b lbl_800B0138
lbl_800B0120:
/* 800B0120  38 61 00 08 */	addi r3, r1, 8
/* 800B0124  7F C4 F3 78 */	mr r4, r30
/* 800B0128  4B F6 DA B1 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 800B012C  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B0130  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B0134  90 01 00 18 */	stw r0, 0x18(r1)
lbl_800B0138:
/* 800B0138  39 61 00 30 */	addi r11, r1, 0x30
/* 800B013C  48 2B 20 ED */	bl _restgpr_29
/* 800B0140  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B0144  7C 08 03 A6 */	mtlr r0
/* 800B0148  38 21 00 30 */	addi r1, r1, 0x30
/* 800B014C  4E 80 00 20 */	blr 
