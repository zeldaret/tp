lbl_80CA7AE0:
/* 80CA7AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7AE4  7C 08 02 A6 */	mflr r0
/* 80CA7AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7AEC  3C 60 80 CB */	lis r3, data_80CA8114@ha
/* 80CA7AF0  38 63 81 14 */	addi r3, r3, data_80CA8114@l
/* 80CA7AF4  4B 5B B6 58 */	b ModuleConstructorsX
/* 80CA7AF8  4B 5B B5 90 */	b ModuleProlog
/* 80CA7AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7B00  7C 08 03 A6 */	mtlr r0
/* 80CA7B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7B08  4E 80 00 20 */	blr 
