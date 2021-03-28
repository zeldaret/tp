lbl_80051294:
/* 80051294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051298  7C 08 02 A6 */	mflr r0
/* 8005129C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800512A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800512A4  7C 7F 1B 78 */	mr r31, r3
/* 800512A8  38 9F 00 38 */	addi r4, r31, 0x38
/* 800512AC  38 BF 00 7C */	addi r5, r31, 0x7c
/* 800512B0  4B FF FE 8D */	bl clearID__7dPaPo_cFPUlPUc
/* 800512B4  7F E3 FB 78 */	mr r3, r31
/* 800512B8  38 9F 00 58 */	addi r4, r31, 0x58
/* 800512BC  38 BF 00 7D */	addi r5, r31, 0x7d
/* 800512C0  4B FF FE 7D */	bl clearID__7dPaPo_cFPUlPUc
/* 800512C4  7F E3 FB 78 */	mr r3, r31
/* 800512C8  38 9F 00 08 */	addi r4, r31, 8
/* 800512CC  38 BF 00 36 */	addi r5, r31, 0x36
/* 800512D0  4B FF FE 6D */	bl clearID__7dPaPo_cFPUlPUc
/* 800512D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800512D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800512DC  7C 08 03 A6 */	mtlr r0
/* 800512E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800512E4  4E 80 00 20 */	blr 
