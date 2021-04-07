lbl_80AEDB10:
/* 80AEDB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDB14  7C 08 02 A6 */	mflr r0
/* 80AEDB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDB1C  38 63 0F 90 */	addi r3, r3, 0xf90
/* 80AEDB20  4B 87 45 29 */	bl __ptmf_cmpr
/* 80AEDB24  7C 60 00 34 */	cntlzw r0, r3
/* 80AEDB28  54 03 D9 7E */	srwi r3, r0, 5
/* 80AEDB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEDB30  7C 08 03 A6 */	mtlr r0
/* 80AEDB34  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEDB38  4E 80 00 20 */	blr 
