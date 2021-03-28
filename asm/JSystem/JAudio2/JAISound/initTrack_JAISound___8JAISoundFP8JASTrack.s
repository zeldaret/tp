lbl_802A29DC:
/* 802A29DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A29E0  7C 08 02 A6 */	mflr r0
/* 802A29E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A29E8  39 61 00 40 */	addi r11, r1, 0x40
/* 802A29EC  48 0B F7 E5 */	bl _savegpr_26
/* 802A29F0  7C 7A 1B 78 */	mr r26, r3
/* 802A29F4  7C 9B 23 78 */	mr r27, r4
/* 802A29F8  3B A0 00 00 */	li r29, 0
/* 802A29FC  3B E0 00 00 */	li r31, 0
/* 802A2A00  3B 80 00 00 */	li r28, 0
/* 802A2A04  3B C1 00 08 */	addi r30, r1, 8
/* 802A2A08  48 00 00 34 */	b lbl_802A2A3C
lbl_802A2A0C:
/* 802A2A0C  80 7A 00 08 */	lwz r3, 8(r26)
/* 802A2A10  7F 84 E3 78 */	mr r4, r28
/* 802A2A14  81 83 00 00 */	lwz r12, 0(r3)
/* 802A2A18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A2A1C  7D 89 03 A6 */	mtctr r12
/* 802A2A20  4E 80 04 21 */	bctrl 
/* 802A2A24  28 03 00 00 */	cmplwi r3, 0
/* 802A2A28  41 82 00 10 */	beq lbl_802A2A38
/* 802A2A2C  7C 7E F9 2E */	stwx r3, r30, r31
/* 802A2A30  3B BD 00 01 */	addi r29, r29, 1
/* 802A2A34  3B FF 00 04 */	addi r31, r31, 4
lbl_802A2A38:
/* 802A2A38  3B 9C 00 01 */	addi r28, r28, 1
lbl_802A2A3C:
/* 802A2A3C  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802A2A40  81 83 00 00 */	lwz r12, 0(r3)
/* 802A2A44  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A2A48  7D 89 03 A6 */	mtctr r12
/* 802A2A4C  4E 80 04 21 */	bctrl 
/* 802A2A50  7C 1C 18 00 */	cmpw r28, r3
/* 802A2A54  41 80 FF B8 */	blt lbl_802A2A0C
/* 802A2A58  7F 63 DB 78 */	mr r3, r27
/* 802A2A5C  7F A4 EB 78 */	mr r4, r29
/* 802A2A60  4B FE E9 E5 */	bl setChannelMgrCount__8JASTrackFUl
/* 802A2A64  3B 80 00 00 */	li r28, 0
/* 802A2A68  3B E0 00 00 */	li r31, 0
/* 802A2A6C  3B C1 00 08 */	addi r30, r1, 8
/* 802A2A70  48 00 00 1C */	b lbl_802A2A8C
lbl_802A2A74:
/* 802A2A74  7F 63 DB 78 */	mr r3, r27
/* 802A2A78  7F 84 E3 78 */	mr r4, r28
/* 802A2A7C  7C BE F8 2E */	lwzx r5, r30, r31
/* 802A2A80  4B FE EF 75 */	bl assignExtBuffer__8JASTrackFUlP14JASSoundParams
/* 802A2A84  3B 9C 00 01 */	addi r28, r28, 1
/* 802A2A88  3B FF 00 04 */	addi r31, r31, 4
lbl_802A2A8C:
/* 802A2A8C  80 1B 01 D0 */	lwz r0, 0x1d0(r27)
/* 802A2A90  7C 1C 00 40 */	cmplw r28, r0
/* 802A2A94  41 80 FF E0 */	blt lbl_802A2A74
/* 802A2A98  39 61 00 40 */	addi r11, r1, 0x40
/* 802A2A9C  48 0B F7 81 */	bl _restgpr_26
/* 802A2AA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A2AA4  7C 08 03 A6 */	mtlr r0
/* 802A2AA8  38 21 00 40 */	addi r1, r1, 0x40
/* 802A2AAC  4E 80 00 20 */	blr 
