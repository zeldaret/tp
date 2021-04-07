lbl_808764E8:
/* 808764E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808764EC  7C 08 02 A6 */	mflr r0
/* 808764F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808764F4  3C 60 80 8E */	lis r3, daMP_AudioDecodeThreadCreated@ha /* 0x808E0514@ha */
/* 808764F8  80 03 05 14 */	lwz r0, daMP_AudioDecodeThreadCreated@l(r3)  /* 0x808E0514@l */
/* 808764FC  2C 00 00 00 */	cmpwi r0, 0
/* 80876500  41 82 00 10 */	beq lbl_80876510
/* 80876504  3C 60 80 8E */	lis r3, daMP_AudioDecodeThread@ha /* 0x808E0518@ha */
/* 80876508  38 63 05 18 */	addi r3, r3, daMP_AudioDecodeThread@l /* 0x808E0518@l */
/* 8087650C  4B AC B2 A9 */	bl OSResumeThread
lbl_80876510:
/* 80876510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80876514  7C 08 03 A6 */	mtlr r0
/* 80876518  38 21 00 10 */	addi r1, r1, 0x10
/* 8087651C  4E 80 00 20 */	blr 
