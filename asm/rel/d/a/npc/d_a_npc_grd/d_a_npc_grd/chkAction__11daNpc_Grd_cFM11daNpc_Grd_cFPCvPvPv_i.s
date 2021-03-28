lbl_809D1F50:
/* 809D1F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D1F54  7C 08 02 A6 */	mflr r0
/* 809D1F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D1F5C  38 63 0D DC */	addi r3, r3, 0xddc
/* 809D1F60  4B 99 00 E8 */	b __ptmf_cmpr
/* 809D1F64  7C 60 00 34 */	cntlzw r0, r3
/* 809D1F68  54 03 D9 7E */	srwi r3, r0, 5
/* 809D1F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D1F70  7C 08 03 A6 */	mtlr r0
/* 809D1F74  38 21 00 10 */	addi r1, r1, 0x10
/* 809D1F78  4E 80 00 20 */	blr 
