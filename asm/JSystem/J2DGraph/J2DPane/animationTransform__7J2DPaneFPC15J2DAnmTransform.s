lbl_802F8080:
/* 802F8080  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F8084  7C 08 02 A6 */	mflr r0
/* 802F8088  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F808C  39 61 00 20 */	addi r11, r1, 0x20
/* 802F8090  48 06 A1 4D */	bl _savegpr_29
/* 802F8094  7C 7D 1B 78 */	mr r29, r3
/* 802F8098  7C 9E 23 78 */	mr r30, r4
/* 802F809C  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 802F80A0  28 00 00 00 */	cmplwi r0, 0
/* 802F80A4  41 82 00 08 */	beq lbl_802F80AC
/* 802F80A8  7C 1E 03 78 */	mr r30, r0
lbl_802F80AC:
/* 802F80AC  83 FD 00 DC */	lwz r31, 0xdc(r29)
/* 802F80B0  28 1F 00 00 */	cmplwi r31, 0
/* 802F80B4  41 82 00 34 */	beq lbl_802F80E8
/* 802F80B8  3B FF FF F4 */	addi r31, r31, -12
/* 802F80BC  48 00 00 2C */	b lbl_802F80E8
lbl_802F80C0:
/* 802F80C0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802F80C4  7F C4 F3 78 */	mr r4, r30
/* 802F80C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F80CC  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 802F80D0  7D 89 03 A6 */	mtctr r12
/* 802F80D4  4E 80 04 21 */	bctrl 
/* 802F80D8  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802F80DC  28 1F 00 00 */	cmplwi r31, 0
/* 802F80E0  41 82 00 08 */	beq lbl_802F80E8
/* 802F80E4  3B FF FF F4 */	addi r31, r31, -12
lbl_802F80E8:
/* 802F80E8  28 1F 00 00 */	cmplwi r31, 0
/* 802F80EC  40 82 FF D4 */	bne lbl_802F80C0
/* 802F80F0  7F A3 EB 78 */	mr r3, r29
/* 802F80F4  7F C4 F3 78 */	mr r4, r30
/* 802F80F8  48 00 01 C9 */	bl updateTransform__7J2DPaneFPC15J2DAnmTransform
/* 802F80FC  7F C3 F3 78 */	mr r3, r30
/* 802F8100  39 61 00 20 */	addi r11, r1, 0x20
/* 802F8104  48 06 A1 25 */	bl _restgpr_29
/* 802F8108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F810C  7C 08 03 A6 */	mtlr r0
/* 802F8110  38 21 00 20 */	addi r1, r1, 0x20
/* 802F8114  4E 80 00 20 */	blr 
