lbl_8035247C:
/* 8035247C  7C 08 02 A6 */	mflr r0
/* 80352480  90 01 00 04 */	stw r0, 4(r1)
/* 80352484  94 21 FF F8 */	stwu r1, -8(r1)
/* 80352488  4B FE B2 6D */	bl OSDisableInterrupts
/* 8035248C  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC005000@ha */
/* 80352490  38 84 50 00 */	addi r4, r4, 0x5000 /* 0xCC005000@l */
/* 80352494  A0 A4 00 0A */	lhz r5, 0xa(r4)
/* 80352498  38 00 FF 57 */	li r0, -169
/* 8035249C  7C A0 00 38 */	and r0, r5, r0
/* 803524A0  60 00 00 02 */	ori r0, r0, 2
/* 803524A4  B0 04 00 0A */	sth r0, 0xa(r4)
/* 803524A8  4B FE B2 75 */	bl OSRestoreInterrupts
/* 803524AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803524B0  38 21 00 08 */	addi r1, r1, 8
/* 803524B4  7C 08 03 A6 */	mtlr r0
/* 803524B8  4E 80 00 20 */	blr 
