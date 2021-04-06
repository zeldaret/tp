lbl_80C6C5BC:
/* 80C6C5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C5C0  7C 08 02 A6 */	mflr r0
/* 80C6C5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C5C8  3C 60 80 C7 */	lis r3, l_HIO@ha /* 0x80C6C83C@ha */
/* 80C6C5CC  38 63 C8 3C */	addi r3, r3, l_HIO@l /* 0x80C6C83C@l */
/* 80C6C5D0  4B FF EE 5D */	bl __ct__15daIceWall_HIO_cFv
/* 80C6C5D4  3C 80 80 C7 */	lis r4, __dt__15daIceWall_HIO_cFv@ha /* 0x80C6C550@ha */
/* 80C6C5D8  38 84 C5 50 */	addi r4, r4, __dt__15daIceWall_HIO_cFv@l /* 0x80C6C550@l */
/* 80C6C5DC  3C A0 80 C7 */	lis r5, lit_3647@ha /* 0x80C6C830@ha */
/* 80C6C5E0  38 A5 C8 30 */	addi r5, r5, lit_3647@l /* 0x80C6C830@l */
/* 80C6C5E4  4B FF ED D5 */	bl __register_global_object
/* 80C6C5E8  3C 60 80 C7 */	lis r3, mCcDCyl__11daIceWall_c@ha /* 0x80C6C6E8@ha */
/* 80C6C5EC  38 63 C6 E8 */	addi r3, r3, mCcDCyl__11daIceWall_c@l /* 0x80C6C6E8@l */
/* 80C6C5F0  38 A3 FF FC */	addi r5, r3, -4
/* 80C6C5F4  3C 60 80 C7 */	lis r3, mCcDObjInfo__11daIceWall_c@ha /* 0x80C6C644@ha */
/* 80C6C5F8  38 63 C6 44 */	addi r3, r3, mCcDObjInfo__11daIceWall_c@l /* 0x80C6C644@l */
/* 80C6C5FC  38 83 FF FC */	addi r4, r3, -4
/* 80C6C600  38 00 00 06 */	li r0, 6
/* 80C6C604  7C 09 03 A6 */	mtctr r0
lbl_80C6C608:
/* 80C6C608  80 64 00 04 */	lwz r3, 4(r4)
/* 80C6C60C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C6C610  90 65 00 04 */	stw r3, 4(r5)
/* 80C6C614  94 05 00 08 */	stwu r0, 8(r5)
/* 80C6C618  42 00 FF F0 */	bdnz lbl_80C6C608
/* 80C6C61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C620  7C 08 03 A6 */	mtlr r0
/* 80C6C624  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C628  4E 80 00 20 */	blr 
