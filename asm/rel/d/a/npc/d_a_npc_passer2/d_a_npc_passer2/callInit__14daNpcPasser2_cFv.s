lbl_80AA75A0:
/* 80AA75A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA75A4  7C 08 02 A6 */	mflr r0
/* 80AA75A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA75AC  81 83 0A 18 */	lwz r12, 0xa18(r3)
/* 80AA75B0  4B 8B AA D5 */	bl __ptmf_scall
/* 80AA75B4  60 00 00 00 */	nop 
/* 80AA75B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA75BC  7C 08 03 A6 */	mtlr r0
/* 80AA75C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA75C4  4E 80 00 20 */	blr 
