lbl_80798D90:
/* 80798D90  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80798D94  7C 08 02 A6 */	mflr r0
/* 80798D98  90 01 00 54 */	stw r0, 0x54(r1)
/* 80798D9C  39 61 00 50 */	addi r11, r1, 0x50
/* 80798DA0  4B BC 94 39 */	bl _savegpr_28
/* 80798DA4  7C 7E 1B 78 */	mr r30, r3
/* 80798DA8  3C 60 80 7A */	lis r3, lit_3790@ha /* 0x8079D5B0@ha */
/* 80798DAC  3B E3 D5 B0 */	addi r31, r3, lit_3790@l /* 0x8079D5B0@l */
/* 80798DB0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80798DB4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80798DB8  38 80 00 00 */	li r4, 0
/* 80798DBC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80798DC0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80798DC4  4B A0 AA 01 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80798DC8  88 1E 05 D8 */	lbz r0, 0x5d8(r30)
/* 80798DCC  7C 00 07 75 */	extsb. r0, r0
/* 80798DD0  40 82 01 98 */	bne lbl_80798F68
/* 80798DD4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80798DD8  83 A3 00 04 */	lwz r29, 4(r3)
/* 80798DDC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80798DE0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80798DE4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80798DE8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80798DEC  4B A0 BF B5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80798DF0  80 7D 00 04 */	lwz r3, 4(r29)
/* 80798DF4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80798DF8  83 83 00 00 */	lwz r28, 0(r3)
/* 80798DFC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80798E00  38 80 00 01 */	li r4, 1
/* 80798E04  81 83 00 00 */	lwz r12, 0(r3)
/* 80798E08  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80798E0C  7D 89 03 A6 */	mtctr r12
/* 80798E10  4E 80 04 21 */	bctrl 
/* 80798E14  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80798E18  FC 00 00 1E */	fctiwz f0, f0
/* 80798E1C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80798E20  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80798E24  98 03 00 00 */	stb r0, 0(r3)
/* 80798E28  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80798E2C  38 80 00 01 */	li r4, 1
/* 80798E30  81 83 00 00 */	lwz r12, 0(r3)
/* 80798E34  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80798E38  7D 89 03 A6 */	mtctr r12
/* 80798E3C  4E 80 04 21 */	bctrl 
/* 80798E40  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 80798E44  FC 00 00 1E */	fctiwz f0, f0
/* 80798E48  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80798E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80798E50  98 03 00 01 */	stb r0, 1(r3)
/* 80798E54  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80798E58  38 80 00 01 */	li r4, 1
/* 80798E5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80798E60  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80798E64  7D 89 03 A6 */	mtctr r12
/* 80798E68  4E 80 04 21 */	bctrl 
/* 80798E6C  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 80798E70  FC 00 00 1E */	fctiwz f0, f0
/* 80798E74  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80798E78  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80798E7C  98 03 00 02 */	stb r0, 2(r3)
/* 80798E80  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80798E84  38 80 00 01 */	li r4, 1
/* 80798E88  81 83 00 00 */	lwz r12, 0(r3)
/* 80798E8C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80798E90  7D 89 03 A6 */	mtctr r12
/* 80798E94  4E 80 04 21 */	bctrl 
/* 80798E98  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80798E9C  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 80798EA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80798EA4  FC 00 00 1E */	fctiwz f0, f0
/* 80798EA8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80798EAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80798EB0  98 03 00 03 */	stb r0, 3(r3)
/* 80798EB4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80798EB8  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80798EBC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80798EC0  38 84 00 58 */	addi r4, r4, 0x58
/* 80798EC4  4B 87 48 15 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80798EC8  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80798ECC  38 80 00 00 */	li r4, 0
/* 80798ED0  4B 87 58 F1 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 80798ED4  80 7E 06 B4 */	lwz r3, 0x6b4(r30)
/* 80798ED8  3C 03 FF FB */	addis r0, r3, 0xfffb
/* 80798EDC  28 00 64 FF */	cmplwi r0, 0x64ff
/* 80798EE0  41 82 01 74 */	beq lbl_80799054
/* 80798EE4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80798EE8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80798EEC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80798EF0  EC 21 00 2A */	fadds f1, f1, f0
/* 80798EF4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80798EF8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80798EFC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80798F00  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80798F04  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80798F08  C0 1E 08 34 */	lfs f0, 0x834(r30)
/* 80798F0C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80798F10  C0 1E 08 30 */	lfs f0, 0x830(r30)
/* 80798F14  EC 21 00 32 */	fmuls f1, f1, f0
/* 80798F18  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80798F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80798F20  40 80 00 08 */	bge lbl_80798F28
/* 80798F24  FC 20 00 90 */	fmr f1, f0
lbl_80798F28:
/* 80798F28  80 7E 06 B4 */	lwz r3, 0x6b4(r30)
/* 80798F2C  38 80 00 01 */	li r4, 1
/* 80798F30  7F A5 EB 78 */	mr r5, r29
/* 80798F34  38 C1 00 08 */	addi r6, r1, 8
/* 80798F38  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80798F3C  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80798F40  C0 9E 09 2C */	lfs f4, 0x92c(r30)
/* 80798F44  38 FE 09 84 */	addi r7, r30, 0x984
/* 80798F48  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80798F4C  39 20 00 00 */	li r9, 0
/* 80798F50  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80798F54  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80798F58  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80798F5C  4B 89 59 B5 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80798F60  90 7E 06 B4 */	stw r3, 0x6b4(r30)
/* 80798F64  48 00 00 F0 */	b lbl_80799054
lbl_80798F68:
/* 80798F68  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80798F6C  83 83 00 04 */	lwz r28, 4(r3)
/* 80798F70  80 7C 00 04 */	lwz r3, 4(r28)
/* 80798F74  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80798F78  83 A3 00 00 */	lwz r29, 0(r3)
/* 80798F7C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80798F80  38 80 00 01 */	li r4, 1
/* 80798F84  81 83 00 00 */	lwz r12, 0(r3)
/* 80798F88  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80798F8C  7D 89 03 A6 */	mtctr r12
/* 80798F90  4E 80 04 21 */	bctrl 
/* 80798F94  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80798F98  FC 00 00 1E */	fctiwz f0, f0
/* 80798F9C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80798FA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80798FA4  98 03 00 00 */	stb r0, 0(r3)
/* 80798FA8  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80798FAC  38 80 00 01 */	li r4, 1
/* 80798FB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80798FB4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80798FB8  7D 89 03 A6 */	mtctr r12
/* 80798FBC  4E 80 04 21 */	bctrl 
/* 80798FC0  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 80798FC4  FC 00 00 1E */	fctiwz f0, f0
/* 80798FC8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80798FCC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80798FD0  98 03 00 01 */	stb r0, 1(r3)
/* 80798FD4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80798FD8  38 80 00 01 */	li r4, 1
/* 80798FDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80798FE0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80798FE4  7D 89 03 A6 */	mtctr r12
/* 80798FE8  4E 80 04 21 */	bctrl 
/* 80798FEC  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 80798FF0  FC 00 00 1E */	fctiwz f0, f0
/* 80798FF4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80798FF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80798FFC  98 03 00 02 */	stb r0, 2(r3)
/* 80799000  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80799004  38 80 00 01 */	li r4, 1
/* 80799008  81 83 00 00 */	lwz r12, 0(r3)
/* 8079900C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80799010  7D 89 03 A6 */	mtctr r12
/* 80799014  4E 80 04 21 */	bctrl 
/* 80799018  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8079901C  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 80799020  EC 01 00 32 */	fmuls f0, f1, f0
/* 80799024  FC 00 00 1E */	fctiwz f0, f0
/* 80799028  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079902C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80799030  98 03 00 03 */	stb r0, 3(r3)
/* 80799034  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80799038  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8079903C  80 9C 00 04 */	lwz r4, 4(r28)
/* 80799040  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80799044  4B A0 BD 5D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80799048  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8079904C  38 80 00 00 */	li r4, 0
/* 80799050  4B 87 57 71 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
lbl_80799054:
/* 80799054  38 60 00 01 */	li r3, 1
/* 80799058  39 61 00 50 */	addi r11, r1, 0x50
/* 8079905C  4B BC 91 C9 */	bl _restgpr_28
/* 80799060  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80799064  7C 08 03 A6 */	mtlr r0
/* 80799068  38 21 00 50 */	addi r1, r1, 0x50
/* 8079906C  4E 80 00 20 */	blr 
