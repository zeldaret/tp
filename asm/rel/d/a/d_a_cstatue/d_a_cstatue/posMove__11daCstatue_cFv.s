lbl_80664C9C:
/* 80664C9C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80664CA0  7C 08 02 A6 */	mflr r0
/* 80664CA4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80664CA8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80664CAC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80664CB0  39 61 00 60 */	addi r11, r1, 0x60
/* 80664CB4  4B CF D5 24 */	b _savegpr_28
/* 80664CB8  7C 7C 1B 78 */	mr r28, r3
/* 80664CBC  3C 60 80 66 */	lis r3, lit_3768@ha
/* 80664CC0  3B C3 76 98 */	addi r30, r3, lit_3768@l
/* 80664CC4  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664CC8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80664CCC  41 82 00 64 */	beq lbl_80664D30
/* 80664CD0  38 7C 06 AC */	addi r3, r28, 0x6ac
/* 80664CD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80664CD8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80664CDC  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 80664CE0  7F A4 EB 78 */	mr r4, r29
/* 80664CE4  4B A1 1D C8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80664CE8  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 80664CEC  C0 1C 07 44 */	lfs f0, 0x744(r28)
/* 80664CF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80664CF4  41 82 08 00 */	beq lbl_806654F4
/* 80664CF8  7F A3 EB 78 */	mr r3, r29
/* 80664CFC  38 9C 07 9C */	addi r4, r28, 0x79c
/* 80664D00  4B A0 FE 40 */	b ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 80664D04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80664D08  41 82 07 EC */	beq lbl_806654F4
/* 80664D0C  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664D10  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80664D14  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 80664D18  C0 1C 07 44 */	lfs f0, 0x744(r28)
/* 80664D1C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80664D20  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80664D24  D0 1C 0A F8 */	stfs f0, 0xaf8(r28)
/* 80664D28  48 00 00 08 */	b lbl_80664D30
/* 80664D2C  48 00 07 C8 */	b lbl_806654F4
lbl_80664D30:
/* 80664D30  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80664D34  54 1F DF FE */	rlwinm r31, r0, 0x1b, 0x1f, 0x1f
/* 80664D38  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80664D3C  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 80664D40  90 1C 06 D8 */	stw r0, 0x6d8(r28)
/* 80664D44  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80664D48  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80664D4C  40 82 00 38 */	bne lbl_80664D84
/* 80664D50  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80664D54  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 80664D58  EC 01 00 2A */	fadds f0, f1, f0
/* 80664D5C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80664D60  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 80664D64  C0 3C 05 34 */	lfs f1, 0x534(r28)
/* 80664D68  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80664D6C  40 80 00 08 */	bge lbl_80664D74
/* 80664D70  D0 3C 04 FC */	stfs f1, 0x4fc(r28)
lbl_80664D74:
/* 80664D74  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80664D78  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 80664D7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80664D80  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_80664D84:
/* 80664D84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80664D88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80664D8C  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 80664D90  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664D94  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80664D98  40 82 01 4C */	bne lbl_80664EE4
/* 80664D9C  88 1C 0A E1 */	lbz r0, 0xae1(r28)
/* 80664DA0  28 00 00 00 */	cmplwi r0, 0
/* 80664DA4  40 82 01 40 */	bne lbl_80664EE4
/* 80664DA8  7F A3 EB 78 */	mr r3, r29
/* 80664DAC  4B A7 C5 C8 */	b getCopyRodControllActor__9daAlink_cFv
/* 80664DB0  7C 03 E0 40 */	cmplw r3, r28
/* 80664DB4  40 82 01 30 */	bne lbl_80664EE4
/* 80664DB8  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664DBC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80664DC0  40 82 00 0C */	bne lbl_80664DCC
/* 80664DC4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80664DC8  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
lbl_80664DCC:
/* 80664DCC  88 7C 0A DF */	lbz r3, 0xadf(r28)
/* 80664DD0  28 03 00 06 */	cmplwi r3, 6
/* 80664DD4  40 82 00 10 */	bne lbl_80664DE4
/* 80664DD8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80664DDC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80664DE0  48 00 03 4C */	b lbl_8066512C
lbl_80664DE4:
/* 80664DE4  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80664DE8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80664DEC  41 82 03 40 */	beq lbl_8066512C
/* 80664DF0  28 03 00 03 */	cmplwi r3, 3
/* 80664DF4  41 82 03 38 */	beq lbl_8066512C
/* 80664DF8  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80664DFC  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 80664E00  EC 01 00 2A */	fadds f0, f1, f0
/* 80664E04  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80664E08  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80664E0C  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 80664E10  EC 01 00 2A */	fadds f0, f1, f0
/* 80664E14  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80664E18  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 80664E1C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80664E20  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 80664E24  EC 00 00 32 */	fmuls f0, f0, f0
/* 80664E28  EC 21 00 2A */	fadds f1, f1, f0
/* 80664E2C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80664E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80664E34  40 81 00 0C */	ble lbl_80664E40
/* 80664E38  FC 00 08 34 */	frsqrte f0, f1
/* 80664E3C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80664E40:
/* 80664E40  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 80664E44  88 1C 0A DF */	lbz r0, 0xadf(r28)
/* 80664E48  28 00 00 01 */	cmplwi r0, 1
/* 80664E4C  40 82 02 E0 */	bne lbl_8066512C
/* 80664E50  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80664E54  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80664E58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80664E5C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80664E60  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80664E64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80664E68  4C 41 13 82 */	cror 2, 1, 2
/* 80664E6C  40 82 00 50 */	bne lbl_80664EBC
/* 80664E70  38 7C 04 F8 */	addi r3, r28, 0x4f8
/* 80664E74  4B C0 22 B4 */	b atan2sX_Z__4cXyzCFv
/* 80664E78  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80664E7C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80664E80  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 80664E84  EC 21 00 24 */	fdivs f1, f1, f0
/* 80664E88  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80664E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80664E90  40 81 00 08 */	ble lbl_80664E98
/* 80664E94  FC 20 00 90 */	fmr f1, f0
lbl_80664E98:
/* 80664E98  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 80664E9C  28 00 00 01 */	cmplwi r0, 1
/* 80664EA0  41 82 00 10 */	beq lbl_80664EB0
/* 80664EA4  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80664EA8  EC 20 08 2A */	fadds f1, f0, f1
/* 80664EAC  48 00 00 1C */	b lbl_80664EC8
lbl_80664EB0:
/* 80664EB0  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 80664EB4  EC 20 08 2A */	fadds f1, f0, f1
/* 80664EB8  48 00 00 10 */	b lbl_80664EC8
lbl_80664EBC:
/* 80664EBC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80664EC0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80664EC4  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
lbl_80664EC8:
/* 80664EC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80664ECC  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 80664ED0  4B C0 B8 70 */	b cLib_chaseF__FPfff
/* 80664ED4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80664ED8  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80664EDC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80664EE0  48 00 02 4C */	b lbl_8066512C
lbl_80664EE4:
/* 80664EE4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80664EE8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80664EEC  40 82 01 54 */	bne lbl_80665040
/* 80664EF0  88 7C 0A E0 */	lbz r3, 0xae0(r28)
/* 80664EF4  28 03 00 00 */	cmplwi r3, 0
/* 80664EF8  41 82 01 48 */	beq lbl_80665040
/* 80664EFC  80 9C 06 D8 */	lwz r4, 0x6d8(r28)
/* 80664F00  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 80664F04  41 82 00 9C */	beq lbl_80664FA0
/* 80664F08  28 03 00 03 */	cmplwi r3, 3
/* 80664F0C  41 82 00 80 */	beq lbl_80664F8C
/* 80664F10  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80664F14  38 80 00 07 */	li r4, 7
/* 80664F18  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80664F1C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80664F20  3C A5 00 02 */	addis r5, r5, 2
/* 80664F24  38 C0 00 80 */	li r6, 0x80
/* 80664F28  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80664F2C  4B 9D 73 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80664F30  7C 64 1B 78 */	mr r4, r3
/* 80664F34  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80664F38  38 A0 FF FF */	li r5, -1
/* 80664F3C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80664F40  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80664F44  FC 60 08 90 */	fmr f3, f1
/* 80664F48  C0 9E 01 90 */	lfs f4, 0x190(r30)
/* 80664F4C  4B 9A BF 24 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80664F50  38 00 00 03 */	li r0, 3
/* 80664F54  98 1C 0A DF */	stb r0, 0xadf(r28)
/* 80664F58  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80664F5C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80664F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80664F64  40 81 00 1C */	ble lbl_80664F80
/* 80664F68  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80664F6C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80664F70  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664F74  60 00 02 00 */	ori r0, r0, 0x200
/* 80664F78  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 80664F7C  48 00 00 18 */	b lbl_80664F94
lbl_80664F80:
/* 80664F80  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80664F84  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80664F88  48 00 00 0C */	b lbl_80664F94
lbl_80664F8C:
/* 80664F8C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80664F90  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80664F94:
/* 80664F94  38 00 00 00 */	li r0, 0
/* 80664F98  98 1C 0A E0 */	stb r0, 0xae0(r28)
/* 80664F9C  48 00 00 A4 */	b lbl_80665040
lbl_80664FA0:
/* 80664FA0  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80664FA4  41 82 00 30 */	beq lbl_80664FD4
/* 80664FA8  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80664FAC  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 80664FB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80664FB4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80664FB8  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80664FBC  3C 63 00 01 */	addis r3, r3, 1
/* 80664FC0  38 63 80 00 */	addi r3, r3, -32768
/* 80664FC4  A8 1C 05 E8 */	lha r0, 0x5e8(r28)
/* 80664FC8  54 00 08 3C */	slwi r0, r0, 1
/* 80664FCC  7C 03 00 50 */	subf r0, r3, r0
/* 80664FD0  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_80664FD4:
/* 80664FD4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80664FD8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80664FDC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80664FE0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80664FE4  7C 43 04 2E */	lfsx f2, r3, r0
/* 80664FE8  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80664FEC  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80664FF0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80664FF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80664FF8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80664FFC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80665000  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80665004  7C 63 02 14 */	add r3, r3, r0
/* 80665008  C0 43 00 04 */	lfs f2, 4(r3)
/* 8066500C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80665010  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80665014  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80665018  EC 01 00 2A */	fadds f0, f1, f0
/* 8066501C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80665020  88 1C 0A E0 */	lbz r0, 0xae0(r28)
/* 80665024  28 00 00 01 */	cmplwi r0, 1
/* 80665028  40 82 00 18 */	bne lbl_80665040
/* 8066502C  38 00 00 02 */	li r0, 2
/* 80665030  98 1C 0A E0 */	stb r0, 0xae0(r28)
/* 80665034  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80665038  60 00 20 00 */	ori r0, r0, 0x2000
/* 8066503C  90 1C 06 D8 */	stw r0, 0x6d8(r28)
lbl_80665040:
/* 80665040  88 1C 0A DF */	lbz r0, 0xadf(r28)
/* 80665044  28 00 00 00 */	cmplwi r0, 0
/* 80665048  40 82 00 24 */	bne lbl_8066506C
/* 8066504C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80665050  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80665054  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80665058  88 1C 0A E0 */	lbz r0, 0xae0(r28)
/* 8066505C  28 00 00 00 */	cmplwi r0, 0
/* 80665060  40 82 00 CC */	bne lbl_8066512C
/* 80665064  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80665068  48 00 00 C4 */	b lbl_8066512C
lbl_8066506C:
/* 8066506C  28 00 00 03 */	cmplwi r0, 3
/* 80665070  40 82 00 BC */	bne lbl_8066512C
/* 80665074  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80665078  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8066507C  41 82 00 B0 */	beq lbl_8066512C
/* 80665080  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80665084  38 63 00 0C */	addi r3, r3, 0xc
/* 80665088  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 8066508C  4B CC 33 A0 */	b checkPass__12J3DFrameCtrlFf
/* 80665090  2C 03 00 00 */	cmpwi r3, 0
/* 80665094  41 82 00 10 */	beq lbl_806650A4
/* 80665098  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8066509C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806650A0  48 00 00 40 */	b lbl_806650E0
lbl_806650A4:
/* 806650A4  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 806650A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806650AC  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 806650B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806650B4  40 81 00 10 */	ble lbl_806650C4
/* 806650B8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 806650BC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806650C0  48 00 00 20 */	b lbl_806650E0
lbl_806650C4:
/* 806650C4  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 806650C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806650CC  40 81 00 14 */	ble lbl_806650E0
/* 806650D0  38 7C 05 2C */	addi r3, r28, 0x52c
/* 806650D4  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806650D8  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 806650DC  4B C0 B6 64 */	b cLib_chaseF__FPfff
lbl_806650E0:
/* 806650E0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 806650E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806650E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806650EC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806650F0  7C 43 04 2E */	lfsx f2, r3, r0
/* 806650F4  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 806650F8  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 806650FC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80665100  EC 01 00 2A */	fadds f0, f1, f0
/* 80665104  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80665108  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8066510C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80665110  7C 63 02 14 */	add r3, r3, r0
/* 80665114  C0 43 00 04 */	lfs f2, 4(r3)
/* 80665118  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8066511C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80665120  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80665124  EC 01 00 2A */	fadds f0, f1, f0
/* 80665128  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8066512C:
/* 8066512C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80665130  D0 1C 0B 08 */	stfs f0, 0xb08(r28)
/* 80665134  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80665138  D0 1C 0B 0C */	stfs f0, 0xb0c(r28)
/* 8066513C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80665140  D0 1C 0B 10 */	stfs f0, 0xb10(r28)
/* 80665144  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80665148  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8066514C  40 82 02 C8 */	bne lbl_80665414
/* 80665150  38 9C 08 84 */	addi r4, r28, 0x884
/* 80665154  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80665158  7C 65 1B 78 */	mr r5, r3
/* 8066515C  4B CE 1F 34 */	b PSVECAdd
/* 80665160  38 7C 08 84 */	addi r3, r28, 0x884
/* 80665164  4B BF E7 F8 */	b ClrCcMove__9cCcD_SttsFv
/* 80665168  38 7C 06 AC */	addi r3, r28, 0x6ac
/* 8066516C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80665170  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80665174  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 80665178  7F A4 EB 78 */	mr r4, r29
/* 8066517C  4B A1 19 30 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80665180  2C 1F 00 00 */	cmpwi r31, 0
/* 80665184  41 82 01 E4 */	beq lbl_80665368
/* 80665188  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 8066518C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80665190  40 82 01 D8 */	bne lbl_80665368
/* 80665194  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80665198  C0 3C 07 44 */	lfs f1, 0x744(r28)
/* 8066519C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806651A0  41 82 01 C8 */	beq lbl_80665368
/* 806651A4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806651A8  EF E1 00 28 */	fsubs f31, f1, f0
/* 806651AC  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha
/* 806651B0  38 03 7A F0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 806651B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806651B8  7F A3 EB 78 */	mr r3, r29
/* 806651BC  38 9C 07 9C */	addi r4, r28, 0x79c
/* 806651C0  38 A1 00 34 */	addi r5, r1, 0x34
/* 806651C4  4B A0 F5 80 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806651C8  38 61 00 34 */	addi r3, r1, 0x34
/* 806651CC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 806651D0  4B 9B 8A 08 */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 806651D4  7C 7D 1B 78 */	mr r29, r3
/* 806651D8  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806651DC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806651E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806651E4  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806651E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806651EC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806651F0  C0 5C 04 C4 */	lfs f2, 0x4c4(r28)
/* 806651F4  C0 1C 04 BC */	lfs f0, 0x4bc(r28)
/* 806651F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806651FC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80665200  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80665204  38 61 00 10 */	addi r3, r1, 0x10
/* 80665208  38 81 00 1C */	addi r4, r1, 0x1c
/* 8066520C  4B CE 21 90 */	b PSVECSquareDistance
/* 80665210  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80665214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80665218  40 81 00 58 */	ble lbl_80665270
/* 8066521C  FC 00 08 34 */	frsqrte f0, f1
/* 80665220  C8 9E 01 B0 */	lfd f4, 0x1b0(r30)
/* 80665224  FC 44 00 32 */	fmul f2, f4, f0
/* 80665228  C8 7E 01 B8 */	lfd f3, 0x1b8(r30)
/* 8066522C  FC 00 00 32 */	fmul f0, f0, f0
/* 80665230  FC 01 00 32 */	fmul f0, f1, f0
/* 80665234  FC 03 00 28 */	fsub f0, f3, f0
/* 80665238  FC 02 00 32 */	fmul f0, f2, f0
/* 8066523C  FC 44 00 32 */	fmul f2, f4, f0
/* 80665240  FC 00 00 32 */	fmul f0, f0, f0
/* 80665244  FC 01 00 32 */	fmul f0, f1, f0
/* 80665248  FC 03 00 28 */	fsub f0, f3, f0
/* 8066524C  FC 02 00 32 */	fmul f0, f2, f0
/* 80665250  FC 44 00 32 */	fmul f2, f4, f0
/* 80665254  FC 00 00 32 */	fmul f0, f0, f0
/* 80665258  FC 01 00 32 */	fmul f0, f1, f0
/* 8066525C  FC 03 00 28 */	fsub f0, f3, f0
/* 80665260  FC 02 00 32 */	fmul f0, f2, f0
/* 80665264  FC 21 00 32 */	fmul f1, f1, f0
/* 80665268  FC 20 08 18 */	frsp f1, f1
/* 8066526C  48 00 00 88 */	b lbl_806652F4
lbl_80665270:
/* 80665270  C8 1E 01 C0 */	lfd f0, 0x1c0(r30)
/* 80665274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80665278  40 80 00 10 */	bge lbl_80665288
/* 8066527C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80665280  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80665284  48 00 00 70 */	b lbl_806652F4
lbl_80665288:
/* 80665288  D0 21 00 08 */	stfs f1, 8(r1)
/* 8066528C  80 81 00 08 */	lwz r4, 8(r1)
/* 80665290  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80665294  3C 00 7F 80 */	lis r0, 0x7f80
/* 80665298  7C 03 00 00 */	cmpw r3, r0
/* 8066529C  41 82 00 14 */	beq lbl_806652B0
/* 806652A0  40 80 00 40 */	bge lbl_806652E0
/* 806652A4  2C 03 00 00 */	cmpwi r3, 0
/* 806652A8  41 82 00 20 */	beq lbl_806652C8
/* 806652AC  48 00 00 34 */	b lbl_806652E0
lbl_806652B0:
/* 806652B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806652B4  41 82 00 0C */	beq lbl_806652C0
/* 806652B8  38 00 00 01 */	li r0, 1
/* 806652BC  48 00 00 28 */	b lbl_806652E4
lbl_806652C0:
/* 806652C0  38 00 00 02 */	li r0, 2
/* 806652C4  48 00 00 20 */	b lbl_806652E4
lbl_806652C8:
/* 806652C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806652CC  41 82 00 0C */	beq lbl_806652D8
/* 806652D0  38 00 00 05 */	li r0, 5
/* 806652D4  48 00 00 10 */	b lbl_806652E4
lbl_806652D8:
/* 806652D8  38 00 00 03 */	li r0, 3
/* 806652DC  48 00 00 08 */	b lbl_806652E4
lbl_806652E0:
/* 806652E0  38 00 00 04 */	li r0, 4
lbl_806652E4:
/* 806652E4  2C 00 00 01 */	cmpwi r0, 1
/* 806652E8  40 82 00 0C */	bne lbl_806652F4
/* 806652EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806652F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806652F4:
/* 806652F4  57 A0 04 38 */	rlwinm r0, r29, 0, 0x10, 0x1c
/* 806652F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806652FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80665300  7C 03 04 2E */	lfsx f0, r3, r0
/* 80665304  EC 41 00 32 */	fmuls f2, f1, f0
/* 80665308  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8066530C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80665310  40 80 00 08 */	bge lbl_80665318
/* 80665314  FC 40 00 90 */	fmr f2, f0
lbl_80665318:
/* 80665318  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 8066531C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80665320  40 80 00 34 */	bge lbl_80665354
/* 80665324  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 80665328  EC 00 10 28 */	fsubs f0, f0, f2
/* 8066532C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80665330  4C 41 13 82 */	cror 2, 1, 2
/* 80665334  40 82 00 20 */	bne lbl_80665354
/* 80665338  C0 1C 07 44 */	lfs f0, 0x744(r28)
/* 8066533C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80665340  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80665344  60 00 00 20 */	ori r0, r0, 0x20
/* 80665348  90 1C 06 D8 */	stw r0, 0x6d8(r28)
/* 8066534C  D0 3C 04 FC */	stfs f1, 0x4fc(r28)
/* 80665350  48 00 00 0C */	b lbl_8066535C
lbl_80665354:
/* 80665354  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 80665358  D0 1C 0A F8 */	stfs f0, 0xaf8(r28)
lbl_8066535C:
/* 8066535C  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha
/* 80665360  38 03 7A F0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80665364  90 01 00 44 */	stw r0, 0x44(r1)
lbl_80665368:
/* 80665368  2C 1F 00 00 */	cmpwi r31, 0
/* 8066536C  40 82 00 90 */	bne lbl_806653FC
/* 80665370  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80665374  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80665378  41 82 00 84 */	beq lbl_806653FC
/* 8066537C  C0 3C 0A F8 */	lfs f1, 0xaf8(r28)
/* 80665380  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80665384  EC 21 00 28 */	fsubs f1, f1, f0
/* 80665388  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8066538C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80665390  4C 41 13 82 */	cror 2, 1, 2
/* 80665394  40 82 00 68 */	bne lbl_806653FC
/* 80665398  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 8066539C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 806653A0  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 806653A4  1C 00 00 0E */	mulli r0, r0, 0xe
/* 806653A8  7C 84 02 14 */	add r4, r4, r0
/* 806653AC  A0 84 00 06 */	lhz r4, 6(r4)
/* 806653B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806653B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806653B8  3C A5 00 02 */	addis r5, r5, 2
/* 806653BC  38 C0 00 80 */	li r6, 0x80
/* 806653C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806653C4  4B 9D 6F 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806653C8  7C 64 1B 78 */	mr r4, r3
/* 806653CC  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 806653D0  38 A0 FF FF */	li r5, -1
/* 806653D4  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806653D8  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 806653DC  FC 60 08 90 */	fmr f3, f1
/* 806653E0  C0 9E 01 90 */	lfs f4, 0x190(r30)
/* 806653E4  4B 9A BA 8C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806653E8  38 00 00 03 */	li r0, 3
/* 806653EC  98 1C 0A DF */	stb r0, 0xadf(r28)
/* 806653F0  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 806653F4  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 806653F8  90 1C 0A EC */	stw r0, 0xaec(r28)
lbl_806653FC:
/* 806653FC  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80665400  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80665404  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 80665408  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8066540C  D0 1C 0A FC */	stfs f0, 0xafc(r28)
/* 80665410  48 00 00 E4 */	b lbl_806654F4
lbl_80665414:
/* 80665414  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80665418  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8066541C  38 00 00 01 */	li r0, 1
/* 80665420  98 1C 0A E0 */	stb r0, 0xae0(r28)
/* 80665424  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80665428  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066542C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80665430  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80665434  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80665438  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8066543C  38 7C 06 AC */	addi r3, r28, 0x6ac
/* 80665440  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80665444  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80665448  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8066544C  4B A1 16 60 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80665450  7F A3 EB 78 */	mr r3, r29
/* 80665454  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80665458  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8066545C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80665460  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80665464  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80665468  EC 42 00 28 */	fsubs f2, f2, f0
/* 8066546C  38 80 00 00 */	li r4, 0
/* 80665470  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80665474  81 8C 01 24 */	lwz r12, 0x124(r12)
/* 80665478  7D 89 03 A6 */	mtctr r12
/* 8066547C  4E 80 04 21 */	bctrl 
/* 80665480  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80665484  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80665488  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8066548C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80665490  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80665494  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80665498  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8066549C  D0 1C 0A F8 */	stfs f0, 0xaf8(r28)
/* 806654A0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 806654A4  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 806654A8  41 82 00 14 */	beq lbl_806654BC
/* 806654AC  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 806654B0  60 00 00 80 */	ori r0, r0, 0x80
/* 806654B4  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 806654B8  48 00 00 18 */	b lbl_806654D0
lbl_806654BC:
/* 806654BC  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 806654C0  41 82 00 10 */	beq lbl_806654D0
/* 806654C4  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 806654C8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 806654CC  90 1C 0A EC */	stw r0, 0xaec(r28)
lbl_806654D0:
/* 806654D0  38 7C 0A FC */	addi r3, r28, 0xafc
/* 806654D4  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 806654D8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 806654DC  41 82 00 0C */	beq lbl_806654E8
/* 806654E0  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 806654E4  48 00 00 08 */	b lbl_806654EC
lbl_806654E8:
/* 806654E8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
lbl_806654EC:
/* 806654EC  C0 5E 01 D0 */	lfs f2, 0x1d0(r30)
/* 806654F0  4B C0 B2 50 */	b cLib_chaseF__FPfff
lbl_806654F4:
/* 806654F4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806654F8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806654FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80665500  4B CF CD 24 */	b _restgpr_28
/* 80665504  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80665508  7C 08 03 A6 */	mtlr r0
/* 8066550C  38 21 00 70 */	addi r1, r1, 0x70
/* 80665510  4E 80 00 20 */	blr 
