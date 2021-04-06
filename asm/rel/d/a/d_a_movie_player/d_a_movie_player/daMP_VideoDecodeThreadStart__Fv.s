lbl_808760EC:
/* 808760EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808760F0  7C 08 02 A6 */	mflr r0
/* 808760F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808760F8  3C 60 80 88 */	lis r3, daMP_VideoDecodeThreadCreated@ha /* 0x8087C198@ha */
/* 808760FC  80 03 C1 98 */	lwz r0, daMP_VideoDecodeThreadCreated@l(r3)  /* 0x8087C198@l */
/* 80876100  2C 00 00 00 */	cmpwi r0, 0
/* 80876104  41 82 00 10 */	beq lbl_80876114
/* 80876108  3C 60 80 88 */	lis r3, daMP_VideoDecodeThread@ha /* 0x8087C1A0@ha */
/* 8087610C  38 63 C1 A0 */	addi r3, r3, daMP_VideoDecodeThread@l /* 0x8087C1A0@l */
/* 80876110  4B AC B6 A5 */	bl OSResumeThread
lbl_80876114:
/* 80876114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80876118  7C 08 03 A6 */	mtlr r0
/* 8087611C  38 21 00 10 */	addi r1, r1, 0x10
/* 80876120  4E 80 00 20 */	blr 
