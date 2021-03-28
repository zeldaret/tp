lbl_80C5EB14:
/* 80C5EB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5EB18  7C 08 02 A6 */	mflr r0
/* 80C5EB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5EB20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5EB24  3C 60 80 C6 */	lis r3, __global_destructor_chain@ha
/* 80C5EB28  3B E3 F5 18 */	addi r31, r3, __global_destructor_chain@l
/* 80C5EB2C  48 00 00 20 */	b lbl_80C5EB4C
lbl_80C5EB30:
/* 80C5EB30  80 05 00 00 */	lwz r0, 0(r5)
/* 80C5EB34  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5EB38  80 65 00 08 */	lwz r3, 8(r5)
/* 80C5EB3C  38 80 FF FF */	li r4, -1
/* 80C5EB40  81 85 00 04 */	lwz r12, 4(r5)
/* 80C5EB44  7D 89 03 A6 */	mtctr r12
/* 80C5EB48  4E 80 04 21 */	bctrl 
lbl_80C5EB4C:
/* 80C5EB4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C5EB50  28 05 00 00 */	cmplwi r5, 0
/* 80C5EB54  40 82 FF DC */	bne lbl_80C5EB30
/* 80C5EB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5EB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5EB60  7C 08 03 A6 */	mtlr r0
/* 80C5EB64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5EB68  4E 80 00 20 */	blr 
