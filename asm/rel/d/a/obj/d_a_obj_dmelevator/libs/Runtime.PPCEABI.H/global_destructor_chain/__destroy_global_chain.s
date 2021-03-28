lbl_80BDD914:
/* 80BDD914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD918  7C 08 02 A6 */	mflr r0
/* 80BDD91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD924  3C 60 80 BE */	lis r3, __global_destructor_chain@ha
/* 80BDD928  3B E3 FB 30 */	addi r31, r3, __global_destructor_chain@l
/* 80BDD92C  48 00 00 20 */	b lbl_80BDD94C
lbl_80BDD930:
/* 80BDD930  80 05 00 00 */	lwz r0, 0(r5)
/* 80BDD934  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDD938  80 65 00 08 */	lwz r3, 8(r5)
/* 80BDD93C  38 80 FF FF */	li r4, -1
/* 80BDD940  81 85 00 04 */	lwz r12, 4(r5)
/* 80BDD944  7D 89 03 A6 */	mtctr r12
/* 80BDD948  4E 80 04 21 */	bctrl 
lbl_80BDD94C:
/* 80BDD94C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BDD950  28 05 00 00 */	cmplwi r5, 0
/* 80BDD954  40 82 FF DC */	bne lbl_80BDD930
/* 80BDD958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD960  7C 08 03 A6 */	mtlr r0
/* 80BDD964  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD968  4E 80 00 20 */	blr 
