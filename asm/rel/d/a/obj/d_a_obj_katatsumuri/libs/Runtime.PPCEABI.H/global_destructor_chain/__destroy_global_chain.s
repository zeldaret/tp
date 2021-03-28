lbl_80C39914:
/* 80C39914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39918  7C 08 02 A6 */	mflr r0
/* 80C3991C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C39924  3C 60 80 C4 */	lis r3, __global_destructor_chain@ha
/* 80C39928  3B E3 C8 30 */	addi r31, r3, __global_destructor_chain@l
/* 80C3992C  48 00 00 20 */	b lbl_80C3994C
lbl_80C39930:
/* 80C39930  80 05 00 00 */	lwz r0, 0(r5)
/* 80C39934  90 1F 00 00 */	stw r0, 0(r31)
/* 80C39938  80 65 00 08 */	lwz r3, 8(r5)
/* 80C3993C  38 80 FF FF */	li r4, -1
/* 80C39940  81 85 00 04 */	lwz r12, 4(r5)
/* 80C39944  7D 89 03 A6 */	mtctr r12
/* 80C39948  4E 80 04 21 */	bctrl 
lbl_80C3994C:
/* 80C3994C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C39950  28 05 00 00 */	cmplwi r5, 0
/* 80C39954  40 82 FF DC */	bne lbl_80C39930
/* 80C39958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3995C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39960  7C 08 03 A6 */	mtlr r0
/* 80C39964  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39968  4E 80 00 20 */	blr 
