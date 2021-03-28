lbl_80B42EF4:
/* 80B42EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B42EF8  7C 08 02 A6 */	mflr r0
/* 80B42EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B42F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B42F04  3C 60 80 B4 */	lis r3, __global_destructor_chain@ha
/* 80B42F08  3B E3 64 68 */	addi r31, r3, __global_destructor_chain@l
/* 80B42F0C  48 00 00 20 */	b lbl_80B42F2C
lbl_80B42F10:
/* 80B42F10  80 05 00 00 */	lwz r0, 0(r5)
/* 80B42F14  90 1F 00 00 */	stw r0, 0(r31)
/* 80B42F18  80 65 00 08 */	lwz r3, 8(r5)
/* 80B42F1C  38 80 FF FF */	li r4, -1
/* 80B42F20  81 85 00 04 */	lwz r12, 4(r5)
/* 80B42F24  7D 89 03 A6 */	mtctr r12
/* 80B42F28  4E 80 04 21 */	bctrl 
lbl_80B42F2C:
/* 80B42F2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B42F30  28 05 00 00 */	cmplwi r5, 0
/* 80B42F34  40 82 FF DC */	bne lbl_80B42F10
/* 80B42F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B42F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B42F40  7C 08 03 A6 */	mtlr r0
/* 80B42F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80B42F48  4E 80 00 20 */	blr 
