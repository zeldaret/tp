lbl_806B28E4:
/* 806B28E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806B28E8  7C 08 02 A6 */	mflr r0
/* 806B28EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806B28F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806B28F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806B28F8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806B28FC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806B2900  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806B2904  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806B2908  7C 9F 23 78 */	mr r31, r4
/* 806B290C  3C 60 80 6B */	lis r3, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B2910  3B C3 5C D4 */	addi r30, r3, lit_3792@l /* 0x806B5CD4@l */
/* 806B2914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B2918  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B291C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 806B2920  7C 00 07 74 */	extsb r0, r0
/* 806B2924  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806B2928  7C 63 02 14 */	add r3, r3, r0
/* 806B292C  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 806B2930  4B 96 B9 D9 */	bl fopCamM_GetParam__FP12camera_class
/* 806B2934  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B2938  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B293C  1C 03 00 38 */	mulli r0, r3, 0x38
/* 806B2940  7C 64 02 14 */	add r3, r4, r0
/* 806B2944  88 03 5D 78 */	lbz r0, 0x5d78(r3)
/* 806B2948  7C 00 07 74 */	extsb r0, r0
/* 806B294C  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 806B2950  7C 64 02 14 */	add r3, r4, r0
/* 806B2954  38 63 5D 60 */	addi r3, r3, 0x5d60
/* 806B2958  C3 E3 00 08 */	lfs f31, 8(r3)
/* 806B295C  C3 C3 00 0C */	lfs f30, 0xc(r3)
/* 806B2960  7F E3 FB 78 */	mr r3, r31
/* 806B2964  38 81 00 08 */	addi r4, r1, 8
/* 806B2968  4B 96 29 A9 */	bl mDoLib_project__FP3VecP3Vec
/* 806B296C  C0 21 00 08 */	lfs f1, 8(r1)
/* 806B2970  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B2974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B2978  40 81 00 30 */	ble lbl_806B29A8
/* 806B297C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 806B2980  40 80 00 28 */	bge lbl_806B29A8
/* 806B2984  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 806B2988  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 806B298C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B2990  40 81 00 18 */	ble lbl_806B29A8
/* 806B2994  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 806B2998  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 806B299C  40 80 00 0C */	bge lbl_806B29A8
/* 806B29A0  38 60 00 01 */	li r3, 1
/* 806B29A4  48 00 00 08 */	b lbl_806B29AC
lbl_806B29A8:
/* 806B29A8  38 60 00 00 */	li r3, 0
lbl_806B29AC:
/* 806B29AC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806B29B0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806B29B4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806B29B8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806B29BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806B29C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806B29C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806B29C8  7C 08 03 A6 */	mtlr r0
/* 806B29CC  38 21 00 40 */	addi r1, r1, 0x40
/* 806B29D0  4E 80 00 20 */	blr 
