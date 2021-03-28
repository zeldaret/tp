lbl_8074C858:
/* 8074C858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8074C85C  7C 08 02 A6 */	mflr r0
/* 8074C860  90 01 00 34 */	stw r0, 0x34(r1)
/* 8074C864  39 61 00 30 */	addi r11, r1, 0x30
/* 8074C868  4B C1 59 68 */	b _savegpr_26
/* 8074C86C  7C 7D 1B 78 */	mr r29, r3
/* 8074C870  3C 80 80 75 */	lis r4, lit_3917@ha
/* 8074C874  3B E4 76 FC */	addi r31, r4, lit_3917@l
/* 8074C878  38 80 00 FF */	li r4, 0xff
/* 8074C87C  4B FF FD 71 */	bl mArg0Check__FP10e_po_classs
/* 8074C880  2C 03 00 03 */	cmpwi r3, 3
/* 8074C884  40 82 00 1C */	bne lbl_8074C8A0
/* 8074C888  3C 60 80 75 */	lis r3, struct_80757E9C+0x2@ha
/* 8074C88C  A8 03 7E 9E */	lha r0, struct_80757E9C+0x2@l(r3)
/* 8074C890  2C 00 00 00 */	cmpwi r0, 0
/* 8074C894  40 82 00 0C */	bne lbl_8074C8A0
/* 8074C898  38 60 00 01 */	li r3, 1
/* 8074C89C  48 00 04 18 */	b lbl_8074CCB4
lbl_8074C8A0:
/* 8074C8A0  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074C8A4  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 8074C8A8  40 82 00 0C */	bne lbl_8074C8B4
/* 8074C8AC  38 60 00 01 */	li r3, 1
/* 8074C8B0  48 00 04 04 */	b lbl_8074CCB4
lbl_8074C8B4:
/* 8074C8B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8074C8B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8074C8BC  38 80 00 00 */	li r4, 0
/* 8074C8C0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8074C8C4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8074C8C8  4B A5 6E FC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8074C8CC  88 1D 07 58 */	lbz r0, 0x758(r29)
/* 8074C8D0  28 00 00 00 */	cmplwi r0, 0
/* 8074C8D4  40 82 00 24 */	bne lbl_8074C8F8
/* 8074C8D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8074C8DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8074C8E0  80 9D 05 E8 */	lwz r4, 0x5e8(r29)
/* 8074C8E4  80 84 00 04 */	lwz r4, 4(r4)
/* 8074C8E8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8074C8EC  4B A5 84 B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8074C8F0  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 8074C8F4  4B 8C 13 D0 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8074C8F8:
/* 8074C8F8  C0 3D 08 00 */	lfs f1, 0x800(r29)
/* 8074C8FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074C900  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074C904  41 82 01 58 */	beq lbl_8074CA5C
/* 8074C908  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 8074C90C  80 63 00 04 */	lwz r3, 4(r3)
/* 8074C910  80 63 00 04 */	lwz r3, 4(r3)
/* 8074C914  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8074C918  83 C3 00 00 */	lwz r30, 0(r3)
/* 8074C91C  28 1E 00 00 */	cmplwi r30, 0
/* 8074C920  41 82 00 A8 */	beq lbl_8074C9C8
/* 8074C924  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8074C928  38 80 00 01 */	li r4, 1
/* 8074C92C  81 83 00 00 */	lwz r12, 0(r3)
/* 8074C930  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074C934  7D 89 03 A6 */	mtctr r12
/* 8074C938  4E 80 04 21 */	bctrl 
/* 8074C93C  3C 80 80 75 */	lis r4, l_HIO@ha
/* 8074C940  38 84 7E 5C */	addi r4, r4, l_HIO@l
/* 8074C944  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 8074C948  B0 03 00 00 */	sth r0, 0(r3)
/* 8074C94C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8074C950  38 80 00 01 */	li r4, 1
/* 8074C954  81 83 00 00 */	lwz r12, 0(r3)
/* 8074C958  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074C95C  7D 89 03 A6 */	mtctr r12
/* 8074C960  4E 80 04 21 */	bctrl 
/* 8074C964  3C 80 80 75 */	lis r4, l_HIO@ha
/* 8074C968  38 84 7E 5C */	addi r4, r4, l_HIO@l
/* 8074C96C  A8 04 00 1E */	lha r0, 0x1e(r4)
/* 8074C970  B0 03 00 02 */	sth r0, 2(r3)
/* 8074C974  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8074C978  38 80 00 01 */	li r4, 1
/* 8074C97C  81 83 00 00 */	lwz r12, 0(r3)
/* 8074C980  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074C984  7D 89 03 A6 */	mtctr r12
/* 8074C988  4E 80 04 21 */	bctrl 
/* 8074C98C  3C 80 80 75 */	lis r4, l_HIO@ha
/* 8074C990  38 84 7E 5C */	addi r4, r4, l_HIO@l
/* 8074C994  A8 04 00 20 */	lha r0, 0x20(r4)
/* 8074C998  B0 03 00 04 */	sth r0, 4(r3)
/* 8074C99C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8074C9A0  38 80 00 01 */	li r4, 1
/* 8074C9A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8074C9A8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074C9AC  7D 89 03 A6 */	mtctr r12
/* 8074C9B0  4E 80 04 21 */	bctrl 
/* 8074C9B4  C0 1D 08 00 */	lfs f0, 0x800(r29)
/* 8074C9B8  FC 00 00 1E */	fctiwz f0, f0
/* 8074C9BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8074C9C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8074C9C4  B0 03 00 06 */	sth r0, 6(r3)
lbl_8074C9C8:
/* 8074C9C8  A8 7D 07 E4 */	lha r3, 0x7e4(r29)
/* 8074C9CC  38 03 00 01 */	addi r0, r3, 1
/* 8074C9D0  B0 1D 07 E4 */	sth r0, 0x7e4(r29)
/* 8074C9D4  28 1E 00 00 */	cmplwi r30, 0
/* 8074C9D8  41 82 00 7C */	beq lbl_8074CA54
/* 8074C9DC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8074C9E0  38 80 00 02 */	li r4, 2
/* 8074C9E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8074C9E8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074C9EC  7D 89 03 A6 */	mtctr r12
/* 8074C9F0  4E 80 04 21 */	bctrl 
/* 8074C9F4  3C 80 80 75 */	lis r4, l_HIO@ha
/* 8074C9F8  38 84 7E 5C */	addi r4, r4, l_HIO@l
/* 8074C9FC  A8 04 00 22 */	lha r0, 0x22(r4)
/* 8074CA00  B0 03 00 00 */	sth r0, 0(r3)
/* 8074CA04  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8074CA08  38 80 00 02 */	li r4, 2
/* 8074CA0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8074CA10  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074CA14  7D 89 03 A6 */	mtctr r12
/* 8074CA18  4E 80 04 21 */	bctrl 
/* 8074CA1C  3C 80 80 75 */	lis r4, l_HIO@ha
/* 8074CA20  38 84 7E 5C */	addi r4, r4, l_HIO@l
/* 8074CA24  A8 04 00 24 */	lha r0, 0x24(r4)
/* 8074CA28  B0 03 00 02 */	sth r0, 2(r3)
/* 8074CA2C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8074CA30  38 80 00 02 */	li r4, 2
/* 8074CA34  81 83 00 00 */	lwz r12, 0(r3)
/* 8074CA38  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074CA3C  7D 89 03 A6 */	mtctr r12
/* 8074CA40  4E 80 04 21 */	bctrl 
/* 8074CA44  3C 80 80 75 */	lis r4, l_HIO@ha
/* 8074CA48  38 84 7E 5C */	addi r4, r4, l_HIO@l
/* 8074CA4C  A8 04 00 26 */	lha r0, 0x26(r4)
/* 8074CA50  B0 03 00 04 */	sth r0, 4(r3)
lbl_8074CA54:
/* 8074CA54  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 8074CA58  4B 8C 3C 28 */	b entryDL__14mDoExt_McaMorfFv
lbl_8074CA5C:
/* 8074CA5C  88 1D 07 5A */	lbz r0, 0x75a(r29)
/* 8074CA60  28 00 00 00 */	cmplwi r0, 0
/* 8074CA64  41 82 00 2C */	beq lbl_8074CA90
/* 8074CA68  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8074CA6C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8074CA70  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 8074CA74  80 84 00 04 */	lwz r4, 4(r4)
/* 8074CA78  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8074CA7C  4B A5 83 24 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8074CA80  80 7D 05 D8 */	lwz r3, 0x5d8(r29)
/* 8074CA84  4B 8C 47 3C */	b entryDL__16mDoExt_McaMorfSOFv
/* 8074CA88  38 60 00 01 */	li r3, 1
/* 8074CA8C  48 00 02 28 */	b lbl_8074CCB4
lbl_8074CA90:
/* 8074CA90  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8074CA94  2C 00 00 00 */	cmpwi r0, 0
/* 8074CA98  41 82 00 40 */	beq lbl_8074CAD8
/* 8074CA9C  C0 3D 05 F4 */	lfs f1, 0x5f4(r29)
/* 8074CAA0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8074CAA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074CAA8  40 81 01 74 */	ble lbl_8074CC1C
/* 8074CAAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074CAB0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8074CAB4  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8074CAB8  28 00 00 00 */	cmplwi r0, 0
/* 8074CABC  41 82 00 1C */	beq lbl_8074CAD8
/* 8074CAC0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8074CAC4  83 C3 10 18 */	lwz r30, m_midnaActor__9daPy_py_c@l(r3)
/* 8074CAC8  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8074CACC  4B 8C F0 48 */	b fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 8074CAD0  7C 03 F0 40 */	cmplw r3, r30
/* 8074CAD4  41 82 01 48 */	beq lbl_8074CC1C
lbl_8074CAD8:
/* 8074CAD8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8074CADC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8074CAE0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8074CAE4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8074CAE8  80 9E 00 04 */	lwz r4, 4(r30)
/* 8074CAEC  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8074CAF0  4B A5 82 B0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8074CAF4  83 DE 00 04 */	lwz r30, 4(r30)
/* 8074CAF8  C0 1D 05 F4 */	lfs f0, 0x5f4(r29)
/* 8074CAFC  FC 00 00 1E */	fctiwz f0, f0
/* 8074CB00  D8 01 00 08 */	stfd f0, 8(r1)
/* 8074CB04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8074CB08  3B 40 00 00 */	li r26, 0
/* 8074CB0C  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 8074CB10  48 00 00 EC */	b lbl_8074CBFC
lbl_8074CB14:
/* 8074CB14  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8074CB18  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8074CB1C  7F 83 00 2E */	lwzx r28, r3, r0
/* 8074CB20  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8074CB24  38 80 00 02 */	li r4, 2
/* 8074CB28  81 83 00 00 */	lwz r12, 0(r3)
/* 8074CB2C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074CB30  7D 89 03 A6 */	mtctr r12
/* 8074CB34  4E 80 04 21 */	bctrl 
/* 8074CB38  B3 63 00 06 */	sth r27, 6(r3)
/* 8074CB3C  A8 1D 07 42 */	lha r0, 0x742(r29)
/* 8074CB40  2C 00 00 04 */	cmpwi r0, 4
/* 8074CB44  40 82 00 B4 */	bne lbl_8074CBF8
/* 8074CB48  7F A3 EB 78 */	mr r3, r29
/* 8074CB4C  38 80 00 FF */	li r4, 0xff
/* 8074CB50  4B FF FA 9D */	bl mArg0Check__FP10e_po_classs
/* 8074CB54  2C 03 00 02 */	cmpwi r3, 2
/* 8074CB58  40 82 00 20 */	bne lbl_8074CB78
/* 8074CB5C  7F A3 EB 78 */	mr r3, r29
/* 8074CB60  3C 80 80 75 */	lis r4, struct_80757AD4+0x6@ha
/* 8074CB64  38 84 7A DA */	addi r4, r4, struct_80757AD4+0x6@l
/* 8074CB68  A8 84 00 00 */	lha r4, 0(r4)
/* 8074CB6C  4B FF FA 81 */	bl mArg0Check__FP10e_po_classs
/* 8074CB70  2C 03 00 00 */	cmpwi r3, 0
/* 8074CB74  41 82 00 84 */	beq lbl_8074CBF8
lbl_8074CB78:
/* 8074CB78  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8074CB7C  38 80 00 00 */	li r4, 0
/* 8074CB80  81 83 00 00 */	lwz r12, 0(r3)
/* 8074CB84  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074CB88  7D 89 03 A6 */	mtctr r12
/* 8074CB8C  4E 80 04 21 */	bctrl 
/* 8074CB90  38 00 00 11 */	li r0, 0x11
/* 8074CB94  B0 03 00 00 */	sth r0, 0(r3)
/* 8074CB98  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8074CB9C  38 80 00 00 */	li r4, 0
/* 8074CBA0  81 83 00 00 */	lwz r12, 0(r3)
/* 8074CBA4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074CBA8  7D 89 03 A6 */	mtctr r12
/* 8074CBAC  4E 80 04 21 */	bctrl 
/* 8074CBB0  38 00 00 03 */	li r0, 3
/* 8074CBB4  B0 03 00 02 */	sth r0, 2(r3)
/* 8074CBB8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8074CBBC  38 80 00 00 */	li r4, 0
/* 8074CBC0  81 83 00 00 */	lwz r12, 0(r3)
/* 8074CBC4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074CBC8  7D 89 03 A6 */	mtctr r12
/* 8074CBCC  4E 80 04 21 */	bctrl 
/* 8074CBD0  38 00 00 25 */	li r0, 0x25
/* 8074CBD4  B0 03 00 04 */	sth r0, 4(r3)
/* 8074CBD8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8074CBDC  38 80 00 00 */	li r4, 0
/* 8074CBE0  81 83 00 00 */	lwz r12, 0(r3)
/* 8074CBE4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8074CBE8  7D 89 03 A6 */	mtctr r12
/* 8074CBEC  4E 80 04 21 */	bctrl 
/* 8074CBF0  38 00 00 80 */	li r0, 0x80
/* 8074CBF4  B0 03 00 06 */	sth r0, 6(r3)
lbl_8074CBF8:
/* 8074CBF8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8074CBFC:
/* 8074CBFC  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8074CC00  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 8074CC04  7C 03 00 40 */	cmplw r3, r0
/* 8074CC08  41 80 FF 0C */	blt lbl_8074CB14
/* 8074CC0C  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 8074CC10  38 80 00 00 */	li r4, 0
/* 8074CC14  4B 8C 1B AC */	b entryDL__21mDoExt_invisibleModelFP4cXyz
/* 8074CC18  48 00 00 0C */	b lbl_8074CC24
lbl_8074CC1C:
/* 8074CC1C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8074CC20  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
lbl_8074CC24:
/* 8074CC24  A8 1D 07 42 */	lha r0, 0x742(r29)
/* 8074CC28  2C 00 00 0C */	cmpwi r0, 0xc
/* 8074CC2C  40 82 00 84 */	bne lbl_8074CCB0
/* 8074CC30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074CC34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074CC38  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8074CC3C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8074CC40  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8074CC44  41 82 00 6C */	beq lbl_8074CCB0
/* 8074CC48  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074CC4C  2C 00 00 02 */	cmpwi r0, 2
/* 8074CC50  40 82 00 18 */	bne lbl_8074CC68
/* 8074CC54  38 7D 07 D0 */	addi r3, r29, 0x7d0
/* 8074CC58  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8074CC5C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8074CC60  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8074CC64  4B B2 2D D8 */	b cLib_addCalc2__FPffff
lbl_8074CC68:
/* 8074CC68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8074CC6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8074CC70  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8074CC74  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8074CC78  81 8C 02 7C */	lwz r12, 0x27c(r12)
/* 8074CC7C  7D 89 03 A6 */	mtctr r12
/* 8074CC80  4E 80 04 21 */	bctrl 
/* 8074CC84  2C 03 00 00 */	cmpwi r3, 0
/* 8074CC88  40 82 00 28 */	bne lbl_8074CCB0
/* 8074CC8C  80 1D 05 E4 */	lwz r0, 0x5e4(r29)
/* 8074CC90  2C 00 00 0A */	cmpwi r0, 0xa
/* 8074CC94  41 82 00 1C */	beq lbl_8074CCB0
/* 8074CC98  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8074CC9C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8074CCA0  40 80 00 10 */	bge lbl_8074CCB0
/* 8074CCA4  7F A3 EB 78 */	mr r3, r29
/* 8074CCA8  38 9D 01 0C */	addi r4, r29, 0x10c
/* 8074CCAC  4B 8C C9 F4 */	b drawBallModel__13fopEn_enemy_cFP12dKy_tevstr_c
lbl_8074CCB0:
/* 8074CCB0  38 60 00 01 */	li r3, 1
lbl_8074CCB4:
/* 8074CCB4  39 61 00 30 */	addi r11, r1, 0x30
/* 8074CCB8  4B C1 55 64 */	b _restgpr_26
/* 8074CCBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8074CCC0  7C 08 03 A6 */	mtlr r0
/* 8074CCC4  38 21 00 30 */	addi r1, r1, 0x30
/* 8074CCC8  4E 80 00 20 */	blr 
