lbl_80BF1FF4:
/* 80BF1FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1FF8  7C 08 02 A6 */	mflr r0
/* 80BF1FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF2000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF2004  3C 60 80 BF */	lis r3, __global_destructor_chain@ha
/* 80BF2008  3B E3 2C 18 */	addi r31, r3, __global_destructor_chain@l
/* 80BF200C  48 00 00 20 */	b lbl_80BF202C
lbl_80BF2010:
/* 80BF2010  80 05 00 00 */	lwz r0, 0(r5)
/* 80BF2014  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF2018  80 65 00 08 */	lwz r3, 8(r5)
/* 80BF201C  38 80 FF FF */	li r4, -1
/* 80BF2020  81 85 00 04 */	lwz r12, 4(r5)
/* 80BF2024  7D 89 03 A6 */	mtctr r12
/* 80BF2028  4E 80 04 21 */	bctrl 
lbl_80BF202C:
/* 80BF202C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BF2030  28 05 00 00 */	cmplwi r5, 0
/* 80BF2034  40 82 FF DC */	bne lbl_80BF2010
/* 80BF2038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF203C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2040  7C 08 03 A6 */	mtlr r0
/* 80BF2044  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2048  4E 80 00 20 */	blr 
