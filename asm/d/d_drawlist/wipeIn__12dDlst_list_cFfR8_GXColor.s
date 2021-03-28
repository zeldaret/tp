lbl_8005681C:
/* 8005681C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056820  7C 08 02 A6 */	mflr r0
/* 80056824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056828  38 00 00 01 */	li r0, 1
/* 8005682C  98 0D 89 50 */	stb r0, data_80450ED0(r13)
/* 80056830  D0 2D 89 58 */	stfs f1, mWipeSpeed__12dDlst_list_c(r13)
/* 80056834  88 03 00 00 */	lbz r0, 0(r3)
/* 80056838  98 0D 80 DC */	stb r0, mWipeColor__12dDlst_list_c(r13)
/* 8005683C  88 03 00 01 */	lbz r0, 1(r3)
/* 80056840  38 8D 80 DC */	la r4, mWipeColor__12dDlst_list_c(r13) /* 8045065C-_SDA_BASE_ */
/* 80056844  98 04 00 01 */	stb r0, 1(r4)
/* 80056848  88 03 00 02 */	lbz r0, 2(r3)
/* 8005684C  98 04 00 02 */	stb r0, 2(r4)
/* 80056850  88 03 00 03 */	lbz r0, 3(r3)
/* 80056854  98 04 00 03 */	stb r0, 3(r4)
/* 80056858  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 8005685C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80056860  4C 41 13 82 */	cror 2, 1, 2
/* 80056864  40 82 00 08 */	bne lbl_8005686C
/* 80056868  48 00 00 08 */	b lbl_80056870
lbl_8005686C:
/* 8005686C  C0 02 86 28 */	lfs f0, lit_4270(r2)
lbl_80056870:
/* 80056870  D0 0D 89 54 */	stfs f0, mWipeRate__12dDlst_list_c(r13)
/* 80056874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80056878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005687C  80 A3 5D 30 */	lwz r5, 0x5d30(r3)
/* 80056880  3C 60 54 49 */	lis r3, 0x5449 /* 0x54494D47@ha */
/* 80056884  38 63 4D 47 */	addi r3, r3, 0x4D47 /* 0x54494D47@l */
/* 80056888  3C 80 80 38 */	lis r4, d_d_drawlist__stringBase0@ha
/* 8005688C  38 84 A1 B0 */	addi r4, r4, d_d_drawlist__stringBase0@l
/* 80056890  48 27 F2 A9 */	bl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
/* 80056894  7C 64 1B 78 */	mr r4, r3
/* 80056898  3C 60 80 42 */	lis r3, mWipeDlst__12dDlst_list_c@ha
/* 8005689C  38 63 48 F0 */	addi r3, r3, mWipeDlst__12dDlst_list_c@l
/* 800568A0  C0 22 86 10 */	lfs f1, lit_4074(r2)
/* 800568A4  FC 40 08 90 */	fmr f2, f1
/* 800568A8  C0 62 86 D0 */	lfs f3, lit_5809(r2)
/* 800568AC  C0 82 86 D4 */	lfs f4, lit_5810(r2)
/* 800568B0  38 A0 00 00 */	li r5, 0
/* 800568B4  38 C0 00 01 */	li r6, 1
/* 800568B8  38 E0 00 01 */	li r7, 1
/* 800568BC  C0 A2 86 48 */	lfs f5, lit_4806(r2)
/* 800568C0  C0 C2 86 D8 */	lfs f6, lit_5811(r2)
/* 800568C4  4B FF C2 89 */	bl init__12dDlst_2DT2_cFP7ResTIMGffffUcUcUcff
/* 800568C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800568CC  7C 08 03 A6 */	mtlr r0
/* 800568D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800568D4  4E 80 00 20 */	blr 
