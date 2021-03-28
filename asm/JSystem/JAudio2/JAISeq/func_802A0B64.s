lbl_802A0B64:
/* 802A0B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0B68  7C 08 02 A6 */	mflr r0
/* 802A0B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0B70  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0B74  48 0C 16 65 */	bl _savegpr_28
/* 802A0B78  7C 7C 1B 78 */	mr r28, r3
/* 802A0B7C  7C 9D 23 78 */	mr r29, r4
/* 802A0B80  7C BE 2B 78 */	mr r30, r5
/* 802A0B84  7C DF 33 78 */	mr r31, r6
/* 802A0B88  90 E3 03 9C */	stw r7, 0x39c(r3)
/* 802A0B8C  7D 04 43 78 */	mr r4, r8
/* 802A0B90  48 00 01 15 */	bl reserveChildTracks___6JAISeqFi
/* 802A0B94  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A0B98  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A0B9C  7F 83 E3 78 */	mr r3, r28
/* 802A0BA0  38 81 00 0C */	addi r4, r1, 0xc
/* 802A0BA4  7F C5 F3 78 */	mr r5, r30
/* 802A0BA8  7F E6 FB 78 */	mr r6, r31
/* 802A0BAC  48 00 17 7D */	bl func_802A2328
/* 802A0BB0  80 1C 03 A4 */	lwz r0, 0x3a4(r28)
/* 802A0BB4  28 00 00 00 */	cmplwi r0, 0
/* 802A0BB8  41 82 00 2C */	beq lbl_802A0BE4
/* 802A0BBC  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A0BC0  90 01 00 08 */	stw r0, 8(r1)
/* 802A0BC4  80 7C 03 A4 */	lwz r3, 0x3a4(r28)
/* 802A0BC8  38 81 00 08 */	addi r4, r1, 8
/* 802A0BCC  81 83 00 00 */	lwz r12, 0(r3)
/* 802A0BD0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A0BD4  7D 89 03 A6 */	mtctr r12
/* 802A0BD8  4E 80 04 21 */	bctrl 
/* 802A0BDC  90 7C 03 A8 */	stw r3, 0x3a8(r28)
/* 802A0BE0  48 00 00 0C */	b lbl_802A0BEC
lbl_802A0BE4:
/* 802A0BE4  38 00 00 00 */	li r0, 0
/* 802A0BE8  90 1C 03 A8 */	stw r0, 0x3a8(r28)
lbl_802A0BEC:
/* 802A0BEC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0BF0  48 0C 16 35 */	bl _restgpr_28
/* 802A0BF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0BF8  7C 08 03 A6 */	mtlr r0
/* 802A0BFC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0C00  4E 80 00 20 */	blr 
