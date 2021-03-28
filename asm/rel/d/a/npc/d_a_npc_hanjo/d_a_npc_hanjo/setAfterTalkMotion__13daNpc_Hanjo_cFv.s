lbl_809FA3B8:
/* 809FA3B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809FA3BC  7C 08 02 A6 */	mflr r0
/* 809FA3C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809FA3C4  39 61 00 20 */	addi r11, r1, 0x20
/* 809FA3C8  4B 96 7E 14 */	b _savegpr_29
/* 809FA3CC  7C 7D 1B 78 */	mr r29, r3
/* 809FA3D0  3B C0 00 07 */	li r30, 7
/* 809FA3D4  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 809FA3D8  2C 00 00 03 */	cmpwi r0, 3
/* 809FA3DC  41 82 00 38 */	beq lbl_809FA414
/* 809FA3E0  40 80 00 14 */	bge lbl_809FA3F4
/* 809FA3E4  2C 00 00 01 */	cmpwi r0, 1
/* 809FA3E8  41 82 00 18 */	beq lbl_809FA400
/* 809FA3EC  40 80 00 1C */	bge lbl_809FA408
/* 809FA3F0  48 00 00 24 */	b lbl_809FA414
lbl_809FA3F4:
/* 809FA3F4  2C 00 00 05 */	cmpwi r0, 5
/* 809FA3F8  40 80 00 1C */	bge lbl_809FA414
/* 809FA3FC  48 00 00 14 */	b lbl_809FA410
lbl_809FA400:
/* 809FA400  3B C0 00 05 */	li r30, 5
/* 809FA404  48 00 00 10 */	b lbl_809FA414
lbl_809FA408:
/* 809FA408  3B C0 00 03 */	li r30, 3
/* 809FA40C  48 00 00 08 */	b lbl_809FA414
lbl_809FA410:
/* 809FA410  3B C0 00 06 */	li r30, 6
lbl_809FA414:
/* 809FA414  2C 1E 00 00 */	cmpwi r30, 0
/* 809FA418  41 80 00 2C */	blt lbl_809FA444
/* 809FA41C  7C 1E 00 00 */	cmpw r30, r0
/* 809FA420  41 82 00 24 */	beq lbl_809FA444
/* 809FA424  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 809FA428  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 809FA42C  4B 74 B4 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FA430  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 809FA434  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 809FA438  3C 60 80 A0 */	lis r3, lit_4869@ha
/* 809FA43C  C0 03 07 20 */	lfs f0, lit_4869@l(r3)
/* 809FA440  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_809FA444:
/* 809FA444  39 61 00 20 */	addi r11, r1, 0x20
/* 809FA448  4B 96 7D E0 */	b _restgpr_29
/* 809FA44C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809FA450  7C 08 03 A6 */	mtlr r0
/* 809FA454  38 21 00 20 */	addi r1, r1, 0x20
/* 809FA458  4E 80 00 20 */	blr 
