lbl_80D13734:
/* 80D13734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13738  7C 08 02 A6 */	mflr r0
/* 80D1373C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D13744  3C 60 80 D1 */	lis r3, __global_destructor_chain@ha
/* 80D13748  3B E3 58 B0 */	addi r31, r3, __global_destructor_chain@l
/* 80D1374C  48 00 00 20 */	b lbl_80D1376C
lbl_80D13750:
/* 80D13750  80 05 00 00 */	lwz r0, 0(r5)
/* 80D13754  90 1F 00 00 */	stw r0, 0(r31)
/* 80D13758  80 65 00 08 */	lwz r3, 8(r5)
/* 80D1375C  38 80 FF FF */	li r4, -1
/* 80D13760  81 85 00 04 */	lwz r12, 4(r5)
/* 80D13764  7D 89 03 A6 */	mtctr r12
/* 80D13768  4E 80 04 21 */	bctrl 
lbl_80D1376C:
/* 80D1376C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D13770  28 05 00 00 */	cmplwi r5, 0
/* 80D13774  40 82 FF DC */	bne lbl_80D13750
/* 80D13778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1377C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13780  7C 08 03 A6 */	mtlr r0
/* 80D13784  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13788  4E 80 00 20 */	blr 
