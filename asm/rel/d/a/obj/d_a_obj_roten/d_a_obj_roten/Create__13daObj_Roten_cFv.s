lbl_80CC0C20:
/* 80CC0C20  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CC0C24  7C 08 02 A6 */	mflr r0
/* 80CC0C28  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CC0C2C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80CC0C30  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80CC0C34  7C 7E 1B 78 */	mr r30, r3
/* 80CC0C38  3C 80 80 CC */	lis r4, lit_3778@ha /* 0x80CC1400@ha */
/* 80CC0C3C  3B E4 14 00 */	addi r31, r4, lit_3778@l /* 0x80CC1400@l */
/* 80CC0C40  4B FF FF 19 */	bl initBaseMtx__13daObj_Roten_cFv
/* 80CC0C44  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CC0C48  38 03 00 24 */	addi r0, r3, 0x24
/* 80CC0C4C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CC0C50  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CC0C54  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC0C58  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CC0C5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC0C60  C0 9E 04 EC */	lfs f4, 0x4ec(r30)
/* 80CC0C64  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80CC0C68  EC 24 00 32 */	fmuls f1, f4, f0
/* 80CC0C6C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80CC0C70  C0 BE 04 F0 */	lfs f5, 0x4f0(r30)
/* 80CC0C74  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80CC0C78  EC 45 00 32 */	fmuls f2, f5, f0
/* 80CC0C7C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80CC0C80  C0 DE 04 F4 */	lfs f6, 0x4f4(r30)
/* 80CC0C84  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80CC0C88  EC 66 00 32 */	fmuls f3, f6, f0
/* 80CC0C8C  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 80CC0C90  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80CC0C94  EC 84 00 32 */	fmuls f4, f4, f0
/* 80CC0C98  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 80CC0C9C  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80CC0CA0  EC A5 00 32 */	fmuls f5, f5, f0
/* 80CC0CA4  D0 A1 00 6C */	stfs f5, 0x6c(r1)
/* 80CC0CA8  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80CC0CAC  EC C6 00 32 */	fmuls f6, f6, f0
/* 80CC0CB0  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 80CC0CB4  7F C3 F3 78 */	mr r3, r30
/* 80CC0CB8  4B 35 98 91 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CC0CBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CC0CC0  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 80CC0CC4  38 60 00 00 */	li r3, 0
/* 80CC0CC8  7C 64 1B 78 */	mr r4, r3
/* 80CC0CCC  38 00 00 02 */	li r0, 2
/* 80CC0CD0  7C 09 03 A6 */	mtctr r0
lbl_80CC0CD4:
/* 80CC0CD4  38 03 05 AC */	addi r0, r3, 0x5ac
/* 80CC0CD8  7C 9E 01 2E */	stwx r4, r30, r0
/* 80CC0CDC  38 63 00 04 */	addi r3, r3, 4
/* 80CC0CE0  42 00 FF F4 */	bdnz lbl_80CC0CD4
/* 80CC0CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC0CE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC0CEC  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80CC0CF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CC0CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC0CF8  4C 41 13 82 */	cror 2, 1, 2
/* 80CC0CFC  40 82 00 1C */	bne lbl_80CC0D18
/* 80CC0D00  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CC0D04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC0D08  40 80 00 10 */	bge lbl_80CC0D18
/* 80CC0D0C  38 00 00 00 */	li r0, 0
/* 80CC0D10  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 80CC0D14  48 00 00 0C */	b lbl_80CC0D20
lbl_80CC0D18:
/* 80CC0D18  38 00 00 01 */	li r0, 1
/* 80CC0D1C  98 1E 05 C4 */	stb r0, 0x5c4(r30)
lbl_80CC0D20:
/* 80CC0D20  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CC0D24  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80CC0D28  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 80CC0D2C  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 80CC0D30  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80CC0D34  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 80CC0D38  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80CC0D3C  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80CC0D40  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80CC0D44  7C 00 00 D0 */	neg r0, r0
/* 80CC0D48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CC0D4C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CC0D50  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CC0D54  7C C3 04 2E */	lfsx f6, r3, r0
/* 80CC0D58  7C 63 02 14 */	add r3, r3, r0
/* 80CC0D5C  C0 E3 00 04 */	lfs f7, 4(r3)
/* 80CC0D60  EC 25 01 F2 */	fmuls f1, f5, f7
/* 80CC0D64  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80CC0D68  EC 41 00 28 */	fsubs f2, f1, f0
/* 80CC0D6C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80CC0D70  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80CC0D74  EC 25 01 B2 */	fmuls f1, f5, f6
/* 80CC0D78  EC 03 01 F2 */	fmuls f0, f3, f7
/* 80CC0D7C  EC 21 00 2A */	fadds f1, f1, f0
/* 80CC0D80  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CC0D84  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CC0D88  EC 60 08 2A */	fadds f3, f0, f1
/* 80CC0D8C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80CC0D90  FC 00 20 18 */	frsp f0, f4
/* 80CC0D94  EC 21 00 2A */	fadds f1, f1, f0
/* 80CC0D98  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CC0D9C  EC 00 10 2A */	fadds f0, f0, f2
/* 80CC0DA0  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 80CC0DA4  D0 3E 05 BC */	stfs f1, 0x5bc(r30)
/* 80CC0DA8  D0 7E 05 C0 */	stfs f3, 0x5c0(r30)
/* 80CC0DAC  88 1E 05 C4 */	lbz r0, 0x5c4(r30)
/* 80CC0DB0  28 00 00 00 */	cmplwi r0, 0
/* 80CC0DB4  41 82 00 F4 */	beq lbl_80CC0EA8
/* 80CC0DB8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CC0DBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CC0DC0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CC0DC4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CC0DC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CC0DCC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CC0DD0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CC0DD4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CC0DD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CC0DDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CC0DE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CC0DE4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CC0DE8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CC0DEC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CC0DF0  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80CC0DF4  28 00 00 00 */	cmplwi r0, 0
/* 80CC0DF8  40 82 00 54 */	bne lbl_80CC0E4C
/* 80CC0DFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC0E00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC0E04  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CC0E08  38 80 00 00 */	li r4, 0
/* 80CC0E0C  90 81 00 08 */	stw r4, 8(r1)
/* 80CC0E10  38 00 FF FF */	li r0, -1
/* 80CC0E14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CC0E18  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CC0E1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CC0E20  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CC0E24  38 80 00 00 */	li r4, 0
/* 80CC0E28  38 A0 03 AD */	li r5, 0x3ad
/* 80CC0E2C  38 DE 05 B8 */	addi r6, r30, 0x5b8
/* 80CC0E30  38 E0 00 00 */	li r7, 0
/* 80CC0E34  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80CC0E38  39 21 00 44 */	addi r9, r1, 0x44
/* 80CC0E3C  39 40 00 FF */	li r10, 0xff
/* 80CC0E40  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CC0E44  4B 38 BC 4D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CC0E48  90 7E 05 AC */	stw r3, 0x5ac(r30)
lbl_80CC0E4C:
/* 80CC0E4C  80 1E 05 B0 */	lwz r0, 0x5b0(r30)
/* 80CC0E50  28 00 00 00 */	cmplwi r0, 0
/* 80CC0E54  40 82 00 54 */	bne lbl_80CC0EA8
/* 80CC0E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC0E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC0E60  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CC0E64  38 80 00 00 */	li r4, 0
/* 80CC0E68  90 81 00 08 */	stw r4, 8(r1)
/* 80CC0E6C  38 00 FF FF */	li r0, -1
/* 80CC0E70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CC0E74  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CC0E78  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CC0E7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CC0E80  38 80 00 00 */	li r4, 0
/* 80CC0E84  38 A0 03 AF */	li r5, 0x3af
/* 80CC0E88  38 DE 05 B8 */	addi r6, r30, 0x5b8
/* 80CC0E8C  38 E0 00 00 */	li r7, 0
/* 80CC0E90  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80CC0E94  39 21 00 38 */	addi r9, r1, 0x38
/* 80CC0E98  39 40 00 FF */	li r10, 0xff
/* 80CC0E9C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CC0EA0  4B 38 BB F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CC0EA4  90 7E 05 B0 */	stw r3, 0x5b0(r30)
lbl_80CC0EA8:
/* 80CC0EA8  38 60 00 01 */	li r3, 1
/* 80CC0EAC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80CC0EB0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80CC0EB4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CC0EB8  7C 08 03 A6 */	mtlr r0
/* 80CC0EBC  38 21 00 90 */	addi r1, r1, 0x90
/* 80CC0EC0  4E 80 00 20 */	blr 
