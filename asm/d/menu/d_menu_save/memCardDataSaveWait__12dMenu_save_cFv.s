lbl_801F28E4:
/* 801F28E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F28E8  7C 08 02 A6 */	mflr r0
/* 801F28EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F28F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F28F4  7C 7F 1B 78 */	mr r31, r3
/* 801F28F8  38 00 00 AD */	li r0, 0xad
/* 801F28FC  90 01 00 08 */	stw r0, 8(r1)
/* 801F2900  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F2904  38 81 00 08 */	addi r4, r1, 8
/* 801F2908  38 A0 00 00 */	li r5, 0
/* 801F290C  38 C0 00 00 */	li r6, 0
/* 801F2910  38 E0 00 00 */	li r7, 0
/* 801F2914  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F2918  FC 40 08 90 */	fmr f2, f1
/* 801F291C  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F2920  FC 80 18 90 */	fmr f4, f3
/* 801F2924  39 00 00 00 */	li r8, 0
/* 801F2928  48 0B 9B E5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F292C  88 7F 01 BD */	lbz r3, 0x1bd(r31)
/* 801F2930  28 03 00 00 */	cmplwi r3, 0
/* 801F2934  41 82 00 0C */	beq lbl_801F2940
/* 801F2938  38 03 FF FF */	addi r0, r3, -1
/* 801F293C  98 1F 01 BD */	stb r0, 0x1bd(r31)
lbl_801F2940:
/* 801F2940  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801F2944  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801F2948  4B E2 43 99 */	bl SaveSync__15mDoMemCd_Ctrl_cFv
/* 801F294C  90 7F 21 98 */	stw r3, 0x2198(r31)
/* 801F2950  80 9F 21 98 */	lwz r4, 0x2198(r31)
/* 801F2954  2C 04 00 00 */	cmpwi r4, 0
/* 801F2958  41 82 00 20 */	beq lbl_801F2978
/* 801F295C  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha /* 0x80397960@ha */
/* 801F2960  38 63 79 60 */	addi r3, r3, d_menu_d_menu_save__stringBase0@l /* 0x80397960@l */
/* 801F2964  38 63 00 A6 */	addi r3, r3, 0xa6
/* 801F2968  4C C6 31 82 */	crclr 6
/* 801F296C  48 17 3F 11 */	bl printf
/* 801F2970  38 00 00 20 */	li r0, 0x20
/* 801F2974  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2978:
/* 801F2978  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F297C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F2980  7C 08 03 A6 */	mtlr r0
/* 801F2984  38 21 00 20 */	addi r1, r1, 0x20
/* 801F2988  4E 80 00 20 */	blr 
