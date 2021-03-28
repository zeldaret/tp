lbl_809B6900:
/* 809B6900  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B6904  7C 08 02 A6 */	mflr r0
/* 809B6908  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B690C  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6910  4B 9A B8 CC */	b _savegpr_29
/* 809B6914  7C 7F 1B 78 */	mr r31, r3
/* 809B6918  3C A0 80 9C */	lis r5, m__19daNpc_Fairy_Param_c@ha
/* 809B691C  3B C5 92 E4 */	addi r30, r5, m__19daNpc_Fairy_Param_c@l
/* 809B6920  80 84 00 00 */	lwz r4, 0(r4)
/* 809B6924  38 04 FF F6 */	addi r0, r4, -10
/* 809B6928  28 00 00 28 */	cmplwi r0, 0x28
/* 809B692C  41 81 01 94 */	bgt lbl_809B6AC0
/* 809B6930  3C 80 80 9C */	lis r4, lit_6222@ha
/* 809B6934  38 84 9E 2C */	addi r4, r4, lit_6222@l
/* 809B6938  54 00 10 3A */	slwi r0, r0, 2
/* 809B693C  7C 04 00 2E */	lwzx r0, r4, r0
/* 809B6940  7C 09 03 A6 */	mtctr r0
/* 809B6944  4E 80 04 20 */	bctr 
lbl_809B6948:
/* 809B6948  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809B694C  2C 00 00 03 */	cmpwi r0, 3
/* 809B6950  41 82 00 24 */	beq lbl_809B6974
/* 809B6954  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 809B6958  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809B695C  4B 78 EF 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6960  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 809B6964  38 00 00 03 */	li r0, 3
/* 809B6968  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809B696C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 809B6970  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809B6974:
/* 809B6974  38 00 00 1F */	li r0, 0x1f
/* 809B6978  B0 1F 0F 90 */	sth r0, 0xf90(r31)
/* 809B697C  38 60 00 0A */	li r3, 0xa
/* 809B6980  4B 7F 1E 64 */	b dKy_change_colpat__FUc
/* 809B6984  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B6988  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B698C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B6990  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B6994  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B6998  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B699C  4B 8F 91 F8 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B69A0  48 00 01 20 */	b lbl_809B6AC0
lbl_809B69A4:
/* 809B69A4  38 00 00 00 */	li r0, 0
/* 809B69A8  98 1F 0F F6 */	stb r0, 0xff6(r31)
/* 809B69AC  38 00 00 64 */	li r0, 0x64
/* 809B69B0  B0 1F 0F 90 */	sth r0, 0xf90(r31)
/* 809B69B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B69B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B69BC  80 63 00 00 */	lwz r3, 0(r3)
/* 809B69C0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B69C4  4B 8F 94 54 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 809B69C8  38 60 00 0C */	li r3, 0xc
/* 809B69CC  4B 7F 1E 18 */	b dKy_change_colpat__FUc
/* 809B69D0  48 00 00 F0 */	b lbl_809B6AC0
lbl_809B69D4:
/* 809B69D4  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 809B69D8  38 A0 00 00 */	li r5, 0
/* 809B69DC  4B 79 52 14 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B69E0  48 00 00 E0 */	b lbl_809B6AC0
lbl_809B69E4:
/* 809B69E4  38 00 00 0A */	li r0, 0xa
/* 809B69E8  B0 1F 0F 90 */	sth r0, 0xf90(r31)
/* 809B69EC  48 00 00 D4 */	b lbl_809B6AC0
lbl_809B69F0:
/* 809B69F0  C0 5E 01 AC */	lfs f2, 0x1ac(r30)
/* 809B69F4  D0 41 00 08 */	stfs f2, 8(r1)
/* 809B69F8  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 809B69FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809B6A00  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 809B6A04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B6A08  D0 5F 04 D0 */	stfs f2, 0x4d0(r31)
/* 809B6A0C  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 809B6A10  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809B6A14  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809B6A18  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809B6A1C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809B6A20  2C 00 00 05 */	cmpwi r0, 5
/* 809B6A24  41 82 00 24 */	beq lbl_809B6A48
/* 809B6A28  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 809B6A2C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809B6A30  4B 78 EE 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6A34  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 809B6A38  38 00 00 05 */	li r0, 5
/* 809B6A3C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809B6A40  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 809B6A44  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809B6A48:
/* 809B6A48  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809B6A4C  2C 00 00 01 */	cmpwi r0, 1
/* 809B6A50  41 82 00 24 */	beq lbl_809B6A74
/* 809B6A54  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 809B6A58  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809B6A5C  4B 78 EE 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B6A60  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 809B6A64  38 00 00 01 */	li r0, 1
/* 809B6A68  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809B6A6C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 809B6A70  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809B6A74:
/* 809B6A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B6A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B6A7C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809B6A80  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 809B6A84  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809B6A88  81 8C 00 E8 */	lwz r12, 0xe8(r12)
/* 809B6A8C  7D 89 03 A6 */	mtctr r12
/* 809B6A90  4E 80 04 21 */	bctrl 
/* 809B6A94  7F E3 FB 78 */	mr r3, r31
/* 809B6A98  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 809B6A9C  38 A0 00 00 */	li r5, 0
/* 809B6AA0  4B 79 51 50 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B6AA4  48 00 00 1C */	b lbl_809B6AC0
lbl_809B6AA8:
/* 809B6AA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B6AAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B6AB0  80 63 00 00 */	lwz r3, 0(r3)
/* 809B6AB4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B6AB8  38 80 00 2D */	li r4, 0x2d
/* 809B6ABC  4B 8F 94 20 */	b bgmStreamStop__8Z2SeqMgrFUl
lbl_809B6AC0:
/* 809B6AC0  38 60 00 00 */	li r3, 0
/* 809B6AC4  39 61 00 30 */	addi r11, r1, 0x30
/* 809B6AC8  4B 9A B7 60 */	b _restgpr_29
/* 809B6ACC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B6AD0  7C 08 03 A6 */	mtlr r0
/* 809B6AD4  38 21 00 30 */	addi r1, r1, 0x30
/* 809B6AD8  4E 80 00 20 */	blr 
