lbl_809E74F4:
/* 809E74F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E74F8  7C 08 02 A6 */	mflr r0
/* 809E74FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7504  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E7508  41 82 00 1C */	beq lbl_809E7524
/* 809E750C  3C A0 80 9F */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x809E81F4@ha */
/* 809E7510  38 05 81 F4 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x809E81F4@l */
/* 809E7514  90 1F 00 04 */	stw r0, 4(r31)
/* 809E7518  7C 80 07 35 */	extsh. r0, r4
/* 809E751C  40 81 00 08 */	ble lbl_809E7524
/* 809E7520  4B 8E 78 1D */	bl __dl__FPv
lbl_809E7524:
/* 809E7524  7F E3 FB 78 */	mr r3, r31
/* 809E7528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E752C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7530  7C 08 03 A6 */	mtlr r0
/* 809E7534  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7538  4E 80 00 20 */	blr 
