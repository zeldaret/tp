lbl_801089E8:
/* 801089E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801089EC  7C 08 02 A6 */	mflr r0
/* 801089F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801089F4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 801089F8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 801089FC  38 63 00 8E */	addi r3, r3, 0x8e
/* 80108A00  4B F9 50 61 */	bl checkStageName__9daAlink_cFPCc
/* 80108A04  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80108A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80108A0C  7C 08 03 A6 */	mtlr r0
/* 80108A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80108A14  4E 80 00 20 */	blr 
