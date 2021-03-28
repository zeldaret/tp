lbl_802AF408:
/* 802AF408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF40C  7C 08 02 A6 */	mflr r0
/* 802AF410  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF414  39 61 00 20 */	addi r11, r1, 0x20
/* 802AF418  48 0B 2D C5 */	bl _savegpr_29
/* 802AF41C  7C 7D 1B 78 */	mr r29, r3
/* 802AF420  7C 9E 23 78 */	mr r30, r4
/* 802AF424  7C BF 2B 78 */	mr r31, r5
/* 802AF428  80 63 00 00 */	lwz r3, 0(r3)
/* 802AF42C  28 03 00 00 */	cmplwi r3, 0
/* 802AF430  41 82 00 08 */	beq lbl_802AF438
/* 802AF434  4B FF 30 A9 */	bl stop__8JAISoundFUl
lbl_802AF438:
/* 802AF438  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802AF43C  28 03 00 00 */	cmplwi r3, 0
/* 802AF440  41 82 00 0C */	beq lbl_802AF44C
/* 802AF444  7F C4 F3 78 */	mr r4, r30
/* 802AF448  4B FF 30 95 */	bl stop__8JAISoundFUl
lbl_802AF44C:
/* 802AF44C  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF450  40 82 00 34 */	bne lbl_802AF484
/* 802AF454  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF458  28 03 00 00 */	cmplwi r3, 0
/* 802AF45C  41 82 00 0C */	beq lbl_802AF468
/* 802AF460  7F C4 F3 78 */	mr r4, r30
/* 802AF464  4B FF 30 79 */	bl stop__8JAISoundFUl
lbl_802AF468:
/* 802AF468  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF46C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 802AF470  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF474  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802AF478  38 00 00 00 */	li r0, 0
/* 802AF47C  90 1D 00 20 */	stw r0, 0x20(r29)
/* 802AF480  D0 1D 00 1C */	stfs f0, 0x1c(r29)
lbl_802AF484:
/* 802AF484  39 61 00 20 */	addi r11, r1, 0x20
/* 802AF488  48 0B 2D A1 */	bl _restgpr_29
/* 802AF48C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AF490  7C 08 03 A6 */	mtlr r0
/* 802AF494  38 21 00 20 */	addi r1, r1, 0x20
/* 802AF498  4E 80 00 20 */	blr 
