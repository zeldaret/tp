lbl_80CCC088:
/* 80CCC088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCC08C  7C 08 02 A6 */	mflr r0
/* 80CCC090  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCC094  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CCC098  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CCC09C  7C 7E 1B 78 */	mr r30, r3
/* 80CCC0A0  3C 80 80 CD */	lis r4, lit_3832@ha
/* 80CCC0A4  3B E4 CC 38 */	addi r31, r4, lit_3832@l
/* 80CCC0A8  48 00 06 A5 */	bl exeEmtSmoke__17daObjSCannonTen_cFv
/* 80CCC0AC  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CCC0B0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CCC0B4  4B 65 C3 78 */	b checkPass__12J3DFrameCtrlFf
/* 80CCC0B8  2C 03 00 00 */	cmpwi r3, 0
/* 80CCC0BC  41 82 00 40 */	beq lbl_80CCC0FC
/* 80CCC0C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CCC0C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CCC0C8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CCC0CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCC0D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CCC0D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC0D8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CCC0DC  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 80CCC0E0  38 80 00 05 */	li r4, 5
/* 80CCC0E4  38 A0 00 1F */	li r5, 0x1f
/* 80CCC0E8  38 C1 00 08 */	addi r6, r1, 8
/* 80CCC0EC  4B 3A 39 38 */	b StartShock__12dVibration_cFii4cXyz
/* 80CCC0F0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CCC0F4  80 9E 05 E4 */	lwz r4, 0x5e4(r30)
/* 80CCC0F8  4B 37 C0 84 */	b cutEnd__16dEvent_manager_cFi
lbl_80CCC0FC:
/* 80CCC0FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CCC100  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CCC104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCC108  7C 08 03 A6 */	mtlr r0
/* 80CCC10C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCC110  4E 80 00 20 */	blr 
