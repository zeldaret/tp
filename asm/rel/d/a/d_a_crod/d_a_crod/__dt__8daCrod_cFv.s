lbl_804A3304:
/* 804A3304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3308  7C 08 02 A6 */	mflr r0
/* 804A330C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A3314  93 C1 00 08 */	stw r30, 8(r1)
/* 804A3318  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A331C  7C 9F 23 78 */	mr r31, r4
/* 804A3320  41 82 01 4C */	beq lbl_804A346C
/* 804A3324  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804A3328  28 00 00 06 */	cmplwi r0, 6
/* 804A332C  40 82 00 20 */	bne lbl_804A334C
/* 804A3330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A3334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A3338  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804A333C  28 03 00 00 */	cmplwi r3, 0
/* 804A3340  41 82 00 14 */	beq lbl_804A3354
/* 804A3344  90 63 17 48 */	stw r3, 0x1748(r3)
/* 804A3348  48 00 00 0C */	b lbl_804A3354
lbl_804A334C:
/* 804A334C  38 7E 07 10 */	addi r3, r30, 0x710
/* 804A3350  4B D0 45 DD */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_804A3354:
/* 804A3354  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 804A3358  41 82 00 7C */	beq lbl_804A33D4
/* 804A335C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 804A3360  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 804A3364  90 7E 06 08 */	stw r3, 0x608(r30)
/* 804A3368  38 03 00 2C */	addi r0, r3, 0x2c
/* 804A336C  90 1E 06 EC */	stw r0, 0x6ec(r30)
/* 804A3370  38 03 00 84 */	addi r0, r3, 0x84
/* 804A3374  90 1E 07 08 */	stw r0, 0x708(r30)
/* 804A3378  34 1E 06 D0 */	addic. r0, r30, 0x6d0
/* 804A337C  41 82 00 4C */	beq lbl_804A33C8
/* 804A3380  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 804A3384  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 804A3388  90 7E 06 EC */	stw r3, 0x6ec(r30)
/* 804A338C  38 03 00 58 */	addi r0, r3, 0x58
/* 804A3390  90 1E 07 08 */	stw r0, 0x708(r30)
/* 804A3394  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 804A3398  38 80 00 00 */	li r4, 0
/* 804A339C  4B DC BC 09 */	bl __dt__8cM3dGCpsFv
/* 804A33A0  34 1E 06 D0 */	addic. r0, r30, 0x6d0
/* 804A33A4  41 82 00 24 */	beq lbl_804A33C8
/* 804A33A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804A33AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804A33B0  90 1E 06 EC */	stw r0, 0x6ec(r30)
/* 804A33B4  34 1E 06 D0 */	addic. r0, r30, 0x6d0
/* 804A33B8  41 82 00 10 */	beq lbl_804A33C8
/* 804A33BC  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha /* 0x804A41FC@ha */
/* 804A33C0  38 03 41 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804A41FC@l */
/* 804A33C4  90 1E 06 E8 */	stw r0, 0x6e8(r30)
lbl_804A33C8:
/* 804A33C8  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 804A33CC  38 80 00 00 */	li r4, 0
/* 804A33D0  4B BE 0D 15 */	bl __dt__12dCcD_GObjInfFv
lbl_804A33D4:
/* 804A33D4  34 1E 05 90 */	addic. r0, r30, 0x590
/* 804A33D8  41 82 00 54 */	beq lbl_804A342C
/* 804A33DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804A33E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804A33E4  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 804A33E8  38 03 00 20 */	addi r0, r3, 0x20
/* 804A33EC  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 804A33F0  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 804A33F4  41 82 00 24 */	beq lbl_804A3418
/* 804A33F8  3C 60 80 4A */	lis r3, __vt__10dCcD_GStts@ha /* 0x804A41F0@ha */
/* 804A33FC  38 03 41 F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x804A41F0@l */
/* 804A3400  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 804A3404  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 804A3408  41 82 00 10 */	beq lbl_804A3418
/* 804A340C  3C 60 80 4A */	lis r3, __vt__10cCcD_GStts@ha /* 0x804A41E4@ha */
/* 804A3410  38 03 41 E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x804A41E4@l */
/* 804A3414  90 1E 05 AC */	stw r0, 0x5ac(r30)
lbl_804A3418:
/* 804A3418  34 1E 05 90 */	addic. r0, r30, 0x590
/* 804A341C  41 82 00 10 */	beq lbl_804A342C
/* 804A3420  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804A3424  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804A3428  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_804A342C:
/* 804A342C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 804A3430  41 82 00 20 */	beq lbl_804A3450
/* 804A3434  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 804A3438  41 82 00 18 */	beq lbl_804A3450
/* 804A343C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 804A3440  41 82 00 10 */	beq lbl_804A3450
/* 804A3444  3C 60 80 4A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804A4208@ha */
/* 804A3448  38 03 42 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804A4208@l */
/* 804A344C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_804A3450:
/* 804A3450  7F C3 F3 78 */	mr r3, r30
/* 804A3454  38 80 00 00 */	li r4, 0
/* 804A3458  4B B7 58 35 */	bl __dt__10fopAc_ac_cFv
/* 804A345C  7F E0 07 35 */	extsh. r0, r31
/* 804A3460  40 81 00 0C */	ble lbl_804A346C
/* 804A3464  7F C3 F3 78 */	mr r3, r30
/* 804A3468  4B E2 B8 D5 */	bl __dl__FPv
lbl_804A346C:
/* 804A346C  7F C3 F3 78 */	mr r3, r30
/* 804A3470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A3474  83 C1 00 08 */	lwz r30, 8(r1)
/* 804A3478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A347C  7C 08 03 A6 */	mtlr r0
/* 804A3480  38 21 00 10 */	addi r1, r1, 0x10
/* 804A3484  4E 80 00 20 */	blr 
