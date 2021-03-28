lbl_8051BCF4:
/* 8051BCF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BCF8  7C 08 02 A6 */	mflr r0
/* 8051BCFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BD04  3C 60 80 52 */	lis r3, __global_destructor_chain@ha
/* 8051BD08  3B E3 78 C8 */	addi r31, r3, __global_destructor_chain@l
/* 8051BD0C  48 00 00 20 */	b lbl_8051BD2C
lbl_8051BD10:
/* 8051BD10  80 05 00 00 */	lwz r0, 0(r5)
/* 8051BD14  90 1F 00 00 */	stw r0, 0(r31)
/* 8051BD18  80 65 00 08 */	lwz r3, 8(r5)
/* 8051BD1C  38 80 FF FF */	li r4, -1
/* 8051BD20  81 85 00 04 */	lwz r12, 4(r5)
/* 8051BD24  7D 89 03 A6 */	mtctr r12
/* 8051BD28  4E 80 04 21 */	bctrl 
lbl_8051BD2C:
/* 8051BD2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8051BD30  28 05 00 00 */	cmplwi r5, 0
/* 8051BD34  40 82 FF DC */	bne lbl_8051BD10
/* 8051BD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BD40  7C 08 03 A6 */	mtlr r0
/* 8051BD44  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BD48  4E 80 00 20 */	blr 
