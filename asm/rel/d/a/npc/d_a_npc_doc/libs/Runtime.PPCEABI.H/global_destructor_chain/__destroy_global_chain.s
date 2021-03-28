lbl_809A6C34:
/* 809A6C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A6C38  7C 08 02 A6 */	mflr r0
/* 809A6C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A6C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A6C44  3C 60 80 9B */	lis r3, __global_destructor_chain@ha
/* 809A6C48  3B E3 AA C8 */	addi r31, r3, __global_destructor_chain@l
/* 809A6C4C  48 00 00 20 */	b lbl_809A6C6C
lbl_809A6C50:
/* 809A6C50  80 05 00 00 */	lwz r0, 0(r5)
/* 809A6C54  90 1F 00 00 */	stw r0, 0(r31)
/* 809A6C58  80 65 00 08 */	lwz r3, 8(r5)
/* 809A6C5C  38 80 FF FF */	li r4, -1
/* 809A6C60  81 85 00 04 */	lwz r12, 4(r5)
/* 809A6C64  7D 89 03 A6 */	mtctr r12
/* 809A6C68  4E 80 04 21 */	bctrl 
lbl_809A6C6C:
/* 809A6C6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809A6C70  28 05 00 00 */	cmplwi r5, 0
/* 809A6C74  40 82 FF DC */	bne lbl_809A6C50
/* 809A6C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A6C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A6C80  7C 08 03 A6 */	mtlr r0
/* 809A6C84  38 21 00 10 */	addi r1, r1, 0x10
/* 809A6C88  4E 80 00 20 */	blr 
