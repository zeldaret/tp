lbl_80BBAF94:
/* 80BBAF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBAF98  7C 08 02 A6 */	mflr r0
/* 80BBAF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBAFA4  3C 60 80 BC */	lis r3, __global_destructor_chain@ha
/* 80BBAFA8  3B E3 C6 70 */	addi r31, r3, __global_destructor_chain@l
/* 80BBAFAC  48 00 00 20 */	b lbl_80BBAFCC
lbl_80BBAFB0:
/* 80BBAFB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80BBAFB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BBAFB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80BBAFBC  38 80 FF FF */	li r4, -1
/* 80BBAFC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80BBAFC4  7D 89 03 A6 */	mtctr r12
/* 80BBAFC8  4E 80 04 21 */	bctrl 
lbl_80BBAFCC:
/* 80BBAFCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BBAFD0  28 05 00 00 */	cmplwi r5, 0
/* 80BBAFD4  40 82 FF DC */	bne lbl_80BBAFB0
/* 80BBAFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBAFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAFE0  7C 08 03 A6 */	mtlr r0
/* 80BBAFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAFE8  4E 80 00 20 */	blr 
