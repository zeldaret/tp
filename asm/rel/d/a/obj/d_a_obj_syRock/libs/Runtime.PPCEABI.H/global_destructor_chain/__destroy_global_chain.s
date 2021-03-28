lbl_80D02254:
/* 80D02254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02258  7C 08 02 A6 */	mflr r0
/* 80D0225C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02264  3C 60 80 D0 */	lis r3, __global_destructor_chain@ha
/* 80D02268  3B E3 42 58 */	addi r31, r3, __global_destructor_chain@l
/* 80D0226C  48 00 00 20 */	b lbl_80D0228C
lbl_80D02270:
/* 80D02270  80 05 00 00 */	lwz r0, 0(r5)
/* 80D02274  90 1F 00 00 */	stw r0, 0(r31)
/* 80D02278  80 65 00 08 */	lwz r3, 8(r5)
/* 80D0227C  38 80 FF FF */	li r4, -1
/* 80D02280  81 85 00 04 */	lwz r12, 4(r5)
/* 80D02284  7D 89 03 A6 */	mtctr r12
/* 80D02288  4E 80 04 21 */	bctrl 
lbl_80D0228C:
/* 80D0228C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D02290  28 05 00 00 */	cmplwi r5, 0
/* 80D02294  40 82 FF DC */	bne lbl_80D02270
/* 80D02298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0229C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D022A0  7C 08 03 A6 */	mtlr r0
/* 80D022A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D022A8  4E 80 00 20 */	blr 
