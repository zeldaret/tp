lbl_8054FC44:
/* 8054FC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FC48  7C 08 02 A6 */	mflr r0
/* 8054FC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FC50  4B BF 88 DC */	b execute__8daNpcT_cFv
/* 8054FC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FC58  7C 08 03 A6 */	mtlr r0
/* 8054FC5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FC60  4E 80 00 20 */	blr 
