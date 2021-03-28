lbl_80D4D5EC:
/* 80D4D5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D5F0  7C 08 02 A6 */	mflr r0
/* 80D4D5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D5F8  4B FF FE FD */	bl create__10daSkip2D_cFv
/* 80D4D5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D600  7C 08 03 A6 */	mtlr r0
/* 80D4D604  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D608  4E 80 00 20 */	blr 
