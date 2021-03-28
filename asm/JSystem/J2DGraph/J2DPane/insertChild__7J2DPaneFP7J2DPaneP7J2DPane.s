lbl_802F6714:
/* 802F6714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F6718  7C 08 02 A6 */	mflr r0
/* 802F671C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F6720  39 61 00 20 */	addi r11, r1, 0x20
/* 802F6724  48 06 BA B5 */	bl _savegpr_28
/* 802F6728  7C 7C 1B 78 */	mr r28, r3
/* 802F672C  7C 9E 23 78 */	mr r30, r4
/* 802F6730  7C BD 2B 79 */	or. r29, r5, r5
/* 802F6734  40 82 00 0C */	bne lbl_802F6740
/* 802F6738  38 60 00 00 */	li r3, 0
/* 802F673C  48 00 00 8C */	b lbl_802F67C8
lbl_802F6740:
/* 802F6740  7F A3 EB 78 */	mr r3, r29
/* 802F6744  48 00 13 B9 */	bl getParentPane__7J2DPaneFv
/* 802F6748  7C 7F 1B 78 */	mr r31, r3
/* 802F674C  34 BD 00 DC */	addic. r5, r29, 0xdc
/* 802F6750  41 82 00 08 */	beq lbl_802F6758
/* 802F6754  38 A5 00 0C */	addi r5, r5, 0xc
lbl_802F6758:
/* 802F6758  28 1E 00 00 */	cmplwi r30, 0
/* 802F675C  41 82 00 0C */	beq lbl_802F6768
/* 802F6760  38 9E 00 DC */	addi r4, r30, 0xdc
/* 802F6764  48 00 00 08 */	b lbl_802F676C
lbl_802F6768:
/* 802F6768  38 80 00 00 */	li r4, 0
lbl_802F676C:
/* 802F676C  28 04 00 00 */	cmplwi r4, 0
/* 802F6770  41 82 00 08 */	beq lbl_802F6778
/* 802F6774  38 84 00 0C */	addi r4, r4, 0xc
lbl_802F6778:
/* 802F6778  38 7C 00 DC */	addi r3, r28, 0xdc
/* 802F677C  4B FE 59 19 */	bl insert__10JSUPtrListFP10JSUPtrLinkP10JSUPtrLink
/* 802F6780  7C 7E 1B 78 */	mr r30, r3
/* 802F6784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F6788  41 82 00 3C */	beq lbl_802F67C4
/* 802F678C  28 1F 00 00 */	cmplwi r31, 0
/* 802F6790  40 82 00 34 */	bne lbl_802F67C4
/* 802F6794  7F A3 EB 78 */	mr r3, r29
/* 802F6798  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 802F679C  C0 5C 00 24 */	lfs f2, 0x24(r28)
/* 802F67A0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F67A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F67A8  7D 89 03 A6 */	mtctr r12
/* 802F67AC  4E 80 04 21 */	bctrl 
/* 802F67B0  7F A3 EB 78 */	mr r3, r29
/* 802F67B4  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F67B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F67BC  7D 89 03 A6 */	mtctr r12
/* 802F67C0  4E 80 04 21 */	bctrl 
lbl_802F67C4:
/* 802F67C4  7F C3 F3 78 */	mr r3, r30
lbl_802F67C8:
/* 802F67C8  39 61 00 20 */	addi r11, r1, 0x20
/* 802F67CC  48 06 BA 59 */	bl _restgpr_28
/* 802F67D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F67D4  7C 08 03 A6 */	mtlr r0
/* 802F67D8  38 21 00 20 */	addi r1, r1, 0x20
/* 802F67DC  4E 80 00 20 */	blr 
