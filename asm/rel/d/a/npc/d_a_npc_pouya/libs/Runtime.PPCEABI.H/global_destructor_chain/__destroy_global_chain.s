lbl_80AADD54:
/* 80AADD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AADD58  7C 08 02 A6 */	mflr r0
/* 80AADD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AADD60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AADD64  3C 60 80 AB */	lis r3, __global_destructor_chain@ha
/* 80AADD68  3B E3 2C E8 */	addi r31, r3, __global_destructor_chain@l
/* 80AADD6C  48 00 00 20 */	b lbl_80AADD8C
lbl_80AADD70:
/* 80AADD70  80 05 00 00 */	lwz r0, 0(r5)
/* 80AADD74  90 1F 00 00 */	stw r0, 0(r31)
/* 80AADD78  80 65 00 08 */	lwz r3, 8(r5)
/* 80AADD7C  38 80 FF FF */	li r4, -1
/* 80AADD80  81 85 00 04 */	lwz r12, 4(r5)
/* 80AADD84  7D 89 03 A6 */	mtctr r12
/* 80AADD88  4E 80 04 21 */	bctrl 
lbl_80AADD8C:
/* 80AADD8C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AADD90  28 05 00 00 */	cmplwi r5, 0
/* 80AADD94  40 82 FF DC */	bne lbl_80AADD70
/* 80AADD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AADD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AADDA0  7C 08 03 A6 */	mtlr r0
/* 80AADDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AADDA8  4E 80 00 20 */	blr 
