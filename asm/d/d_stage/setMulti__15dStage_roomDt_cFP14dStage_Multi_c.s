lbl_80027BFC:
/* 80027BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80027C00  7C 08 02 A6 */	mflr r0
/* 80027C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80027C08  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80027C0C  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80027C10  38 63 02 ED */	addi r3, r3, 0x2ed
/* 80027C14  4C C6 31 82 */	crclr 6
/* 80027C18  4B FD EE A5 */	bl OSReport
/* 80027C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027C20  7C 08 03 A6 */	mtlr r0
/* 80027C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80027C28  4E 80 00 20 */	blr 
