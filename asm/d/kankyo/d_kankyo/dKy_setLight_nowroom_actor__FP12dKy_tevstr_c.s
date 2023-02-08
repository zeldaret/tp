lbl_801A6E9C:
/* 801A6E9C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801A6EA0  7C 08 02 A6 */	mflr r0
/* 801A6EA4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801A6EA8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801A6EAC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 801A6EB0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801A6EB4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 801A6EB8  39 61 00 90 */	addi r11, r1, 0x90
/* 801A6EBC  48 1B B2 F9 */	bl _savegpr_19
/* 801A6EC0  7C 77 1B 78 */	mr r23, r3
/* 801A6EC4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A6EC8  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A6ECC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A6ED0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A6ED4  83 63 5D 74 */	lwz r27, 0x5d74(r3)
/* 801A6ED8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A6EDC  38 03 4A C8 */	addi r0, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A6EE0  7C 1A 03 78 */	mr r26, r0
/* 801A6EE4  88 17 03 80 */	lbz r0, 0x380(r23)
/* 801A6EE8  98 01 00 08 */	stb r0, 8(r1)
/* 801A6EEC  C3 E2 A2 48 */	lfs f31, lit_4505(r2)
/* 801A6EF0  88 17 03 7A */	lbz r0, 0x37a(r23)
/* 801A6EF4  28 00 00 09 */	cmplwi r0, 9
/* 801A6EF8  41 82 00 0C */	beq lbl_801A6F04
/* 801A6EFC  28 00 00 0A */	cmplwi r0, 0xa
/* 801A6F00  40 82 00 14 */	bne lbl_801A6F14
lbl_801A6F04:
/* 801A6F04  7E E3 BB 78 */	mr r3, r23
/* 801A6F08  38 81 00 08 */	addi r4, r1, 8
/* 801A6F0C  4B FF FE 41 */	bl dKy_move_room_ratio__FP12dKy_tevstr_cPSc
/* 801A6F10  FF E0 08 90 */	fmr f31, f1
lbl_801A6F14:
/* 801A6F14  88 17 03 7A */	lbz r0, 0x37a(r23)
/* 801A6F18  28 00 00 0E */	cmplwi r0, 0xe
/* 801A6F1C  41 82 06 7C */	beq lbl_801A7598
/* 801A6F20  28 00 00 0C */	cmplwi r0, 0xc
/* 801A6F24  41 82 06 74 */	beq lbl_801A7598
/* 801A6F28  28 00 00 0D */	cmplwi r0, 0xd
/* 801A6F2C  40 82 00 08 */	bne lbl_801A6F34
/* 801A6F30  48 00 06 68 */	b lbl_801A7598
lbl_801A6F34:
/* 801A6F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A6F38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A6F3C  3A 83 4E C4 */	addi r20, r3, 0x4ec4
/* 801A6F40  7E 83 A3 78 */	mr r3, r20
/* 801A6F44  88 81 00 08 */	lbz r4, 8(r1)
/* 801A6F48  7C 84 07 74 */	extsb r4, r4
/* 801A6F4C  4B E7 D4 39 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A6F50  28 03 00 00 */	cmplwi r3, 0
/* 801A6F54  41 82 06 44 */	beq lbl_801A7598
/* 801A6F58  7E 83 A3 78 */	mr r3, r20
/* 801A6F5C  88 81 00 08 */	lbz r4, 8(r1)
/* 801A6F60  7C 84 07 74 */	extsb r4, r4
/* 801A6F64  4B E7 D4 21 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A6F68  81 83 00 00 */	lwz r12, 0(r3)
/* 801A6F6C  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801A6F70  7D 89 03 A6 */	mtctr r12
/* 801A6F74  4E 80 04 21 */	bctrl 
/* 801A6F78  7C 73 1B 78 */	mr r19, r3
/* 801A6F7C  7E 83 A3 78 */	mr r3, r20
/* 801A6F80  88 81 00 08 */	lbz r4, 8(r1)
/* 801A6F84  7C 84 07 74 */	extsb r4, r4
/* 801A6F88  4B E7 D3 FD */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A6F8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A6F90  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801A6F94  7D 89 03 A6 */	mtctr r12
/* 801A6F98  4E 80 04 21 */	bctrl 
/* 801A6F9C  7C 79 1B 78 */	mr r25, r3
/* 801A6FA0  2C 19 00 06 */	cmpwi r25, 6
/* 801A6FA4  40 81 00 08 */	ble lbl_801A6FAC
/* 801A6FA8  3B 20 00 06 */	li r25, 6
lbl_801A6FAC:
/* 801A6FAC  38 C0 00 00 */	li r6, 0
/* 801A6FB0  B0 CD 81 80 */	sth r6, lightMask(r13)
/* 801A6FB4  3C 60 80 3C */	lis r3, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A6FB8  38 83 BE AC */	addi r4, r3, lightMaskData@l /* 0x803BBEAC@l */
/* 801A6FBC  7F 29 03 A6 */	mtctr r25
/* 801A6FC0  2C 19 00 00 */	cmpwi r25, 0
/* 801A6FC4  40 81 00 2C */	ble lbl_801A6FF0
lbl_801A6FC8:
/* 801A6FC8  28 13 00 00 */	cmplwi r19, 0
/* 801A6FCC  41 82 00 18 */	beq lbl_801A6FE4
/* 801A6FD0  A0 AD 81 80 */	lhz r5, lightMask(r13)
/* 801A6FD4  7C 64 32 14 */	add r3, r4, r6
/* 801A6FD8  A0 03 00 04 */	lhz r0, 4(r3)
/* 801A6FDC  7C A0 03 78 */	or r0, r5, r0
/* 801A6FE0  B0 0D 81 80 */	sth r0, lightMask(r13)
lbl_801A6FE4:
/* 801A6FE4  3A 73 00 20 */	addi r19, r19, 0x20
/* 801A6FE8  38 C6 00 02 */	addi r6, r6, 2
/* 801A6FEC  42 00 FF DC */	bdnz lbl_801A6FC8
lbl_801A6FF0:
/* 801A6FF0  7E 83 A3 78 */	mr r3, r20
/* 801A6FF4  88 81 00 08 */	lbz r4, 8(r1)
/* 801A6FF8  7C 84 07 74 */	extsb r4, r4
/* 801A6FFC  4B E7 D3 89 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A7000  81 83 00 00 */	lwz r12, 0(r3)
/* 801A7004  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801A7008  7D 89 03 A6 */	mtctr r12
/* 801A700C  4E 80 04 21 */	bctrl 
/* 801A7010  7C 7E 1B 78 */	mr r30, r3
/* 801A7014  3B 00 00 00 */	li r24, 0
/* 801A7018  3A C0 00 00 */	li r22, 0
/* 801A701C  3A A0 00 00 */	li r21, 0
/* 801A7020  3A 80 00 00 */	li r20, 0
/* 801A7024  3C 60 80 3C */	lis r3, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A7028  3B E3 BE AC */	addi r31, r3, lightMaskData@l /* 0x803BBEAC@l */
/* 801A702C  C3 C2 A2 48 */	lfs f30, lit_4505(r2)
lbl_801A7030:
/* 801A7030  3B 94 00 74 */	addi r28, r20, 0x74
/* 801A7034  7F 97 E2 14 */	add r28, r23, r28
/* 801A7038  28 1A 00 00 */	cmplwi r26, 0
/* 801A703C  41 82 02 30 */	beq lbl_801A726C
/* 801A7040  28 1E 00 00 */	cmplwi r30, 0
/* 801A7044  41 82 00 A4 */	beq lbl_801A70E8
/* 801A7048  7C 18 C8 00 */	cmpw r24, r25
/* 801A704C  40 80 00 9C */	bge lbl_801A70E8
/* 801A7050  7E 7E AA 14 */	add r19, r30, r21
/* 801A7054  C0 13 00 00 */	lfs f0, 0(r19)
/* 801A7058  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A705C  C0 13 00 04 */	lfs f0, 4(r19)
/* 801A7060  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A7064  C0 13 00 08 */	lfs f0, 8(r19)
/* 801A7068  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A706C  7F 83 E3 78 */	mr r3, r28
/* 801A7070  C0 33 00 18 */	lfs f1, 0x18(r19)
/* 801A7074  88 93 00 1C */	lbz r4, 0x1c(r19)
/* 801A7078  4B FF 62 4D */	bl dKy_GXInitLightSpot__FP12J3DLightInfofUc
/* 801A707C  7E 63 9B 78 */	mr r3, r19
/* 801A7080  88 01 00 08 */	lbz r0, 8(r1)
/* 801A7084  7C 04 07 74 */	extsb r4, r0
/* 801A7088  4B FF F1 6D */	bl dKy_lightswitch_check__FP30stage_pure_lightvec_info_classc
/* 801A708C  2C 03 00 01 */	cmpwi r3, 1
/* 801A7090  40 82 00 10 */	bne lbl_801A70A0
/* 801A7094  C0 13 00 0C */	lfs f0, 0xc(r19)
/* 801A7098  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801A709C  48 00 00 08 */	b lbl_801A70A4
lbl_801A70A0:
/* 801A70A0  C0 22 A3 10 */	lfs f1, lit_6042(r2)
lbl_801A70A4:
/* 801A70A4  7F 83 E3 78 */	mr r3, r28
/* 801A70A8  C0 42 A3 50 */	lfs f2, lit_7012(r2)
/* 801A70AC  88 93 00 1D */	lbz r4, 0x1d(r19)
/* 801A70B0  4B FF 63 9D */	bl dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc
/* 801A70B4  C0 33 00 10 */	lfs f1, 0x10(r19)
/* 801A70B8  C0 53 00 14 */	lfs f2, 0x14(r19)
/* 801A70BC  38 7C 00 0C */	addi r3, r28, 0xc
/* 801A70C0  4B FF 60 E1 */	bl dKy_lightdir_set__FffP3Vec
/* 801A70C4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 801A70C8  FC 00 00 50 */	fneg f0, f0
/* 801A70CC  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 801A70D0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 801A70D4  FC 00 00 50 */	fneg f0, f0
/* 801A70D8  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801A70DC  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 801A70E0  FC 00 00 50 */	fneg f0, f0
/* 801A70E4  D0 1C 00 14 */	stfs f0, 0x14(r28)
lbl_801A70E8:
/* 801A70E8  48 00 50 81 */	bl dKy_SunMoon_Light_Check__Fv
/* 801A70EC  2C 03 00 01 */	cmpwi r3, 1
/* 801A70F0  40 82 00 C8 */	bne lbl_801A71B8
/* 801A70F4  2C 18 00 01 */	cmpwi r24, 1
/* 801A70F8  41 81 00 C0 */	bgt lbl_801A71B8
/* 801A70FC  A0 6D 81 80 */	lhz r3, lightMask(r13)
/* 801A7100  A0 1F 00 04 */	lhz r0, 4(r31)
/* 801A7104  7C 60 03 78 */	or r0, r3, r0
/* 801A7108  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A710C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 801A7110  A0 1F 00 06 */	lhz r0, 6(r31)
/* 801A7114  7C 60 03 78 */	or r0, r3, r0
/* 801A7118  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A711C  2C 18 00 00 */	cmpwi r24, 0
/* 801A7120  40 82 00 20 */	bne lbl_801A7140
/* 801A7124  C0 1D 10 88 */	lfs f0, 0x1088(r29)
/* 801A7128  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A712C  C0 1D 10 8C */	lfs f0, 0x108c(r29)
/* 801A7130  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A7134  C0 1D 10 90 */	lfs f0, 0x1090(r29)
/* 801A7138  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A713C  48 00 00 58 */	b lbl_801A7194
lbl_801A7140:
/* 801A7140  28 1B 00 00 */	cmplwi r27, 0
/* 801A7144  41 82 00 38 */	beq lbl_801A717C
/* 801A7148  C0 3B 00 D8 */	lfs f1, 0xd8(r27)
/* 801A714C  C0 1D 10 94 */	lfs f0, 0x1094(r29)
/* 801A7150  EC 01 00 2A */	fadds f0, f1, f0
/* 801A7154  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A7158  C0 3B 00 DC */	lfs f1, 0xdc(r27)
/* 801A715C  C0 1D 10 98 */	lfs f0, 0x1098(r29)
/* 801A7160  EC 01 00 2A */	fadds f0, f1, f0
/* 801A7164  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A7168  C0 3B 00 E0 */	lfs f1, 0xe0(r27)
/* 801A716C  C0 1D 10 9C */	lfs f0, 0x109c(r29)
/* 801A7170  EC 01 00 2A */	fadds f0, f1, f0
/* 801A7174  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A7178  48 00 00 1C */	b lbl_801A7194
lbl_801A717C:
/* 801A717C  C0 1D 10 94 */	lfs f0, 0x1094(r29)
/* 801A7180  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A7184  C0 1D 10 98 */	lfs f0, 0x1098(r29)
/* 801A7188  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A718C  C0 1D 10 9C */	lfs f0, 0x109c(r29)
/* 801A7190  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_801A7194:
/* 801A7194  7F 83 E3 78 */	mr r3, r28
/* 801A7198  C0 22 A2 2C */	lfs f1, lit_4442(r2)
/* 801A719C  38 80 00 00 */	li r4, 0
/* 801A71A0  4B FF 61 25 */	bl dKy_GXInitLightSpot__FP12J3DLightInfofUc
/* 801A71A4  7F 83 E3 78 */	mr r3, r28
/* 801A71A8  C0 22 A3 24 */	lfs f1, lit_6765(r2)
/* 801A71AC  C0 42 A3 50 */	lfs f2, lit_7012(r2)
/* 801A71B0  38 80 00 03 */	li r4, 3
/* 801A71B4  4B FF 62 99 */	bl dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc
lbl_801A71B8:
/* 801A71B8  7F 43 D3 78 */	mr r3, r26
/* 801A71BC  38 81 00 10 */	addi r4, r1, 0x10
/* 801A71C0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801A71C4  48 19 FB A9 */	bl PSMTXMultVec
/* 801A71C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801A71CC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801A71D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801A71D4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801A71D8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801A71DC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 801A71E0  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A71E4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 801A71E8  41 82 00 84 */	beq lbl_801A726C
/* 801A71EC  88 1C 00 18 */	lbz r0, 0x18(r28)
/* 801A71F0  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A71F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A71F8  3C 60 43 30 */	lis r3, 0x4330
/* 801A71FC  90 61 00 28 */	stw r3, 0x28(r1)
/* 801A7200  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7204  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A7208  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A720C  FC 00 00 1E */	fctiwz f0, f0
/* 801A7210  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7214  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7218  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A721C  88 1C 00 19 */	lbz r0, 0x19(r28)
/* 801A7220  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801A7224  90 61 00 38 */	stw r3, 0x38(r1)
/* 801A7228  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801A722C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A7230  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A7234  FC 00 00 1E */	fctiwz f0, f0
/* 801A7238  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801A723C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A7240  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A7244  88 1C 00 1A */	lbz r0, 0x1a(r28)
/* 801A7248  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A724C  90 61 00 48 */	stw r3, 0x48(r1)
/* 801A7250  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801A7254  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A7258  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A725C  FC 00 00 1E */	fctiwz f0, f0
/* 801A7260  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801A7264  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A7268  98 1C 00 1A */	stb r0, 0x1a(r28)
lbl_801A726C:
/* 801A726C  A0 8D 81 80 */	lhz r4, lightMask(r13)
/* 801A7270  7C 7F B2 14 */	add r3, r31, r22
/* 801A7274  A0 03 00 04 */	lhz r0, 4(r3)
/* 801A7278  7C 80 00 39 */	and. r0, r4, r0
/* 801A727C  40 82 00 14 */	bne lbl_801A7290
/* 801A7280  38 00 00 00 */	li r0, 0
/* 801A7284  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A7288  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A728C  98 1C 00 1A */	stb r0, 0x1a(r28)
lbl_801A7290:
/* 801A7290  FC 1E F8 00 */	fcmpu cr0, f30, f31
/* 801A7294  41 82 00 84 */	beq lbl_801A7318
/* 801A7298  88 17 00 18 */	lbz r0, 0x18(r23)
/* 801A729C  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A72A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A72A4  3C 60 43 30 */	lis r3, 0x4330
/* 801A72A8  90 61 00 50 */	stw r3, 0x50(r1)
/* 801A72AC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801A72B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A72B4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A72B8  FC 00 00 1E */	fctiwz f0, f0
/* 801A72BC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801A72C0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801A72C4  98 17 00 18 */	stb r0, 0x18(r23)
/* 801A72C8  88 17 00 19 */	lbz r0, 0x19(r23)
/* 801A72CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A72D0  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A72D4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801A72D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A72DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A72E0  FC 00 00 1E */	fctiwz f0, f0
/* 801A72E4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 801A72E8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801A72EC  98 17 00 19 */	stb r0, 0x19(r23)
/* 801A72F0  88 17 00 1A */	lbz r0, 0x1a(r23)
/* 801A72F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A72F8  90 61 00 30 */	stw r3, 0x30(r1)
/* 801A72FC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801A7300  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A7304  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A7308  FC 00 00 1E */	fctiwz f0, f0
/* 801A730C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801A7310  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801A7314  98 17 00 1A */	stb r0, 0x1a(r23)
lbl_801A7318:
/* 801A7318  3B 18 00 01 */	addi r24, r24, 1
/* 801A731C  2C 18 00 06 */	cmpwi r24, 6
/* 801A7320  3A D6 00 02 */	addi r22, r22, 2
/* 801A7324  3A B5 00 20 */	addi r21, r21, 0x20
/* 801A7328  3A 94 00 74 */	addi r20, r20, 0x74
/* 801A732C  41 80 FD 04 */	blt lbl_801A7030
/* 801A7330  3B 00 00 00 */	li r24, 0
/* 801A7334  3B 20 00 00 */	li r25, 0
/* 801A7338  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A733C  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
lbl_801A7340:
/* 801A7340  7F DD CA 14 */	add r30, r29, r25
/* 801A7344  88 1E 0C 3E */	lbz r0, 0xc3e(r30)
/* 801A7348  28 00 00 01 */	cmplwi r0, 1
/* 801A734C  40 82 02 3C */	bne lbl_801A7588
/* 801A7350  28 1A 00 00 */	cmplwi r26, 0
/* 801A7354  41 82 02 34 */	beq lbl_801A7588
/* 801A7358  38 E0 00 00 */	li r7, 0
/* 801A735C  38 60 00 00 */	li r3, 0
/* 801A7360  A0 CD 81 80 */	lhz r6, lightMask(r13)
/* 801A7364  3C 80 80 3C */	lis r4, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A7368  38 A4 BE AC */	addi r5, r4, lightMaskData@l /* 0x803BBEAC@l */
/* 801A736C  38 00 00 06 */	li r0, 6
/* 801A7370  7C 09 03 A6 */	mtctr r0
lbl_801A7374:
/* 801A7374  7C 85 1A 14 */	add r4, r5, r3
/* 801A7378  A0 84 00 04 */	lhz r4, 4(r4)
/* 801A737C  7C C0 20 39 */	and. r0, r6, r4
/* 801A7380  40 82 01 FC */	bne lbl_801A757C
/* 801A7384  A0 0D 81 80 */	lhz r0, lightMask(r13)
/* 801A7388  7C 00 23 78 */	or r0, r0, r4
/* 801A738C  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A7390  1C 67 00 74 */	mulli r3, r7, 0x74
/* 801A7394  3B 83 00 74 */	addi r28, r3, 0x74
/* 801A7398  7F 97 E2 14 */	add r28, r23, r28
/* 801A739C  3A 7E 0C 27 */	addi r19, r30, 0xc27
/* 801A73A0  88 1E 0C 27 */	lbz r0, 0xc27(r30)
/* 801A73A4  28 00 00 FE */	cmplwi r0, 0xfe
/* 801A73A8  41 82 00 0C */	beq lbl_801A73B4
/* 801A73AC  28 00 00 FD */	cmplwi r0, 0xfd
/* 801A73B0  40 82 00 0C */	bne lbl_801A73BC
lbl_801A73B4:
/* 801A73B4  7F 03 C3 78 */	mr r3, r24
/* 801A73B8  4B FF 5C 2D */	bl dKy_twi_wolflight_set__Fi
lbl_801A73BC:
/* 801A73BC  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 801A73C0  C0 37 03 74 */	lfs f1, 0x374(r23)
/* 801A73C4  4B FF 70 6D */	bl dKy_light_influence_col__FP8_GXColorf
/* 801A73C8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801A73CC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801A73D0  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A73D4  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801A73D8  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A73DC  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801A73E0  98 1C 00 1A */	stb r0, 0x1a(r28)
/* 801A73E4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801A73E8  98 1C 00 1B */	stb r0, 0x1b(r28)
/* 801A73EC  88 17 03 7A */	lbz r0, 0x37a(r23)
/* 801A73F0  28 00 00 10 */	cmplwi r0, 0x10
/* 801A73F4  40 80 00 B0 */	bge lbl_801A74A4
/* 801A73F8  C0 1E 0C 18 */	lfs f0, 0xc18(r30)
/* 801A73FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A7400  C0 1E 0C 1C */	lfs f0, 0xc1c(r30)
/* 801A7404  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A7408  C0 1E 0C 20 */	lfs f0, 0xc20(r30)
/* 801A740C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A7410  88 13 00 00 */	lbz r0, 0(r19)
/* 801A7414  28 00 00 FD */	cmplwi r0, 0xfd
/* 801A7418  40 82 00 C8 */	bne lbl_801A74E0
/* 801A741C  C0 42 A3 00 */	lfs f2, lit_6038(r2)
/* 801A7420  88 1C 00 18 */	lbz r0, 0x18(r28)
/* 801A7424  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A7428  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A742C  3C 60 43 30 */	lis r3, 0x4330
/* 801A7430  90 61 00 50 */	stw r3, 0x50(r1)
/* 801A7434  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801A7438  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A743C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A7440  FC 00 00 1E */	fctiwz f0, f0
/* 801A7444  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801A7448  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 801A744C  98 1C 00 18 */	stb r0, 0x18(r28)
/* 801A7450  88 1C 00 19 */	lbz r0, 0x19(r28)
/* 801A7454  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A7458  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A745C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801A7460  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A7464  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A7468  FC 00 00 1E */	fctiwz f0, f0
/* 801A746C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 801A7470  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801A7474  98 1C 00 19 */	stb r0, 0x19(r28)
/* 801A7478  88 1C 00 1A */	lbz r0, 0x1a(r28)
/* 801A747C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A7480  90 61 00 30 */	stw r3, 0x30(r1)
/* 801A7484  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801A7488  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A748C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A7490  FC 00 00 1E */	fctiwz f0, f0
/* 801A7494  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 801A7498  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801A749C  98 1C 00 1A */	stb r0, 0x1a(r28)
/* 801A74A0  48 00 00 40 */	b lbl_801A74E0
lbl_801A74A4:
/* 801A74A4  C0 1E 0C 18 */	lfs f0, 0xc18(r30)
/* 801A74A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A74AC  2C 18 00 00 */	cmpwi r24, 0
/* 801A74B0  40 82 00 18 */	bne lbl_801A74C8
/* 801A74B4  C0 3E 0C 1C */	lfs f1, 0xc1c(r30)
/* 801A74B8  C0 1F 12 7C */	lfs f0, 0x127c(r31)
/* 801A74BC  EC 01 00 2A */	fadds f0, f1, f0
/* 801A74C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A74C4  48 00 00 14 */	b lbl_801A74D8
lbl_801A74C8:
/* 801A74C8  C0 22 A2 8C */	lfs f1, lit_5106(r2)
/* 801A74CC  C0 1E 0C 1C */	lfs f0, 0xc1c(r30)
/* 801A74D0  EC 01 00 2A */	fadds f0, f1, f0
/* 801A74D4  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_801A74D8:
/* 801A74D8  C0 1E 0C 20 */	lfs f0, 0xc20(r30)
/* 801A74DC  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_801A74E0:
/* 801A74E0  7F 83 E3 78 */	mr r3, r28
/* 801A74E4  C0 3E 0C 30 */	lfs f1, 0xc30(r30)
/* 801A74E8  88 9E 0C 3C */	lbz r4, 0xc3c(r30)
/* 801A74EC  4B FF 5D D9 */	bl dKy_GXInitLightSpot__FP12J3DLightInfofUc
/* 801A74F0  C0 1E 0C 28 */	lfs f0, 0xc28(r30)
/* 801A74F4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 801A74F8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A74FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A7500  4C 40 13 82 */	cror 2, 0, 2
/* 801A7504  40 82 00 08 */	bne lbl_801A750C
/* 801A7508  C0 22 A3 10 */	lfs f1, lit_6042(r2)
lbl_801A750C:
/* 801A750C  7F 83 E3 78 */	mr r3, r28
/* 801A7510  C0 42 A3 50 */	lfs f2, lit_7012(r2)
/* 801A7514  88 9E 0C 3D */	lbz r4, 0xc3d(r30)
/* 801A7518  4B FF 5F 35 */	bl dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc
/* 801A751C  7F 43 D3 78 */	mr r3, r26
/* 801A7520  38 81 00 10 */	addi r4, r1, 0x10
/* 801A7524  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801A7528  48 19 F8 45 */	bl PSMTXMultVec
/* 801A752C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801A7530  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801A7534  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801A7538  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801A753C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801A7540  D0 1C 00 08 */	stfs f0, 8(r28)
/* 801A7544  C0 3E 0C 34 */	lfs f1, 0xc34(r30)
/* 801A7548  C0 5E 0C 38 */	lfs f2, 0xc38(r30)
/* 801A754C  38 7C 00 0C */	addi r3, r28, 0xc
/* 801A7550  4B FF 5C 51 */	bl dKy_lightdir_set__FffP3Vec
/* 801A7554  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 801A7558  FC 00 00 50 */	fneg f0, f0
/* 801A755C  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 801A7560  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 801A7564  FC 00 00 50 */	fneg f0, f0
/* 801A7568  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801A756C  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 801A7570  FC 00 00 50 */	fneg f0, f0
/* 801A7574  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 801A7578  48 00 00 10 */	b lbl_801A7588
lbl_801A757C:
/* 801A757C  38 E7 00 01 */	addi r7, r7, 1
/* 801A7580  38 63 00 02 */	addi r3, r3, 2
/* 801A7584  42 00 FD F0 */	bdnz lbl_801A7374
lbl_801A7588:
/* 801A7588  3B 18 00 01 */	addi r24, r24, 1
/* 801A758C  2C 18 00 06 */	cmpwi r24, 6
/* 801A7590  3B 39 00 28 */	addi r25, r25, 0x28
/* 801A7594  41 80 FD AC */	blt lbl_801A7340
lbl_801A7598:
/* 801A7598  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801A759C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801A75A0  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 801A75A4  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801A75A8  39 61 00 90 */	addi r11, r1, 0x90
/* 801A75AC  48 1B AC 55 */	bl _restgpr_19
/* 801A75B0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801A75B4  7C 08 03 A6 */	mtlr r0
/* 801A75B8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801A75BC  4E 80 00 20 */	blr 
