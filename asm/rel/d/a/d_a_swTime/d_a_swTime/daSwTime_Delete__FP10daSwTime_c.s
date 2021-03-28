lbl_80D4F780:
/* 80D4F780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F784  7C 08 02 A6 */	mflr r0
/* 80D4F788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F78C  4B FF FF CD */	bl _delete__10daSwTime_cFv
/* 80D4F790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F794  7C 08 03 A6 */	mtlr r0
/* 80D4F798  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F79C  4E 80 00 20 */	blr 
