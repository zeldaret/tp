lbl_809FF258:
/* 809FF258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF25C  7C 08 02 A6 */	mflr r0
/* 809FF260  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF268  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FF26C  41 82 00 1C */	beq lbl_809FF288
/* 809FF270  3C A0 80 A0 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A01170@ha */
/* 809FF274  38 05 11 70 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A01170@l */
/* 809FF278  90 1F 00 04 */	stw r0, 4(r31)
/* 809FF27C  7C 80 07 35 */	extsh. r0, r4
/* 809FF280  40 81 00 08 */	ble lbl_809FF288
/* 809FF284  4B 8C FA B9 */	bl __dl__FPv
lbl_809FF288:
/* 809FF288  7F E3 FB 78 */	mr r3, r31
/* 809FF28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF294  7C 08 03 A6 */	mtlr r0
/* 809FF298  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF29C  4E 80 00 20 */	blr 
