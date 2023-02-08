lbl_8096BF68:
/* 8096BF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096BF6C  7C 08 02 A6 */	mflr r0
/* 8096BF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096BF74  4B FF D8 FD */	bl Draw__13daNpcBlueNS_cFv
/* 8096BF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096BF7C  7C 08 03 A6 */	mtlr r0
/* 8096BF80  38 21 00 10 */	addi r1, r1, 0x10
/* 8096BF84  4E 80 00 20 */	blr 
