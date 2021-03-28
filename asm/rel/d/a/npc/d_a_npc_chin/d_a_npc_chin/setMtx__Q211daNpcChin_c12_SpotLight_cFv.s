lbl_8098C000:
/* 8098C000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098C004  7C 08 02 A6 */	mflr r0
/* 8098C008  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098C00C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098C010  7C 7F 1B 78 */	mr r31, r3
/* 8098C014  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8098C018  2C 00 00 01 */	cmpwi r0, 1
/* 8098C01C  40 82 00 30 */	bne lbl_8098C04C
/* 8098C020  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8098C024  4B 68 0D 40 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8098C028  38 7F 00 28 */	addi r3, r31, 0x28
/* 8098C02C  4B 68 0F 18 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8098C030  38 7F 00 30 */	addi r3, r31, 0x30
/* 8098C034  4B 68 0E 3C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 8098C038  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8098C03C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8098C040  80 9F 00 00 */	lwz r4, 0(r31)
/* 8098C044  38 84 00 24 */	addi r4, r4, 0x24
/* 8098C048  4B 9B A4 68 */	b PSMTXCopy
lbl_8098C04C:
/* 8098C04C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098C050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098C054  7C 08 03 A6 */	mtlr r0
/* 8098C058  38 21 00 10 */	addi r1, r1, 0x10
/* 8098C05C  4E 80 00 20 */	blr 
