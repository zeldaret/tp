lbl_809E92E0:
/* 809E92E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E92E4  7C 08 02 A6 */	mflr r0
/* 809E92E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E92EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E92F0  93 C1 00 08 */	stw r30, 8(r1)
/* 809E92F4  7C 7E 1B 78 */	mr r30, r3
/* 809E92F8  4B 76 8D 1C */	b execute__8daNpcF_cFv
/* 809E92FC  7C 7F 1B 78 */	mr r31, r3
/* 809E9300  7F C3 F3 78 */	mr r3, r30
/* 809E9304  48 00 3D 69 */	bl setPrtcl__11daNpc_Grz_cFv
/* 809E9308  7F E3 FB 78 */	mr r3, r31
/* 809E930C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E9310  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E9314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E9318  7C 08 03 A6 */	mtlr r0
/* 809E931C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E9320  4E 80 00 20 */	blr 
