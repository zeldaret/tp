lbl_8048A9F4:
/* 8048A9F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048A9F8  7C 08 02 A6 */	mflr r0
/* 8048A9FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048AA00  4B FF FC F9 */	bl execute__11daTag_Chk_cFv
/* 8048AA04  38 60 00 01 */	li r3, 1
/* 8048AA08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048AA0C  7C 08 03 A6 */	mtlr r0
/* 8048AA10  38 21 00 10 */	addi r1, r1, 0x10
/* 8048AA14  4E 80 00 20 */	blr 
