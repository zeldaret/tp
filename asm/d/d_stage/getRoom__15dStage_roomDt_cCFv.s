lbl_80027590:
/* 80027590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027594  7C 08 02 A6 */	mflr r0
/* 80027598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002759C  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 800275A0  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 800275A4  38 63 01 6F */	addi r3, r3, 0x16f
/* 800275A8  4C C6 31 82 */	crclr 6
/* 800275AC  4B FD F5 11 */	bl OSReport
/* 800275B0  38 60 00 00 */	li r3, 0
/* 800275B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800275B8  7C 08 03 A6 */	mtlr r0
/* 800275BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800275C0  4E 80 00 20 */	blr 
