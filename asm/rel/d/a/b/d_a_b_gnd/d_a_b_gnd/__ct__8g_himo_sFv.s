lbl_80601DA0:
/* 80601DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601DA4  7C 08 02 A6 */	mflr r0
/* 80601DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601DB0  7C 7F 1B 78 */	mr r31, r3
/* 80601DB4  3C 80 80 60 */	lis r4, __ct__4cXyzFv@ha
/* 80601DB8  38 84 1D E8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80601DBC  3C A0 80 5F */	lis r5, __dt__4cXyzFv@ha
/* 80601DC0  38 A5 53 A4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80601DC4  38 C0 00 0C */	li r6, 0xc
/* 80601DC8  38 E0 00 10 */	li r7, 0x10
/* 80601DCC  4B D5 FF 94 */	b __construct_array
/* 80601DD0  7F E3 FB 78 */	mr r3, r31
/* 80601DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601DDC  7C 08 03 A6 */	mtlr r0
/* 80601DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80601DE4  4E 80 00 20 */	blr 
