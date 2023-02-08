lbl_80AC7A68:
/* 80AC7A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC7A6C  7C 08 02 A6 */	mflr r0
/* 80AC7A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC7A74  4B FF FD B5 */	bl CreateHeap__12daNpc_seiC_cFv
/* 80AC7A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC7A7C  7C 08 03 A6 */	mtlr r0
/* 80AC7A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC7A84  4E 80 00 20 */	blr 
