lbl_8007C714:
/* 8007C714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C718  7C 08 02 A6 */	mflr r0
/* 8007C71C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C720  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C724  48 2E 5A B1 */	bl _savegpr_27
/* 8007C728  7C 7E 1B 78 */	mr r30, r3
/* 8007C72C  7C 9F 23 78 */	mr r31, r4
/* 8007C730  7C BB 2B 78 */	mr r27, r5
/* 8007C734  38 9F 00 60 */	addi r4, r31, 0x60
/* 8007C738  80 63 00 AC */	lwz r3, 0xac(r3)
/* 8007C73C  1C 1B 00 1C */	mulli r0, r27, 0x1c
/* 8007C740  7C 63 02 14 */	add r3, r3, r0
/* 8007C744  48 1E C3 C9 */	bl cM3d_Cross_AabCyl__FPC8cM3dGAabPC8cM3dGCyl
/* 8007C748  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007C74C  41 82 00 A4 */	beq lbl_8007C7F0
/* 8007C750  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007C754  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8007C758  1C 1B 00 14 */	mulli r0, r27, 0x14
/* 8007C75C  7F 83 02 14 */	add r28, r3, r0
/* 8007C760  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8007C764  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007C768  41 82 00 54 */	beq lbl_8007C7BC
/* 8007C76C  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007C770  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007C774  1C 00 00 06 */	mulli r0, r0, 6
/* 8007C778  7C 63 02 14 */	add r3, r3, r0
/* 8007C77C  A0 A3 00 02 */	lhz r5, 2(r3)
/* 8007C780  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C784  41 82 00 10 */	beq lbl_8007C794
/* 8007C788  7F C3 F3 78 */	mr r3, r30
/* 8007C78C  7F E4 FB 78 */	mr r4, r31
/* 8007C790  4B FF FD 1D */	bl RwgWallCorrectSort__4dBgWFP9dBgS_AcchUs
lbl_8007C794:
/* 8007C794  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007C798  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007C79C  1C 00 00 06 */	mulli r0, r0, 6
/* 8007C7A0  7C A3 02 2E */	lhzx r5, r3, r0
/* 8007C7A4  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C7A8  41 82 00 48 */	beq lbl_8007C7F0
/* 8007C7AC  7F C3 F3 78 */	mr r3, r30
/* 8007C7B0  7F E4 FB 78 */	mr r4, r31
/* 8007C7B4  4B FF FC F9 */	bl RwgWallCorrectSort__4dBgWFP9dBgS_AcchUs
/* 8007C7B8  48 00 00 38 */	b lbl_8007C7F0
lbl_8007C7BC:
/* 8007C7BC  3B 60 00 00 */	li r27, 0
/* 8007C7C0  3B A0 00 00 */	li r29, 0
lbl_8007C7C4:
/* 8007C7C4  38 1D 00 04 */	addi r0, r29, 4
/* 8007C7C8  7C BC 02 2E */	lhzx r5, r28, r0
/* 8007C7CC  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C7D0  41 82 00 10 */	beq lbl_8007C7E0
/* 8007C7D4  7F C3 F3 78 */	mr r3, r30
/* 8007C7D8  7F E4 FB 78 */	mr r4, r31
/* 8007C7DC  4B FF FF 39 */	bl WallCorrectRpSort__4dBgWFP9dBgS_Acchi
lbl_8007C7E0:
/* 8007C7E0  3B 7B 00 01 */	addi r27, r27, 1
/* 8007C7E4  2C 1B 00 08 */	cmpwi r27, 8
/* 8007C7E8  3B BD 00 02 */	addi r29, r29, 2
/* 8007C7EC  41 80 FF D8 */	blt lbl_8007C7C4
lbl_8007C7F0:
/* 8007C7F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8007C7F4  48 2E 5A 2D */	bl _restgpr_27
/* 8007C7F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C7FC  7C 08 03 A6 */	mtlr r0
/* 8007C800  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C804  4E 80 00 20 */	blr 
