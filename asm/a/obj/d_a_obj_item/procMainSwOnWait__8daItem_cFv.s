lbl_8015C648:
/* 8015C648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C64C  7C 08 02 A6 */	mflr r0
/* 8015C650  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015C658  7C 7F 1B 78 */	mr r31, r3
/* 8015C65C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015C660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015C664  80 9F 09 3C */	lwz r4, 0x93c(r31)
/* 8015C668  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8015C66C  7C 05 07 74 */	extsb r5, r0
/* 8015C670  4B ED 8C F1 */	bl isSwitch__10dSv_info_cCFii
/* 8015C674  2C 03 00 00 */	cmpwi r3, 0
/* 8015C678  41 82 00 7C */	beq lbl_8015C6F4
/* 8015C67C  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015C680  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015C684  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8015C688  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8015C68C  4B F1 A4 21 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8015C690  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015C694  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8015C698  41 82 00 24 */	beq lbl_8015C6BC
/* 8015C69C  C0 5F 07 58 */	lfs f2, 0x758(r31)
/* 8015C6A0  C0 22 9B 80 */	lfs f1, lit_4070(r2)
/* 8015C6A4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8015C6A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8015C6AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015C6B0  40 81 00 0C */	ble lbl_8015C6BC
/* 8015C6B4  38 00 00 01 */	li r0, 1
/* 8015C6B8  98 1F 09 C0 */	stb r0, 0x9c0(r31)
lbl_8015C6BC:
/* 8015C6BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8015C6C0  54 00 27 3E */	srwi r0, r0, 0x1c
/* 8015C6C4  28 00 00 01 */	cmplwi r0, 1
/* 8015C6C8  40 82 00 0C */	bne lbl_8015C6D4
/* 8015C6CC  38 00 00 01 */	li r0, 1
/* 8015C6D0  98 1F 09 C0 */	stb r0, 0x9c0(r31)
lbl_8015C6D4:
/* 8015C6D4  38 7F 09 5C */	addi r3, r31, 0x95c
/* 8015C6D8  4B FE 54 11 */	bl func_80141AE8
/* 8015C6DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015C6E0  40 82 00 14 */	bne lbl_8015C6F4
/* 8015C6E4  7F E3 FB 78 */	mr r3, r31
/* 8015C6E8  4B ED B3 8D */	bl show__12daItemBase_cFv
/* 8015C6EC  7F E3 FB 78 */	mr r3, r31
/* 8015C6F0  4B FF F7 71 */	bl procInitNormal__8daItem_cFv
lbl_8015C6F4:
/* 8015C6F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C6FC  7C 08 03 A6 */	mtlr r0
/* 8015C700  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C704  4E 80 00 20 */	blr 
