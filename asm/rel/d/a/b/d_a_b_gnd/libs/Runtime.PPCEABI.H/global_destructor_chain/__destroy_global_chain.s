lbl_805F49F4:
/* 805F49F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F49F8  7C 08 02 A6 */	mflr r0
/* 805F49FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F4A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F4A04  3C 60 80 60 */	lis r3, __global_destructor_chain@ha
/* 805F4A08  3B E3 2F 60 */	addi r31, r3, __global_destructor_chain@l
/* 805F4A0C  48 00 00 20 */	b lbl_805F4A2C
lbl_805F4A10:
/* 805F4A10  80 05 00 00 */	lwz r0, 0(r5)
/* 805F4A14  90 1F 00 00 */	stw r0, 0(r31)
/* 805F4A18  80 65 00 08 */	lwz r3, 8(r5)
/* 805F4A1C  38 80 FF FF */	li r4, -1
/* 805F4A20  81 85 00 04 */	lwz r12, 4(r5)
/* 805F4A24  7D 89 03 A6 */	mtctr r12
/* 805F4A28  4E 80 04 21 */	bctrl 
lbl_805F4A2C:
/* 805F4A2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805F4A30  28 05 00 00 */	cmplwi r5, 0
/* 805F4A34  40 82 FF DC */	bne lbl_805F4A10
/* 805F4A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F4A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F4A40  7C 08 03 A6 */	mtlr r0
/* 805F4A44  38 21 00 10 */	addi r1, r1, 0x10
/* 805F4A48  4E 80 00 20 */	blr 
