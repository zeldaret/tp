lbl_809D46D4:
/* 809D46D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D46D8  7C 08 02 A6 */	mflr r0
/* 809D46DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D46E0  39 61 00 20 */	addi r11, r1, 0x20
/* 809D46E4  4B 98 DA F9 */	bl _savegpr_29
/* 809D46E8  7C 7D 1B 78 */	mr r29, r3
/* 809D46EC  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 809D46F0  28 1E 00 00 */	cmplwi r30, 0
/* 809D46F4  41 82 00 30 */	beq lbl_809D4724
/* 809D46F8  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 809D46FC  80 84 00 04 */	lwz r4, 4(r4)
/* 809D4700  83 E4 00 04 */	lwz r31, 4(r4)
/* 809D4704  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809D4708  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809D470C  7D 89 03 A6 */	mtctr r12
/* 809D4710  4E 80 04 21 */	bctrl 
/* 809D4714  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 809D4718  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 809D471C  7C 64 00 2E */	lwzx r3, r4, r0
/* 809D4720  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_809D4724:
/* 809D4724  7F A3 EB 78 */	mr r3, r29
/* 809D4728  38 80 00 00 */	li r4, 0
/* 809D472C  38 A0 00 00 */	li r5, 0
/* 809D4730  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 809D4734  38 C0 00 00 */	li r6, 0
/* 809D4738  3C E0 80 9D */	lis r7, lit_4010@ha /* 0x809D6E1C@ha */
/* 809D473C  C0 47 6E 1C */	lfs f2, lit_4010@l(r7)  /* 0x809D6E1C@l */
/* 809D4740  38 E0 00 00 */	li r7, 0
/* 809D4744  39 00 00 00 */	li r8, 0
/* 809D4748  39 20 00 00 */	li r9, 0
/* 809D474C  4B 77 41 21 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 809D4750  39 61 00 20 */	addi r11, r1, 0x20
/* 809D4754  4B 98 DA D5 */	bl _restgpr_29
/* 809D4758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D475C  7C 08 03 A6 */	mtlr r0
/* 809D4760  38 21 00 20 */	addi r1, r1, 0x20
/* 809D4764  4E 80 00 20 */	blr 
