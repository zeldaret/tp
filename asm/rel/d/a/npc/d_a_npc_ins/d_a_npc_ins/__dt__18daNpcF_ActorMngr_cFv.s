lbl_80A13558:
/* 80A13558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1355C  7C 08 02 A6 */	mflr r0
/* 80A13560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A13568  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A1356C  41 82 00 1C */	beq lbl_80A13588
/* 80A13570  3C A0 80 A1 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A145B4@ha */
/* 80A13574  38 05 45 B4 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80A145B4@l */
/* 80A13578  90 1F 00 04 */	stw r0, 4(r31)
/* 80A1357C  7C 80 07 35 */	extsh. r0, r4
/* 80A13580  40 81 00 08 */	ble lbl_80A13588
/* 80A13584  4B 8B B7 B9 */	bl __dl__FPv
lbl_80A13588:
/* 80A13588  7F E3 FB 78 */	mr r3, r31
/* 80A1358C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13594  7C 08 03 A6 */	mtlr r0
/* 80A13598  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1359C  4E 80 00 20 */	blr 
