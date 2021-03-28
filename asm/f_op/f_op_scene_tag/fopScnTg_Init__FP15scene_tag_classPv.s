lbl_8001F188:
/* 8001F188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F18C  7C 08 02 A6 */	mflr r0
/* 8001F190  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F194  48 24 78 A1 */	bl cTg_Create__FP16create_tag_classPv
/* 8001F198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F19C  7C 08 03 A6 */	mtlr r0
/* 8001F1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F1A4  4E 80 00 20 */	blr 
