lbl_80A1B410:
/* 80A1B410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1B414  7C 08 02 A6 */	mflr r0
/* 80A1B418  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1B41C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B420  4B 94 6D B8 */	b _savegpr_28
/* 80A1B424  7C 7C 1B 78 */	mr r28, r3
/* 80A1B428  7C 9D 23 78 */	mr r29, r4
/* 80A1B42C  7C BE 2B 78 */	mr r30, r5
/* 80A1B430  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 80A1B434  28 00 00 00 */	cmplwi r0, 0
/* 80A1B438  40 82 00 3C */	bne lbl_80A1B474
/* 80A1B43C  4B 73 52 B0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B440  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A1B444  41 82 00 30 */	beq lbl_80A1B474
/* 80A1B448  38 7C 00 50 */	addi r3, r28, 0x50
/* 80A1B44C  4B 73 54 B4 */	b initialize__13daNpcF_Path_cFv
/* 80A1B450  38 7C 00 50 */	addi r3, r28, 0x50
/* 80A1B454  7F A4 EB 78 */	mr r4, r29
/* 80A1B458  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A1B45C  7C 05 07 74 */	extsb r5, r0
/* 80A1B460  38 C0 00 00 */	li r6, 0
/* 80A1B464  4B 73 54 F8 */	b setPathInfo__13daNpcF_Path_cFUcScUc
/* 80A1B468  B3 DC 00 50 */	sth r30, 0x50(r28)
/* 80A1B46C  38 00 00 01 */	li r0, 1
/* 80A1B470  98 1C 00 4C */	stb r0, 0x4c(r28)
lbl_80A1B474:
/* 80A1B474  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B478  4B 94 6D AC */	b _restgpr_28
/* 80A1B47C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1B480  7C 08 03 A6 */	mtlr r0
/* 80A1B484  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1B488  4E 80 00 20 */	blr 
