lbl_80D59658:
/* 80D59658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5965C  7C 08 02 A6 */	mflr r0
/* 80D59660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D59668  7C 7F 1B 78 */	mr r31, r3
/* 80D5966C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D59670  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D59674  40 82 00 1C */	bne lbl_80D59690
/* 80D59678  28 1F 00 00 */	cmplwi r31, 0
/* 80D5967C  41 82 00 08 */	beq lbl_80D59684
/* 80D59680  4B 2B F4 E4 */	b __ct__10fopAc_ac_cFv
lbl_80D59684:
/* 80D59684  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D59688  60 00 00 08 */	ori r0, r0, 8
/* 80D5968C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D59690:
/* 80D59690  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80D59694  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 80D59698  7C 00 07 34 */	extsh r0, r0
/* 80D5969C  2C 00 00 02 */	cmpwi r0, 2
/* 80D596A0  40 82 00 30 */	bne lbl_80D596D0
/* 80D596A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D596A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D596AC  54 80 86 3E */	rlwinm r0, r4, 0x10, 0x18, 0x1f
/* 80D596B0  7C 04 07 34 */	extsh r4, r0
/* 80D596B4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D596B8  7C 05 07 74 */	extsb r5, r0
/* 80D596BC  4B 2D BC A4 */	b isSwitch__10dSv_info_cCFii
/* 80D596C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D596C4  41 82 00 0C */	beq lbl_80D596D0
/* 80D596C8  38 60 00 05 */	li r3, 5
/* 80D596CC  48 00 00 08 */	b lbl_80D596D4
lbl_80D596D0:
/* 80D596D0  38 60 00 04 */	li r3, 4
lbl_80D596D4:
/* 80D596D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D596D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D596DC  7C 08 03 A6 */	mtlr r0
/* 80D596E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D596E4  4E 80 00 20 */	blr 
