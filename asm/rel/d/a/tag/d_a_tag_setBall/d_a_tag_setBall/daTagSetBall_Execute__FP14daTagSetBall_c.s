lbl_80D602C4:
/* 80D602C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D602C8  7C 08 02 A6 */	mflr r0
/* 80D602CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D602D0  4B FF FF E5 */	bl execute__14daTagSetBall_cFv
/* 80D602D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D602D8  7C 08 03 A6 */	mtlr r0
/* 80D602DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D602E0  4E 80 00 20 */	blr 
