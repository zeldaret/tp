lbl_80CCE2F4:
/* 80CCE2F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE2F8  7C 08 02 A6 */	mflr r0
/* 80CCE2FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCE304  3C 60 80 CD */	lis r3, __global_destructor_chain@ha
/* 80CCE308  3B E3 68 D8 */	addi r31, r3, __global_destructor_chain@l
/* 80CCE30C  48 00 00 20 */	b lbl_80CCE32C
lbl_80CCE310:
/* 80CCE310  80 05 00 00 */	lwz r0, 0(r5)
/* 80CCE314  90 1F 00 00 */	stw r0, 0(r31)
/* 80CCE318  80 65 00 08 */	lwz r3, 8(r5)
/* 80CCE31C  38 80 FF FF */	li r4, -1
/* 80CCE320  81 85 00 04 */	lwz r12, 4(r5)
/* 80CCE324  7D 89 03 A6 */	mtctr r12
/* 80CCE328  4E 80 04 21 */	bctrl 
lbl_80CCE32C:
/* 80CCE32C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CCE330  28 05 00 00 */	cmplwi r5, 0
/* 80CCE334  40 82 FF DC */	bne lbl_80CCE310
/* 80CCE338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCE33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE340  7C 08 03 A6 */	mtlr r0
/* 80CCE344  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE348  4E 80 00 20 */	blr 
