lbl_809B34A4:
/* 809B34A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B34A8  7C 08 02 A6 */	mflr r0
/* 809B34AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B34B0  39 61 00 20 */	addi r11, r1, 0x20
/* 809B34B4  4B 9A ED 28 */	b _savegpr_29
/* 809B34B8  7C 7D 1B 78 */	mr r29, r3
/* 809B34BC  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 809B34C0  2C 00 00 01 */	cmpwi r0, 1
/* 809B34C4  41 82 00 08 */	beq lbl_809B34CC
/* 809B34C8  48 00 00 0C */	b lbl_809B34D4
lbl_809B34CC:
/* 809B34CC  3B C0 00 03 */	li r30, 3
/* 809B34D0  48 00 00 08 */	b lbl_809B34D8
lbl_809B34D4:
/* 809B34D4  3B C0 00 04 */	li r30, 4
lbl_809B34D8:
/* 809B34D8  2C 1E 00 00 */	cmpwi r30, 0
/* 809B34DC  41 80 00 2C */	blt lbl_809B3508
/* 809B34E0  7C 1E 00 00 */	cmpw r30, r0
/* 809B34E4  41 82 00 24 */	beq lbl_809B3508
/* 809B34E8  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 809B34EC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 809B34F0  4B 79 23 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B34F4  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 809B34F8  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 809B34FC  3C 60 80 9C */	lis r3, lit_3945@ha
/* 809B3500  C0 03 93 CC */	lfs f0, lit_3945@l(r3)
/* 809B3504  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_809B3508:
/* 809B3508  39 61 00 20 */	addi r11, r1, 0x20
/* 809B350C  4B 9A ED 1C */	b _restgpr_29
/* 809B3510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B3514  7C 08 03 A6 */	mtlr r0
/* 809B3518  38 21 00 20 */	addi r1, r1, 0x20
/* 809B351C  4E 80 00 20 */	blr 
