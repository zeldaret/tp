lbl_80AA0758:
/* 80AA0758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA075C  7C 08 02 A6 */	mflr r0
/* 80AA0760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0768  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA076C  41 82 00 1C */	beq lbl_80AA0788
/* 80AA0770  3C A0 80 AA */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80AA0774  38 05 2A 80 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80AA0778  90 1F 00 04 */	stw r0, 4(r31)
/* 80AA077C  7C 80 07 35 */	extsh. r0, r4
/* 80AA0780  40 81 00 08 */	ble lbl_80AA0788
/* 80AA0784  4B 82 E5 B8 */	b __dl__FPv
lbl_80AA0788:
/* 80AA0788  7F E3 FB 78 */	mr r3, r31
/* 80AA078C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0794  7C 08 03 A6 */	mtlr r0
/* 80AA0798  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA079C  4E 80 00 20 */	blr 
