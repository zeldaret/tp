lbl_809A7BC4:
/* 809A7BC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A7BC8  7C 08 02 A6 */	mflr r0
/* 809A7BCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A7BD0  39 61 00 20 */	addi r11, r1, 0x20
/* 809A7BD4  4B 9B A6 09 */	bl _savegpr_29
/* 809A7BD8  7C 7D 1B 78 */	mr r29, r3
/* 809A7BDC  3B C0 00 09 */	li r30, 9
/* 809A7BE0  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 809A7BE4  2C 00 00 05 */	cmpwi r0, 5
/* 809A7BE8  41 82 00 08 */	beq lbl_809A7BF0
/* 809A7BEC  48 00 00 08 */	b lbl_809A7BF4
lbl_809A7BF0:
/* 809A7BF0  3B C0 00 08 */	li r30, 8
lbl_809A7BF4:
/* 809A7BF4  2C 1E 00 00 */	cmpwi r30, 0
/* 809A7BF8  41 80 00 2C */	blt lbl_809A7C24
/* 809A7BFC  7C 1E 00 00 */	cmpw r30, r0
/* 809A7C00  41 82 00 24 */	beq lbl_809A7C24
/* 809A7C04  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 809A7C08  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 809A7C0C  4B 79 DC 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A7C10  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 809A7C14  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 809A7C18  3C 60 80 9B */	lis r3, lit_4588@ha /* 0x809AA3DC@ha */
/* 809A7C1C  C0 03 A3 DC */	lfs f0, lit_4588@l(r3)  /* 0x809AA3DC@l */
/* 809A7C20  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_809A7C24:
/* 809A7C24  39 61 00 20 */	addi r11, r1, 0x20
/* 809A7C28  4B 9B A6 01 */	bl _restgpr_29
/* 809A7C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A7C30  7C 08 03 A6 */	mtlr r0
/* 809A7C34  38 21 00 20 */	addi r1, r1, 0x20
/* 809A7C38  4E 80 00 20 */	blr 
