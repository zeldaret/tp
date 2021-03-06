.include "macros.inc"

.section .text, "ax" # 80050c9c


.global dPaPo_c_NS_init
dPaPo_c_NS_init:
/* 80050C9C 0004DBDC  90 83 00 28 */	stw r4, 0x28(r3)
/* 80050CA0 0004DBE0  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80050CA4 0004DBE4  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80050CA8 0004DBE8  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80050CAC 0004DBEC  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80050CB0 0004DBF0  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80050CB4 0004DBF4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80050CB8 0004DBF8  38 00 00 01 */	li r0, 1
/* 80050CBC 0004DBFC  98 03 00 37 */	stb r0, 0x37(r3)
/* 80050CC0 0004DC00  4E 80 00 20 */	blr 

.global dPaPo_c_NS_checkWaterIn
dPaPo_c_NS_checkWaterIn:
/* 80050CC4 0004DC04  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80050CC8 0004DC08  7C 08 02 A6 */	mflr r0
/* 80050CCC 0004DC0C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80050CD0 0004DC10  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80050CD4 0004DC14  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80050CD8 0004DC18  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80050CDC 0004DC1C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 80050CE0 0004DC20  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80050CE4 0004DC24  F3 A1 00 38 */	psq_st f29, 56(r1), 0, qr0
/* 80050CE8 0004DC28  39 61 00 30 */	addi r11, r1, 0x30
/* 80050CEC 0004DC2C  48 31 14 E1 */	bl _savegpr_25
/* 80050CF0 0004DC30  7C 7A 1B 78 */	mr r26, r3
/* 80050CF4 0004DC34  7C 9B 23 78 */	mr r27, r4
/* 80050CF8 0004DC38  7C BC 2B 78 */	mr r28, r5
/* 80050CFC 0004DC3C  7C DD 33 78 */	mr r29, r6
/* 80050D00 0004DC40  7C FE 3B 78 */	mr r30, r7
/* 80050D04 0004DC44  7D 1F 43 78 */	mr r31, r8
/* 80050D08 0004DC48  FF A0 08 90 */	fmr f29, f1
/* 80050D0C 0004DC4C  FF C0 10 90 */	fmr f30, f2
/* 80050D10 0004DC50  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80050D14 0004DC54  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80050D18 0004DC58  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80050D1C 0004DC5C  41 82 01 24 */	beq lbl_80050E40
/* 80050D20 0004DC60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80050D24 0004DC64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80050D28 0004DC68  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80050D2C 0004DC6C  7F 23 CB 78 */	mr r3, r25
/* 80050D30 0004DC70  38 84 01 80 */	addi r4, r4, 0x180
/* 80050D34 0004DC74  48 02 39 2D */	bl cBgS_NS_ChkPolySafe
/* 80050D38 0004DC78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80050D3C 0004DC7C  41 82 01 04 */	beq lbl_80050E40
/* 80050D40 0004DC80  7F 23 CB 78 */	mr r3, r25
/* 80050D44 0004DC84  80 9A 00 28 */	lwz r4, 0x28(r26)
/* 80050D48 0004DC88  38 84 01 80 */	addi r4, r4, 0x180
/* 80050D4C 0004DC8C  48 02 41 05 */	bl dBgS_NS_GetPolyAtt0
/* 80050D50 0004DC90  2C 03 00 06 */	cmpwi r3, 6
/* 80050D54 0004DC94  41 82 00 EC */	beq lbl_80050E40
/* 80050D58 0004DC98  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80050D5C 0004DC9C  C0 23 01 CC */	lfs f1, 0x1cc(r3)
/* 80050D60 0004DCA0  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80050D64 0004DCA4  EF E1 00 28 */	fsubs f31, f1, f0
/* 80050D68 0004DCA8  C0 02 85 F8 */	lfs f0, lbl_80451FF8-_SDA2_BASE_(r2)
/* 80050D6C 0004DCAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80050D70 0004DCB0  4C 41 13 82 */	cror 2, 1, 2
/* 80050D74 0004DCB4  40 82 00 C0 */	bne lbl_80050E34
/* 80050D78 0004DCB8  D0 3B 00 04 */	stfs f1, 4(r27)
/* 80050D7C 0004DCBC  88 1A 00 37 */	lbz r0, 0x37(r26)
/* 80050D80 0004DCC0  28 00 00 00 */	cmplwi r0, 0
/* 80050D84 0004DCC4  40 82 00 44 */	bne lbl_80050DC8
/* 80050D88 0004DCC8  38 00 00 01 */	li r0, 1
/* 80050D8C 0004DCCC  98 1A 00 37 */	stb r0, 0x37(r26)
/* 80050D90 0004DCD0  57 C0 03 5B */	rlwinm. r0, r30, 0, 0xd, 0xd
/* 80050D94 0004DCD4  40 82 00 34 */	bne lbl_80050DC8
/* 80050D98 0004DCD8  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80050D9C 0004DCDC  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 80050DA0 0004DCE0  C0 23 01 CC */	lfs f1, 0x1cc(r3)
/* 80050DA4 0004DCE4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80050DA8 0004DCE8  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80050DAC 0004DCEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80050DB0 0004DCF0  4C 41 13 82 */	cror 2, 1, 2
/* 80050DB4 0004DCF4  40 82 00 14 */	bne lbl_80050DC8
/* 80050DB8 0004DCF8  7F 63 DB 78 */	mr r3, r27
/* 80050DBC 0004DCFC  FC 20 E8 90 */	fmr f1, f29
/* 80050DC0 0004DD00  38 80 00 00 */	li r4, 0
/* 80050DC4 0004DD04  4B FC EA B9 */	bl fopKyM_createWpillar__FPC4cXyzfi
lbl_80050DC8:
/* 80050DC8 0004DD08  C0 1A 00 30 */	lfs f0, 0x30(r26)
/* 80050DCC 0004DD0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80050DD0 0004DD10  40 80 00 3C */	bge lbl_80050E0C
/* 80050DD4 0004DD14  57 C0 03 9D */	rlwinm. r0, r30, 0, 0xe, 0xe
/* 80050DD8 0004DD18  40 82 00 34 */	bne lbl_80050E0C
/* 80050DDC 0004DD1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80050DE0 0004DD20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80050DE4 0004DD24  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80050DE8 0004DD28  7F 44 D3 78 */	mr r4, r26
/* 80050DEC 0004DD2C  80 BA 00 28 */	lwz r5, 0x28(r26)
/* 80050DF0 0004DD30  38 A5 01 80 */	addi r5, r5, 0x180
/* 80050DF4 0004DD34  7F 66 DB 78 */	mr r6, r27
/* 80050DF8 0004DD38  FC 20 F0 90 */	fmr f1, f30
/* 80050DFC 0004DD3C  7F A7 EB 78 */	mr r7, r29
/* 80050E00 0004DD40  7F 88 E3 78 */	mr r8, r28
/* 80050E04 0004DD44  7F E9 FB 78 */	mr r9, r31
/* 80050E08 0004DD48  4B FF BA 31 */	bl dPa_control_c_NS_setWaterRipple
lbl_80050E0C:
/* 80050E0C 0004DD4C  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80050E10 0004DD50  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80050E14 0004DD54  40 80 00 0C */	bge lbl_80050E20
/* 80050E18 0004DD58  38 60 00 01 */	li r3, 1
/* 80050E1C 0004DD5C  48 00 00 30 */	b lbl_80050E4C
lbl_80050E20:
/* 80050E20 0004DD60  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80050E24 0004DD64  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80050E28 0004DD68  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80050E2C 0004DD6C  38 60 00 02 */	li r3, 2
/* 80050E30 0004DD70  48 00 00 1C */	b lbl_80050E4C
lbl_80050E34:
/* 80050E34 0004DD74  38 00 00 00 */	li r0, 0
/* 80050E38 0004DD78  98 1A 00 37 */	stb r0, 0x37(r26)
/* 80050E3C 0004DD7C  48 00 00 0C */	b lbl_80050E48
lbl_80050E40:
/* 80050E40 0004DD80  38 00 00 00 */	li r0, 0
/* 80050E44 0004DD84  98 1A 00 37 */	stb r0, 0x37(r26)
lbl_80050E48:
/* 80050E48 0004DD88  38 60 00 00 */	li r3, 0
lbl_80050E4C:
/* 80050E4C 0004DD8C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80050E50 0004DD90  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80050E54 0004DD94  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 80050E58 0004DD98  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80050E5C 0004DD9C  E3 A1 00 38 */	psq_l f29, 56(r1), 0, qr0
/* 80050E60 0004DDA0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80050E64 0004DDA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80050E68 0004DDA8  48 31 13 B1 */	bl _restgpr_25
/* 80050E6C 0004DDAC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80050E70 0004DDB0  7C 08 03 A6 */	mtlr r0
/* 80050E74 0004DDB4  38 21 00 60 */	addi r1, r1, 0x60
/* 80050E78 0004DDB8  4E 80 00 20 */	blr 

.global dPaPo_c_NS_setEffect
dPaPo_c_NS_setEffect:
/* 80050E7C 0004DDBC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80050E80 0004DDC0  7C 08 02 A6 */	mflr r0
/* 80050E84 0004DDC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80050E88 0004DDC8  39 61 00 40 */	addi r11, r1, 0x40
/* 80050E8C 0004DDCC  48 31 13 51 */	bl _savegpr_29
/* 80050E90 0004DDD0  7C CC 33 78 */	mr r12, r6
/* 80050E94 0004DDD4  7D 1E 43 78 */	mr r30, r8
/* 80050E98 0004DDD8  7D 2B 4B 78 */	mr r11, r9
/* 80050E9C 0004DDDC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80050EA0 0004DDE0  88 C1 00 4F */	lbz r6, 0x4f(r1)
/* 80050EA4 0004DDE4  83 A1 00 50 */	lwz r29, 0x50(r1)
/* 80050EA8 0004DDE8  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 80050EAC 0004DDEC  28 0A 00 00 */	cmplwi r10, 0
/* 80050EB0 0004DDF0  41 82 00 F4 */	beq lbl_80050FA4
/* 80050EB4 0004DDF4  C0 0A 00 00 */	lfs f0, 0(r10)
/* 80050EB8 0004DDF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80050EBC 0004DDFC  C0 0A 00 04 */	lfs f0, 4(r10)
/* 80050EC0 0004DE00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80050EC4 0004DE04  C0 0A 00 08 */	lfs f0, 8(r10)
/* 80050EC8 0004DE08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80050ECC 0004DE0C  2C 05 00 01 */	cmpwi r5, 1
/* 80050ED0 0004DE10  40 82 00 18 */	bne lbl_80050EE8
/* 80050ED4 0004DE14  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80050ED8 0004DE18  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 80050EDC 0004DE1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80050EE0 0004DE20  38 A3 01 80 */	addi r5, r3, 0x180
/* 80050EE4 0004DE24  48 00 00 18 */	b lbl_80050EFC
lbl_80050EE8:
/* 80050EE8 0004DE28  2C 05 00 02 */	cmpwi r5, 2
/* 80050EEC 0004DE2C  40 82 00 08 */	bne lbl_80050EF4
/* 80050EF0 0004DE30  65 6B 80 00 */	oris r11, r11, 0x8000
lbl_80050EF4:
/* 80050EF4 0004DE34  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80050EF8 0004DE38  38 A3 00 F0 */	addi r5, r3, 0xf0
lbl_80050EFC:
/* 80050EFC 0004DE3C  90 01 00 08 */	stw r0, 8(r1)
/* 80050F00 0004DE40  38 00 00 00 */	li r0, 0
/* 80050F04 0004DE44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80050F08 0004DE48  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80050F0C 0004DE4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80050F10 0004DE50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80050F14 0004DE54  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80050F18 0004DE58  7C E6 3B 78 */	mr r6, r7
/* 80050F1C 0004DE5C  38 E1 00 18 */	addi r7, r1, 0x18
/* 80050F20 0004DE60  7D 88 63 78 */	mr r8, r12
/* 80050F24 0004DE64  7F C9 F3 78 */	mr r9, r30
/* 80050F28 0004DE68  7D 6A 5B 78 */	mr r10, r11
/* 80050F2C 0004DE6C  4B FF CA 5D */	bl dPa_control_c_NS_setCommonPoly
/* 80050F30 0004DE70  98 7D 00 00 */	stb r3, 0(r29)
/* 80050F34 0004DE74  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80050F38 0004DE78  98 1D 00 01 */	stb r0, 1(r29)
/* 80050F3C 0004DE7C  88 7D 00 00 */	lbz r3, 0(r29)
/* 80050F40 0004DE80  28 03 00 FF */	cmplwi r3, 0xff
/* 80050F44 0004DE84  41 82 00 2C */	beq lbl_80050F70
/* 80050F48 0004DE88  38 00 00 01 */	li r0, 1
/* 80050F4C 0004DE8C  7C 00 18 30 */	slw r0, r0, r3
/* 80050F50 0004DE90  7F C0 00 39 */	and. r0, r30, r0
/* 80050F54 0004DE94  41 82 00 10 */	beq lbl_80050F64
/* 80050F58 0004DE98  38 00 00 00 */	li r0, 0
/* 80050F5C 0004DE9C  98 1F 00 00 */	stb r0, 0(r31)
/* 80050F60 0004DEA0  48 00 00 90 */	b lbl_80050FF0
lbl_80050F64:
/* 80050F64 0004DEA4  38 00 00 14 */	li r0, 0x14
/* 80050F68 0004DEA8  98 1F 00 00 */	stb r0, 0(r31)
/* 80050F6C 0004DEAC  48 00 00 84 */	b lbl_80050FF0
lbl_80050F70:
/* 80050F70 0004DEB0  88 7D 00 01 */	lbz r3, 1(r29)
/* 80050F74 0004DEB4  28 03 00 FF */	cmplwi r3, 0xff
/* 80050F78 0004DEB8  41 82 00 78 */	beq lbl_80050FF0
/* 80050F7C 0004DEBC  38 00 00 01 */	li r0, 1
/* 80050F80 0004DEC0  7C 00 18 30 */	slw r0, r0, r3
/* 80050F84 0004DEC4  7F C0 00 39 */	and. r0, r30, r0
/* 80050F88 0004DEC8  41 82 00 10 */	beq lbl_80050F98
/* 80050F8C 0004DECC  38 00 00 00 */	li r0, 0
/* 80050F90 0004DED0  98 1F 00 00 */	stb r0, 0(r31)
/* 80050F94 0004DED4  48 00 00 5C */	b lbl_80050FF0
lbl_80050F98:
/* 80050F98 0004DED8  38 00 00 14 */	li r0, 0x14
/* 80050F9C 0004DEDC  98 1F 00 00 */	stb r0, 0(r31)
/* 80050FA0 0004DEE0  48 00 00 50 */	b lbl_80050FF0
lbl_80050FA4:
/* 80050FA4 0004DEE4  88 7F 00 00 */	lbz r3, 0(r31)
/* 80050FA8 0004DEE8  28 03 00 00 */	cmplwi r3, 0
/* 80050FAC 0004DEEC  41 82 00 44 */	beq lbl_80050FF0
/* 80050FB0 0004DEF0  38 03 FF FF */	addi r0, r3, -1
/* 80050FB4 0004DEF4  98 1F 00 00 */	stb r0, 0(r31)
/* 80050FB8 0004DEF8  7C 9F 23 78 */	mr r31, r4
/* 80050FBC 0004DEFC  3B A0 00 00 */	li r29, 0
/* 80050FC0 0004DF00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80050FC4 0004DF04  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
lbl_80050FC8:
/* 80050FC8 0004DF08  80 9F 00 00 */	lwz r4, 0(r31)
/* 80050FCC 0004DF0C  28 04 00 00 */	cmplwi r4, 0
/* 80050FD0 0004DF10  41 82 00 10 */	beq lbl_80050FE0
/* 80050FD4 0004DF14  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80050FD8 0004DF18  4B FF C7 99 */	bl dPa_control_c_NS_setStopContinue
/* 80050FDC 0004DF1C  90 7F 00 00 */	stw r3, 0(r31)
lbl_80050FE0:
/* 80050FE0 0004DF20  3B BD 00 01 */	addi r29, r29, 1
/* 80050FE4 0004DF24  2C 1D 00 08 */	cmpwi r29, 8
/* 80050FE8 0004DF28  3B FF 00 04 */	addi r31, r31, 4
/* 80050FEC 0004DF2C  41 80 FF DC */	blt lbl_80050FC8
lbl_80050FF0:
/* 80050FF0 0004DF30  39 61 00 40 */	addi r11, r1, 0x40
/* 80050FF4 0004DF34  48 31 12 35 */	bl _restgpr_29
/* 80050FF8 0004DF38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80050FFC 0004DF3C  7C 08 03 A6 */	mtlr r0
/* 80051000 0004DF40  38 21 00 40 */	addi r1, r1, 0x40
/* 80051004 0004DF44  4E 80 00 20 */	blr 

.global dPaPo_c_NS_setEffectCenter
dPaPo_c_NS_setEffectCenter:
/* 80051008 0004DF48  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8005100C 0004DF4C  7C 08 02 A6 */	mflr r0
/* 80051010 0004DF50  90 01 00 54 */	stw r0, 0x54(r1)
/* 80051014 0004DF54  39 61 00 50 */	addi r11, r1, 0x50
/* 80051018 0004DF58  48 31 11 B1 */	bl _savegpr_24
/* 8005101C 0004DF5C  7C 7F 1B 78 */	mr r31, r3
/* 80051020 0004DF60  7C 98 23 78 */	mr r24, r4
/* 80051024 0004DF64  7C D9 33 78 */	mr r25, r6
/* 80051028 0004DF68  7C FA 3B 78 */	mr r26, r7
/* 8005102C 0004DF6C  7D 1B 43 78 */	mr r27, r8
/* 80051030 0004DF70  7D 3C 4B 78 */	mr r28, r9
/* 80051034 0004DF74  8B A1 00 5B */	lbz r29, 0x5b(r1)
/* 80051038 0004DF78  C0 05 00 00 */	lfs f0, 0(r5)
/* 8005103C 0004DF7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80051040 0004DF80  C0 05 00 04 */	lfs f0, 4(r5)
/* 80051044 0004DF84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80051048 0004DF88  C0 05 00 08 */	lfs f0, 8(r5)
/* 8005104C 0004DF8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80051050 0004DF90  38 81 00 18 */	addi r4, r1, 0x18
/* 80051054 0004DF94  7D 45 53 78 */	mr r5, r10
/* 80051058 0004DF98  7F 06 C3 78 */	mr r6, r24
/* 8005105C 0004DF9C  7F A8 EB 78 */	mr r8, r29
/* 80051060 0004DFA0  4B FF FC 65 */	bl dPaPo_c_NS_checkWaterIn
/* 80051064 0004DFA4  7C 7E 1B 78 */	mr r30, r3
/* 80051068 0004DFA8  38 00 00 FF */	li r0, 0xff
/* 8005106C 0004DFAC  98 1F 00 34 */	stb r0, 0x34(r31)
/* 80051070 0004DFB0  98 1F 00 35 */	stb r0, 0x35(r31)
/* 80051074 0004DFB4  2C 1E 00 01 */	cmpwi r30, 1
/* 80051078 0004DFB8  40 82 00 6C */	bne lbl_800510E4
/* 8005107C 0004DFBC  57 40 03 DF */	rlwinm. r0, r26, 0, 0xf, 0xf
/* 80051080 0004DFC0  41 82 00 64 */	beq lbl_800510E4
/* 80051084 0004DFC4  93 81 00 08 */	stw r28, 8(r1)
/* 80051088 0004DFC8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8005108C 0004DFCC  38 1F 00 34 */	addi r0, r31, 0x34
/* 80051090 0004DFD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80051094 0004DFD4  38 1F 00 36 */	addi r0, r31, 0x36
/* 80051098 0004DFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005109C 0004DFDC  7F E3 FB 78 */	mr r3, r31
/* 800510A0 0004DFE0  38 9F 00 08 */	addi r4, r31, 8
/* 800510A4 0004DFE4  7F C5 F3 78 */	mr r5, r30
/* 800510A8 0004DFE8  7F 06 C3 78 */	mr r6, r24
/* 800510AC 0004DFEC  38 E1 00 18 */	addi r7, r1, 0x18
/* 800510B0 0004DFF0  7F 28 CB 78 */	mr r8, r25
/* 800510B4 0004DFF4  7F 49 D3 78 */	mr r9, r26
/* 800510B8 0004DFF8  7C EA 3B 78 */	mr r10, r7
/* 800510BC 0004DFFC  4B FF FD C1 */	bl dPaPo_c_NS_setEffect
/* 800510C0 0004E000  88 1F 00 34 */	lbz r0, 0x34(r31)
/* 800510C4 0004E004  28 00 00 02 */	cmplwi r0, 2
/* 800510C8 0004E008  40 82 00 14 */	bne lbl_800510DC
/* 800510CC 0004E00C  38 00 00 10 */	li r0, 0x10
/* 800510D0 0004E010  98 1F 00 34 */	stb r0, 0x34(r31)
/* 800510D4 0004E014  38 00 00 14 */	li r0, 0x14
/* 800510D8 0004E018  98 1F 00 36 */	stb r0, 0x36(r31)
lbl_800510DC:
/* 800510DC 0004E01C  38 60 00 03 */	li r3, 3
/* 800510E0 0004E020  48 00 00 44 */	b lbl_80051124
lbl_800510E4:
/* 800510E4 0004E024  93 81 00 08 */	stw r28, 8(r1)
/* 800510E8 0004E028  93 A1 00 0C */	stw r29, 0xc(r1)
/* 800510EC 0004E02C  38 1F 00 34 */	addi r0, r31, 0x34
/* 800510F0 0004E030  90 01 00 10 */	stw r0, 0x10(r1)
/* 800510F4 0004E034  38 1F 00 36 */	addi r0, r31, 0x36
/* 800510F8 0004E038  90 01 00 14 */	stw r0, 0x14(r1)
/* 800510FC 0004E03C  7F E3 FB 78 */	mr r3, r31
/* 80051100 0004E040  38 9F 00 08 */	addi r4, r31, 8
/* 80051104 0004E044  7F C5 F3 78 */	mr r5, r30
/* 80051108 0004E048  7F 06 C3 78 */	mr r6, r24
/* 8005110C 0004E04C  38 E1 00 18 */	addi r7, r1, 0x18
/* 80051110 0004E050  7F 28 CB 78 */	mr r8, r25
/* 80051114 0004E054  7F 49 D3 78 */	mr r9, r26
/* 80051118 0004E058  7F 6A DB 78 */	mr r10, r27
/* 8005111C 0004E05C  4B FF FD 61 */	bl dPaPo_c_NS_setEffect
/* 80051120 0004E060  7F C3 F3 78 */	mr r3, r30
lbl_80051124:
/* 80051124 0004E064  39 61 00 50 */	addi r11, r1, 0x50
/* 80051128 0004E068  48 31 10 ED */	bl _restgpr_24
/* 8005112C 0004E06C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80051130 0004E070  7C 08 03 A6 */	mtlr r0
/* 80051134 0004E074  38 21 00 50 */	addi r1, r1, 0x50
/* 80051138 0004E078  4E 80 00 20 */	blr 

.global dPaPo_c_NS_clearID
dPaPo_c_NS_clearID:
/* 8005113C 0004E07C  38 60 00 00 */	li r3, 0
/* 80051140 0004E080  98 65 00 00 */	stb r3, 0(r5)
/* 80051144 0004E084  38 00 00 08 */	li r0, 8
/* 80051148 0004E088  7C 09 03 A6 */	mtctr r0
lbl_8005114C:
/* 8005114C 0004E08C  90 64 00 00 */	stw r3, 0(r4)
/* 80051150 0004E090  38 84 00 04 */	addi r4, r4, 4
/* 80051154 0004E094  42 00 FF F8 */	bdnz lbl_8005114C
/* 80051158 0004E098  4E 80 00 20 */	blr 

.global dPaPoT_c_NS_setEffectTwo
dPaPoT_c_NS_setEffectTwo:
/* 8005115C 0004E09C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80051160 0004E0A0  7C 08 02 A6 */	mflr r0
/* 80051164 0004E0A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80051168 0004E0A8  39 61 00 50 */	addi r11, r1, 0x50
/* 8005116C 0004E0AC  48 31 10 55 */	bl _savegpr_22
/* 80051170 0004E0B0  7C 7C 1B 78 */	mr r28, r3
/* 80051174 0004E0B4  7C 9D 23 78 */	mr r29, r4
/* 80051178 0004E0B8  7C B6 2B 78 */	mr r22, r5
/* 8005117C 0004E0BC  7C DE 33 78 */	mr r30, r6
/* 80051180 0004E0C0  7C FF 3B 78 */	mr r31, r7
/* 80051184 0004E0C4  7D 37 4B 78 */	mr r23, r9
/* 80051188 0004E0C8  7D 58 53 78 */	mr r24, r10
/* 8005118C 0004E0CC  83 21 00 58 */	lwz r25, 0x58(r1)
/* 80051190 0004E0D0  81 41 00 5C */	lwz r10, 0x5c(r1)
/* 80051194 0004E0D4  8B 41 00 63 */	lbz r26, 0x63(r1)
/* 80051198 0004E0D8  38 00 00 FF */	li r0, 0xff
/* 8005119C 0004E0DC  98 03 00 78 */	stb r0, 0x78(r3)
/* 800511A0 0004E0E0  98 03 00 79 */	stb r0, 0x79(r3)
/* 800511A4 0004E0E4  98 03 00 7A */	stb r0, 0x7a(r3)
/* 800511A8 0004E0E8  98 03 00 7B */	stb r0, 0x7b(r3)
/* 800511AC 0004E0EC  93 41 00 08 */	stw r26, 8(r1)
/* 800511B0 0004E0F0  7F 29 CB 78 */	mr r9, r25
/* 800511B4 0004E0F4  4B FF FE 55 */	bl dPaPo_c_NS_setEffectCenter
/* 800511B8 0004E0F8  7C 7B 1B 78 */	mr r27, r3
/* 800511BC 0004E0FC  2C 1B 00 03 */	cmpwi r27, 3
/* 800511C0 0004E100  41 82 00 AC */	beq lbl_8005126C
/* 800511C4 0004E104  C0 16 00 00 */	lfs f0, 0(r22)
/* 800511C8 0004E108  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800511CC 0004E10C  C0 16 00 04 */	lfs f0, 4(r22)
/* 800511D0 0004E110  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800511D4 0004E114  C0 16 00 08 */	lfs f0, 8(r22)
/* 800511D8 0004E118  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800511DC 0004E11C  2C 1B 00 01 */	cmpwi r27, 1
/* 800511E0 0004E120  40 82 00 10 */	bne lbl_800511F0
/* 800511E4 0004E124  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 800511E8 0004E128  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 800511EC 0004E12C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_800511F0:
/* 800511F0 0004E130  93 21 00 08 */	stw r25, 8(r1)
/* 800511F4 0004E134  93 41 00 0C */	stw r26, 0xc(r1)
/* 800511F8 0004E138  38 1C 00 78 */	addi r0, r28, 0x78
/* 800511FC 0004E13C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80051200 0004E140  38 1C 00 7C */	addi r0, r28, 0x7c
/* 80051204 0004E144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051208 0004E148  7F 83 E3 78 */	mr r3, r28
/* 8005120C 0004E14C  38 9C 00 38 */	addi r4, r28, 0x38
/* 80051210 0004E150  7F 65 DB 78 */	mr r5, r27
/* 80051214 0004E154  7F A6 EB 78 */	mr r6, r29
/* 80051218 0004E158  38 E1 00 18 */	addi r7, r1, 0x18
/* 8005121C 0004E15C  7F C8 F3 78 */	mr r8, r30
/* 80051220 0004E160  7F E9 FB 78 */	mr r9, r31
/* 80051224 0004E164  7E EA BB 78 */	mr r10, r23
/* 80051228 0004E168  4B FF FC 55 */	bl dPaPo_c_NS_setEffect
/* 8005122C 0004E16C  93 21 00 08 */	stw r25, 8(r1)
/* 80051230 0004E170  93 41 00 0C */	stw r26, 0xc(r1)
/* 80051234 0004E174  38 1C 00 7A */	addi r0, r28, 0x7a
/* 80051238 0004E178  90 01 00 10 */	stw r0, 0x10(r1)
/* 8005123C 0004E17C  38 1C 00 7D */	addi r0, r28, 0x7d
/* 80051240 0004E180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051244 0004E184  7F 83 E3 78 */	mr r3, r28
/* 80051248 0004E188  38 9C 00 58 */	addi r4, r28, 0x58
/* 8005124C 0004E18C  7F 65 DB 78 */	mr r5, r27
/* 80051250 0004E190  7F A6 EB 78 */	mr r6, r29
/* 80051254 0004E194  38 E1 00 18 */	addi r7, r1, 0x18
/* 80051258 0004E198  7F C8 F3 78 */	mr r8, r30
/* 8005125C 0004E19C  7F E9 FB 78 */	mr r9, r31
/* 80051260 0004E1A0  7F 0A C3 78 */	mr r10, r24
/* 80051264 0004E1A4  4B FF FC 19 */	bl dPaPo_c_NS_setEffect
/* 80051268 0004E1A8  48 00 00 10 */	b lbl_80051278
lbl_8005126C:
/* 8005126C 0004E1AC  38 00 00 00 */	li r0, 0
/* 80051270 0004E1B0  98 1C 00 7C */	stb r0, 0x7c(r28)
/* 80051274 0004E1B4  98 1C 00 7D */	stb r0, 0x7d(r28)
lbl_80051278:
/* 80051278 0004E1B8  7F 63 DB 78 */	mr r3, r27
/* 8005127C 0004E1BC  39 61 00 50 */	addi r11, r1, 0x50
/* 80051280 0004E1C0  48 31 0F 8D */	bl _restgpr_22
/* 80051284 0004E1C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80051288 0004E1C8  7C 08 03 A6 */	mtlr r0
/* 8005128C 0004E1CC  38 21 00 50 */	addi r1, r1, 0x50
/* 80051290 0004E1D0  4E 80 00 20 */	blr 

.global dPaPoT_c_NS_clearTwoAllID
dPaPoT_c_NS_clearTwoAllID:
/* 80051294 0004E1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051298 0004E1D8  7C 08 02 A6 */	mflr r0
/* 8005129C 0004E1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800512A0 0004E1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800512A4 0004E1E4  7C 7F 1B 78 */	mr r31, r3
/* 800512A8 0004E1E8  38 9F 00 38 */	addi r4, r31, 0x38
/* 800512AC 0004E1EC  38 BF 00 7C */	addi r5, r31, 0x7c
/* 800512B0 0004E1F0  4B FF FE 8D */	bl dPaPo_c_NS_clearID
/* 800512B4 0004E1F4  7F E3 FB 78 */	mr r3, r31
/* 800512B8 0004E1F8  38 9F 00 58 */	addi r4, r31, 0x58
/* 800512BC 0004E1FC  38 BF 00 7D */	addi r5, r31, 0x7d
/* 800512C0 0004E200  4B FF FE 7D */	bl dPaPo_c_NS_clearID
/* 800512C4 0004E204  7F E3 FB 78 */	mr r3, r31
/* 800512C8 0004E208  38 9F 00 08 */	addi r4, r31, 8
/* 800512CC 0004E20C  38 BF 00 36 */	addi r5, r31, 0x36
/* 800512D0 0004E210  4B FF FE 6D */	bl dPaPo_c_NS_clearID
/* 800512D4 0004E214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800512D8 0004E218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800512DC 0004E21C  7C 08 03 A6 */	mtlr r0
/* 800512E0 0004E220  38 21 00 10 */	addi r1, r1, 0x10
/* 800512E4 0004E224  4E 80 00 20 */	blr 

.global dPaPoF_c_NS_setEffectFour
dPaPoF_c_NS_setEffectFour:
/* 800512E8 0004E228  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800512EC 0004E22C  7C 08 02 A6 */	mflr r0
/* 800512F0 0004E230  90 01 00 54 */	stw r0, 0x54(r1)
/* 800512F4 0004E234  39 61 00 50 */	addi r11, r1, 0x50
/* 800512F8 0004E238  48 31 0E C9 */	bl _savegpr_22
/* 800512FC 0004E23C  7C 7C 1B 78 */	mr r28, r3
/* 80051300 0004E240  7C 9D 23 78 */	mr r29, r4
/* 80051304 0004E244  7C B6 2B 78 */	mr r22, r5
/* 80051308 0004E248  7C DE 33 78 */	mr r30, r6
/* 8005130C 0004E24C  7C FF 3B 78 */	mr r31, r7
/* 80051310 0004E250  82 E1 00 58 */	lwz r23, 0x58(r1)
/* 80051314 0004E254  83 01 00 5C */	lwz r24, 0x5c(r1)
/* 80051318 0004E258  83 21 00 60 */	lwz r25, 0x60(r1)
/* 8005131C 0004E25C  81 61 00 64 */	lwz r11, 0x64(r1)
/* 80051320 0004E260  8B 41 00 6B */	lbz r26, 0x6b(r1)
/* 80051324 0004E264  38 00 00 FF */	li r0, 0xff
/* 80051328 0004E268  98 03 00 C0 */	stb r0, 0xc0(r3)
/* 8005132C 0004E26C  98 03 00 C1 */	stb r0, 0xc1(r3)
/* 80051330 0004E270  98 03 00 C2 */	stb r0, 0xc2(r3)
/* 80051334 0004E274  98 03 00 C3 */	stb r0, 0xc3(r3)
/* 80051338 0004E278  93 21 00 08 */	stw r25, 8(r1)
/* 8005133C 0004E27C  91 61 00 0C */	stw r11, 0xc(r1)
/* 80051340 0004E280  93 41 00 10 */	stw r26, 0x10(r1)
/* 80051344 0004E284  4B FF FE 19 */	bl dPaPoT_c_NS_setEffectTwo
/* 80051348 0004E288  7C 7B 1B 78 */	mr r27, r3
/* 8005134C 0004E28C  2C 1B 00 03 */	cmpwi r27, 3
/* 80051350 0004E290  41 82 00 AC */	beq lbl_800513FC
/* 80051354 0004E294  C0 16 00 00 */	lfs f0, 0(r22)
/* 80051358 0004E298  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005135C 0004E29C  C0 16 00 04 */	lfs f0, 4(r22)
/* 80051360 0004E2A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80051364 0004E2A4  C0 16 00 08 */	lfs f0, 8(r22)
/* 80051368 0004E2A8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8005136C 0004E2AC  2C 1B 00 01 */	cmpwi r27, 1
/* 80051370 0004E2B0  40 82 00 10 */	bne lbl_80051380
/* 80051374 0004E2B4  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80051378 0004E2B8  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 8005137C 0004E2BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80051380:
/* 80051380 0004E2C0  93 21 00 08 */	stw r25, 8(r1)
/* 80051384 0004E2C4  93 41 00 0C */	stw r26, 0xc(r1)
/* 80051388 0004E2C8  38 1C 00 C0 */	addi r0, r28, 0xc0
/* 8005138C 0004E2CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80051390 0004E2D0  38 1C 00 C4 */	addi r0, r28, 0xc4
/* 80051394 0004E2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051398 0004E2D8  7F 83 E3 78 */	mr r3, r28
/* 8005139C 0004E2DC  38 9C 00 80 */	addi r4, r28, 0x80
/* 800513A0 0004E2E0  7F 65 DB 78 */	mr r5, r27
/* 800513A4 0004E2E4  7F A6 EB 78 */	mr r6, r29
/* 800513A8 0004E2E8  38 E1 00 18 */	addi r7, r1, 0x18
/* 800513AC 0004E2EC  7F C8 F3 78 */	mr r8, r30
/* 800513B0 0004E2F0  7F E9 FB 78 */	mr r9, r31
/* 800513B4 0004E2F4  7E EA BB 78 */	mr r10, r23
/* 800513B8 0004E2F8  4B FF FA C5 */	bl dPaPo_c_NS_setEffect
/* 800513BC 0004E2FC  93 21 00 08 */	stw r25, 8(r1)
/* 800513C0 0004E300  93 41 00 0C */	stw r26, 0xc(r1)
/* 800513C4 0004E304  38 1C 00 C2 */	addi r0, r28, 0xc2
/* 800513C8 0004E308  90 01 00 10 */	stw r0, 0x10(r1)
/* 800513CC 0004E30C  38 1C 00 C5 */	addi r0, r28, 0xc5
/* 800513D0 0004E310  90 01 00 14 */	stw r0, 0x14(r1)
/* 800513D4 0004E314  7F 83 E3 78 */	mr r3, r28
/* 800513D8 0004E318  38 9C 00 A0 */	addi r4, r28, 0xa0
/* 800513DC 0004E31C  7F 65 DB 78 */	mr r5, r27
/* 800513E0 0004E320  7F A6 EB 78 */	mr r6, r29
/* 800513E4 0004E324  38 E1 00 18 */	addi r7, r1, 0x18
/* 800513E8 0004E328  7F C8 F3 78 */	mr r8, r30
/* 800513EC 0004E32C  7F E9 FB 78 */	mr r9, r31
/* 800513F0 0004E330  7F 0A C3 78 */	mr r10, r24
/* 800513F4 0004E334  4B FF FA 89 */	bl dPaPo_c_NS_setEffect
/* 800513F8 0004E338  48 00 00 10 */	b lbl_80051408
lbl_800513FC:
/* 800513FC 0004E33C  38 00 00 00 */	li r0, 0
/* 80051400 0004E340  98 1C 00 C4 */	stb r0, 0xc4(r28)
/* 80051404 0004E344  98 1C 00 C5 */	stb r0, 0xc5(r28)
lbl_80051408:
/* 80051408 0004E348  7F 63 DB 78 */	mr r3, r27
/* 8005140C 0004E34C  39 61 00 50 */	addi r11, r1, 0x50
/* 80051410 0004E350  48 31 0D FD */	bl _restgpr_22
/* 80051414 0004E354  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80051418 0004E358  7C 08 03 A6 */	mtlr r0
/* 8005141C 0004E35C  38 21 00 50 */	addi r1, r1, 0x50
/* 80051420 0004E360  4E 80 00 20 */	blr 

.global dPaPoF_c_NS_clearFourAllID
dPaPoF_c_NS_clearFourAllID:
/* 80051424 0004E364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051428 0004E368  7C 08 02 A6 */	mflr r0
/* 8005142C 0004E36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051430 0004E370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80051434 0004E374  7C 7F 1B 78 */	mr r31, r3
/* 80051438 0004E378  38 9F 00 80 */	addi r4, r31, 0x80
/* 8005143C 0004E37C  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 80051440 0004E380  4B FF FC FD */	bl dPaPo_c_NS_clearID
/* 80051444 0004E384  7F E3 FB 78 */	mr r3, r31
/* 80051448 0004E388  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 8005144C 0004E38C  38 BF 00 C5 */	addi r5, r31, 0xc5
/* 80051450 0004E390  4B FF FC ED */	bl dPaPo_c_NS_clearID
/* 80051454 0004E394  7F E3 FB 78 */	mr r3, r31
/* 80051458 0004E398  4B FF FE 3D */	bl dPaPoT_c_NS_clearTwoAllID
/* 8005145C 0004E39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80051460 0004E3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051464 0004E3A4  7C 08 03 A6 */	mtlr r0
/* 80051468 0004E3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8005146C 0004E3AC  4E 80 00 20 */	blr 
/* 80051470 0004E3B0  7C 63 22 14 */	add r3, r3, r4
/* 80051474 0004E3B4  88 63 00 7A */	lbz r3, 0x7a(r3)
/* 80051478 0004E3B8  4E 80 00 20 */	blr 
/* 8005147C 0004E3BC  7C 63 22 14 */	add r3, r3, r4
/* 80051480 0004E3C0  88 63 00 78 */	lbz r3, 0x78(r3)
/* 80051484 0004E3C4  4E 80 00 20 */	blr 
/* 80051488 0004E3C8  7C 63 22 14 */	add r3, r3, r4
/* 8005148C 0004E3CC  88 63 00 34 */	lbz r3, 0x34(r3)
/* 80051490 0004E3D0  4E 80 00 20 */	blr 
/* 80051494 0004E3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051498 0004E3D8  7C 08 02 A6 */	mflr r0
/* 8005149C 0004E3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800514A0 0004E3E0  7C 66 1B 78 */	mr r6, r3
/* 800514A4 0004E3E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800514A8 0004E3E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800514AC 0004E3EC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800514B0 0004E3F0  38 63 02 10 */	addi r3, r3, 0x210
/* 800514B4 0004E3F4  54 80 20 36 */	slwi r0, r4, 4
/* 800514B8 0004E3F8  7C 86 02 14 */	add r4, r6, r0
/* 800514BC 0004E3FC  54 A0 10 3A */	slwi r0, r5, 2
/* 800514C0 0004E400  7C 84 02 14 */	add r4, r4, r0
/* 800514C4 0004E404  80 84 00 58 */	lwz r4, 0x58(r4)
/* 800514C8 0004E408  4B FF A4 51 */	bl dPa_control_c_NS_level_c_NS_getEmitter
/* 800514CC 0004E40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800514D0 0004E410  7C 08 03 A6 */	mtlr r0
/* 800514D4 0004E414  38 21 00 10 */	addi r1, r1, 0x10
/* 800514D8 0004E418  4E 80 00 20 */	blr 
/* 800514DC 0004E41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800514E0 0004E420  7C 08 02 A6 */	mflr r0
/* 800514E4 0004E424  90 01 00 14 */	stw r0, 0x14(r1)
/* 800514E8 0004E428  7C 66 1B 78 */	mr r6, r3
/* 800514EC 0004E42C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800514F0 0004E430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800514F4 0004E434  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800514F8 0004E438  38 63 02 10 */	addi r3, r3, 0x210
/* 800514FC 0004E43C  54 80 20 36 */	slwi r0, r4, 4
/* 80051500 0004E440  7C 86 02 14 */	add r4, r6, r0
/* 80051504 0004E444  54 A0 10 3A */	slwi r0, r5, 2
/* 80051508 0004E448  7C 84 02 14 */	add r4, r4, r0
/* 8005150C 0004E44C  80 84 00 38 */	lwz r4, 0x38(r4)
/* 80051510 0004E450  4B FF A4 09 */	bl dPa_control_c_NS_level_c_NS_getEmitter
/* 80051514 0004E454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051518 0004E458  7C 08 03 A6 */	mtlr r0
/* 8005151C 0004E45C  38 21 00 10 */	addi r1, r1, 0x10
/* 80051520 0004E460  4E 80 00 20 */	blr 
/* 80051524 0004E464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051528 0004E468  7C 08 02 A6 */	mflr r0
/* 8005152C 0004E46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051530 0004E470  7C 66 1B 78 */	mr r6, r3
/* 80051534 0004E474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80051538 0004E478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005153C 0004E47C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80051540 0004E480  38 63 02 10 */	addi r3, r3, 0x210
/* 80051544 0004E484  54 80 20 36 */	slwi r0, r4, 4
/* 80051548 0004E488  7C 86 02 14 */	add r4, r6, r0
/* 8005154C 0004E48C  54 A0 10 3A */	slwi r0, r5, 2
/* 80051550 0004E490  7C 84 02 14 */	add r4, r4, r0
/* 80051554 0004E494  80 84 00 08 */	lwz r4, 8(r4)
/* 80051558 0004E498  4B FF A3 C1 */	bl dPa_control_c_NS_level_c_NS_getEmitter
/* 8005155C 0004E49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051560 0004E4A0  7C 08 03 A6 */	mtlr r0
/* 80051564 0004E4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80051568 0004E4A8  4E 80 00 20 */	blr 
/* 8005156C 0004E4AC  7C 63 22 14 */	add r3, r3, r4
/* 80051570 0004E4B0  88 63 00 C2 */	lbz r3, 0xc2(r3)
/* 80051574 0004E4B4  4E 80 00 20 */	blr 
/* 80051578 0004E4B8  7C 63 22 14 */	add r3, r3, r4
/* 8005157C 0004E4BC  88 63 00 C0 */	lbz r3, 0xc0(r3)
/* 80051580 0004E4C0  4E 80 00 20 */	blr 
/* 80051584 0004E4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051588 0004E4C8  7C 08 02 A6 */	mflr r0
/* 8005158C 0004E4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051590 0004E4D0  7C 66 1B 78 */	mr r6, r3
/* 80051594 0004E4D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80051598 0004E4D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005159C 0004E4DC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800515A0 0004E4E0  38 63 02 10 */	addi r3, r3, 0x210
/* 800515A4 0004E4E4  54 80 20 36 */	slwi r0, r4, 4
/* 800515A8 0004E4E8  7C 86 02 14 */	add r4, r6, r0
/* 800515AC 0004E4EC  54 A0 10 3A */	slwi r0, r5, 2
/* 800515B0 0004E4F0  7C 84 02 14 */	add r4, r4, r0
/* 800515B4 0004E4F4  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 800515B8 0004E4F8  4B FF A3 61 */	bl dPa_control_c_NS_level_c_NS_getEmitter
/* 800515BC 0004E4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800515C0 0004E500  7C 08 03 A6 */	mtlr r0
/* 800515C4 0004E504  38 21 00 10 */	addi r1, r1, 0x10
/* 800515C8 0004E508  4E 80 00 20 */	blr 
/* 800515CC 0004E50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800515D0 0004E510  7C 08 02 A6 */	mflr r0
/* 800515D4 0004E514  90 01 00 14 */	stw r0, 0x14(r1)
/* 800515D8 0004E518  7C 66 1B 78 */	mr r6, r3
/* 800515DC 0004E51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800515E0 0004E520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800515E4 0004E524  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800515E8 0004E528  38 63 02 10 */	addi r3, r3, 0x210
/* 800515EC 0004E52C  54 80 20 36 */	slwi r0, r4, 4
/* 800515F0 0004E530  7C 86 02 14 */	add r4, r6, r0
/* 800515F4 0004E534  54 A0 10 3A */	slwi r0, r5, 2
/* 800515F8 0004E538  7C 84 02 14 */	add r4, r4, r0
/* 800515FC 0004E53C  80 84 00 80 */	lwz r4, 0x80(r4)
/* 80051600 0004E540  4B FF A3 19 */	bl dPa_control_c_NS_level_c_NS_getEmitter
/* 80051604 0004E544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051608 0004E548  7C 08 03 A6 */	mtlr r0
/* 8005160C 0004E54C  38 21 00 10 */	addi r1, r1, 0x10
/* 80051610 0004E550  4E 80 00 20 */	blr 
/* 80051614 0004E554  3C 60 80 3B */	lis r3, lbl_803A85F8@ha
/* 80051618 0004E558  38 63 85 F8 */	addi r3, r3, lbl_803A85F8@l
/* 8005161C 0004E55C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80051620 0004E560  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80051624 0004E564  90 83 00 30 */	stw r4, 0x30(r3)
/* 80051628 0004E568  90 03 00 34 */	stw r0, 0x34(r3)
/* 8005162C 0004E56C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80051630 0004E570  90 03 00 38 */	stw r0, 0x38(r3)
/* 80051634 0004E574  38 A3 00 30 */	addi r5, r3, 0x30
/* 80051638 0004E578  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8005163C 0004E57C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80051640 0004E580  90 85 00 0C */	stw r4, 0xc(r5)
/* 80051644 0004E584  90 05 00 10 */	stw r0, 0x10(r5)
/* 80051648 0004E588  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8005164C 0004E58C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80051650 0004E590  80 83 00 24 */	lwz r4, 0x24(r3)
/* 80051654 0004E594  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80051658 0004E598  90 85 00 18 */	stw r4, 0x18(r5)
/* 8005165C 0004E59C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80051660 0004E5A0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80051664 0004E5A4  90 05 00 20 */	stw r0, 0x20(r5)
/* 80051668 0004E5A8  80 83 00 54 */	lwz r4, 0x54(r3)
/* 8005166C 0004E5AC  80 03 00 58 */	lwz r0, 0x58(r3)
/* 80051670 0004E5B0  90 83 00 78 */	stw r4, 0x78(r3)
/* 80051674 0004E5B4  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80051678 0004E5B8  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 8005167C 0004E5BC  90 03 00 80 */	stw r0, 0x80(r3)
/* 80051680 0004E5C0  38 A3 00 78 */	addi r5, r3, 0x78
/* 80051684 0004E5C4  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80051688 0004E5C8  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8005168C 0004E5CC  90 85 00 0C */	stw r4, 0xc(r5)
/* 80051690 0004E5D0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80051694 0004E5D4  80 03 00 68 */	lwz r0, 0x68(r3)
/* 80051698 0004E5D8  90 05 00 14 */	stw r0, 0x14(r5)
/* 8005169C 0004E5DC  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 800516A0 0004E5E0  80 03 00 70 */	lwz r0, 0x70(r3)
/* 800516A4 0004E5E4  90 85 00 18 */	stw r4, 0x18(r5)
/* 800516A8 0004E5E8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 800516AC 0004E5EC  80 03 00 74 */	lwz r0, 0x74(r3)
/* 800516B0 0004E5F0  90 05 00 20 */	stw r0, 0x20(r5)
/* 800516B4 0004E5F4  80 83 00 9C */	lwz r4, 0x9c(r3)
/* 800516B8 0004E5F8  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 800516BC 0004E5FC  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 800516C0 0004E600  90 03 00 DC */	stw r0, 0xdc(r3)
/* 800516C4 0004E604  80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 800516C8 0004E608  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 800516CC 0004E60C  38 A3 00 D8 */	addi r5, r3, 0xd8
/* 800516D0 0004E610  80 83 00 A8 */	lwz r4, 0xa8(r3)
/* 800516D4 0004E614  80 03 00 AC */	lwz r0, 0xac(r3)
/* 800516D8 0004E618  90 85 00 0C */	stw r4, 0xc(r5)
/* 800516DC 0004E61C  90 05 00 10 */	stw r0, 0x10(r5)
/* 800516E0 0004E620  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 800516E4 0004E624  90 05 00 14 */	stw r0, 0x14(r5)
/* 800516E8 0004E628  80 83 00 B4 */	lwz r4, 0xb4(r3)
/* 800516EC 0004E62C  80 03 00 B8 */	lwz r0, 0xb8(r3)
/* 800516F0 0004E630  90 85 00 18 */	stw r4, 0x18(r5)
/* 800516F4 0004E634  90 05 00 1C */	stw r0, 0x1c(r5)
/* 800516F8 0004E638  80 03 00 BC */	lwz r0, 0xbc(r3)
/* 800516FC 0004E63C  90 05 00 20 */	stw r0, 0x20(r5)
/* 80051700 0004E640  80 83 00 C0 */	lwz r4, 0xc0(r3)
/* 80051704 0004E644  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 80051708 0004E648  90 85 00 24 */	stw r4, 0x24(r5)
/* 8005170C 0004E64C  90 05 00 28 */	stw r0, 0x28(r5)
/* 80051710 0004E650  80 03 00 C8 */	lwz r0, 0xc8(r3)
/* 80051714 0004E654  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80051718 0004E658  80 83 00 CC */	lwz r4, 0xcc(r3)
/* 8005171C 0004E65C  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 80051720 0004E660  90 85 00 30 */	stw r4, 0x30(r5)
/* 80051724 0004E664  90 05 00 34 */	stw r0, 0x34(r5)
/* 80051728 0004E668  80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 8005172C 0004E66C  90 05 00 38 */	stw r0, 0x38(r5)
/* 80051730 0004E670  80 83 01 14 */	lwz r4, 0x114(r3)
/* 80051734 0004E674  80 03 01 18 */	lwz r0, 0x118(r3)
/* 80051738 0004E678  90 83 01 50 */	stw r4, 0x150(r3)
/* 8005173C 0004E67C  90 03 01 54 */	stw r0, 0x154(r3)
/* 80051740 0004E680  80 03 01 1C */	lwz r0, 0x11c(r3)
/* 80051744 0004E684  90 03 01 58 */	stw r0, 0x158(r3)
/* 80051748 0004E688  38 A3 01 50 */	addi r5, r3, 0x150
/* 8005174C 0004E68C  80 83 01 20 */	lwz r4, 0x120(r3)
/* 80051750 0004E690  80 03 01 24 */	lwz r0, 0x124(r3)
/* 80051754 0004E694  90 85 00 0C */	stw r4, 0xc(r5)
/* 80051758 0004E698  90 05 00 10 */	stw r0, 0x10(r5)
/* 8005175C 0004E69C  80 03 01 28 */	lwz r0, 0x128(r3)
/* 80051760 0004E6A0  90 05 00 14 */	stw r0, 0x14(r5)
/* 80051764 0004E6A4  80 83 01 2C */	lwz r4, 0x12c(r3)
/* 80051768 0004E6A8  80 03 01 30 */	lwz r0, 0x130(r3)
/* 8005176C 0004E6AC  90 85 00 18 */	stw r4, 0x18(r5)
/* 80051770 0004E6B0  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80051774 0004E6B4  80 03 01 34 */	lwz r0, 0x134(r3)
/* 80051778 0004E6B8  90 05 00 20 */	stw r0, 0x20(r5)
/* 8005177C 0004E6BC  80 83 01 38 */	lwz r4, 0x138(r3)
/* 80051780 0004E6C0  80 03 01 3C */	lwz r0, 0x13c(r3)
/* 80051784 0004E6C4  90 85 00 24 */	stw r4, 0x24(r5)
/* 80051788 0004E6C8  90 05 00 28 */	stw r0, 0x28(r5)
/* 8005178C 0004E6CC  80 03 01 40 */	lwz r0, 0x140(r3)
/* 80051790 0004E6D0  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80051794 0004E6D4  80 83 01 44 */	lwz r4, 0x144(r3)
/* 80051798 0004E6D8  80 03 01 48 */	lwz r0, 0x148(r3)
/* 8005179C 0004E6DC  90 85 00 30 */	stw r4, 0x30(r5)
/* 800517A0 0004E6E0  90 05 00 34 */	stw r0, 0x34(r5)
/* 800517A4 0004E6E4  80 03 01 4C */	lwz r0, 0x14c(r3)
/* 800517A8 0004E6E8  90 05 00 38 */	stw r0, 0x38(r5)
/* 800517AC 0004E6EC  4E 80 00 20 */	blr 

