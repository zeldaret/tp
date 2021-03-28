lbl_80D602E4:
/* 80D602E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D602E8  7C 08 02 A6 */	mflr r0
/* 80D602EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D602F0  4B FF FF CD */	bl _delete__14daTagSetBall_cFv
/* 80D602F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D602F8  7C 08 03 A6 */	mtlr r0
/* 80D602FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60300  4E 80 00 20 */	blr 
