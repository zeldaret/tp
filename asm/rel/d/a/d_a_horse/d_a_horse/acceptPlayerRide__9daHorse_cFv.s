lbl_8083B578:
/* 8083B578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8083B57C  7C 08 02 A6 */	mflr r0
/* 8083B580  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083B584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8083B588  93 C1 00 08 */	stw r30, 8(r1)
/* 8083B58C  7C 7E 1B 78 */	mr r30, r3
/* 8083B590  80 03 17 44 */	lwz r0, 0x1744(r3)
/* 8083B594  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083B598  40 82 00 50 */	bne lbl_8083B5E8
/* 8083B59C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083B5A0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083B5A4  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 8083B5A8  80 04 05 74 */	lwz r0, 0x574(r4)
/* 8083B5AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8083B5B0  40 82 00 38 */	bne lbl_8083B5E8
/* 8083B5B4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8083B5B8  4B 7D F1 E5 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8083B5BC  2C 03 28 00 */	cmpwi r3, 0x2800
/* 8083B5C0  40 81 00 28 */	ble lbl_8083B5E8
/* 8083B5C4  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 8083B5C8  80 04 05 78 */	lwz r0, 0x578(r4)
/* 8083B5CC  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 8083B5D0  41 82 00 0C */	beq lbl_8083B5DC
/* 8083B5D4  2C 03 58 00 */	cmpwi r3, 0x5800
/* 8083B5D8  40 80 00 10 */	bge lbl_8083B5E8
lbl_8083B5DC:
/* 8083B5DC  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8083B5E0  60 00 00 80 */	ori r0, r0, 0x80
/* 8083B5E4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8083B5E8:
/* 8083B5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8083B5EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8083B5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083B5F4  7C 08 03 A6 */	mtlr r0
/* 8083B5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8083B5FC  4E 80 00 20 */	blr 
