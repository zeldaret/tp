lbl_80CF3B40:
/* 80CF3B40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF3B44  7C 08 02 A6 */	mflr r0
/* 80CF3B48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF3B4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF3B50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CF3B54  7C 7F 1B 78 */	mr r31, r3
/* 80CF3B58  83 C3 05 C0 */	lwz r30, 0x5c0(r3)
/* 80CF3B5C  4B FF F9 89 */	bl search_ball__14daObjSwBallA_cFv
/* 80CF3B60  7F E3 FB 78 */	mr r3, r31
/* 80CF3B64  48 00 02 21 */	bl PutCrrPos__14daObjSwBallA_cFv
/* 80CF3B68  88 1F 05 AE */	lbz r0, 0x5ae(r31)
/* 80CF3B6C  2C 00 00 01 */	cmpwi r0, 1
/* 80CF3B70  41 82 00 A4 */	beq lbl_80CF3C14
/* 80CF3B74  40 80 01 F4 */	bge lbl_80CF3D68
/* 80CF3B78  2C 00 00 00 */	cmpwi r0, 0
/* 80CF3B7C  40 80 00 0C */	bge lbl_80CF3B88
/* 80CF3B80  48 00 01 E8 */	b lbl_80CF3D68
/* 80CF3B84  48 00 01 E4 */	b lbl_80CF3D68
lbl_80CF3B88:
/* 80CF3B88  3C 1E 00 01 */	addis r0, r30, 1
/* 80CF3B8C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF3B90  40 82 01 D8 */	bne lbl_80CF3D68
/* 80CF3B94  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80CF3B98  3C 03 00 01 */	addis r0, r3, 1
/* 80CF3B9C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF3BA0  41 82 01 C8 */	beq lbl_80CF3D68
/* 80CF3BA4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF3BA8  7C 03 07 74 */	extsb r3, r0
/* 80CF3BAC  4B 33 94 C0 */	b dComIfGp_getReverb__Fi
/* 80CF3BB0  7C 67 1B 78 */	mr r7, r3
/* 80CF3BB4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020F@ha */
/* 80CF3BB8  38 03 02 0F */	addi r0, r3, 0x020F /* 0x0008020F@l */
/* 80CF3BBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CF3BC0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF3BC4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF3BC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF3BCC  38 81 00 10 */	addi r4, r1, 0x10
/* 80CF3BD0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF3BD4  38 C0 00 00 */	li r6, 0
/* 80CF3BD8  3D 00 80 CF */	lis r8, lit_3918@ha
/* 80CF3BDC  C0 28 44 04 */	lfs f1, lit_3918@l(r8)
/* 80CF3BE0  FC 40 08 90 */	fmr f2, f1
/* 80CF3BE4  3D 00 80 CF */	lis r8, lit_4032@ha
/* 80CF3BE8  C0 68 44 08 */	lfs f3, lit_4032@l(r8)
/* 80CF3BEC  FC 80 18 90 */	fmr f4, f3
/* 80CF3BF0  39 00 00 00 */	li r8, 0
/* 80CF3BF4  4B 5B 7D 90 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF3BF8  3C 60 80 CF */	lis r3, lit_3918@ha
/* 80CF3BFC  C0 03 44 04 */	lfs f0, lit_3918@l(r3)
/* 80CF3C00  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF3C04  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF3C08  38 00 00 01 */	li r0, 1
/* 80CF3C0C  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 80CF3C10  48 00 01 58 */	b lbl_80CF3D68
lbl_80CF3C14:
/* 80CF3C14  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80CF3C18  3C 03 00 01 */	addis r0, r3, 1
/* 80CF3C1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF3C20  40 82 00 90 */	bne lbl_80CF3CB0
/* 80CF3C24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF3C28  7C 03 07 74 */	extsb r3, r0
/* 80CF3C2C  4B 33 94 40 */	b dComIfGp_getReverb__Fi
/* 80CF3C30  7C 67 1B 78 */	mr r7, r3
/* 80CF3C34  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080211@ha */
/* 80CF3C38  38 03 02 11 */	addi r0, r3, 0x0211 /* 0x00080211@l */
/* 80CF3C3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF3C40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF3C44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF3C48  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF3C4C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF3C50  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF3C54  38 C0 00 00 */	li r6, 0
/* 80CF3C58  3D 00 80 CF */	lis r8, lit_3918@ha
/* 80CF3C5C  C0 28 44 04 */	lfs f1, lit_3918@l(r8)
/* 80CF3C60  FC 40 08 90 */	fmr f2, f1
/* 80CF3C64  3D 00 80 CF */	lis r8, lit_4032@ha
/* 80CF3C68  C0 68 44 08 */	lfs f3, lit_4032@l(r8)
/* 80CF3C6C  FC 80 18 90 */	fmr f4, f3
/* 80CF3C70  39 00 00 00 */	li r8, 0
/* 80CF3C74  4B 5B 7D 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF3C78  3C 60 80 CF */	lis r3, lit_4032@ha
/* 80CF3C7C  C0 03 44 08 */	lfs f0, lit_4032@l(r3)
/* 80CF3C80  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF3C84  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF3C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF3C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF3C90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF3C94  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF3C98  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF3C9C  7C 05 07 74 */	extsb r5, r0
/* 80CF3CA0  4B 34 16 10 */	b offSwitch__10dSv_info_cFii
/* 80CF3CA4  38 00 00 00 */	li r0, 0
/* 80CF3CA8  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 80CF3CAC  48 00 00 BC */	b lbl_80CF3D68
lbl_80CF3CB0:
/* 80CF3CB0  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF3CB4  4B 31 97 74 */	b play__14mDoExt_baseAnmFv
/* 80CF3CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF3CBC  41 82 00 58 */	beq lbl_80CF3D14
/* 80CF3CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF3CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF3CC8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF3CCC  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF3CD0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF3CD4  7C 05 07 74 */	extsb r5, r0
/* 80CF3CD8  4B 34 15 28 */	b onSwitch__10dSv_info_cFii
/* 80CF3CDC  A0 1F 05 C6 */	lhz r0, 0x5c6(r31)
/* 80CF3CE0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CF3CE4  28 04 00 FF */	cmplwi r4, 0xff
/* 80CF3CE8  41 82 00 14 */	beq lbl_80CF3CFC
/* 80CF3CEC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CF3CF0  38 A0 00 FF */	li r5, 0xff
/* 80CF3CF4  38 C0 00 01 */	li r6, 1
/* 80CF3CF8  4B 35 4C 48 */	b orderEvent__17dEvLib_callback_cFiii
lbl_80CF3CFC:
/* 80CF3CFC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF3D00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CF3D04  28 00 00 01 */	cmplwi r0, 1
/* 80CF3D08  40 82 00 0C */	bne lbl_80CF3D14
/* 80CF3D0C  38 00 00 02 */	li r0, 2
/* 80CF3D10  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_80CF3D14:
/* 80CF3D14  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF3D18  7C 03 07 74 */	extsb r3, r0
/* 80CF3D1C  4B 33 93 50 */	b dComIfGp_getReverb__Fi
/* 80CF3D20  7C 67 1B 78 */	mr r7, r3
/* 80CF3D24  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080210@ha */
/* 80CF3D28  38 03 02 10 */	addi r0, r3, 0x0210 /* 0x00080210@l */
/* 80CF3D2C  90 01 00 08 */	stw r0, 8(r1)
/* 80CF3D30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF3D34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF3D38  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF3D3C  38 81 00 08 */	addi r4, r1, 8
/* 80CF3D40  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF3D44  38 C0 00 00 */	li r6, 0
/* 80CF3D48  3D 00 80 CF */	lis r8, lit_3918@ha
/* 80CF3D4C  C0 28 44 04 */	lfs f1, lit_3918@l(r8)
/* 80CF3D50  FC 40 08 90 */	fmr f2, f1
/* 80CF3D54  3D 00 80 CF */	lis r8, lit_4032@ha
/* 80CF3D58  C0 68 44 08 */	lfs f3, lit_4032@l(r8)
/* 80CF3D5C  FC 80 18 90 */	fmr f4, f3
/* 80CF3D60  39 00 00 00 */	li r8, 0
/* 80CF3D64  4B 5B 87 A8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CF3D68:
/* 80CF3D68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF3D6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CF3D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF3D74  7C 08 03 A6 */	mtlr r0
/* 80CF3D78  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF3D7C  4E 80 00 20 */	blr 
