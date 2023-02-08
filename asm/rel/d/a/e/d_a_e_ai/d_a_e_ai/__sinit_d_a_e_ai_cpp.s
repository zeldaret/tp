lbl_8067BF88:
/* 8067BF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BF8C  7C 08 02 A6 */	mflr r0
/* 8067BF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BF94  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x8067C6A8@ha */
/* 8067BF98  38 63 C6 A8 */	addi r3, r3, l_HIO@l /* 0x8067C6A8@l */
/* 8067BF9C  4B FF D1 D1 */	bl __ct__12daE_AI_HIO_cFv
/* 8067BFA0  3C 80 80 68 */	lis r4, __dt__12daE_AI_HIO_cFv@ha /* 0x8067BF40@ha */
/* 8067BFA4  38 84 BF 40 */	addi r4, r4, __dt__12daE_AI_HIO_cFv@l /* 0x8067BF40@l */
/* 8067BFA8  3C A0 80 68 */	lis r5, lit_3805@ha /* 0x8067C69C@ha */
/* 8067BFAC  38 A5 C6 9C */	addi r5, r5, lit_3805@l /* 0x8067C69C@l */
/* 8067BFB0  4B FF D1 49 */	bl __register_global_object
/* 8067BFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BFB8  7C 08 03 A6 */	mtlr r0
/* 8067BFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BFC0  4E 80 00 20 */	blr 
