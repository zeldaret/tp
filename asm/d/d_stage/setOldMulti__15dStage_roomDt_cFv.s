lbl_80027C60:
/* 80027C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027C64  7C 08 02 A6 */	mflr r0
/* 80027C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027C6C  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027C70  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80027C74  38 63 03 03 */	addi r3, r3, 0x303
/* 80027C78  4C C6 31 82 */	crclr 6
/* 80027C7C  4B FD EE 41 */	bl OSReport
/* 80027C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027C84  7C 08 03 A6 */	mtlr r0
/* 80027C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80027C8C  4E 80 00 20 */	blr 
