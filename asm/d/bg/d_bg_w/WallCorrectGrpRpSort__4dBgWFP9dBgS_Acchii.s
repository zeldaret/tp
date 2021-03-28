lbl_8007C808:
/* 8007C808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C80C  7C 08 02 A6 */	mflr r0
/* 8007C810  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C814  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C818  48 2E 59 C1 */	bl _savegpr_28
/* 8007C81C  7C 7D 1B 78 */	mr r29, r3
/* 8007C820  7C 9E 23 78 */	mr r30, r4
/* 8007C824  7C BC 2B 78 */	mr r28, r5
/* 8007C828  7C DF 33 78 */	mr r31, r6
/* 8007C82C  38 9E 00 60 */	addi r4, r30, 0x60
/* 8007C830  80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8007C834  54 A3 28 34 */	slwi r3, r5, 5
/* 8007C838  38 63 00 04 */	addi r3, r3, 4
/* 8007C83C  7C 60 1A 14 */	add r3, r0, r3
/* 8007C840  48 1E C2 CD */	bl cM3d_Cross_AabCyl__FPC8cM3dGAabPC8cM3dGCyl
/* 8007C844  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C848  40 82 00 0C */	bne lbl_8007C854
/* 8007C84C  38 60 00 00 */	li r3, 0
/* 8007C850  48 00 00 A8 */	b lbl_8007C8F8
lbl_8007C854:
/* 8007C854  7F A3 EB 78 */	mr r3, r29
/* 8007C858  7F 84 E3 78 */	mr r4, r28
/* 8007C85C  80 BE 00 04 */	lwz r5, 4(r30)
/* 8007C860  7F E6 FB 78 */	mr r6, r31
/* 8007C864  81 9D 00 04 */	lwz r12, 4(r29)
/* 8007C868  81 8C 01 00 */	lwz r12, 0x100(r12)
/* 8007C86C  7D 89 03 A6 */	mtctr r12
/* 8007C870  4E 80 04 21 */	bctrl 
/* 8007C874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C878  41 82 00 0C */	beq lbl_8007C884
/* 8007C87C  38 60 00 00 */	li r3, 0
/* 8007C880  48 00 00 78 */	b lbl_8007C8F8
lbl_8007C884:
/* 8007C884  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007C888  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007C88C  1F 9C 00 34 */	mulli r28, r28, 0x34
/* 8007C890  7C 60 E2 14 */	add r3, r0, r28
/* 8007C894  A0 A3 00 2E */	lhz r5, 0x2e(r3)
/* 8007C898  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C89C  41 82 00 10 */	beq lbl_8007C8AC
/* 8007C8A0  7F A3 EB 78 */	mr r3, r29
/* 8007C8A4  7F C4 F3 78 */	mr r4, r30
/* 8007C8A8  4B FF FE 6D */	bl WallCorrectRpSort__4dBgWFP9dBgS_Acchi
lbl_8007C8AC:
/* 8007C8AC  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007C8B0  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8007C8B4  7C 60 E2 14 */	add r3, r0, r28
/* 8007C8B8  A3 83 00 28 */	lhz r28, 0x28(r3)
lbl_8007C8BC:
/* 8007C8BC  3C 1C 00 00 */	addis r0, r28, 0
/* 8007C8C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007C8C4  41 82 00 30 */	beq lbl_8007C8F4
/* 8007C8C8  7F A3 EB 78 */	mr r3, r29
/* 8007C8CC  7F C4 F3 78 */	mr r4, r30
/* 8007C8D0  7F 85 E3 78 */	mr r5, r28
/* 8007C8D4  38 DF 00 01 */	addi r6, r31, 1
/* 8007C8D8  4B FF FF 31 */	bl WallCorrectGrpRpSort__4dBgWFP9dBgS_Acchii
/* 8007C8DC  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007C8E0  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8007C8E4  1C 7C 00 34 */	mulli r3, r28, 0x34
/* 8007C8E8  38 03 00 26 */	addi r0, r3, 0x26
/* 8007C8EC  7F 84 02 2E */	lhzx r28, r4, r0
/* 8007C8F0  4B FF FF CC */	b lbl_8007C8BC
lbl_8007C8F4:
/* 8007C8F4  38 60 00 00 */	li r3, 0
lbl_8007C8F8:
/* 8007C8F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C8FC  48 2E 59 29 */	bl _restgpr_28
/* 8007C900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C904  7C 08 03 A6 */	mtlr r0
/* 8007C908  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C90C  4E 80 00 20 */	blr 
