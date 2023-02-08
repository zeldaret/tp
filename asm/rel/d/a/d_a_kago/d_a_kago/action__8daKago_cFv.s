lbl_80853BCC:
/* 80853BCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80853BD0  7C 08 02 A6 */	mflr r0
/* 80853BD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80853BD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80853BDC  4B B0 E6 01 */	bl _savegpr_29
/* 80853BE0  7C 7E 1B 78 */	mr r30, r3
/* 80853BE4  3C 80 80 85 */	lis r4, lit_3929@ha /* 0x80854B04@ha */
/* 80853BE8  3B E4 4B 04 */	addi r31, r4, lit_3929@l /* 0x80854B04@l */
/* 80853BEC  4B FF 66 25 */	bl checkMoveHeight__8daKago_cFv
/* 80853BF0  7F C3 F3 78 */	mr r3, r30
/* 80853BF4  4B FF 66 B5 */	bl checkSizeBg__8daKago_cFv
/* 80853BF8  7F C3 F3 78 */	mr r3, r30
/* 80853BFC  4B FF F1 95 */	bl setFlyEffect__8daKago_cFv
/* 80853C00  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80853C04  C4 03 D2 E8 */	lfsu f0, m_cpadInfo__8mDoCPd_c@l(r3)  /* 0x803DD2E8@l */
/* 80853C08  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 80853C0C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80853C10  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
/* 80853C14  8B BE 06 EA */	lbz r29, 0x6ea(r30)
/* 80853C18  38 00 00 00 */	li r0, 0
/* 80853C1C  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 80853C20  3C 60 80 85 */	lis r3, s_waterfall__FPvPv@ha /* 0x80853880@ha */
/* 80853C24  38 63 38 80 */	addi r3, r3, s_waterfall__FPvPv@l /* 0x80853880@l */
/* 80853C28  7F C4 F3 78 */	mr r4, r30
/* 80853C2C  4B 7C D7 0D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80853C30  88 1E 06 EA */	lbz r0, 0x6ea(r30)
/* 80853C34  28 00 00 00 */	cmplwi r0, 0
/* 80853C38  41 82 00 88 */	beq lbl_80853CC0
/* 80853C3C  28 1D 00 00 */	cmplwi r29, 0
/* 80853C40  40 82 00 3C */	bne lbl_80853C7C
/* 80853C44  38 00 10 00 */	li r0, 0x1000
/* 80853C48  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80853C4C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80853C50  D0 21 00 08 */	stfs f1, 8(r1)
/* 80853C54  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80853C58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80853C5C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80853C60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80853C64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80853C68  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80853C6C  38 80 00 03 */	li r4, 3
/* 80853C70  38 A0 00 1F */	li r5, 0x1f
/* 80853C74  38 C1 00 08 */	addi r6, r1, 8
/* 80853C78  4B 81 BE 99 */	bl StartQuake__12dVibration_cFii4cXyz
lbl_80853C7C:
/* 80853C7C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80853C80  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80853C84  EC 01 00 32 */	fmuls f0, f1, f0
/* 80853C88  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 80853C8C  C0 5E 06 F4 */	lfs f2, 0x6f4(r30)
/* 80853C90  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80853C94  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80853C98  40 80 00 10 */	bge lbl_80853CA8
/* 80853C9C  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80853CA0  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
/* 80853CA4  48 00 00 10 */	b lbl_80853CB4
lbl_80853CA8:
/* 80853CA8  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 80853CAC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80853CB0  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
lbl_80853CB4:
/* 80853CB4  7F C3 F3 78 */	mr r3, r30
/* 80853CB8  4B FF FA 79 */	bl setWaterFallEffect__8daKago_cFv
/* 80853CBC  48 00 00 20 */	b lbl_80853CDC
lbl_80853CC0:
/* 80853CC0  28 1D 00 00 */	cmplwi r29, 0
/* 80853CC4  41 82 00 18 */	beq lbl_80853CDC
/* 80853CC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80853CCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80853CD0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80853CD4  38 80 00 1F */	li r4, 0x1f
/* 80853CD8  4B 81 C0 BD */	bl StopQuake__12dVibration_cFi
lbl_80853CDC:
/* 80853CDC  38 00 00 00 */	li r0, 0
/* 80853CE0  98 1E 06 DD */	stb r0, 0x6dd(r30)
/* 80853CE4  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 80853CE8  28 00 00 0A */	cmplwi r0, 0xa
/* 80853CEC  41 81 00 9C */	bgt lbl_80853D88
/* 80853CF0  3C 60 80 85 */	lis r3, lit_7982@ha /* 0x80854E90@ha */
/* 80853CF4  38 63 4E 90 */	addi r3, r3, lit_7982@l /* 0x80854E90@l */
/* 80853CF8  54 00 10 3A */	slwi r0, r0, 2
/* 80853CFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80853D00  7C 09 03 A6 */	mtctr r0
/* 80853D04  4E 80 04 20 */	bctr 
lbl_80853D08:
/* 80853D08  7F C3 F3 78 */	mr r3, r30
/* 80853D0C  4B FF 85 C1 */	bl executeFly__8daKago_cFv
/* 80853D10  48 00 00 78 */	b lbl_80853D88
lbl_80853D14:
/* 80853D14  7F C3 F3 78 */	mr r3, r30
/* 80853D18  4B FF 8B E5 */	bl executeStagger__8daKago_cFv
/* 80853D1C  48 00 00 6C */	b lbl_80853D88
lbl_80853D20:
/* 80853D20  7F C3 F3 78 */	mr r3, r30
/* 80853D24  4B FF 9E D9 */	bl executeEvent__8daKago_cFv
/* 80853D28  48 00 00 60 */	b lbl_80853D88
lbl_80853D2C:
/* 80853D2C  7F C3 F3 78 */	mr r3, r30
/* 80853D30  4B FF BD 29 */	bl executePerch__8daKago_cFv
/* 80853D34  48 00 00 54 */	b lbl_80853D88
lbl_80853D38:
/* 80853D38  7F C3 F3 78 */	mr r3, r30
/* 80853D3C  4B FF 93 CD */	bl executeWait__8daKago_cFv
/* 80853D40  48 00 00 48 */	b lbl_80853D88
lbl_80853D44:
/* 80853D44  7F C3 F3 78 */	mr r3, r30
/* 80853D48  4B FF 97 C5 */	bl executeAttack__8daKago_cFv
/* 80853D4C  48 00 00 3C */	b lbl_80853D88
lbl_80853D50:
/* 80853D50  7F C3 F3 78 */	mr r3, r30
/* 80853D54  4B FF BD 55 */	bl executeEvent2__8daKago_cFv
/* 80853D58  48 00 00 30 */	b lbl_80853D88
lbl_80853D5C:
/* 80853D5C  7F C3 F3 78 */	mr r3, r30
/* 80853D60  4B FF D6 85 */	bl executePerch2__8daKago_cFv
/* 80853D64  48 00 00 24 */	b lbl_80853D88
lbl_80853D68:
/* 80853D68  7F C3 F3 78 */	mr r3, r30
/* 80853D6C  4B FF E8 45 */	bl executeLanding__8daKago_cFv
/* 80853D70  48 00 00 18 */	b lbl_80853D88
lbl_80853D74:
/* 80853D74  7F C3 F3 78 */	mr r3, r30
/* 80853D78  4B FF E8 99 */	bl moveDemoFly__8daKago_cFv
/* 80853D7C  48 00 00 0C */	b lbl_80853D88
lbl_80853D80:
/* 80853D80  7F C3 F3 78 */	mr r3, r30
/* 80853D84  4B FF E8 8D */	bl moveDemoFly__8daKago_cFv
lbl_80853D88:
/* 80853D88  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 80853D8C  28 00 00 01 */	cmplwi r0, 1
/* 80853D90  40 82 00 24 */	bne lbl_80853DB4
/* 80853D94  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 80853D98  2C 00 00 00 */	cmpwi r0, 0
/* 80853D9C  41 82 00 0C */	beq lbl_80853DA8
/* 80853DA0  2C 00 00 05 */	cmpwi r0, 5
/* 80853DA4  40 82 00 10 */	bne lbl_80853DB4
lbl_80853DA8:
/* 80853DA8  80 1E 09 CC */	lwz r0, 0x9cc(r30)
/* 80853DAC  60 00 00 01 */	ori r0, r0, 1
/* 80853DB0  90 1E 09 CC */	stw r0, 0x9cc(r30)
lbl_80853DB4:
/* 80853DB4  7F C3 F3 78 */	mr r3, r30
/* 80853DB8  4B FF FB 75 */	bl setFlySound__8daKago_cFv
/* 80853DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80853DC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80853DC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80853DC8  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80853DCC  28 00 00 2C */	cmplwi r0, 0x2c
/* 80853DD0  40 82 00 4C */	bne lbl_80853E1C
/* 80853DD4  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 80853DD8  2C 00 00 09 */	cmpwi r0, 9
/* 80853DDC  41 82 00 0C */	beq lbl_80853DE8
/* 80853DE0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80853DE4  40 82 00 14 */	bne lbl_80853DF8
lbl_80853DE8:
/* 80853DE8  4B 92 D8 59 */	bl dCam_getBody__Fv
/* 80853DEC  38 80 00 02 */	li r4, 2
/* 80853DF0  4B 90 F2 39 */	bl SetTrimTypeForce__9dCamera_cFl
/* 80853DF4  48 00 00 28 */	b lbl_80853E1C
lbl_80853DF8:
/* 80853DF8  88 1E 06 DD */	lbz r0, 0x6dd(r30)
/* 80853DFC  28 00 00 00 */	cmplwi r0, 0
/* 80853E00  41 82 00 1C */	beq lbl_80853E1C
/* 80853E04  4B 92 D8 3D */	bl dCam_getBody__Fv
/* 80853E08  38 80 00 00 */	li r4, 0
/* 80853E0C  4B 90 F2 1D */	bl SetTrimTypeForce__9dCamera_cFl
/* 80853E10  4B 92 D8 31 */	bl dCam_getBody__Fv
/* 80853E14  38 80 00 05 */	li r4, 5
/* 80853E18  4B 90 FF 39 */	bl ModeFix__9dCamera_cFl
lbl_80853E1C:
/* 80853E1C  7F C3 F3 78 */	mr r3, r30
/* 80853E20  38 80 00 00 */	li r4, 0
/* 80853E24  4B 7C 68 A9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80853E28  88 1E 06 DC */	lbz r0, 0x6dc(r30)
/* 80853E2C  28 00 00 00 */	cmplwi r0, 0
/* 80853E30  40 82 00 18 */	bne lbl_80853E48
/* 80853E34  38 7E 07 B8 */	addi r3, r30, 0x7b8
/* 80853E38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80853E3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80853E40  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80853E44  4B 82 2C 69 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80853E48:
/* 80853E48  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80853E4C  28 00 00 00 */	cmplwi r0, 0
/* 80853E50  41 82 00 20 */	beq lbl_80853E70
/* 80853E54  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80853E58  7C 03 07 74 */	extsb r3, r0
/* 80853E5C  4B 7D 92 11 */	bl dComIfGp_getReverb__Fi
/* 80853E60  7C 65 1B 78 */	mr r5, r3
/* 80853E64  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80853E68  38 80 00 00 */	li r4, 0
/* 80853E6C  4B 7B D2 45 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_80853E70:
/* 80853E70  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80853E74  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 80853E78  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80853E7C  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80853E80  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80853E84  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80853E88  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 80853E8C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80853E90  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 80853E94  4B A1 C8 AD */	bl cLib_chaseF__FPfff
/* 80853E98  2C 03 00 00 */	cmpwi r3, 0
/* 80853E9C  40 82 00 10 */	bne lbl_80853EAC
/* 80853EA0  A8 7E 06 C8 */	lha r3, 0x6c8(r30)
/* 80853EA4  38 03 08 00 */	addi r0, r3, 0x800
/* 80853EA8  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
lbl_80853EAC:
/* 80853EAC  A8 1E 06 C8 */	lha r0, 0x6c8(r30)
/* 80853EB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80853EB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80853EB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80853EBC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80853EC0  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 80853EC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80853EC8  FC 00 00 1E */	fctiwz f0, f0
/* 80853ECC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80853ED0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80853ED4  B0 1E 06 CA */	sth r0, 0x6ca(r30)
/* 80853ED8  39 61 00 30 */	addi r11, r1, 0x30
/* 80853EDC  4B B0 E3 4D */	bl _restgpr_29
/* 80853EE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80853EE4  7C 08 03 A6 */	mtlr r0
/* 80853EE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80853EEC  4E 80 00 20 */	blr 
