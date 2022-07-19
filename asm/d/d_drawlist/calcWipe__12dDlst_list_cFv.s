lbl_80056900:
/* 80056900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056904  7C 08 02 A6 */	mflr r0
/* 80056908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005690C  88 0D 89 50 */	lbz r0, mWipe__12dDlst_list_c(r13)
/* 80056910  28 00 00 00 */	cmplwi r0, 0
/* 80056914  41 82 00 7C */	beq lbl_80056990
/* 80056918  C0 2D 89 54 */	lfs f1, mWipeRate__12dDlst_list_c(r13)
/* 8005691C  C0 0D 89 58 */	lfs f0, mWipeSpeed__12dDlst_list_c(r13)
/* 80056920  EC 21 00 2A */	fadds f1, f1, f0
/* 80056924  D0 2D 89 54 */	stfs f1, mWipeRate__12dDlst_list_c(r13)
/* 80056928  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 8005692C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80056930  40 80 00 0C */	bge lbl_8005693C
/* 80056934  D0 0D 89 54 */	stfs f0, mWipeRate__12dDlst_list_c(r13)
/* 80056938  48 00 00 1C */	b lbl_80056954
lbl_8005693C:
/* 8005693C  C0 02 86 28 */	lfs f0, lit_4270(r2)
/* 80056940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80056944  40 81 00 10 */	ble lbl_80056954
/* 80056948  D0 0D 89 54 */	stfs f0, mWipeRate__12dDlst_list_c(r13)
/* 8005694C  38 00 00 00 */	li r0, 0
/* 80056950  98 0D 89 50 */	stb r0, mWipe__12dDlst_list_c(r13)
lbl_80056954:
/* 80056954  C0 22 86 48 */	lfs f1, lit_4806(r2)
/* 80056958  C0 0D 89 54 */	lfs f0, mWipeRate__12dDlst_list_c(r13)
/* 8005695C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80056960  3C 60 80 42 */	lis r3, mWipeDlst__12dDlst_list_c@ha /* 0x804248F0@ha */
/* 80056964  38 C3 48 F0 */	addi r6, r3, mWipeDlst__12dDlst_list_c@l /* 0x804248F0@l */
/* 80056968  D0 26 00 34 */	stfs f1, 0x34(r6)
/* 8005696C  C0 02 86 DC */	lfs f0, lit_5838(r2)
/* 80056970  EC 00 00 72 */	fmuls f0, f0, f1
/* 80056974  D0 06 00 38 */	stfs f0, 0x38(r6)
/* 80056978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005697C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80056980  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80056984  38 83 02 3C */	addi r4, r3, 0x23c
/* 80056988  38 A3 02 40 */	addi r5, r3, 0x240
/* 8005698C  4B FF FE 09 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_80056990:
/* 80056990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056994  7C 08 03 A6 */	mtlr r0
/* 80056998  38 21 00 10 */	addi r1, r1, 0x10
/* 8005699C  4E 80 00 20 */	blr 
