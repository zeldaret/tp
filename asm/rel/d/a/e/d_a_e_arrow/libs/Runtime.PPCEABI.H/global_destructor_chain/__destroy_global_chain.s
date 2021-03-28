lbl_8067C774:
/* 8067C774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067C778  7C 08 02 A6 */	mflr r0
/* 8067C77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067C780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067C784  3C 60 80 68 */	lis r3, __global_destructor_chain@ha
/* 8067C788  3B E3 EB 10 */	addi r31, r3, __global_destructor_chain@l
/* 8067C78C  48 00 00 20 */	b lbl_8067C7AC
lbl_8067C790:
/* 8067C790  80 05 00 00 */	lwz r0, 0(r5)
/* 8067C794  90 1F 00 00 */	stw r0, 0(r31)
/* 8067C798  80 65 00 08 */	lwz r3, 8(r5)
/* 8067C79C  38 80 FF FF */	li r4, -1
/* 8067C7A0  81 85 00 04 */	lwz r12, 4(r5)
/* 8067C7A4  7D 89 03 A6 */	mtctr r12
/* 8067C7A8  4E 80 04 21 */	bctrl 
lbl_8067C7AC:
/* 8067C7AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8067C7B0  28 05 00 00 */	cmplwi r5, 0
/* 8067C7B4  40 82 FF DC */	bne lbl_8067C790
/* 8067C7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067C7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067C7C0  7C 08 03 A6 */	mtlr r0
/* 8067C7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8067C7C8  4E 80 00 20 */	blr 
