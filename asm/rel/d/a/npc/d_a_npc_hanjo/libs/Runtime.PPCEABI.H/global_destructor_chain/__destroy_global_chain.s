lbl_809F9034:
/* 809F9034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9038  7C 08 02 A6 */	mflr r0
/* 809F903C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F9044  3C 60 80 A0 */	lis r3, __global_destructor_chain@ha
/* 809F9048  3B E3 12 80 */	addi r31, r3, __global_destructor_chain@l
/* 809F904C  48 00 00 20 */	b lbl_809F906C
lbl_809F9050:
/* 809F9050  80 05 00 00 */	lwz r0, 0(r5)
/* 809F9054  90 1F 00 00 */	stw r0, 0(r31)
/* 809F9058  80 65 00 08 */	lwz r3, 8(r5)
/* 809F905C  38 80 FF FF */	li r4, -1
/* 809F9060  81 85 00 04 */	lwz r12, 4(r5)
/* 809F9064  7D 89 03 A6 */	mtctr r12
/* 809F9068  4E 80 04 21 */	bctrl 
lbl_809F906C:
/* 809F906C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809F9070  28 05 00 00 */	cmplwi r5, 0
/* 809F9074  40 82 FF DC */	bne lbl_809F9050
/* 809F9078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F907C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9080  7C 08 03 A6 */	mtlr r0
/* 809F9084  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9088  4E 80 00 20 */	blr 
