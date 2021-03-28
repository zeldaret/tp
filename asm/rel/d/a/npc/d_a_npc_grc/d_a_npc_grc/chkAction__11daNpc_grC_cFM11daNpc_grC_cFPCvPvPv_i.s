lbl_809CD794:
/* 809CD794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CD798  7C 08 02 A6 */	mflr r0
/* 809CD79C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CD7A0  38 63 0E 0C */	addi r3, r3, 0xe0c
/* 809CD7A4  4B 99 48 A4 */	b __ptmf_cmpr
/* 809CD7A8  7C 60 00 34 */	cntlzw r0, r3
/* 809CD7AC  54 03 D9 7E */	srwi r3, r0, 5
/* 809CD7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CD7B4  7C 08 03 A6 */	mtlr r0
/* 809CD7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 809CD7BC  4E 80 00 20 */	blr 
