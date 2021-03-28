lbl_80485A50:
/* 80485A50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80485A54  7C 08 02 A6 */	mflr r0
/* 80485A58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80485A5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80485A60  4B ED C7 7C */	b _savegpr_29
/* 80485A64  7C 7D 1B 78 */	mr r29, r3
/* 80485A68  3C 80 80 48 */	lis r4, lit_3758@ha
/* 80485A6C  3B E4 5C 98 */	addi r31, r4, lit_3758@l
/* 80485A70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80485A74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80485A78  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80485A7C  4B FF FD BD */	bl checkWork__8daScex_cFv
/* 80485A80  2C 03 00 00 */	cmpwi r3, 0
/* 80485A84  41 82 01 14 */	beq lbl_80485B98
/* 80485A88  38 7D 05 68 */	addi r3, r29, 0x568
/* 80485A8C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80485A90  38 A1 00 0C */	addi r5, r1, 0xc
/* 80485A94  4B EC 12 D8 */	b PSMTXMultVec
/* 80485A98  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80485A9C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80485AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80485AA4  4C 41 13 82 */	cror 2, 1, 2
/* 80485AA8  40 82 00 F0 */	bne lbl_80485B98
/* 80485AAC  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80485AB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80485AB4  4C 40 13 82 */	cror 2, 0, 2
/* 80485AB8  40 82 00 E0 */	bne lbl_80485B98
/* 80485ABC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80485AC0  FC 00 02 10 */	fabs f0, f0
/* 80485AC4  FC 20 00 18 */	frsp f1, f0
/* 80485AC8  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80485ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80485AD0  4C 40 13 82 */	cror 2, 0, 2
/* 80485AD4  40 82 00 C4 */	bne lbl_80485B98
/* 80485AD8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80485ADC  FC 00 02 10 */	fabs f0, f0
/* 80485AE0  FC 20 00 18 */	frsp f1, f0
/* 80485AE4  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80485AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80485AEC  4C 40 13 82 */	cror 2, 0, 2
/* 80485AF0  40 82 00 A8 */	bne lbl_80485B98
/* 80485AF4  80 BD 00 B0 */	lwz r5, 0xb0(r29)
/* 80485AF8  54 A0 C6 3E */	rlwinm r0, r5, 0x18, 0x18, 0x1f
/* 80485AFC  2C 00 00 02 */	cmpwi r0, 2
/* 80485B00  41 82 00 54 */	beq lbl_80485B54
/* 80485B04  40 80 00 14 */	bge lbl_80485B18
/* 80485B08  2C 00 00 00 */	cmpwi r0, 0
/* 80485B0C  41 82 00 48 */	beq lbl_80485B54
/* 80485B10  40 80 00 20 */	bge lbl_80485B30
/* 80485B14  48 00 00 84 */	b lbl_80485B98
lbl_80485B18:
/* 80485B18  2C 00 00 FF */	cmpwi r0, 0xff
/* 80485B1C  41 82 00 14 */	beq lbl_80485B30
/* 80485B20  40 80 00 78 */	bge lbl_80485B98
/* 80485B24  2C 00 00 05 */	cmpwi r0, 5
/* 80485B28  40 80 00 70 */	bge lbl_80485B98
/* 80485B2C  48 00 00 4C */	b lbl_80485B78
lbl_80485B30:
/* 80485B30  7F C3 F3 78 */	mr r3, r30
/* 80485B34  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 80485B38  54 A5 86 3E */	rlwinm r5, r5, 0x10, 0x18, 0x1f
/* 80485B3C  7F A6 EB 78 */	mr r6, r29
/* 80485B40  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80485B44  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 80485B48  7D 89 03 A6 */	mtctr r12
/* 80485B4C  4E 80 04 21 */	bctrl 
/* 80485B50  48 00 00 48 */	b lbl_80485B98
lbl_80485B54:
/* 80485B54  7F C3 F3 78 */	mr r3, r30
/* 80485B58  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 80485B5C  54 A5 86 3E */	rlwinm r5, r5, 0x10, 0x18, 0x1f
/* 80485B60  7F A6 EB 78 */	mr r6, r29
/* 80485B64  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80485B68  81 8C 01 80 */	lwz r12, 0x180(r12)
/* 80485B6C  7D 89 03 A6 */	mtctr r12
/* 80485B70  4E 80 04 21 */	bctrl 
/* 80485B74  48 00 00 24 */	b lbl_80485B98
lbl_80485B78:
/* 80485B78  7F C3 F3 78 */	mr r3, r30
/* 80485B7C  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 80485B80  54 A5 86 3E */	rlwinm r5, r5, 0x10, 0x18, 0x1f
/* 80485B84  7F A6 EB 78 */	mr r6, r29
/* 80485B88  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80485B8C  81 8C 01 80 */	lwz r12, 0x180(r12)
/* 80485B90  7D 89 03 A6 */	mtctr r12
/* 80485B94  4E 80 04 21 */	bctrl 
lbl_80485B98:
/* 80485B98  88 1D 05 99 */	lbz r0, 0x599(r29)
/* 80485B9C  28 00 00 00 */	cmplwi r0, 0
/* 80485BA0  41 82 00 D4 */	beq lbl_80485C74
/* 80485BA4  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80485BA8  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80485BAC  41 82 00 C8 */	beq lbl_80485C74
/* 80485BB0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80485BB4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80485BB8  28 00 00 03 */	cmplwi r0, 3
/* 80485BBC  41 82 00 0C */	beq lbl_80485BC8
/* 80485BC0  28 00 00 04 */	cmplwi r0, 4
/* 80485BC4  40 82 00 70 */	bne lbl_80485C34
lbl_80485BC8:
/* 80485BC8  88 1D 05 98 */	lbz r0, 0x598(r29)
/* 80485BCC  28 00 00 00 */	cmplwi r0, 0
/* 80485BD0  40 82 00 64 */	bne lbl_80485C34
/* 80485BD4  38 00 00 33 */	li r0, 0x33
/* 80485BD8  90 01 00 08 */	stw r0, 8(r1)
/* 80485BDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80485BE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80485BE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80485BE8  38 81 00 08 */	addi r4, r1, 8
/* 80485BEC  38 A0 00 00 */	li r5, 0
/* 80485BF0  38 C0 00 00 */	li r6, 0
/* 80485BF4  38 E0 00 00 */	li r7, 0
/* 80485BF8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80485BFC  FC 40 08 90 */	fmr f2, f1
/* 80485C00  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80485C04  FC 80 18 90 */	fmr f4, f3
/* 80485C08  39 00 00 00 */	li r8, 0
/* 80485C0C  4B E2 5D 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80485C10  7F C3 F3 78 */	mr r3, r30
/* 80485C14  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010041@ha */
/* 80485C18  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x00010041@l */
/* 80485C1C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80485C20  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80485C24  7D 89 03 A6 */	mtctr r12
/* 80485C28  4E 80 04 21 */	bctrl 
/* 80485C2C  38 00 00 01 */	li r0, 1
/* 80485C30  98 1D 05 98 */	stb r0, 0x598(r29)
lbl_80485C34:
/* 80485C34  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 80485C38  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80485C3C  28 00 00 FF */	cmplwi r0, 0xff
/* 80485C40  41 82 00 14 */	beq lbl_80485C54
/* 80485C44  28 00 00 00 */	cmplwi r0, 0
/* 80485C48  41 82 00 0C */	beq lbl_80485C54
/* 80485C4C  28 00 00 03 */	cmplwi r0, 3
/* 80485C50  40 82 00 24 */	bne lbl_80485C74
lbl_80485C54:
/* 80485C54  54 64 46 3E */	srwi r4, r3, 0x18
/* 80485C58  28 04 00 FF */	cmplwi r4, 0xff
/* 80485C5C  41 82 00 18 */	beq lbl_80485C74
/* 80485C60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80485C64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80485C68  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80485C6C  7C 05 07 74 */	extsb r5, r0
/* 80485C70  4B BA F5 90 */	b onSwitch__10dSv_info_cFii
lbl_80485C74:
/* 80485C74  38 60 00 01 */	li r3, 1
/* 80485C78  39 61 00 30 */	addi r11, r1, 0x30
/* 80485C7C  4B ED C5 AC */	b _restgpr_29
/* 80485C80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80485C84  7C 08 03 A6 */	mtlr r0
/* 80485C88  38 21 00 30 */	addi r1, r1, 0x30
/* 80485C8C  4E 80 00 20 */	blr 
