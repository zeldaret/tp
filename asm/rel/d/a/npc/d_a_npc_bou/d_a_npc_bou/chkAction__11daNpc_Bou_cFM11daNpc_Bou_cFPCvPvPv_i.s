lbl_8096ED3C:
/* 8096ED3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096ED40  7C 08 02 A6 */	mflr r0
/* 8096ED44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096ED48  38 63 0F D0 */	addi r3, r3, 0xfd0
/* 8096ED4C  4B 9F 32 FC */	b __ptmf_cmpr
/* 8096ED50  7C 60 00 34 */	cntlzw r0, r3
/* 8096ED54  54 03 D9 7E */	srwi r3, r0, 5
/* 8096ED58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096ED5C  7C 08 03 A6 */	mtlr r0
/* 8096ED60  38 21 00 10 */	addi r1, r1, 0x10
/* 8096ED64  4E 80 00 20 */	blr 
