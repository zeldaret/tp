lbl_8058DFF4:
/* 8058DFF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DFF8  7C 08 02 A6 */	mflr r0
/* 8058DFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E004  3C 60 80 59 */	lis r3, __global_destructor_chain@ha
/* 8058E008  3B E3 F2 98 */	addi r31, r3, __global_destructor_chain@l
/* 8058E00C  48 00 00 20 */	b lbl_8058E02C
lbl_8058E010:
/* 8058E010  80 05 00 00 */	lwz r0, 0(r5)
/* 8058E014  90 1F 00 00 */	stw r0, 0(r31)
/* 8058E018  80 65 00 08 */	lwz r3, 8(r5)
/* 8058E01C  38 80 FF FF */	li r4, -1
/* 8058E020  81 85 00 04 */	lwz r12, 4(r5)
/* 8058E024  7D 89 03 A6 */	mtctr r12
/* 8058E028  4E 80 04 21 */	bctrl 
lbl_8058E02C:
/* 8058E02C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8058E030  28 05 00 00 */	cmplwi r5, 0
/* 8058E034  40 82 FF DC */	bne lbl_8058E010
/* 8058E038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E040  7C 08 03 A6 */	mtlr r0
/* 8058E044  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E048  4E 80 00 20 */	blr 
