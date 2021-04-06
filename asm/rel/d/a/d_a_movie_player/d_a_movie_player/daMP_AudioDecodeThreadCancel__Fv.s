lbl_80876520:
/* 80876520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80876524  7C 08 02 A6 */	mflr r0
/* 80876528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8087652C  3C 60 80 8E */	lis r3, daMP_AudioDecodeThreadCreated@ha /* 0x808E0514@ha */
/* 80876530  80 03 05 14 */	lwz r0, daMP_AudioDecodeThreadCreated@l(r3)  /* 0x808E0514@l */
/* 80876534  2C 00 00 00 */	cmpwi r0, 0
/* 80876538  41 82 00 1C */	beq lbl_80876554
/* 8087653C  3C 60 80 8E */	lis r3, daMP_AudioDecodeThread@ha /* 0x808E0518@ha */
/* 80876540  38 63 05 18 */	addi r3, r3, daMP_AudioDecodeThread@l /* 0x808E0518@l */
/* 80876544  4B AC B0 15 */	bl OSCancelThread
/* 80876548  38 00 00 00 */	li r0, 0
/* 8087654C  3C 60 80 8E */	lis r3, daMP_AudioDecodeThreadCreated@ha /* 0x808E0514@ha */
/* 80876550  90 03 05 14 */	stw r0, daMP_AudioDecodeThreadCreated@l(r3)  /* 0x808E0514@l */
lbl_80876554:
/* 80876554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80876558  7C 08 03 A6 */	mtlr r0
/* 8087655C  38 21 00 10 */	addi r1, r1, 0x10
/* 80876560  4E 80 00 20 */	blr 
