lbl_8007AEA4:
/* 8007AEA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007AEA8  7C 08 02 A6 */	mflr r0
/* 8007AEAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007AEB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8007AEB4  48 2E 73 21 */	bl _savegpr_27
/* 8007AEB8  7C 7E 1B 78 */	mr r30, r3
/* 8007AEBC  7C 9F 23 78 */	mr r31, r4
/* 8007AEC0  7C BB 2B 78 */	mr r27, r5
/* 8007AEC4  38 9F 00 14 */	addi r4, r31, 0x14
/* 8007AEC8  80 63 00 AC */	lwz r3, 0xac(r3)
/* 8007AECC  1C 1B 00 1C */	mulli r0, r27, 0x1c
/* 8007AED0  7C 63 02 14 */	add r3, r3, r0
/* 8007AED4  48 1E DB 15 */	bl cM3d_Cross_AabAab__FPC8cM3dGAabPC8cM3dGAab
/* 8007AED8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AEDC  41 82 00 CC */	beq lbl_8007AFA8
/* 8007AEE0  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007AEE4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8007AEE8  1C 1B 00 14 */	mulli r0, r27, 0x14
/* 8007AEEC  7F 83 02 14 */	add r28, r3, r0
/* 8007AEF0  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8007AEF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007AEF8  41 82 00 7C */	beq lbl_8007AF74
/* 8007AEFC  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007AF00  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007AF04  1C 00 00 06 */	mulli r0, r0, 6
/* 8007AF08  7C 63 02 14 */	add r3, r3, r0
/* 8007AF0C  A0 83 00 02 */	lhz r4, 2(r3)
/* 8007AF10  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007AF14  41 82 00 10 */	beq lbl_8007AF24
/* 8007AF18  7F C3 F3 78 */	mr r3, r30
/* 8007AF1C  7F E5 FB 78 */	mr r5, r31
/* 8007AF20  4B FF FE D1 */	bl RwgShdwDraw__4cBgWFiP13cBgS_ShdwDraw
lbl_8007AF24:
/* 8007AF24  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007AF28  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007AF2C  1C 00 00 06 */	mulli r0, r0, 6
/* 8007AF30  7C 83 02 2E */	lhzx r4, r3, r0
/* 8007AF34  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007AF38  41 82 00 10 */	beq lbl_8007AF48
/* 8007AF3C  7F C3 F3 78 */	mr r3, r30
/* 8007AF40  7F E5 FB 78 */	mr r5, r31
/* 8007AF44  4B FF FE AD */	bl RwgShdwDraw__4cBgWFiP13cBgS_ShdwDraw
lbl_8007AF48:
/* 8007AF48  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007AF4C  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007AF50  1C 00 00 06 */	mulli r0, r0, 6
/* 8007AF54  7C 63 02 14 */	add r3, r3, r0
/* 8007AF58  A0 83 00 04 */	lhz r4, 4(r3)
/* 8007AF5C  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007AF60  41 82 00 48 */	beq lbl_8007AFA8
/* 8007AF64  7F C3 F3 78 */	mr r3, r30
/* 8007AF68  7F E5 FB 78 */	mr r5, r31
/* 8007AF6C  4B FF FE 85 */	bl RwgShdwDraw__4cBgWFiP13cBgS_ShdwDraw
/* 8007AF70  48 00 00 38 */	b lbl_8007AFA8
lbl_8007AF74:
/* 8007AF74  3B 60 00 00 */	li r27, 0
/* 8007AF78  3B A0 00 00 */	li r29, 0
lbl_8007AF7C:
/* 8007AF7C  38 1D 00 04 */	addi r0, r29, 4
/* 8007AF80  7C BC 02 2E */	lhzx r5, r28, r0
/* 8007AF84  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007AF88  41 82 00 10 */	beq lbl_8007AF98
/* 8007AF8C  7F C3 F3 78 */	mr r3, r30
/* 8007AF90  7F E4 FB 78 */	mr r4, r31
/* 8007AF94  4B FF FF 11 */	bl ShdwDrawRp__4cBgWFP13cBgS_ShdwDrawi
lbl_8007AF98:
/* 8007AF98  3B 7B 00 01 */	addi r27, r27, 1
/* 8007AF9C  2C 1B 00 08 */	cmpwi r27, 8
/* 8007AFA0  3B BD 00 02 */	addi r29, r29, 2
/* 8007AFA4  41 80 FF D8 */	blt lbl_8007AF7C
lbl_8007AFA8:
/* 8007AFA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8007AFAC  48 2E 72 75 */	bl _restgpr_27
/* 8007AFB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007AFB4  7C 08 03 A6 */	mtlr r0
/* 8007AFB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8007AFBC  4E 80 00 20 */	blr 
