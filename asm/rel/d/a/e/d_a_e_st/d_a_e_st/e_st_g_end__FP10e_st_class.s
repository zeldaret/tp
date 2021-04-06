lbl_807A3858:
/* 807A3858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A385C  7C 08 02 A6 */	mflr r0
/* 807A3860  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A3864  39 61 00 30 */	addi r11, r1, 0x30
/* 807A3868  4B BB E9 75 */	bl _savegpr_29
/* 807A386C  7C 7E 1B 78 */	mr r30, r3
/* 807A3870  3C 80 80 7A */	lis r4, lit_3903@ha /* 0x807A6824@ha */
/* 807A3874  3B E4 68 24 */	addi r31, r4, lit_3903@l /* 0x807A6824@l */
/* 807A3878  3B A0 00 01 */	li r29, 1
/* 807A387C  38 00 00 0A */	li r0, 0xa
/* 807A3880  B0 03 06 8C */	sth r0, 0x68c(r3)
/* 807A3884  B0 03 06 8A */	sth r0, 0x68a(r3)
/* 807A3888  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807A388C  2C 00 00 02 */	cmpwi r0, 2
/* 807A3890  41 82 00 74 */	beq lbl_807A3904
/* 807A3894  40 80 00 10 */	bge lbl_807A38A4
/* 807A3898  2C 00 00 00 */	cmpwi r0, 0
/* 807A389C  41 82 00 20 */	beq lbl_807A38BC
/* 807A38A0  48 00 02 54 */	b lbl_807A3AF4
lbl_807A38A4:
/* 807A38A4  2C 00 00 0B */	cmpwi r0, 0xb
/* 807A38A8  41 82 01 78 */	beq lbl_807A3A20
/* 807A38AC  40 80 02 48 */	bge lbl_807A3AF4
/* 807A38B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807A38B4  40 80 01 24 */	bge lbl_807A39D8
/* 807A38B8  48 00 02 3C */	b lbl_807A3AF4
lbl_807A38BC:
/* 807A38BC  38 80 00 0F */	li r4, 0xf
/* 807A38C0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A38C4  38 A0 00 00 */	li r5, 0
/* 807A38C8  FC 40 08 90 */	fmr f2, f1
/* 807A38CC  4B FF A5 81 */	bl anm_init__FP10e_st_classifUcf
/* 807A38D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070168@ha */
/* 807A38D4  38 03 01 68 */	addi r0, r3, 0x0168 /* 0x00070168@l */
/* 807A38D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A38DC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A38E0  38 81 00 14 */	addi r4, r1, 0x14
/* 807A38E4  38 A0 FF FF */	li r5, -1
/* 807A38E8  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A38EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A38F0  7D 89 03 A6 */	mtctr r12
/* 807A38F4  4E 80 04 21 */	bctrl 
/* 807A38F8  38 00 00 02 */	li r0, 2
/* 807A38FC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A3900  48 00 01 F4 */	b lbl_807A3AF4
lbl_807A3904:
/* 807A3904  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A3908  38 63 00 0C */	addi r3, r3, 0xc
/* 807A390C  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 807A3910  4B B8 4B 1D */	bl checkPass__12J3DFrameCtrlFf
/* 807A3914  2C 03 00 00 */	cmpwi r3, 0
/* 807A3918  41 82 00 30 */	beq lbl_807A3948
/* 807A391C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 807A3920  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 807A3924  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A3928  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A392C  38 81 00 10 */	addi r4, r1, 0x10
/* 807A3930  38 A0 00 00 */	li r5, 0
/* 807A3934  38 C0 FF FF */	li r6, -1
/* 807A3938  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A393C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A3940  7D 89 03 A6 */	mtctr r12
/* 807A3944  4E 80 04 21 */	bctrl 
lbl_807A3948:
/* 807A3948  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A394C  38 80 00 01 */	li r4, 1
/* 807A3950  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A3954  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A3958  40 82 00 18 */	bne lbl_807A3970
/* 807A395C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A3960  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A3964  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A3968  41 82 00 08 */	beq lbl_807A3970
/* 807A396C  38 80 00 00 */	li r4, 0
lbl_807A3970:
/* 807A3970  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A3974  41 82 01 80 */	beq lbl_807A3AF4
/* 807A3978  7F C3 F3 78 */	mr r3, r30
/* 807A397C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A3980  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807A3984  3C A0 80 7A */	lis r5, l_HIO@ha /* 0x807A6DF4@ha */
/* 807A3988  38 A5 6D F4 */	addi r5, r5, l_HIO@l /* 0x807A6DF4@l */
/* 807A398C  C0 05 00 08 */	lfs f0, 8(r5)
/* 807A3990  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A3994  FC 00 00 1E */	fctiwz f0, f0
/* 807A3998  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A399C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 807A39A0  38 C0 00 00 */	li r6, 0
/* 807A39A4  38 E0 00 06 */	li r7, 6
/* 807A39A8  4B 87 91 31 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807A39AC  7F C3 F3 78 */	mr r3, r30
/* 807A39B0  4B 87 62 CD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807A39B4  88 9E 05 B8 */	lbz r4, 0x5b8(r30)
/* 807A39B8  28 04 00 FF */	cmplwi r4, 0xff
/* 807A39BC  41 82 01 38 */	beq lbl_807A3AF4
/* 807A39C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A39C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A39C8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807A39CC  7C 05 07 74 */	extsb r5, r0
/* 807A39D0  4B 89 18 31 */	bl onSwitch__10dSv_info_cFii
/* 807A39D4  48 00 01 20 */	b lbl_807A3AF4
lbl_807A39D8:
/* 807A39D8  38 80 00 10 */	li r4, 0x10
/* 807A39DC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A39E0  38 A0 00 00 */	li r5, 0
/* 807A39E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A39E8  4B FF A4 65 */	bl anm_init__FP10e_st_classifUcf
/* 807A39EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007016C@ha */
/* 807A39F0  38 03 01 6C */	addi r0, r3, 0x016C /* 0x0007016C@l */
/* 807A39F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A39F8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A39FC  38 81 00 0C */	addi r4, r1, 0xc
/* 807A3A00  38 A0 FF FF */	li r5, -1
/* 807A3A04  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A3A08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A3A0C  7D 89 03 A6 */	mtctr r12
/* 807A3A10  4E 80 04 21 */	bctrl 
/* 807A3A14  38 00 00 0B */	li r0, 0xb
/* 807A3A18  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A3A1C  48 00 00 D8 */	b lbl_807A3AF4
lbl_807A3A20:
/* 807A3A20  3B A0 00 00 */	li r29, 0
/* 807A3A24  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A3A28  38 63 00 0C */	addi r3, r3, 0xc
/* 807A3A2C  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 807A3A30  4B B8 49 FD */	bl checkPass__12J3DFrameCtrlFf
/* 807A3A34  2C 03 00 00 */	cmpwi r3, 0
/* 807A3A38  41 82 00 30 */	beq lbl_807A3A68
/* 807A3A3C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 807A3A40  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 807A3A44  90 01 00 08 */	stw r0, 8(r1)
/* 807A3A48  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A3A4C  38 81 00 08 */	addi r4, r1, 8
/* 807A3A50  38 A0 00 00 */	li r5, 0
/* 807A3A54  38 C0 FF FF */	li r6, -1
/* 807A3A58  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A3A5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A3A60  7D 89 03 A6 */	mtctr r12
/* 807A3A64  4E 80 04 21 */	bctrl 
lbl_807A3A68:
/* 807A3A68  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A3A6C  38 80 00 01 */	li r4, 1
/* 807A3A70  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A3A74  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A3A78  40 82 00 18 */	bne lbl_807A3A90
/* 807A3A7C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A3A80  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A3A84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A3A88  41 82 00 08 */	beq lbl_807A3A90
/* 807A3A8C  38 80 00 00 */	li r4, 0
lbl_807A3A90:
/* 807A3A90  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A3A94  41 82 00 60 */	beq lbl_807A3AF4
/* 807A3A98  7F C3 F3 78 */	mr r3, r30
/* 807A3A9C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A3AA0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807A3AA4  3C A0 80 7A */	lis r5, l_HIO@ha /* 0x807A6DF4@ha */
/* 807A3AA8  38 A5 6D F4 */	addi r5, r5, l_HIO@l /* 0x807A6DF4@l */
/* 807A3AAC  C0 05 00 08 */	lfs f0, 8(r5)
/* 807A3AB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A3AB4  FC 00 00 1E */	fctiwz f0, f0
/* 807A3AB8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A3ABC  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 807A3AC0  38 C0 00 00 */	li r6, 0
/* 807A3AC4  38 E0 00 06 */	li r7, 6
/* 807A3AC8  4B 87 90 11 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807A3ACC  7F C3 F3 78 */	mr r3, r30
/* 807A3AD0  4B 87 61 AD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807A3AD4  88 9E 05 B8 */	lbz r4, 0x5b8(r30)
/* 807A3AD8  28 04 00 FF */	cmplwi r4, 0xff
/* 807A3ADC  41 82 00 18 */	beq lbl_807A3AF4
/* 807A3AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A3AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A3AE8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807A3AEC  7C 05 07 74 */	extsb r5, r0
/* 807A3AF0  4B 89 17 11 */	bl onSwitch__10dSv_info_cFii
lbl_807A3AF4:
/* 807A3AF4  80 1E 08 6C */	lwz r0, 0x86c(r30)
/* 807A3AF8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807A3AFC  41 82 00 0C */	beq lbl_807A3B08
/* 807A3B00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A3B04  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807A3B08:
/* 807A3B08  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807A3B0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A3B10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A3B14  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 807A3B18  4B AC BF 25 */	bl cLib_addCalc2__FPffff
/* 807A3B1C  7F A3 EB 78 */	mr r3, r29
/* 807A3B20  39 61 00 30 */	addi r11, r1, 0x30
/* 807A3B24  4B BB E7 05 */	bl _restgpr_29
/* 807A3B28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A3B2C  7C 08 03 A6 */	mtlr r0
/* 807A3B30  38 21 00 30 */	addi r1, r1, 0x30
/* 807A3B34  4E 80 00 20 */	blr 
