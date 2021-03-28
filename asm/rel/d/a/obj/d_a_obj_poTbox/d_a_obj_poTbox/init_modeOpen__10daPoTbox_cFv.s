lbl_80CB4B10:
/* 80CB4B10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB4B14  7C 08 02 A6 */	mflr r0
/* 80CB4B18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB4B1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CB4B20  7C 7F 1B 78 */	mr r31, r3
/* 80CB4B24  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80CB4B28  28 04 00 00 */	cmplwi r4, 0
/* 80CB4B2C  41 82 00 14 */	beq lbl_80CB4B40
/* 80CB4B30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB4B34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB4B38  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB4B3C  4B 3B F7 14 */	b Release__4cBgSFP9dBgW_Base
lbl_80CB4B40:
/* 80CB4B40  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80CB4B44  28 04 00 00 */	cmplwi r4, 0
/* 80CB4B48  41 82 00 20 */	beq lbl_80CB4B68
/* 80CB4B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB4B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB4B54  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB4B58  7F E5 FB 78 */	mr r5, r31
/* 80CB4B5C  4B 3B FE AC */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CB4B60  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80CB4B64  4B 3C 6E 5C */	b Move__4dBgWFv
lbl_80CB4B68:
/* 80CB4B68  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CB4B6C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB4B70  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CB4B74  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CB4B78  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB4B7C  7F E3 FB 78 */	mr r3, r31
/* 80CB4B80  4B 36 59 F8 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CB4B84  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CB4B88  7C 03 07 74 */	extsb r3, r0
/* 80CB4B8C  4B 37 84 E0 */	b dComIfGp_getReverb__Fi
/* 80CB4B90  7C 67 1B 78 */	mr r7, r3
/* 80CB4B94  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008027D@ha */
/* 80CB4B98  38 03 02 7D */	addi r0, r3, 0x027D /* 0x0008027D@l */
/* 80CB4B9C  90 01 00 08 */	stw r0, 8(r1)
/* 80CB4BA0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CB4BA4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CB4BA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB4BAC  38 81 00 08 */	addi r4, r1, 8
/* 80CB4BB0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CB4BB4  38 C0 00 00 */	li r6, 0
/* 80CB4BB8  3D 00 80 CB */	lis r8, lit_3724@ha
/* 80CB4BBC  C0 28 4F C8 */	lfs f1, lit_3724@l(r8)
/* 80CB4BC0  FC 40 08 90 */	fmr f2, f1
/* 80CB4BC4  3D 00 80 CB */	lis r8, lit_3926@ha
/* 80CB4BC8  C0 68 4F D8 */	lfs f3, lit_3926@l(r8)
/* 80CB4BCC  FC 80 18 90 */	fmr f4, f3
/* 80CB4BD0  39 00 00 00 */	li r8, 0
/* 80CB4BD4  4B 5F 6D B0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB4BD8  38 00 00 01 */	li r0, 1
/* 80CB4BDC  98 1F 06 05 */	stb r0, 0x605(r31)
/* 80CB4BE0  98 1F 06 04 */	stb r0, 0x604(r31)
/* 80CB4BE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CB4BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB4BEC  7C 08 03 A6 */	mtlr r0
/* 80CB4BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB4BF4  4E 80 00 20 */	blr 
