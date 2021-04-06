lbl_800EC7DC:
/* 800EC7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC7E0  7C 08 02 A6 */	mflr r0
/* 800EC7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EC7E8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800EC7EC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800EC7F0  38 63 00 6F */	addi r3, r3, 0x6f
/* 800EC7F4  4B FB 12 6D */	bl checkStageName__9daAlink_cFPCc
/* 800EC7F8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800EC7FC  7C 00 00 34 */	cntlzw r0, r0
/* 800EC800  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800EC804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC808  7C 08 03 A6 */	mtlr r0
/* 800EC80C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC810  4E 80 00 20 */	blr 
