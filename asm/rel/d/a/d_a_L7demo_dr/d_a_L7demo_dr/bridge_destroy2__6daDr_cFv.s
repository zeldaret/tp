lbl_805A9D10:
/* 805A9D10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A9D14  7C 08 02 A6 */	mflr r0
/* 805A9D18  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A9D1C  39 61 00 40 */	addi r11, r1, 0x40
/* 805A9D20  4B DB 84 BD */	bl _savegpr_29
/* 805A9D24  7C 7D 1B 78 */	mr r29, r3
/* 805A9D28  3C 60 80 5B */	lis r3, lit_3864@ha /* 0x805AA454@ha */
/* 805A9D2C  3B E3 A4 54 */	addi r31, r3, lit_3864@l /* 0x805AA454@l */
/* 805A9D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A9D34  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A9D38  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805A9D3C  7C 00 07 74 */	extsb r0, r0
/* 805A9D40  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805A9D44  7C 64 02 14 */	add r3, r4, r0
/* 805A9D48  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 805A9D4C  80 1D 06 54 */	lwz r0, 0x654(r29)
/* 805A9D50  2C 00 00 00 */	cmpwi r0, 0
/* 805A9D54  40 82 00 C4 */	bne lbl_805A9E18
/* 805A9D58  38 00 00 B5 */	li r0, 0xb5
/* 805A9D5C  B0 01 00 08 */	sth r0, 8(r1)
/* 805A9D60  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 805A9D64  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 805A9D68  38 81 00 08 */	addi r4, r1, 8
/* 805A9D6C  4B A6 FA 8D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805A9D70  28 03 00 00 */	cmplwi r3, 0
/* 805A9D74  41 82 00 0C */	beq lbl_805A9D80
/* 805A9D78  38 00 00 01 */	li r0, 1
/* 805A9D7C  98 03 0A 94 */	stb r0, 0xa94(r3)
lbl_805A9D80:
/* 805A9D80  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805A9D84  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 805A9D88  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805A9D8C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805A9D90  D0 3D 06 30 */	stfs f1, 0x630(r29)
/* 805A9D94  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 805A9D98  D0 1D 06 34 */	stfs f0, 0x634(r29)
/* 805A9D9C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 805A9DA0  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 805A9DA4  D0 3D 06 24 */	stfs f1, 0x624(r29)
/* 805A9DA8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805A9DAC  D0 1D 06 28 */	stfs f0, 0x628(r29)
/* 805A9DB0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805A9DB4  D0 1D 06 2C */	stfs f0, 0x62c(r29)
/* 805A9DB8  C0 1D 06 30 */	lfs f0, 0x630(r29)
/* 805A9DBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805A9DC0  C0 1D 06 34 */	lfs f0, 0x634(r29)
/* 805A9DC4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805A9DC8  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 805A9DCC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805A9DD0  C0 1D 06 24 */	lfs f0, 0x624(r29)
/* 805A9DD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805A9DD8  C0 1D 06 28 */	lfs f0, 0x628(r29)
/* 805A9DDC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A9DE0  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 805A9DE4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805A9DE8  38 7E 02 48 */	addi r3, r30, 0x248
/* 805A9DEC  38 81 00 18 */	addi r4, r1, 0x18
/* 805A9DF0  38 A1 00 0C */	addi r5, r1, 0xc
/* 805A9DF4  4B BD 6C B5 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805A9DF8  38 00 00 B4 */	li r0, 0xb4
/* 805A9DFC  98 1D 06 59 */	stb r0, 0x659(r29)
/* 805A9E00  38 00 00 00 */	li r0, 0
/* 805A9E04  98 1D 06 5A */	stb r0, 0x65a(r29)
/* 805A9E08  80 7D 06 54 */	lwz r3, 0x654(r29)
/* 805A9E0C  38 03 00 01 */	addi r0, r3, 1
/* 805A9E10  90 1D 06 54 */	stw r0, 0x654(r29)
/* 805A9E14  48 00 00 B8 */	b lbl_805A9ECC
lbl_805A9E18:
/* 805A9E18  2C 00 FF FF */	cmpwi r0, -1
/* 805A9E1C  41 82 00 B0 */	beq lbl_805A9ECC
/* 805A9E20  88 7D 06 5A */	lbz r3, 0x65a(r29)
/* 805A9E24  28 03 00 1C */	cmplwi r3, 0x1c
/* 805A9E28  40 80 00 10 */	bge lbl_805A9E38
/* 805A9E2C  38 03 00 01 */	addi r0, r3, 1
/* 805A9E30  98 1D 06 5A */	stb r0, 0x65a(r29)
/* 805A9E34  48 00 00 1C */	b lbl_805A9E50
lbl_805A9E38:
/* 805A9E38  40 82 00 18 */	bne lbl_805A9E50
/* 805A9E3C  38 03 00 01 */	addi r0, r3, 1
/* 805A9E40  98 1D 06 5A */	stb r0, 0x65a(r29)
/* 805A9E44  38 64 5B D4 */	addi r3, r4, 0x5bd4
/* 805A9E48  38 80 00 1F */	li r4, 0x1f
/* 805A9E4C  4B AC 5F 49 */	bl StopQuake__12dVibration_cFi
lbl_805A9E50:
/* 805A9E50  88 1D 06 59 */	lbz r0, 0x659(r29)
/* 805A9E54  28 00 00 00 */	cmplwi r0, 0
/* 805A9E58  40 82 00 74 */	bne lbl_805A9ECC
/* 805A9E5C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805A9E60  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A9E64  28 04 00 FF */	cmplwi r4, 0xff
/* 805A9E68  41 82 00 18 */	beq lbl_805A9E80
/* 805A9E6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A9E70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A9E74  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805A9E78  7C 05 07 74 */	extsb r5, r0
/* 805A9E7C  4B A8 B3 85 */	bl onSwitch__10dSv_info_cFii
lbl_805A9E80:
/* 805A9E80  38 7E 02 48 */	addi r3, r30, 0x248
/* 805A9E84  4B BB 76 29 */	bl Start__9dCamera_cFv
/* 805A9E88  38 7E 02 48 */	addi r3, r30, 0x248
/* 805A9E8C  38 80 00 00 */	li r4, 0
/* 805A9E90  4B BB 91 7D */	bl SetTrimSize__9dCamera_cFl
/* 805A9E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A9E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A9E9C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805A9EA0  4B A9 85 C9 */	bl reset__14dEvt_control_cFv
/* 805A9EA4  38 60 00 07 */	li r3, 7
/* 805A9EA8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805A9EAC  38 80 00 00 */	li r4, 0
/* 805A9EB0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805A9EB4  7C 05 07 74 */	extsb r5, r0
/* 805A9EB8  38 C0 00 00 */	li r6, 0
/* 805A9EBC  38 E0 FF FF */	li r7, -1
/* 805A9EC0  4B A7 D2 B1 */	bl dStage_changeScene__FifUlScsi
/* 805A9EC4  7F A3 EB 78 */	mr r3, r29
/* 805A9EC8  4B A6 FD B5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805A9ECC:
/* 805A9ECC  39 61 00 40 */	addi r11, r1, 0x40
/* 805A9ED0  4B DB 83 59 */	bl _restgpr_29
/* 805A9ED4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A9ED8  7C 08 03 A6 */	mtlr r0
/* 805A9EDC  38 21 00 40 */	addi r1, r1, 0x40
/* 805A9EE0  4E 80 00 20 */	blr 
