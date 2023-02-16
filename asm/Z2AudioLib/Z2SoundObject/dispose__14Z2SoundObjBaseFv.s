lbl_802BE070:
/* 802BE070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE074  7C 08 02 A6 */	mflr r0
/* 802BE078  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE07C  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE080  48 0A 41 5D */	bl _savegpr_29
/* 802BE084  7C 7D 1B 78 */	mr r29, r3
/* 802BE088  83 C3 00 00 */	lwz r30, 0(r3)
/* 802BE08C  48 00 00 50 */	b lbl_802BE0DC
lbl_802BE090:
/* 802BE090  83 FE 00 00 */	lwz r31, 0(r30)
/* 802BE094  28 1F 00 00 */	cmplwi r31, 0
/* 802BE098  41 82 00 40 */	beq lbl_802BE0D8
/* 802BE09C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BE0A0  28 03 00 00 */	cmplwi r3, 0
/* 802BE0A4  41 82 00 34 */	beq lbl_802BE0D8
/* 802BE0A8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802BE0AC  90 01 00 08 */	stw r0, 8(r1)
/* 802BE0B0  80 6D 85 CC */	lwz r3, __OSReport_disable-0x4C(r13)
/* 802BE0B4  38 81 00 08 */	addi r4, r1, 8
/* 802BE0B8  4B FF DA 11 */	bl getSwBit__11Z2SoundInfoCF10JAISoundID
/* 802BE0BC  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 802BE0C0  41 82 00 10 */	beq lbl_802BE0D0
/* 802BE0C4  7F E3 FB 78 */	mr r3, r31
/* 802BE0C8  4B FE 40 BD */	bl releaseSound__14JAISoundHandleFv
/* 802BE0CC  48 00 00 0C */	b lbl_802BE0D8
lbl_802BE0D0:
/* 802BE0D0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BE0D4  4B FE 44 C5 */	bl stop__8JAISoundFv
lbl_802BE0D8:
/* 802BE0D8  83 DE 00 0C */	lwz r30, 0xc(r30)
lbl_802BE0DC:
/* 802BE0DC  28 1E 00 00 */	cmplwi r30, 0
/* 802BE0E0  40 82 FF B0 */	bne lbl_802BE090
/* 802BE0E4  38 00 00 00 */	li r0, 0
/* 802BE0E8  98 1D 00 1F */	stb r0, 0x1f(r29)
/* 802BE0EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802BE0F0  48 0A 41 39 */	bl _restgpr_29
/* 802BE0F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE0F8  7C 08 03 A6 */	mtlr r0
/* 802BE0FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE100  4E 80 00 20 */	blr 
