lbl_80252D0C:
/* 80252D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252D10  7C 08 02 A6 */	mflr r0
/* 80252D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252D18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252D1C  7C 7F 1B 78 */	mr r31, r3
/* 80252D20  88 03 01 1C */	lbz r0, 0x11c(r3)
/* 80252D24  28 00 00 00 */	cmplwi r0, 0
/* 80252D28  40 82 00 2C */	bne lbl_80252D54
/* 80252D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80252D30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80252D34  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80252D38  38 83 02 3C */	addi r4, r3, 0x23c
/* 80252D3C  38 A3 02 40 */	addi r5, r3, 0x240
/* 80252D40  38 DF 00 D8 */	addi r6, r31, 0xd8
/* 80252D44  4B E0 3A 51 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 80252D48  38 00 00 01 */	li r0, 1
/* 80252D4C  98 1F 01 1C */	stb r0, 0x11c(r31)
/* 80252D50  48 00 00 98 */	b lbl_80252DE8
lbl_80252D54:
/* 80252D54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80252D58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80252D5C  88 03 5D 44 */	lbz r0, 0x5d44(r3)
/* 80252D60  2C 00 00 00 */	cmpwi r0, 0
/* 80252D64  40 82 00 84 */	bne lbl_80252DE8
/* 80252D68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80252D6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80252D70  C0 22 B4 24 */	lfs f1, lit_3683(r2)
/* 80252D74  FC 40 08 90 */	fmr f2, f1
/* 80252D78  C0 62 B4 54 */	lfs f3, lit_3822(r2)
/* 80252D7C  48 0F 3B 6D */	bl PSMTXTrans
/* 80252D80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80252D84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80252D88  A8 9F 01 14 */	lha r4, 0x114(r31)
/* 80252D8C  4B DB 97 41 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80252D90  C0 22 B4 30 */	lfs f1, lit_3686(r2)
/* 80252D94  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80252D98  EC 41 00 2A */	fadds f2, f1, f0
/* 80252D9C  FC 60 08 90 */	fmr f3, f1
/* 80252DA0  4B DB A0 99 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80252DA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80252DA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80252DAC  A8 1F 01 14 */	lha r0, 0x114(r31)
/* 80252DB0  7C 00 00 D0 */	neg r0, r0
/* 80252DB4  7C 04 07 34 */	extsh r4, r0
/* 80252DB8  4B DB 97 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80252DBC  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 80252DC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80252DC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80252DC8  48 0F 36 E9 */	bl PSMTXCopy
/* 80252DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80252DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80252DD4  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80252DD8  38 83 02 3C */	addi r4, r3, 0x23c
/* 80252DDC  38 A3 02 40 */	addi r5, r3, 0x240
/* 80252DE0  38 DF 00 DC */	addi r6, r31, 0xdc
/* 80252DE4  4B E0 39 B1 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_80252DE8:
/* 80252DE8  38 00 00 00 */	li r0, 0
/* 80252DEC  98 0D 86 64 */	stb r0, mBlureFlag__13mDoGph_gInf_c+0x0(r13)
/* 80252DF0  38 60 00 01 */	li r3, 1
/* 80252DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252DFC  7C 08 03 A6 */	mtlr r0
/* 80252E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80252E04  4E 80 00 20 */	blr 
