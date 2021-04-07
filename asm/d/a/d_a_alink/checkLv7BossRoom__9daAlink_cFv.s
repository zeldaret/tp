lbl_80108784:
/* 80108784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80108788  7C 08 02 A6 */	mflr r0
/* 8010878C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80108790  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80108794  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80108798  38 63 00 86 */	addi r3, r3, 0x86
/* 8010879C  4B F9 52 C5 */	bl checkStageName__9daAlink_cFPCc
/* 801087A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801087A4  7C 08 03 A6 */	mtlr r0
/* 801087A8  38 21 00 10 */	addi r1, r1, 0x10
/* 801087AC  4E 80 00 20 */	blr 
