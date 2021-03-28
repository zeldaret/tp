lbl_802F666C:
/* 802F666C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F6670  7C 08 02 A6 */	mflr r0
/* 802F6674  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F6678  39 61 00 20 */	addi r11, r1, 0x20
/* 802F667C  48 06 BB 5D */	bl _savegpr_28
/* 802F6680  7C 7C 1B 78 */	mr r28, r3
/* 802F6684  7C 9D 23 79 */	or. r29, r4, r4
/* 802F6688  40 82 00 0C */	bne lbl_802F6694
/* 802F668C  38 60 00 00 */	li r3, 0
/* 802F6690  48 00 00 6C */	b lbl_802F66FC
lbl_802F6694:
/* 802F6694  7F A3 EB 78 */	mr r3, r29
/* 802F6698  48 00 14 65 */	bl getParentPane__7J2DPaneFv
/* 802F669C  7C 7F 1B 78 */	mr r31, r3
/* 802F66A0  34 9D 00 DC */	addic. r4, r29, 0xdc
/* 802F66A4  41 82 00 08 */	beq lbl_802F66AC
/* 802F66A8  38 84 00 0C */	addi r4, r4, 0xc
lbl_802F66AC:
/* 802F66AC  38 7C 00 DC */	addi r3, r28, 0xdc
/* 802F66B0  4B FE 58 9D */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802F66B4  7C 7E 1B 78 */	mr r30, r3
/* 802F66B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F66BC  41 82 00 3C */	beq lbl_802F66F8
/* 802F66C0  28 1F 00 00 */	cmplwi r31, 0
/* 802F66C4  40 82 00 34 */	bne lbl_802F66F8
/* 802F66C8  7F A3 EB 78 */	mr r3, r29
/* 802F66CC  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 802F66D0  C0 5C 00 24 */	lfs f2, 0x24(r28)
/* 802F66D4  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F66D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F66DC  7D 89 03 A6 */	mtctr r12
/* 802F66E0  4E 80 04 21 */	bctrl 
/* 802F66E4  7F A3 EB 78 */	mr r3, r29
/* 802F66E8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F66EC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F66F0  7D 89 03 A6 */	mtctr r12
/* 802F66F4  4E 80 04 21 */	bctrl 
lbl_802F66F8:
/* 802F66F8  7F C3 F3 78 */	mr r3, r30
lbl_802F66FC:
/* 802F66FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802F6700  48 06 BB 25 */	bl _restgpr_28
/* 802F6704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F6708  7C 08 03 A6 */	mtlr r0
/* 802F670C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F6710  4E 80 00 20 */	blr 
