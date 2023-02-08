lbl_809E753C:
/* 809E753C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7540  7C 08 02 A6 */	mflr r0
/* 809E7544  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E754C  7C 7F 1B 78 */	mr r31, r3
/* 809E7550  3C 80 80 9F */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x809E81F4@ha */
/* 809E7554  38 04 81 F4 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x809E81F4@l */
/* 809E7558  90 03 00 04 */	stw r0, 4(r3)
/* 809E755C  4B 76 91 55 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809E7560  7F E3 FB 78 */	mr r3, r31
/* 809E7564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E756C  7C 08 03 A6 */	mtlr r0
/* 809E7570  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7574  4E 80 00 20 */	blr 
