lbl_80876124:
/* 80876124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80876128  7C 08 02 A6 */	mflr r0
/* 8087612C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80876130  3C 60 80 88 */	lis r3, daMP_VideoDecodeThreadCreated@ha
/* 80876134  80 03 C1 98 */	lwz r0, daMP_VideoDecodeThreadCreated@l(r3)
/* 80876138  2C 00 00 00 */	cmpwi r0, 0
/* 8087613C  41 82 00 1C */	beq lbl_80876158
/* 80876140  3C 60 80 88 */	lis r3, daMP_VideoDecodeThread@ha
/* 80876144  38 63 C1 A0 */	addi r3, r3, daMP_VideoDecodeThread@l
/* 80876148  4B AC B4 10 */	b OSCancelThread
/* 8087614C  38 00 00 00 */	li r0, 0
/* 80876150  3C 60 80 88 */	lis r3, daMP_VideoDecodeThreadCreated@ha
/* 80876154  90 03 C1 98 */	stw r0, daMP_VideoDecodeThreadCreated@l(r3)
lbl_80876158:
/* 80876158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8087615C  7C 08 03 A6 */	mtlr r0
/* 80876160  38 21 00 10 */	addi r1, r1, 0x10
/* 80876164  4E 80 00 20 */	blr 
