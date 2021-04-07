lbl_806A2CE8:
/* 806A2CE8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 806A2CEC  7C 08 02 A6 */	mflr r0
/* 806A2CF0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 806A2CF4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806A2CF8  4B CB F4 DD */	bl _savegpr_27
/* 806A2CFC  7C 7E 1B 78 */	mr r30, r3
/* 806A2D00  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A2D04  3B E3 71 C4 */	addi r31, r3, lit_3903@l /* 0x806A71C4@l */
/* 806A2D08  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2D0C  4B 9D 4F 5D */	bl __ct__11dBgS_LinChkFv
/* 806A2D10  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806A2D14  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A2D18  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806A2D1C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806A2D20  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806A2D24  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A2D28  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806A2D2C  EC 01 00 2A */	fadds f0, f1, f0
/* 806A2D30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A2D34  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806A2D38  83 83 00 08 */	lwz r28, 8(r3)
/* 806A2D3C  3B 60 00 00 */	li r27, 0
/* 806A2D40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A2D44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A2D48  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806A2D4C  48 00 00 80 */	b lbl_806A2DCC
lbl_806A2D50:
/* 806A2D50  2C 1B 00 FF */	cmpwi r27, 0xff
/* 806A2D54  40 80 00 70 */	bge lbl_806A2DC4
/* 806A2D58  C0 1C 00 04 */	lfs f0, 4(r28)
/* 806A2D5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806A2D60  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806A2D64  C0 1C 00 08 */	lfs f0, 8(r28)
/* 806A2D68  EC 01 00 2A */	fadds f0, f1, f0
/* 806A2D6C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806A2D70  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806A2D74  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806A2D78  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2D7C  38 81 00 14 */	addi r4, r1, 0x14
/* 806A2D80  38 A1 00 08 */	addi r5, r1, 8
/* 806A2D84  7F C6 F3 78 */	mr r6, r30
/* 806A2D88  4B 9D 4F DD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806A2D8C  7F A3 EB 78 */	mr r3, r29
/* 806A2D90  38 81 00 20 */	addi r4, r1, 0x20
/* 806A2D94  4B 9D 16 21 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806A2D98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A2D9C  40 82 00 18 */	bne lbl_806A2DB4
/* 806A2DA0  38 00 00 01 */	li r0, 1
/* 806A2DA4  3C 60 80 6A */	lis r3, check_index@ha /* 0x806A74F0@ha */
/* 806A2DA8  38 63 74 F0 */	addi r3, r3, check_index@l /* 0x806A74F0@l */
/* 806A2DAC  7C 03 D9 AE */	stbx r0, r3, r27
/* 806A2DB0  48 00 00 14 */	b lbl_806A2DC4
lbl_806A2DB4:
/* 806A2DB4  38 00 00 00 */	li r0, 0
/* 806A2DB8  3C 60 80 6A */	lis r3, check_index@ha /* 0x806A74F0@ha */
/* 806A2DBC  38 63 74 F0 */	addi r3, r3, check_index@l /* 0x806A74F0@l */
/* 806A2DC0  7C 03 D9 AE */	stbx r0, r3, r27
lbl_806A2DC4:
/* 806A2DC4  3B 7B 00 01 */	addi r27, r27, 1
/* 806A2DC8  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_806A2DCC:
/* 806A2DCC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806A2DD0  A0 03 00 00 */	lhz r0, 0(r3)
/* 806A2DD4  7C 1B 00 00 */	cmpw r27, r0
/* 806A2DD8  41 80 FF 78 */	blt lbl_806A2D50
/* 806A2DDC  C0 DF 00 00 */	lfs f6, 0(r31)
/* 806A2DE0  38 A0 00 00 */	li r5, 0
/* 806A2DE4  38 C0 00 00 */	li r6, 0
/* 806A2DE8  C0 1F 00 48 */	lfs f0, 0x48(r31)
lbl_806A2DEC:
/* 806A2DEC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806A2DF0  80 83 00 08 */	lwz r4, 8(r3)
/* 806A2DF4  38 E0 00 00 */	li r7, 0
/* 806A2DF8  A0 03 00 00 */	lhz r0, 0(r3)
/* 806A2DFC  7C 09 03 A6 */	mtctr r0
/* 806A2E00  2C 00 00 00 */	cmpwi r0, 0
/* 806A2E04  40 81 00 8C */	ble lbl_806A2E90
lbl_806A2E08:
/* 806A2E08  2C 07 00 FF */	cmpwi r7, 0xff
/* 806A2E0C  40 80 00 78 */	bge lbl_806A2E84
/* 806A2E10  3C 60 80 6A */	lis r3, check_index@ha /* 0x806A74F0@ha */
/* 806A2E14  38 63 74 F0 */	addi r3, r3, check_index@l /* 0x806A74F0@l */
/* 806A2E18  7C 03 38 AE */	lbzx r0, r3, r7
/* 806A2E1C  28 00 00 00 */	cmplwi r0, 0
/* 806A2E20  41 82 00 64 */	beq lbl_806A2E84
/* 806A2E24  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 806A2E28  C0 24 00 04 */	lfs f1, 4(r4)
/* 806A2E2C  EC 82 08 28 */	fsubs f4, f2, f1
/* 806A2E30  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 806A2E34  C0 24 00 08 */	lfs f1, 8(r4)
/* 806A2E38  EC A2 08 28 */	fsubs f5, f2, f1
/* 806A2E3C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806A2E40  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 806A2E44  EC 22 08 28 */	fsubs f1, f2, f1
/* 806A2E48  EC 61 00 72 */	fmuls f3, f1, f1
/* 806A2E4C  EC 44 01 32 */	fmuls f2, f4, f4
/* 806A2E50  EC 25 01 72 */	fmuls f1, f5, f5
/* 806A2E54  EC 22 08 2A */	fadds f1, f2, f1
/* 806A2E58  EC 43 08 2A */	fadds f2, f3, f1
/* 806A2E5C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A2E60  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806A2E64  40 81 00 0C */	ble lbl_806A2E70
/* 806A2E68  FC 20 10 34 */	frsqrte f1, f2
/* 806A2E6C  EC 41 00 B2 */	fmuls f2, f1, f2
lbl_806A2E70:
/* 806A2E70  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 806A2E74  40 80 00 10 */	bge lbl_806A2E84
/* 806A2E78  98 FE 05 BC */	stb r7, 0x5bc(r30)
/* 806A2E7C  38 A0 00 01 */	li r5, 1
/* 806A2E80  48 00 00 10 */	b lbl_806A2E90
lbl_806A2E84:
/* 806A2E84  38 E7 00 01 */	addi r7, r7, 1
/* 806A2E88  38 84 00 10 */	addi r4, r4, 0x10
/* 806A2E8C  42 00 FF 7C */	bdnz lbl_806A2E08
lbl_806A2E90:
/* 806A2E90  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 806A2E94  40 82 00 14 */	bne lbl_806A2EA8
/* 806A2E98  EC C6 00 2A */	fadds f6, f6, f0
/* 806A2E9C  38 C6 00 01 */	addi r6, r6, 1
/* 806A2EA0  2C 06 00 64 */	cmpwi r6, 0x64
/* 806A2EA4  41 80 FF 48 */	blt lbl_806A2DEC
lbl_806A2EA8:
/* 806A2EA8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 806A2EAC  40 82 00 18 */	bne lbl_806A2EC4
/* 806A2EB0  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2EB4  38 80 FF FF */	li r4, -1
/* 806A2EB8  4B 9D 4E 25 */	bl __dt__11dBgS_LinChkFv
/* 806A2EBC  38 60 00 00 */	li r3, 0
/* 806A2EC0  48 00 00 3C */	b lbl_806A2EFC
lbl_806A2EC4:
/* 806A2EC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A2EC8  4B BC 4A 8D */	bl cM_rndF__Ff
/* 806A2ECC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806A2ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A2ED4  40 80 00 10 */	bge lbl_806A2EE4
/* 806A2ED8  38 00 00 01 */	li r0, 1
/* 806A2EDC  98 1E 05 BD */	stb r0, 0x5bd(r30)
/* 806A2EE0  48 00 00 0C */	b lbl_806A2EEC
lbl_806A2EE4:
/* 806A2EE4  38 00 FF FF */	li r0, -1
/* 806A2EE8  98 1E 05 BD */	stb r0, 0x5bd(r30)
lbl_806A2EEC:
/* 806A2EEC  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2EF0  38 80 FF FF */	li r4, -1
/* 806A2EF4  4B 9D 4D E9 */	bl __dt__11dBgS_LinChkFv
/* 806A2EF8  38 60 00 01 */	li r3, 1
lbl_806A2EFC:
/* 806A2EFC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806A2F00  4B CB F3 21 */	bl _restgpr_27
/* 806A2F04  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806A2F08  7C 08 03 A6 */	mtlr r0
/* 806A2F0C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806A2F10  4E 80 00 20 */	blr 
