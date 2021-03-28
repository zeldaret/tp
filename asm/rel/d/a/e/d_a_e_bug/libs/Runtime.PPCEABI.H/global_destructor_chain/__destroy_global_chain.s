lbl_80694B34:
/* 80694B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80694B38  7C 08 02 A6 */	mflr r0
/* 80694B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80694B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80694B44  3C 60 80 69 */	lis r3, __global_destructor_chain@ha
/* 80694B48  3B E3 7E 28 */	addi r31, r3, __global_destructor_chain@l
/* 80694B4C  48 00 00 20 */	b lbl_80694B6C
lbl_80694B50:
/* 80694B50  80 05 00 00 */	lwz r0, 0(r5)
/* 80694B54  90 1F 00 00 */	stw r0, 0(r31)
/* 80694B58  80 65 00 08 */	lwz r3, 8(r5)
/* 80694B5C  38 80 FF FF */	li r4, -1
/* 80694B60  81 85 00 04 */	lwz r12, 4(r5)
/* 80694B64  7D 89 03 A6 */	mtctr r12
/* 80694B68  4E 80 04 21 */	bctrl 
lbl_80694B6C:
/* 80694B6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80694B70  28 05 00 00 */	cmplwi r5, 0
/* 80694B74  40 82 FF DC */	bne lbl_80694B50
/* 80694B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80694B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80694B80  7C 08 03 A6 */	mtlr r0
/* 80694B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80694B88  4E 80 00 20 */	blr 
