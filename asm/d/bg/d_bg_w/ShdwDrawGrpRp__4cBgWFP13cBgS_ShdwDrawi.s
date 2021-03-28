lbl_8007AFC0:
/* 8007AFC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007AFC4  7C 08 02 A6 */	mflr r0
/* 8007AFC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007AFCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007AFD0  48 2E 72 0D */	bl _savegpr_29
/* 8007AFD4  7C 7E 1B 78 */	mr r30, r3
/* 8007AFD8  7C 9F 23 78 */	mr r31, r4
/* 8007AFDC  7C BD 2B 78 */	mr r29, r5
/* 8007AFE0  38 9F 00 14 */	addi r4, r31, 0x14
/* 8007AFE4  80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8007AFE8  54 A3 28 34 */	slwi r3, r5, 5
/* 8007AFEC  38 63 00 04 */	addi r3, r3, 4
/* 8007AFF0  7C 60 1A 14 */	add r3, r0, r3
/* 8007AFF4  48 1E D9 F5 */	bl cM3d_Cross_AabAab__FPC8cM3dGAabPC8cM3dGAab
/* 8007AFF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AFFC  41 82 00 70 */	beq lbl_8007B06C
/* 8007B000  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007B004  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007B008  1F BD 00 34 */	mulli r29, r29, 0x34
/* 8007B00C  7C 60 EA 14 */	add r3, r0, r29
/* 8007B010  A0 A3 00 2E */	lhz r5, 0x2e(r3)
/* 8007B014  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007B018  41 82 00 10 */	beq lbl_8007B028
/* 8007B01C  7F C3 F3 78 */	mr r3, r30
/* 8007B020  7F E4 FB 78 */	mr r4, r31
/* 8007B024  4B FF FE 81 */	bl ShdwDrawRp__4cBgWFP13cBgS_ShdwDrawi
lbl_8007B028:
/* 8007B028  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007B02C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007B030  7C 60 EA 14 */	add r3, r0, r29
/* 8007B034  A3 A3 00 28 */	lhz r29, 0x28(r3)
lbl_8007B038:
/* 8007B038  3C 1D 00 00 */	addis r0, r29, 0
/* 8007B03C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007B040  41 82 00 2C */	beq lbl_8007B06C
/* 8007B044  7F C3 F3 78 */	mr r3, r30
/* 8007B048  7F E4 FB 78 */	mr r4, r31
/* 8007B04C  7F A5 EB 78 */	mr r5, r29
/* 8007B050  4B FF FF 71 */	bl ShdwDrawGrpRp__4cBgWFP13cBgS_ShdwDrawi
/* 8007B054  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007B058  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007B05C  1C 7D 00 34 */	mulli r3, r29, 0x34
/* 8007B060  38 03 00 26 */	addi r0, r3, 0x26
/* 8007B064  7F A4 02 2E */	lhzx r29, r4, r0
/* 8007B068  4B FF FF D0 */	b lbl_8007B038
lbl_8007B06C:
/* 8007B06C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007B070  48 2E 71 B9 */	bl _restgpr_29
/* 8007B074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007B078  7C 08 03 A6 */	mtlr r0
/* 8007B07C  38 21 00 20 */	addi r1, r1, 0x20
/* 8007B080  4E 80 00 20 */	blr 
