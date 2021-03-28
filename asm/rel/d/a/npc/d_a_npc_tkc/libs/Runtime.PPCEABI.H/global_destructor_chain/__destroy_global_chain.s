lbl_80B0C774:
/* 80B0C774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C778  7C 08 02 A6 */	mflr r0
/* 80B0C77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C784  3C 60 80 B1 */	lis r3, __global_destructor_chain@ha
/* 80B0C788  3B E3 0C E8 */	addi r31, r3, __global_destructor_chain@l
/* 80B0C78C  48 00 00 20 */	b lbl_80B0C7AC
lbl_80B0C790:
/* 80B0C790  80 05 00 00 */	lwz r0, 0(r5)
/* 80B0C794  90 1F 00 00 */	stw r0, 0(r31)
/* 80B0C798  80 65 00 08 */	lwz r3, 8(r5)
/* 80B0C79C  38 80 FF FF */	li r4, -1
/* 80B0C7A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80B0C7A4  7D 89 03 A6 */	mtctr r12
/* 80B0C7A8  4E 80 04 21 */	bctrl 
lbl_80B0C7AC:
/* 80B0C7AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B0C7B0  28 05 00 00 */	cmplwi r5, 0
/* 80B0C7B4  40 82 FF DC */	bne lbl_80B0C790
/* 80B0C7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C7C0  7C 08 03 A6 */	mtlr r0
/* 80B0C7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C7C8  4E 80 00 20 */	blr 
