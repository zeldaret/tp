lbl_80291094:
/* 80291094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80291098  7C 08 02 A6 */	mflr r0
/* 8029109C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802910A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802910A4  48 0D 11 39 */	bl _savegpr_29
/* 802910A8  7C 7D 1B 78 */	mr r29, r3
/* 802910AC  48 0A C6 49 */	bl OSDisableInterrupts
/* 802910B0  90 61 00 08 */	stw r3, 8(r1)
/* 802910B4  83 DD 00 00 */	lwz r30, 0(r29)
/* 802910B8  48 00 00 2C */	b lbl_802910E4
lbl_802910BC:
/* 802910BC  83 FE 00 0C */	lwz r31, 0xc(r30)
/* 802910C0  80 9E 00 00 */	lwz r4, 0(r30)
/* 802910C4  80 64 00 14 */	lwz r3, 0x14(r4)
/* 802910C8  81 84 00 10 */	lwz r12, 0x10(r4)
/* 802910CC  7D 89 03 A6 */	mtctr r12
/* 802910D0  4E 80 04 21 */	bctrl 
/* 802910D4  7F A3 EB 78 */	mr r3, r29
/* 802910D8  7F C4 F3 78 */	mr r4, r30
/* 802910DC  48 04 B0 81 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802910E0  7F FE FB 78 */	mr r30, r31
lbl_802910E4:
/* 802910E4  28 1E 00 00 */	cmplwi r30, 0
/* 802910E8  40 82 FF D4 */	bne lbl_802910BC
/* 802910EC  80 61 00 08 */	lwz r3, 8(r1)
/* 802910F0  48 0A C6 2D */	bl OSRestoreInterrupts
/* 802910F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802910F8  48 0D 11 31 */	bl _restgpr_29
/* 802910FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80291100  7C 08 03 A6 */	mtlr r0
/* 80291104  38 21 00 20 */	addi r1, r1, 0x20
/* 80291108  4E 80 00 20 */	blr 
