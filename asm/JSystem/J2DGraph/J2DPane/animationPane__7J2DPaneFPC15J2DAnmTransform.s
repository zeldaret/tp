lbl_802F8228:
/* 802F8228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F822C  7C 08 02 A6 */	mflr r0
/* 802F8230  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F8234  39 61 00 20 */	addi r11, r1, 0x20
/* 802F8238  48 06 9F A5 */	bl _savegpr_29
/* 802F823C  7C 7D 1B 78 */	mr r29, r3
/* 802F8240  7C 9E 23 78 */	mr r30, r4
/* 802F8244  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 802F8248  28 00 00 00 */	cmplwi r0, 0
/* 802F824C  41 82 00 08 */	beq lbl_802F8254
/* 802F8250  7C 1E 03 78 */	mr r30, r0
lbl_802F8254:
/* 802F8254  83 FD 00 DC */	lwz r31, 0xdc(r29)
/* 802F8258  28 1F 00 00 */	cmplwi r31, 0
/* 802F825C  41 82 00 34 */	beq lbl_802F8290
/* 802F8260  3B FF FF F4 */	addi r31, r31, -12
/* 802F8264  48 00 00 2C */	b lbl_802F8290
lbl_802F8268:
/* 802F8268  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802F826C  7F C4 F3 78 */	mr r4, r30
/* 802F8270  81 83 00 00 */	lwz r12, 0(r3)
/* 802F8274  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 802F8278  7D 89 03 A6 */	mtctr r12
/* 802F827C  4E 80 04 21 */	bctrl 
/* 802F8280  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802F8284  28 1F 00 00 */	cmplwi r31, 0
/* 802F8288  41 82 00 08 */	beq lbl_802F8290
/* 802F828C  3B FF FF F4 */	addi r31, r31, -12
lbl_802F8290:
/* 802F8290  28 1F 00 00 */	cmplwi r31, 0
/* 802F8294  40 82 FF D4 */	bne lbl_802F8268
/* 802F8298  7F A3 EB 78 */	mr r3, r29
/* 802F829C  7F C4 F3 78 */	mr r4, r30
/* 802F82A0  48 00 00 21 */	bl updateTransform__7J2DPaneFPC15J2DAnmTransform
/* 802F82A4  7F C3 F3 78 */	mr r3, r30
/* 802F82A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802F82AC  48 06 9F 7D */	bl _restgpr_29
/* 802F82B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F82B4  7C 08 03 A6 */	mtlr r0
/* 802F82B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802F82BC  4E 80 00 20 */	blr 
