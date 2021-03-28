lbl_80A9DDA0:
/* 80A9DDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9DDA4  7C 08 02 A6 */	mflr r0
/* 80A9DDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9DDAC  38 63 0F C8 */	addi r3, r3, 0xfc8
/* 80A9DDB0  4B 8C 42 98 */	b __ptmf_cmpr
/* 80A9DDB4  7C 60 00 34 */	cntlzw r0, r3
/* 80A9DDB8  54 03 D9 7E */	srwi r3, r0, 5
/* 80A9DDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9DDC0  7C 08 03 A6 */	mtlr r0
/* 80A9DDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9DDC8  4E 80 00 20 */	blr 
