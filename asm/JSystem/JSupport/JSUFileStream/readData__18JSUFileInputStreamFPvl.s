lbl_802DC67C:
/* 802DC67C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DC680  7C 08 02 A6 */	mflr r0
/* 802DC684  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DC688  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC68C  48 08 5B 4D */	bl _savegpr_28
/* 802DC690  7C 7C 1B 78 */	mr r28, r3
/* 802DC694  7C 9D 23 78 */	mr r29, r4
/* 802DC698  7C BE 2B 78 */	mr r30, r5
/* 802DC69C  3B E0 00 00 */	li r31, 0
/* 802DC6A0  80 63 00 08 */	lwz r3, 8(r3)
/* 802DC6A4  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802DC6A8  28 00 00 00 */	cmplwi r0, 0
/* 802DC6AC  41 82 00 84 */	beq lbl_802DC730
/* 802DC6B0  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC6B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC6B8  7D 89 03 A6 */	mtctr r12
/* 802DC6BC  4E 80 04 21 */	bctrl 
/* 802DC6C0  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DC6C4  7C 00 F2 14 */	add r0, r0, r30
/* 802DC6C8  7C 00 18 40 */	cmplw r0, r3
/* 802DC6CC  40 81 00 20 */	ble lbl_802DC6EC
/* 802DC6D0  80 7C 00 08 */	lwz r3, 8(r28)
/* 802DC6D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC6D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DC6DC  7D 89 03 A6 */	mtctr r12
/* 802DC6E0  4E 80 04 21 */	bctrl 
/* 802DC6E4  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DC6E8  7F C0 18 50 */	subf r30, r0, r3
lbl_802DC6EC:
/* 802DC6EC  2C 1E 00 00 */	cmpwi r30, 0
/* 802DC6F0  40 81 00 40 */	ble lbl_802DC730
/* 802DC6F4  80 7C 00 08 */	lwz r3, 8(r28)
/* 802DC6F8  7F A4 EB 78 */	mr r4, r29
/* 802DC6FC  7F C5 F3 78 */	mr r5, r30
/* 802DC700  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 802DC704  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC708  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802DC70C  7D 89 03 A6 */	mtctr r12
/* 802DC710  4E 80 04 21 */	bctrl 
/* 802DC714  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DC718  40 80 00 0C */	bge lbl_802DC724
/* 802DC71C  38 60 00 00 */	li r3, 0
/* 802DC720  48 00 00 14 */	b lbl_802DC734
lbl_802DC724:
/* 802DC724  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DC728  7C 00 FA 14 */	add r0, r0, r31
/* 802DC72C  90 1C 00 0C */	stw r0, 0xc(r28)
lbl_802DC730:
/* 802DC730  7F E3 FB 78 */	mr r3, r31
lbl_802DC734:
/* 802DC734  39 61 00 20 */	addi r11, r1, 0x20
/* 802DC738  48 08 5A ED */	bl _restgpr_28
/* 802DC73C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DC740  7C 08 03 A6 */	mtlr r0
/* 802DC744  38 21 00 20 */	addi r1, r1, 0x20
/* 802DC748  4E 80 00 20 */	blr 
