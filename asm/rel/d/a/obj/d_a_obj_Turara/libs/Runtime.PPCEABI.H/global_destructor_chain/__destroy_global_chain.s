lbl_80B9CB34:
/* 80B9CB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9CB38  7C 08 02 A6 */	mflr r0
/* 80B9CB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9CB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9CB44  3C 60 80 BA */	lis r3, __global_destructor_chain@ha
/* 80B9CB48  3B E3 EB 90 */	addi r31, r3, __global_destructor_chain@l
/* 80B9CB4C  48 00 00 20 */	b lbl_80B9CB6C
lbl_80B9CB50:
/* 80B9CB50  80 05 00 00 */	lwz r0, 0(r5)
/* 80B9CB54  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9CB58  80 65 00 08 */	lwz r3, 8(r5)
/* 80B9CB5C  38 80 FF FF */	li r4, -1
/* 80B9CB60  81 85 00 04 */	lwz r12, 4(r5)
/* 80B9CB64  7D 89 03 A6 */	mtctr r12
/* 80B9CB68  4E 80 04 21 */	bctrl 
lbl_80B9CB6C:
/* 80B9CB6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B9CB70  28 05 00 00 */	cmplwi r5, 0
/* 80B9CB74  40 82 FF DC */	bne lbl_80B9CB50
/* 80B9CB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9CB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9CB80  7C 08 03 A6 */	mtlr r0
/* 80B9CB84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9CB88  4E 80 00 20 */	blr 
