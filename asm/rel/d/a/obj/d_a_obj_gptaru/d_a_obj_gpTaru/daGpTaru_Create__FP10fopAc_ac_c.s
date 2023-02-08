lbl_8057F3F0:
/* 8057F3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F3F4  7C 08 02 A6 */	mflr r0
/* 8057F3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F3FC  4B FF DF 41 */	bl create__10daGpTaru_cFv
/* 8057F400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F404  7C 08 03 A6 */	mtlr r0
/* 8057F408  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F40C  4E 80 00 20 */	blr 
