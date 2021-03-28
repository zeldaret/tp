lbl_80C75814:
/* 80C75814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75818  7C 08 02 A6 */	mflr r0
/* 80C7581C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C75824  3C 60 80 C7 */	lis r3, __global_destructor_chain@ha
/* 80C75828  3B E3 67 D0 */	addi r31, r3, __global_destructor_chain@l
/* 80C7582C  48 00 00 20 */	b lbl_80C7584C
lbl_80C75830:
/* 80C75830  80 05 00 00 */	lwz r0, 0(r5)
/* 80C75834  90 1F 00 00 */	stw r0, 0(r31)
/* 80C75838  80 65 00 08 */	lwz r3, 8(r5)
/* 80C7583C  38 80 FF FF */	li r4, -1
/* 80C75840  81 85 00 04 */	lwz r12, 4(r5)
/* 80C75844  7D 89 03 A6 */	mtctr r12
/* 80C75848  4E 80 04 21 */	bctrl 
lbl_80C7584C:
/* 80C7584C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C75850  28 05 00 00 */	cmplwi r5, 0
/* 80C75854  40 82 FF DC */	bne lbl_80C75830
/* 80C75858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7585C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75860  7C 08 03 A6 */	mtlr r0
/* 80C75864  38 21 00 10 */	addi r1, r1, 0x10
/* 80C75868  4E 80 00 20 */	blr 
