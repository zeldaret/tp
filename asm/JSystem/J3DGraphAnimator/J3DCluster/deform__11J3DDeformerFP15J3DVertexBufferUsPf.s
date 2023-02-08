lbl_8032EAB4:
/* 8032EAB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032EAB8  7C 08 02 A6 */	mflr r0
/* 8032EABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032EAC0  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EAC4  48 03 37 11 */	bl _savegpr_27
/* 8032EAC8  7C 7D 1B 78 */	mr r29, r3
/* 8032EACC  7C 9E 23 78 */	mr r30, r4
/* 8032EAD0  7C DF 33 78 */	mr r31, r6
/* 8032EAD4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8032EAD8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8032EADC  41 82 00 D8 */	beq lbl_8032EBB4
/* 8032EAE0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8032EAE4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 8032EAE8  2C 00 00 04 */	cmpwi r0, 4
/* 8032EAEC  40 82 00 C8 */	bne lbl_8032EBB4
/* 8032EAF0  80 FD 00 00 */	lwz r7, 0(r29)
/* 8032EAF4  80 C7 00 08 */	lwz r6, 8(r7)
/* 8032EAF8  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 8032EAFC  1C 04 00 24 */	mulli r0, r4, 0x24
/* 8032EB00  7F 86 02 14 */	add r28, r6, r0
/* 8032EB04  38 A0 00 00 */	li r5, 0
/* 8032EB08  39 00 00 00 */	li r8, 0
/* 8032EB0C  48 00 00 24 */	b lbl_8032EB30
lbl_8032EB10:
/* 8032EB10  55 00 04 3E */	clrlwi r0, r8, 0x10
/* 8032EB14  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8032EB18  7C 66 02 14 */	add r3, r6, r0
/* 8032EB1C  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8032EB20  7C 60 2A 14 */	add r3, r0, r5
/* 8032EB24  38 03 00 01 */	addi r0, r3, 1
/* 8032EB28  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8032EB2C  39 08 00 01 */	addi r8, r8, 1
lbl_8032EB30:
/* 8032EB30  55 00 04 3E */	clrlwi r0, r8, 0x10
/* 8032EB34  7C 00 20 40 */	cmplw r0, r4
/* 8032EB38  41 80 FF D8 */	blt lbl_8032EB10
/* 8032EB3C  80 67 00 0C */	lwz r3, 0xc(r7)
/* 8032EB40  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8032EB44  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8032EB48  7F 63 02 14 */	add r27, r3, r0
/* 8032EB4C  7F A3 EB 78 */	mr r3, r29
/* 8032EB50  A0 9C 00 10 */	lhz r4, 0x10(r28)
/* 8032EB54  7F E5 FB 78 */	mr r5, r31
/* 8032EB58  48 00 00 75 */	bl normalizeWeight__11J3DDeformerFiPf
/* 8032EB5C  7F A3 EB 78 */	mr r3, r29
/* 8032EB60  7F C4 F3 78 */	mr r4, r30
/* 8032EB64  7F 85 E3 78 */	mr r5, r28
/* 8032EB68  7F 66 DB 78 */	mr r6, r27
/* 8032EB6C  7F E7 FB 78 */	mr r7, r31
/* 8032EB70  4B FF F9 35 */	bl deform_VtxPosF32__11J3DDeformerFP15J3DVertexBufferP10J3DClusterP13J3DClusterKeyPf
/* 8032EB74  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8032EB78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8032EB7C  41 82 00 38 */	beq lbl_8032EBB4
/* 8032EB80  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 8032EB84  28 00 00 00 */	cmplwi r0, 0
/* 8032EB88  41 82 00 2C */	beq lbl_8032EBB4
/* 8032EB8C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8032EB90  80 03 00 58 */	lwz r0, 0x58(r3)
/* 8032EB94  2C 00 00 04 */	cmpwi r0, 4
/* 8032EB98  40 82 00 1C */	bne lbl_8032EBB4
/* 8032EB9C  7F A3 EB 78 */	mr r3, r29
/* 8032EBA0  7F C4 F3 78 */	mr r4, r30
/* 8032EBA4  7F 85 E3 78 */	mr r5, r28
/* 8032EBA8  7F 66 DB 78 */	mr r6, r27
/* 8032EBAC  7F E7 FB 78 */	mr r7, r31
/* 8032EBB0  4B FF FA 5D */	bl deform_VtxNrmF32__11J3DDeformerFP15J3DVertexBufferP10J3DClusterP13J3DClusterKeyPf
lbl_8032EBB4:
/* 8032EBB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8032EBB8  48 03 36 69 */	bl _restgpr_27
/* 8032EBBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032EBC0  7C 08 03 A6 */	mtlr r0
/* 8032EBC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032EBC8  4E 80 00 20 */	blr 
