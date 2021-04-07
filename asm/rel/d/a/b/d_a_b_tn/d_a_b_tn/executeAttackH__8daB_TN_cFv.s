lbl_806255F0:
/* 806255F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806255F4  7C 08 02 A6 */	mflr r0
/* 806255F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 806255FC  39 61 00 50 */	addi r11, r1, 0x50
/* 80625600  4B D3 CB D9 */	bl _savegpr_28
/* 80625604  7C 7D 1B 78 */	mr r29, r3
/* 80625608  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 8062560C  3B E4 E6 34 */	addi r31, r4, lit_3920@l /* 0x8062E634@l */
/* 80625610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80625614  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80625618  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8062561C  4B 9F 50 F5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80625620  7C 7E 1B 78 */	mr r30, r3
/* 80625624  7F A3 EB 78 */	mr r3, r29
/* 80625628  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8062562C  4B 9F 51 B5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80625630  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 80625634  2C 00 00 01 */	cmpwi r0, 1
/* 80625638  41 82 00 F4 */	beq lbl_8062572C
/* 8062563C  40 80 00 10 */	bge lbl_8062564C
/* 80625640  2C 00 00 00 */	cmpwi r0, 0
/* 80625644  40 80 00 14 */	bge lbl_80625658
/* 80625648  48 00 06 14 */	b lbl_80625C5C
lbl_8062564C:
/* 8062564C  2C 00 00 03 */	cmpwi r0, 3
/* 80625650  40 80 06 0C */	bge lbl_80625C5C
/* 80625654  48 00 03 38 */	b lbl_8062598C
lbl_80625658:
/* 80625658  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062565C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80625660  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80625664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80625668  40 80 00 28 */	bge lbl_80625690
/* 8062566C  38 00 00 01 */	li r0, 1
/* 80625670  90 1D 06 F4 */	stw r0, 0x6f4(r29)
/* 80625674  7F A3 EB 78 */	mr r3, r29
/* 80625678  38 80 00 05 */	li r4, 5
/* 8062567C  38 A0 00 00 */	li r5, 0
/* 80625680  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80625684  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80625688  4B FF B2 41 */	bl setBck__8daB_TN_cFiUcff
/* 8062568C  48 00 00 94 */	b lbl_80625720
lbl_80625690:
/* 80625690  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80625694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80625698  40 80 00 28 */	bge lbl_806256C0
/* 8062569C  38 00 00 02 */	li r0, 2
/* 806256A0  90 1D 06 F4 */	stw r0, 0x6f4(r29)
/* 806256A4  7F A3 EB 78 */	mr r3, r29
/* 806256A8  38 80 00 06 */	li r4, 6
/* 806256AC  38 A0 00 00 */	li r5, 0
/* 806256B0  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 806256B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806256B8  4B FF B2 11 */	bl setBck__8daB_TN_cFiUcff
/* 806256BC  48 00 00 64 */	b lbl_80625720
lbl_806256C0:
/* 806256C0  4B C4 21 AD */	bl cM_rnd__Fv
/* 806256C4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806256C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806256CC  40 80 00 28 */	bge lbl_806256F4
/* 806256D0  38 00 00 01 */	li r0, 1
/* 806256D4  90 1D 06 F4 */	stw r0, 0x6f4(r29)
/* 806256D8  7F A3 EB 78 */	mr r3, r29
/* 806256DC  38 80 00 05 */	li r4, 5
/* 806256E0  38 A0 00 00 */	li r5, 0
/* 806256E4  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 806256E8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806256EC  4B FF B1 DD */	bl setBck__8daB_TN_cFiUcff
/* 806256F0  48 00 00 30 */	b lbl_80625720
lbl_806256F4:
/* 806256F4  38 00 00 02 */	li r0, 2
/* 806256F8  90 1D 06 F4 */	stw r0, 0x6f4(r29)
/* 806256FC  7F A3 EB 78 */	mr r3, r29
/* 80625700  38 80 00 06 */	li r4, 6
/* 80625704  38 A0 00 00 */	li r5, 0
/* 80625708  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062570C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80625710  4B FF B1 B9 */	bl setBck__8daB_TN_cFiUcff
/* 80625714  7F A3 EB 78 */	mr r3, r29
/* 80625718  38 80 00 01 */	li r4, 1
/* 8062571C  4B FF D4 C5 */	bl setAttackBlurEffect__8daB_TN_cFi
lbl_80625720:
/* 80625720  38 00 00 00 */	li r0, 0
/* 80625724  98 1D 0A 91 */	stb r0, 0xa91(r29)
/* 80625728  48 00 05 34 */	b lbl_80625C5C
lbl_8062572C:
/* 8062572C  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625730  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80625734  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80625738  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062573C  4C 41 13 82 */	cror 2, 1, 2
/* 80625740  40 82 00 68 */	bne lbl_806257A8
/* 80625744  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80625748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062574C  40 80 00 5C */	bge lbl_806257A8
/* 80625750  38 00 00 03 */	li r0, 3
/* 80625754  98 1D 0A 90 */	stb r0, 0xa90(r29)
/* 80625758  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062575C  80 63 00 04 */	lwz r3, 4(r3)
/* 80625760  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80625764  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80625768  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8062576C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80625770  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80625774  4B D2 0D 3D */	bl PSMTXCopy
/* 80625778  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8062577C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80625780  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80625784  4B 9E 76 19 */	bl transM__14mDoMtx_stack_cFfff
/* 80625788  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062578C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80625790  38 80 80 00 */	li r4, -32768
/* 80625794  4B 9E 6C A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80625798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062579C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806257A0  38 9D 07 2C */	addi r4, r29, 0x72c
/* 806257A4  4B D2 0D 0D */	bl PSMTXCopy
lbl_806257A8:
/* 806257A8  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806257AC  38 63 00 0C */	addi r3, r3, 0xc
/* 806257B0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806257B4  4B D0 2C 79 */	bl checkPass__12J3DFrameCtrlFf
/* 806257B8  2C 03 00 00 */	cmpwi r3, 0
/* 806257BC  41 82 00 58 */	beq lbl_80625814
/* 806257C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A9@ha */
/* 806257C4  38 03 03 A9 */	addi r0, r3, 0x03A9 /* 0x000703A9@l */
/* 806257C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806257CC  38 7D 06 4C */	addi r3, r29, 0x64c
/* 806257D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806257D4  38 A0 00 00 */	li r5, 0
/* 806257D8  38 C0 FF FF */	li r6, -1
/* 806257DC  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 806257E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806257E4  7D 89 03 A6 */	mtctr r12
/* 806257E8  4E 80 04 21 */	bctrl 
/* 806257EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039A@ha */
/* 806257F0  38 03 03 9A */	addi r0, r3, 0x039A /* 0x0007039A@l */
/* 806257F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 806257F8  38 7D 06 4C */	addi r3, r29, 0x64c
/* 806257FC  38 81 00 28 */	addi r4, r1, 0x28
/* 80625800  38 A0 FF FF */	li r5, -1
/* 80625804  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80625808  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062580C  7D 89 03 A6 */	mtctr r12
/* 80625810  4E 80 04 21 */	bctrl 
lbl_80625814:
/* 80625814  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625818  38 63 00 0C */	addi r3, r3, 0xc
/* 8062581C  C0 3F 01 9C */	lfs f1, 0x19c(r31)
/* 80625820  4B D0 2C 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80625824  2C 03 00 00 */	cmpwi r3, 0
/* 80625828  41 82 00 30 */	beq lbl_80625858
/* 8062582C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A8@ha */
/* 80625830  38 03 03 A8 */	addi r0, r3, 0x03A8 /* 0x000703A8@l */
/* 80625834  90 01 00 24 */	stw r0, 0x24(r1)
/* 80625838  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062583C  38 81 00 24 */	addi r4, r1, 0x24
/* 80625840  38 A0 00 00 */	li r5, 0
/* 80625844  38 C0 FF FF */	li r6, -1
/* 80625848  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062584C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625850  7D 89 03 A6 */	mtctr r12
/* 80625854  4E 80 04 21 */	bctrl 
lbl_80625858:
/* 80625858  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062585C  38 63 00 0C */	addi r3, r3, 0xc
/* 80625860  C0 3F 01 A8 */	lfs f1, 0x1a8(r31)
/* 80625864  4B D0 2B C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80625868  2C 03 00 00 */	cmpwi r3, 0
/* 8062586C  41 82 00 30 */	beq lbl_8062589C
/* 80625870  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80625874  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80625878  90 01 00 20 */	stw r0, 0x20(r1)
/* 8062587C  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80625880  38 81 00 20 */	addi r4, r1, 0x20
/* 80625884  38 A0 00 00 */	li r5, 0
/* 80625888  38 C0 FF FF */	li r6, -1
/* 8062588C  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80625890  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625894  7D 89 03 A6 */	mtctr r12
/* 80625898  4E 80 04 21 */	bctrl 
lbl_8062589C:
/* 8062589C  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806258A0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806258A4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806258A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806258AC  4C 40 13 82 */	cror 2, 0, 2
/* 806258B0  40 82 00 1C */	bne lbl_806258CC
/* 806258B4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 806258B8  7F C4 F3 78 */	mr r4, r30
/* 806258BC  38 A0 00 08 */	li r5, 8
/* 806258C0  38 C0 04 00 */	li r6, 0x400
/* 806258C4  38 E0 00 10 */	li r7, 0x10
/* 806258C8  4B C4 AC 79 */	bl cLib_addCalcAngleS__FPsssss
lbl_806258CC:
/* 806258CC  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806258D0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806258D4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806258D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806258DC  4C 41 13 82 */	cror 2, 1, 2
/* 806258E0  40 82 00 18 */	bne lbl_806258F8
/* 806258E4  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 806258E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806258EC  40 80 00 0C */	bge lbl_806258F8
/* 806258F0  38 00 00 01 */	li r0, 1
/* 806258F4  98 1D 0A A0 */	stb r0, 0xaa0(r29)
lbl_806258F8:
/* 806258F8  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806258FC  38 63 00 0C */	addi r3, r3, 0xc
/* 80625900  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80625904  4B D0 2B 29 */	bl checkPass__12J3DFrameCtrlFf
/* 80625908  2C 03 00 00 */	cmpwi r3, 0
/* 8062590C  41 82 00 10 */	beq lbl_8062591C
/* 80625910  7F A3 EB 78 */	mr r3, r29
/* 80625914  38 80 00 01 */	li r4, 1
/* 80625918  4B FF B0 C9 */	bl setSwordAtBit__8daB_TN_cFi
lbl_8062591C:
/* 8062591C  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625920  38 63 00 0C */	addi r3, r3, 0xc
/* 80625924  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80625928  4B D0 2B 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8062592C  2C 03 00 00 */	cmpwi r3, 0
/* 80625930  41 82 00 10 */	beq lbl_80625940
/* 80625934  7F A3 EB 78 */	mr r3, r29
/* 80625938  38 80 00 00 */	li r4, 0
/* 8062593C  4B FF B0 A5 */	bl setSwordAtBit__8daB_TN_cFi
lbl_80625940:
/* 80625940  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625944  38 80 00 01 */	li r4, 1
/* 80625948  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8062594C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80625950  40 82 00 18 */	bne lbl_80625968
/* 80625954  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80625958  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8062595C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80625960  41 82 00 08 */	beq lbl_80625968
/* 80625964  38 80 00 00 */	li r4, 0
lbl_80625968:
/* 80625968  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8062596C  41 82 02 F0 */	beq lbl_80625C5C
/* 80625970  7F A3 EB 78 */	mr r3, r29
/* 80625974  38 80 00 03 */	li r4, 3
/* 80625978  38 A0 00 00 */	li r5, 0
/* 8062597C  4B FF B0 4D */	bl setActionMode__8daB_TN_cFii
/* 80625980  38 00 00 01 */	li r0, 1
/* 80625984  98 1D 0A 91 */	stb r0, 0xa91(r29)
/* 80625988  48 00 02 D4 */	b lbl_80625C5C
lbl_8062598C:
/* 8062598C  7F A3 EB 78 */	mr r3, r29
/* 80625990  38 80 00 01 */	li r4, 1
/* 80625994  4B FF D2 4D */	bl setAttackBlurEffect__8daB_TN_cFi
/* 80625998  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062599C  38 63 00 0C */	addi r3, r3, 0xc
/* 806259A0  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 806259A4  4B D0 2A 89 */	bl checkPass__12J3DFrameCtrlFf
/* 806259A8  2C 03 00 00 */	cmpwi r3, 0
/* 806259AC  41 82 00 34 */	beq lbl_806259E0
/* 806259B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 806259B4  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 806259B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806259BC  38 7D 06 4C */	addi r3, r29, 0x64c
/* 806259C0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806259C4  38 A0 00 00 */	li r5, 0
/* 806259C8  38 C0 FF FF */	li r6, -1
/* 806259CC  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 806259D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806259D4  7D 89 03 A6 */	mtctr r12
/* 806259D8  4E 80 04 21 */	bctrl 
/* 806259DC  48 00 01 1C */	b lbl_80625AF8
lbl_806259E0:
/* 806259E0  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806259E4  38 63 00 0C */	addi r3, r3, 0xc
/* 806259E8  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 806259EC  4B D0 2A 41 */	bl checkPass__12J3DFrameCtrlFf
/* 806259F0  2C 03 00 00 */	cmpwi r3, 0
/* 806259F4  41 82 00 30 */	beq lbl_80625A24
/* 806259F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039B@ha */
/* 806259FC  38 03 03 9B */	addi r0, r3, 0x039B /* 0x0007039B@l */
/* 80625A00  90 01 00 18 */	stw r0, 0x18(r1)
/* 80625A04  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80625A08  38 81 00 18 */	addi r4, r1, 0x18
/* 80625A0C  38 A0 FF FF */	li r5, -1
/* 80625A10  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80625A14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80625A18  7D 89 03 A6 */	mtctr r12
/* 80625A1C  4E 80 04 21 */	bctrl 
/* 80625A20  48 00 00 D8 */	b lbl_80625AF8
lbl_80625A24:
/* 80625A24  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625A28  38 63 00 0C */	addi r3, r3, 0xc
/* 80625A2C  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80625A30  4B D0 29 FD */	bl checkPass__12J3DFrameCtrlFf
/* 80625A34  2C 03 00 00 */	cmpwi r3, 0
/* 80625A38  41 82 00 34 */	beq lbl_80625A6C
/* 80625A3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A9@ha */
/* 80625A40  38 03 03 A9 */	addi r0, r3, 0x03A9 /* 0x000703A9@l */
/* 80625A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80625A48  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80625A4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80625A50  38 A0 00 00 */	li r5, 0
/* 80625A54  38 C0 FF FF */	li r6, -1
/* 80625A58  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80625A5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625A60  7D 89 03 A6 */	mtctr r12
/* 80625A64  4E 80 04 21 */	bctrl 
/* 80625A68  48 00 00 90 */	b lbl_80625AF8
lbl_80625A6C:
/* 80625A6C  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625A70  38 63 00 0C */	addi r3, r3, 0xc
/* 80625A74  C0 3F 01 9C */	lfs f1, 0x19c(r31)
/* 80625A78  4B D0 29 B5 */	bl checkPass__12J3DFrameCtrlFf
/* 80625A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80625A80  41 82 00 34 */	beq lbl_80625AB4
/* 80625A84  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A8@ha */
/* 80625A88  38 03 03 A8 */	addi r0, r3, 0x03A8 /* 0x000703A8@l */
/* 80625A8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80625A90  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80625A94  38 81 00 10 */	addi r4, r1, 0x10
/* 80625A98  38 A0 00 00 */	li r5, 0
/* 80625A9C  38 C0 FF FF */	li r6, -1
/* 80625AA0  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80625AA4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625AA8  7D 89 03 A6 */	mtctr r12
/* 80625AAC  4E 80 04 21 */	bctrl 
/* 80625AB0  48 00 00 48 */	b lbl_80625AF8
lbl_80625AB4:
/* 80625AB4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625AB8  38 63 00 0C */	addi r3, r3, 0xc
/* 80625ABC  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80625AC0  4B D0 29 6D */	bl checkPass__12J3DFrameCtrlFf
/* 80625AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80625AC8  41 82 00 30 */	beq lbl_80625AF8
/* 80625ACC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80625AD0  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80625AD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80625AD8  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80625ADC  38 81 00 0C */	addi r4, r1, 0xc
/* 80625AE0  38 A0 00 00 */	li r5, 0
/* 80625AE4  38 C0 FF FF */	li r6, -1
/* 80625AE8  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80625AEC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625AF0  7D 89 03 A6 */	mtctr r12
/* 80625AF4  4E 80 04 21 */	bctrl 
lbl_80625AF8:
/* 80625AF8  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625AFC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80625B00  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80625B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80625B08  4C 40 13 82 */	cror 2, 0, 2
/* 80625B0C  40 82 00 1C */	bne lbl_80625B28
/* 80625B10  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80625B14  7F C4 F3 78 */	mr r4, r30
/* 80625B18  38 A0 00 08 */	li r5, 8
/* 80625B1C  38 C0 04 00 */	li r6, 0x400
/* 80625B20  38 E0 00 10 */	li r7, 0x10
/* 80625B24  4B C4 AA 1D */	bl cLib_addCalcAngleS__FPsssss
lbl_80625B28:
/* 80625B28  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625B2C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80625B30  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80625B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80625B38  4C 41 13 82 */	cror 2, 1, 2
/* 80625B3C  40 82 00 1C */	bne lbl_80625B58
/* 80625B40  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80625B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80625B48  40 80 00 10 */	bge lbl_80625B58
/* 80625B4C  38 00 00 01 */	li r0, 1
/* 80625B50  98 1D 0A A1 */	stb r0, 0xaa1(r29)
/* 80625B54  98 1D 0A A0 */	stb r0, 0xaa0(r29)
lbl_80625B58:
/* 80625B58  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625B5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80625B60  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 80625B64  4B D0 28 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80625B68  2C 03 00 00 */	cmpwi r3, 0
/* 80625B6C  41 82 00 10 */	beq lbl_80625B7C
/* 80625B70  7F A3 EB 78 */	mr r3, r29
/* 80625B74  38 80 00 01 */	li r4, 1
/* 80625B78  4B FF AE 69 */	bl setSwordAtBit__8daB_TN_cFi
lbl_80625B7C:
/* 80625B7C  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625B80  38 63 00 0C */	addi r3, r3, 0xc
/* 80625B84  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80625B88  4B D0 28 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 80625B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80625B90  41 82 00 10 */	beq lbl_80625BA0
/* 80625B94  7F A3 EB 78 */	mr r3, r29
/* 80625B98  38 80 00 00 */	li r4, 0
/* 80625B9C  4B FF AE 45 */	bl setSwordAtBit__8daB_TN_cFi
lbl_80625BA0:
/* 80625BA0  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625BA4  38 63 00 0C */	addi r3, r3, 0xc
/* 80625BA8  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 80625BAC  4B D0 28 81 */	bl checkPass__12J3DFrameCtrlFf
/* 80625BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80625BB4  41 82 00 60 */	beq lbl_80625C14
/* 80625BB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703AA@ha */
/* 80625BBC  38 03 03 AA */	addi r0, r3, 0x03AA /* 0x000703AA@l */
/* 80625BC0  90 01 00 08 */	stw r0, 8(r1)
/* 80625BC4  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80625BC8  38 81 00 08 */	addi r4, r1, 8
/* 80625BCC  38 A0 00 00 */	li r5, 0
/* 80625BD0  38 C0 FF FF */	li r6, -1
/* 80625BD4  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80625BD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625BDC  7D 89 03 A6 */	mtctr r12
/* 80625BE0  4E 80 04 21 */	bctrl 
/* 80625BE4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80625BE8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80625BEC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80625BF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80625BF4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80625BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80625BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80625C00  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80625C04  38 80 00 06 */	li r4, 6
/* 80625C08  38 A0 00 1F */	li r5, 0x1f
/* 80625C0C  38 C1 00 30 */	addi r6, r1, 0x30
/* 80625C10  4B A4 9E 15 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80625C14:
/* 80625C14  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80625C18  38 80 00 01 */	li r4, 1
/* 80625C1C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80625C20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80625C24  40 82 00 18 */	bne lbl_80625C3C
/* 80625C28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80625C2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80625C30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80625C34  41 82 00 08 */	beq lbl_80625C3C
/* 80625C38  38 80 00 00 */	li r4, 0
lbl_80625C3C:
/* 80625C3C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80625C40  41 82 00 1C */	beq lbl_80625C5C
/* 80625C44  7F A3 EB 78 */	mr r3, r29
/* 80625C48  38 80 00 03 */	li r4, 3
/* 80625C4C  38 A0 00 00 */	li r5, 0
/* 80625C50  4B FF AD 79 */	bl setActionMode__8daB_TN_cFii
/* 80625C54  38 00 00 01 */	li r0, 1
/* 80625C58  98 1D 0A 91 */	stb r0, 0xa91(r29)
lbl_80625C5C:
/* 80625C5C  39 61 00 50 */	addi r11, r1, 0x50
/* 80625C60  4B D3 C5 C5 */	bl _restgpr_28
/* 80625C64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80625C68  7C 08 03 A6 */	mtlr r0
/* 80625C6C  38 21 00 50 */	addi r1, r1, 0x50
/* 80625C70  4E 80 00 20 */	blr 
