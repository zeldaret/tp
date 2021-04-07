lbl_805C8BF8:
/* 805C8BF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C8BFC  7C 08 02 A6 */	mflr r0
/* 805C8C00  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C8C04  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C8C08  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805C8C0C  7C 7E 1B 78 */	mr r30, r3
/* 805C8C10  3C 80 80 5D */	lis r4, lit_3844@ha /* 0x805CAD5C@ha */
/* 805C8C14  3B E4 AD 5C */	addi r31, r4, lit_3844@l /* 0x805CAD5C@l */
/* 805C8C18  88 83 05 B4 */	lbz r4, 0x5b4(r3)
/* 805C8C1C  2C 04 00 02 */	cmpwi r4, 2
/* 805C8C20  41 82 00 AC */	beq lbl_805C8CCC
/* 805C8C24  40 80 00 14 */	bge lbl_805C8C38
/* 805C8C28  2C 04 00 00 */	cmpwi r4, 0
/* 805C8C2C  41 82 02 98 */	beq lbl_805C8EC4
/* 805C8C30  40 80 00 18 */	bge lbl_805C8C48
/* 805C8C34  48 00 02 90 */	b lbl_805C8EC4
lbl_805C8C38:
/* 805C8C38  2C 04 00 04 */	cmpwi r4, 4
/* 805C8C3C  41 82 02 78 */	beq lbl_805C8EB4
/* 805C8C40  40 80 02 84 */	bge lbl_805C8EC4
/* 805C8C44  48 00 01 B0 */	b lbl_805C8DF4
lbl_805C8C48:
/* 805C8C48  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C8C4C  38 63 00 0C */	addi r3, r3, 0xc
/* 805C8C50  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 805C8C54  4B D5 F7 D9 */	bl checkPass__12J3DFrameCtrlFf
/* 805C8C58  2C 03 00 00 */	cmpwi r3, 0
/* 805C8C5C  41 82 00 14 */	beq lbl_805C8C70
/* 805C8C60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C8C64  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 805C8C68  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805C8C6C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_805C8C70:
/* 805C8C70  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C8C74  38 80 00 01 */	li r4, 1
/* 805C8C78  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C8C7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C8C80  40 82 00 18 */	bne lbl_805C8C98
/* 805C8C84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C8C88  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C8C8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C8C90  41 82 00 08 */	beq lbl_805C8C98
/* 805C8C94  38 80 00 00 */	li r4, 0
lbl_805C8C98:
/* 805C8C98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C8C9C  41 82 02 28 */	beq lbl_805C8EC4
/* 805C8CA0  88 7E 05 B4 */	lbz r3, 0x5b4(r30)
/* 805C8CA4  38 03 00 01 */	addi r0, r3, 1
/* 805C8CA8  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 805C8CAC  7F C3 F3 78 */	mr r3, r30
/* 805C8CB0  80 9E 06 EC */	lwz r4, 0x6ec(r30)
/* 805C8CB4  38 A0 00 17 */	li r5, 0x17
/* 805C8CB8  38 C0 00 00 */	li r6, 0
/* 805C8CBC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805C8CC0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C8CC4  4B FF F1 11 */	bl SetAnm__9daB_DRE_cFP16mDoExt_McaMorfSOiiff
/* 805C8CC8  48 00 01 FC */	b lbl_805C8EC4
lbl_805C8CCC:
/* 805C8CCC  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C8CD0  38 63 00 0C */	addi r3, r3, 0xc
/* 805C8CD4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 805C8CD8  4B D5 F7 55 */	bl checkPass__12J3DFrameCtrlFf
/* 805C8CDC  2C 03 00 00 */	cmpwi r3, 0
/* 805C8CE0  41 82 00 24 */	beq lbl_805C8D04
/* 805C8CE4  38 60 00 01 */	li r3, 1
/* 805C8CE8  98 7E 04 99 */	stb r3, 0x499(r30)
/* 805C8CEC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805C8CF0  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 805C8CF4  38 00 00 64 */	li r0, 0x64
/* 805C8CF8  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 805C8CFC  98 7E 06 37 */	stb r3, 0x637(r30)
/* 805C8D00  48 00 00 34 */	b lbl_805C8D34
lbl_805C8D04:
/* 805C8D04  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C8D08  38 63 00 0C */	addi r3, r3, 0xc
/* 805C8D0C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 805C8D10  4B D5 F7 1D */	bl checkPass__12J3DFrameCtrlFf
/* 805C8D14  2C 03 00 00 */	cmpwi r3, 0
/* 805C8D18  41 82 00 1C */	beq lbl_805C8D34
/* 805C8D1C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805C8D20  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 805C8D24  38 00 00 64 */	li r0, 0x64
/* 805C8D28  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 805C8D2C  38 00 00 01 */	li r0, 1
/* 805C8D30  98 1E 06 37 */	stb r0, 0x637(r30)
lbl_805C8D34:
/* 805C8D34  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 805C8D38  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805C8D3C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 805C8D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C8D44  40 80 00 1C */	bge lbl_805C8D60
/* 805C8D48  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 805C8D4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C8D50  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 805C8D54  C0 7F 00 00 */	lfs f3, 0(r31)
/* 805C8D58  4B CA 6C E5 */	bl cLib_addCalc2__FPffff
/* 805C8D5C  48 00 00 18 */	b lbl_805C8D74
lbl_805C8D60:
/* 805C8D60  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 805C8D64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C8D68  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 805C8D6C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 805C8D70  4B CA 6C CD */	bl cLib_addCalc2__FPffff
lbl_805C8D74:
/* 805C8D74  80 9E 06 EC */	lwz r4, 0x6ec(r30)
/* 805C8D78  38 60 00 01 */	li r3, 1
/* 805C8D7C  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805C8D80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C8D84  40 82 00 18 */	bne lbl_805C8D9C
/* 805C8D88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C8D8C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805C8D90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C8D94  41 82 00 08 */	beq lbl_805C8D9C
/* 805C8D98  38 60 00 00 */	li r3, 0
lbl_805C8D9C:
/* 805C8D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C8DA0  41 82 01 24 */	beq lbl_805C8EC4
/* 805C8DA4  7F C3 F3 78 */	mr r3, r30
/* 805C8DA8  38 A0 00 35 */	li r5, 0x35
/* 805C8DAC  38 C0 00 02 */	li r6, 2
/* 805C8DB0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805C8DB4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C8DB8  4B FF F0 1D */	bl SetAnm__9daB_DRE_cFP16mDoExt_McaMorfSOiiff
/* 805C8DBC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805C8DC0  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 805C8DC4  88 7E 05 B8 */	lbz r3, 0x5b8(r30)
/* 805C8DC8  38 03 00 01 */	addi r0, r3, 1
/* 805C8DCC  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 805C8DD0  88 7E 05 B4 */	lbz r3, 0x5b4(r30)
/* 805C8DD4  38 03 00 01 */	addi r0, r3, 1
/* 805C8DD8  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 805C8DDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C8DE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8DE4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C8DE8  38 80 00 1F */	li r4, 0x1f
/* 805C8DEC  4B AA 6F A9 */	bl StopQuake__12dVibration_cFi
/* 805C8DF0  48 00 00 D4 */	b lbl_805C8EC4
lbl_805C8DF4:
/* 805C8DF4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805C8DF8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805C8DFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C8E00  40 81 00 C4 */	ble lbl_805C8EC4
/* 805C8E04  38 04 00 01 */	addi r0, r4, 1
/* 805C8E08  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 805C8E0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C8E10  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C8E14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C8E18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C8E1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C8E20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805C8E24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C8E28  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 805C8E2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C8E30  38 61 00 08 */	addi r3, r1, 8
/* 805C8E34  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805C8E38  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 805C8E3C  38 C1 00 14 */	addi r6, r1, 0x14
/* 805C8E40  4B CA 7F 81 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805C8E44  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C8E48  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 805C8E4C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805C8E50  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 805C8E54  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805C8E58  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 805C8E5C  3C 60 80 5D */	lis r3, data_805CB084@ha /* 0x805CB084@ha */
/* 805C8E60  38 63 B0 84 */	addi r3, r3, data_805CB084@l /* 0x805CB084@l */
/* 805C8E64  80 63 00 00 */	lwz r3, 0(r3)
/* 805C8E68  C0 03 00 00 */	lfs f0, 0(r3)
/* 805C8E6C  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 805C8E70  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C8E74  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 805C8E78  C0 03 00 08 */	lfs f0, 8(r3)
/* 805C8E7C  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 805C8E80  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 805C8E84  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805C8E88  EC 01 00 2A */	fadds f0, f1, f0
/* 805C8E8C  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 805C8E90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C8E94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C8E98  38 80 00 10 */	li r4, 0x10
/* 805C8E9C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 805C8EA0  7C 05 07 74 */	extsb r5, r0
/* 805C8EA4  4B A6 C3 5D */	bl onSwitch__10dSv_info_cFii
/* 805C8EA8  38 00 00 32 */	li r0, 0x32
/* 805C8EAC  B0 1E 06 2C */	sth r0, 0x62c(r30)
/* 805C8EB0  48 00 00 14 */	b lbl_805C8EC4
lbl_805C8EB4:
/* 805C8EB4  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 805C8EB8  2C 00 00 00 */	cmpwi r0, 0
/* 805C8EBC  40 82 00 08 */	bne lbl_805C8EC4
/* 805C8EC0  4B A5 0D BD */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805C8EC4:
/* 805C8EC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C8EC8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805C8ECC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C8ED0  7C 08 03 A6 */	mtlr r0
/* 805C8ED4  38 21 00 30 */	addi r1, r1, 0x30
/* 805C8ED8  4E 80 00 20 */	blr 
