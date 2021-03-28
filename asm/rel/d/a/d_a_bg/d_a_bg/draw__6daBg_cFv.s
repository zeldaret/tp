lbl_804588C4:
/* 804588C4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804588C8  7C 08 02 A6 */	mflr r0
/* 804588CC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804588D0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804588D4  4B F0 98 D0 */	b _savegpr_15
/* 804588D8  7C 7F 1B 78 */	mr r31, r3
/* 804588DC  3C 60 80 46 */	lis r3, lit_3756@ha
/* 804588E0  3B 43 93 74 */	addi r26, r3, lit_3756@l
/* 804588E4  81 FF 00 B0 */	lwz r15, 0xb0(r31)
/* 804588E8  3A DF 05 70 */	addi r22, r31, 0x570
/* 804588EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804588F0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 804588F4  80 1B 5F 70 */	lwz r0, 0x5f70(r27)
/* 804588F8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804588FC  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 80458900  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80458904  80 1B 5F 74 */	lwz r0, 0x5f74(r27)
/* 80458908  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 8045890C  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 80458910  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 80458914  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l
/* 80458918  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8045891C  4B E1 AE 70 */	b calcViewFrustum__11J3DUClipperFv
/* 80458920  3A 80 00 00 */	li r20, 0
/* 80458924  3B C0 00 00 */	li r30, 0
/* 80458928  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8045892C  3B A3 CA 54 */	addi r29, r3, g_env_light@l
/* 80458930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80458934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80458938  3A 03 07 F0 */	addi r16, r3, 0x7f0
/* 8045893C  3A FB 4E 00 */	addi r23, r27, 0x4e00
lbl_80458940:
/* 80458940  82 B6 00 00 */	lwz r21, 0(r22)
/* 80458944  28 15 00 00 */	cmplwi r21, 0
/* 80458948  41 82 05 80 */	beq lbl_80458EC8
/* 8045894C  82 75 00 04 */	lwz r19, 4(r21)
/* 80458950  80 76 00 04 */	lwz r3, 4(r22)
/* 80458954  28 03 00 00 */	cmplwi r3, 0
/* 80458958  41 82 00 14 */	beq lbl_8045896C
/* 8045895C  80 63 00 00 */	lwz r3, 0(r3)
/* 80458960  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80458964  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80458968  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8045896C:
/* 8045896C  80 76 00 08 */	lwz r3, 8(r22)
/* 80458970  28 03 00 00 */	cmplwi r3, 0
/* 80458974  41 82 00 50 */	beq lbl_804589C4
/* 80458978  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 8045897C  28 00 00 09 */	cmplwi r0, 9
/* 80458980  40 82 00 34 */	bne lbl_804589B4
/* 80458984  80 63 00 00 */	lwz r3, 0(r3)
/* 80458988  A8 03 00 08 */	lha r0, 8(r3)
/* 8045898C  C8 3A 00 28 */	lfd f1, 0x28(r26)
/* 80458990  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80458994  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80458998  3C 00 43 30 */	lis r0, 0x4330
/* 8045899C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804589A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804589A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804589A8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804589AC  D0 03 00 08 */	stfs f0, 8(r3)
/* 804589B0  48 00 00 14 */	b lbl_804589C4
lbl_804589B4:
/* 804589B4  80 63 00 00 */	lwz r3, 0(r3)
/* 804589B8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804589BC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804589C0  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804589C4:
/* 804589C4  7E A3 AB 78 */	mr r3, r21
/* 804589C8  81 95 00 00 */	lwz r12, 0(r21)
/* 804589CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804589D0  7D 89 03 A6 */	mtctr r12
/* 804589D4  4E 80 04 21 */	bctrl 
/* 804589D8  3B 20 00 00 */	li r25, 0
/* 804589DC  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 804589E0  3A 43 D8 E4 */	addi r18, r3, mClipper__14mDoLib_clipper@l
/* 804589E4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804589E8  3A 23 4A C8 */	addi r17, r3, j3dSys@l
/* 804589EC  48 00 00 4C */	b lbl_80458A38
lbl_804589F0:
/* 804589F0  80 73 00 80 */	lwz r3, 0x80(r19)
/* 804589F4  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 804589F8  7F 03 00 2E */	lwzx r24, r3, r0
/* 804589FC  7E 43 93 78 */	mr r3, r18
/* 80458A00  7E 24 8B 78 */	mr r4, r17
/* 80458A04  38 B8 00 14 */	addi r5, r24, 0x14
/* 80458A08  38 D8 00 20 */	addi r6, r24, 0x20
/* 80458A0C  4B E1 B0 38 */	b clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 80458A10  2C 03 00 00 */	cmpwi r3, 0
/* 80458A14  41 82 00 14 */	beq lbl_80458A28
/* 80458A18  80 18 00 0C */	lwz r0, 0xc(r24)
/* 80458A1C  60 00 00 01 */	ori r0, r0, 1
/* 80458A20  90 18 00 0C */	stw r0, 0xc(r24)
/* 80458A24  48 00 00 10 */	b lbl_80458A34
lbl_80458A28:
/* 80458A28  80 18 00 0C */	lwz r0, 0xc(r24)
/* 80458A2C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80458A30  90 18 00 0C */	stw r0, 0xc(r24)
lbl_80458A34:
/* 80458A34  3B 39 00 01 */	addi r25, r25, 1
lbl_80458A38:
/* 80458A38  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 80458A3C  A0 13 00 7C */	lhz r0, 0x7c(r19)
/* 80458A40  7C 03 00 40 */	cmplw r3, r0
/* 80458A44  41 80 FF AC */	blt lbl_804589F0
/* 80458A48  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80458A4C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80458A50  3C 80 80 46 */	lis r4, data_80459534@ha
/* 80458A54  38 84 95 34 */	addi r4, r4, data_80459534@l
/* 80458A58  7C 84 F0 2E */	lwzx r4, r4, r30
/* 80458A5C  38 A0 00 00 */	li r5, 0
/* 80458A60  80 D6 00 0C */	lwz r6, 0xc(r22)
/* 80458A64  4B D4 AD 60 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80458A68  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80458A6C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80458A70  80 95 00 04 */	lwz r4, 4(r21)
/* 80458A74  80 B6 00 0C */	lwz r5, 0xc(r22)
/* 80458A78  4B D4 C3 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80458A7C  7E A3 AB 78 */	mr r3, r21
/* 80458A80  4B D5 42 A4 */	b dKy_bg_MAxx_proc__FPv
/* 80458A84  28 15 00 00 */	cmplwi r21, 0
/* 80458A88  41 82 04 28 */	beq lbl_80458EB0
/* 80458A8C  83 35 00 04 */	lwz r25, 4(r21)
/* 80458A90  3A 60 00 00 */	li r19, 0
/* 80458A94  3C 60 80 46 */	lis r3, stringBase0@ha
/* 80458A98  3A 43 93 A8 */	addi r18, r3, stringBase0@l
/* 80458A9C  48 00 04 04 */	b lbl_80458EA0
lbl_80458AA0:
/* 80458AA0  80 79 00 60 */	lwz r3, 0x60(r25)
/* 80458AA4  56 60 13 BA */	rlwinm r0, r19, 2, 0xe, 0x1d
/* 80458AA8  7F 03 00 2E */	lwzx r24, r3, r0
/* 80458AAC  80 79 00 64 */	lwz r3, 0x64(r25)
/* 80458AB0  7E 64 9B 78 */	mr r4, r19
/* 80458AB4  4B E8 60 44 */	b getName__10JUTNameTabCFUs
/* 80458AB8  7C 71 1B 78 */	mr r17, r3
/* 80458ABC  38 71 00 03 */	addi r3, r17, 3
/* 80458AC0  38 92 00 27 */	addi r4, r18, 0x27
/* 80458AC4  38 A0 00 04 */	li r5, 4
/* 80458AC8  4B F0 D5 C4 */	b memcmp
/* 80458ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80458AD0  40 82 00 1C */	bne lbl_80458AEC
/* 80458AD4  88 1D 12 C3 */	lbz r0, 0x12c3(r29)
/* 80458AD8  28 00 00 06 */	cmplwi r0, 6
/* 80458ADC  40 82 01 28 */	bne lbl_80458C04
/* 80458AE0  38 00 00 00 */	li r0, 0
/* 80458AE4  98 1F 05 F0 */	stb r0, 0x5f0(r31)
/* 80458AE8  48 00 01 1C */	b lbl_80458C04
lbl_80458AEC:
/* 80458AEC  38 71 00 03 */	addi r3, r17, 3
/* 80458AF0  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458AF4  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458AF8  38 84 00 2C */	addi r4, r4, 0x2c
/* 80458AFC  38 A0 00 04 */	li r5, 4
/* 80458B00  4B F0 D5 8C */	b memcmp
/* 80458B04  2C 03 00 00 */	cmpwi r3, 0
/* 80458B08  40 82 00 3C */	bne lbl_80458B44
/* 80458B0C  3C 60 80 45 */	lis r3, m_frame__7dDemo_c@ha
/* 80458B10  80 03 0E 28 */	lwz r0, m_frame__7dDemo_c@l(r3)
/* 80458B14  28 00 04 5E */	cmplwi r0, 0x45e
/* 80458B18  41 80 00 0C */	blt lbl_80458B24
/* 80458B1C  38 00 00 00 */	li r0, 0
/* 80458B20  98 1F 05 F0 */	stb r0, 0x5f0(r31)
lbl_80458B24:
/* 80458B24  7E 03 83 78 */	mr r3, r16
/* 80458B28  38 80 0D 04 */	li r4, 0xd04
/* 80458B2C  4B BD BE 90 */	b isEventBit__11dSv_event_cCFUs
/* 80458B30  2C 03 00 00 */	cmpwi r3, 0
/* 80458B34  41 82 00 D0 */	beq lbl_80458C04
/* 80458B38  38 00 00 09 */	li r0, 9
/* 80458B3C  98 1F 05 F0 */	stb r0, 0x5f0(r31)
/* 80458B40  48 00 00 C4 */	b lbl_80458C04
lbl_80458B44:
/* 80458B44  38 71 00 03 */	addi r3, r17, 3
/* 80458B48  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458B4C  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458B50  38 84 00 31 */	addi r4, r4, 0x31
/* 80458B54  38 A0 00 04 */	li r5, 4
/* 80458B58  4B F0 D5 34 */	b memcmp
/* 80458B5C  2C 03 00 00 */	cmpwi r3, 0
/* 80458B60  40 82 00 30 */	bne lbl_80458B90
/* 80458B64  4B BD 4D AC */	b dComIfGs_BossLife_public_Get__Fv
/* 80458B68  7C 60 07 74 */	extsb r0, r3
/* 80458B6C  2C 00 FF FF */	cmpwi r0, -1
/* 80458B70  41 82 00 14 */	beq lbl_80458B84
/* 80458B74  4B BD 4D 9C */	b dComIfGs_BossLife_public_Get__Fv
/* 80458B78  38 03 00 01 */	addi r0, r3, 1
/* 80458B7C  98 1F 05 F1 */	stb r0, 0x5f1(r31)
/* 80458B80  48 00 00 84 */	b lbl_80458C04
lbl_80458B84:
/* 80458B84  38 00 00 00 */	li r0, 0
/* 80458B88  98 1F 05 F1 */	stb r0, 0x5f1(r31)
/* 80458B8C  48 00 00 78 */	b lbl_80458C04
lbl_80458B90:
/* 80458B90  38 71 00 03 */	addi r3, r17, 3
/* 80458B94  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458B98  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458B9C  38 84 00 36 */	addi r4, r4, 0x36
/* 80458BA0  38 A0 00 04 */	li r5, 4
/* 80458BA4  4B F0 D4 E8 */	b memcmp
/* 80458BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80458BAC  40 82 00 24 */	bne lbl_80458BD0
/* 80458BB0  C0 5A 00 0C */	lfs f2, 0xc(r26)
/* 80458BB4  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80458BB8  C0 1D 13 04 */	lfs f0, 0x1304(r29)
/* 80458BBC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80458BC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80458BC4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80458BC8  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 80458BCC  48 00 00 38 */	b lbl_80458C04
lbl_80458BD0:
/* 80458BD0  38 71 00 03 */	addi r3, r17, 3
/* 80458BD4  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458BD8  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458BDC  38 84 00 3B */	addi r4, r4, 0x3b
/* 80458BE0  38 A0 00 04 */	li r5, 4
/* 80458BE4  4B F0 D4 A8 */	b memcmp
/* 80458BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80458BEC  40 82 00 18 */	bne lbl_80458C04
/* 80458BF0  80 96 00 0C */	lwz r4, 0xc(r22)
/* 80458BF4  A0 64 03 78 */	lhz r3, 0x378(r4)
/* 80458BF8  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80458BFC  7C 60 03 78 */	or r0, r3, r0
/* 80458C00  B0 04 03 78 */	sth r0, 0x378(r4)
lbl_80458C04:
/* 80458C04  7E E3 BB 78 */	mr r3, r23
/* 80458C08  38 92 00 40 */	addi r4, r18, 0x40
/* 80458C0C  4B F0 FD 88 */	b strcmp
/* 80458C10  2C 03 00 00 */	cmpwi r3, 0
/* 80458C14  41 82 00 20 */	beq lbl_80458C34
/* 80458C18  7E E3 BB 78 */	mr r3, r23
/* 80458C1C  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458C20  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458C24  38 84 00 48 */	addi r4, r4, 0x48
/* 80458C28  4B F0 FD 6C */	b strcmp
/* 80458C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80458C30  40 82 02 6C */	bne lbl_80458E9C
lbl_80458C34:
/* 80458C34  38 71 00 03 */	addi r3, r17, 3
/* 80458C38  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458C3C  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458C40  38 84 00 50 */	addi r4, r4, 0x50
/* 80458C44  38 A0 00 15 */	li r5, 0x15
/* 80458C48  4B F0 D4 44 */	b memcmp
/* 80458C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80458C50  41 82 00 44 */	beq lbl_80458C94
/* 80458C54  38 71 00 03 */	addi r3, r17, 3
/* 80458C58  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458C5C  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458C60  38 84 00 66 */	addi r4, r4, 0x66
/* 80458C64  38 A0 00 09 */	li r5, 9
/* 80458C68  4B F0 D4 24 */	b memcmp
/* 80458C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80458C70  41 82 00 24 */	beq lbl_80458C94
/* 80458C74  38 71 00 03 */	addi r3, r17, 3
/* 80458C78  3C 80 80 46 */	lis r4, stringBase0@ha
/* 80458C7C  38 84 93 A8 */	addi r4, r4, stringBase0@l
/* 80458C80  38 84 00 70 */	addi r4, r4, 0x70
/* 80458C84  38 A0 00 09 */	li r5, 9
/* 80458C88  4B F0 D4 04 */	b memcmp
/* 80458C8C  2C 03 00 00 */	cmpwi r3, 0
/* 80458C90  40 82 02 0C */	bne lbl_80458E9C
lbl_80458C94:
/* 80458C94  88 1D 12 FE */	lbz r0, 0x12fe(r29)
/* 80458C98  2C 00 00 03 */	cmpwi r0, 3
/* 80458C9C  41 82 00 30 */	beq lbl_80458CCC
/* 80458CA0  40 80 00 10 */	bge lbl_80458CB0
/* 80458CA4  2C 00 00 02 */	cmpwi r0, 2
/* 80458CA8  40 80 00 14 */	bge lbl_80458CBC
/* 80458CAC  48 00 00 40 */	b lbl_80458CEC
lbl_80458CB0:
/* 80458CB0  2C 00 00 05 */	cmpwi r0, 5
/* 80458CB4  40 80 00 38 */	bge lbl_80458CEC
/* 80458CB8  48 00 00 24 */	b lbl_80458CDC
lbl_80458CBC:
/* 80458CBC  38 A0 FF FD */	li r5, -3
/* 80458CC0  38 00 00 00 */	li r0, 0
/* 80458CC4  38 60 FF FC */	li r3, -4
/* 80458CC8  48 00 00 30 */	b lbl_80458CF8
lbl_80458CCC:
/* 80458CCC  38 A0 00 00 */	li r5, 0
/* 80458CD0  38 00 FF F6 */	li r0, -10
/* 80458CD4  38 60 FF F3 */	li r3, -13
/* 80458CD8  48 00 00 20 */	b lbl_80458CF8
lbl_80458CDC:
/* 80458CDC  38 A0 00 12 */	li r5, 0x12
/* 80458CE0  38 00 00 11 */	li r0, 0x11
/* 80458CE4  38 60 00 19 */	li r3, 0x19
/* 80458CE8  48 00 00 10 */	b lbl_80458CF8
lbl_80458CEC:
/* 80458CEC  38 A0 00 00 */	li r5, 0
/* 80458CF0  7C A0 2B 78 */	mr r0, r5
/* 80458CF4  7C A3 2B 78 */	mr r3, r5
lbl_80458CF8:
/* 80458CF8  80 96 00 0C */	lwz r4, 0xc(r22)
/* 80458CFC  A8 84 03 48 */	lha r4, 0x348(r4)
/* 80458D00  C8 3A 00 28 */	lfd f1, 0x28(r26)
/* 80458D04  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80458D08  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80458D0C  3C 80 43 30 */	lis r4, 0x4330
/* 80458D10  90 81 00 18 */	stw r4, 0x18(r1)
/* 80458D14  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80458D18  EC 20 08 28 */	fsubs f1, f0, f1
/* 80458D1C  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 80458D20  EC 41 00 24 */	fdivs f2, f1, f0
/* 80458D24  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80458D28  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80458D2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80458D30  40 81 00 08 */	ble lbl_80458D38
/* 80458D34  FC 40 00 90 */	fmr f2, f0
lbl_80458D38:
/* 80458D38  7C A4 07 34 */	extsh r4, r5
/* 80458D3C  C8 3A 00 28 */	lfd f1, 0x28(r26)
/* 80458D40  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80458D44  90 81 00 24 */	stw r4, 0x24(r1)
/* 80458D48  3C A0 43 30 */	lis r5, 0x4330
/* 80458D4C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80458D50  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80458D54  EC 00 08 28 */	fsubs f0, f0, f1
/* 80458D58  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80458D5C  FC 00 00 1E */	fctiwz f0, f0
/* 80458D60  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80458D64  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80458D68  B0 81 00 0C */	sth r4, 0xc(r1)
/* 80458D6C  80 96 00 0C */	lwz r4, 0xc(r22)
/* 80458D70  A8 84 03 4A */	lha r4, 0x34a(r4)
/* 80458D74  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80458D78  90 81 00 34 */	stw r4, 0x34(r1)
/* 80458D7C  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80458D80  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80458D84  EC 20 08 28 */	fsubs f1, f0, f1
/* 80458D88  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 80458D8C  EC 41 00 24 */	fdivs f2, f1, f0
/* 80458D90  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80458D94  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80458D98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80458D9C  40 81 00 08 */	ble lbl_80458DA4
/* 80458DA0  FC 40 00 90 */	fmr f2, f0
lbl_80458DA4:
/* 80458DA4  7C 00 07 34 */	extsh r0, r0
/* 80458DA8  C8 3A 00 28 */	lfd f1, 0x28(r26)
/* 80458DAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80458DB0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80458DB4  3C A0 43 30 */	lis r5, 0x4330
/* 80458DB8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 80458DBC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80458DC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80458DC4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80458DC8  FC 00 00 1E */	fctiwz f0, f0
/* 80458DCC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80458DD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80458DD4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80458DD8  80 96 00 0C */	lwz r4, 0xc(r22)
/* 80458DDC  A8 04 03 4C */	lha r0, 0x34c(r4)
/* 80458DE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80458DE4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80458DE8  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80458DEC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80458DF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80458DF4  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 80458DF8  EC 41 00 24 */	fdivs f2, f1, f0
/* 80458DFC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80458E00  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80458E04  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80458E08  40 81 00 08 */	ble lbl_80458E10
/* 80458E0C  FC 40 00 90 */	fmr f2, f0
lbl_80458E10:
/* 80458E10  7C 60 07 34 */	extsh r0, r3
/* 80458E14  C8 3A 00 28 */	lfd f1, 0x28(r26)
/* 80458E18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80458E1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80458E20  3C 00 43 30 */	lis r0, 0x4330
/* 80458E24  90 01 00 50 */	stw r0, 0x50(r1)
/* 80458E28  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80458E2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80458E30  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80458E34  FC 00 00 1E */	fctiwz f0, f0
/* 80458E38  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80458E3C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80458E40  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80458E44  38 00 00 FF */	li r0, 0xff
/* 80458E48  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80458E4C  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 80458E50  38 80 00 00 */	li r4, 0
/* 80458E54  38 A1 00 0C */	addi r5, r1, 0xc
/* 80458E58  81 83 00 00 */	lwz r12, 0(r3)
/* 80458E5C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80458E60  7D 89 03 A6 */	mtctr r12
/* 80458E64  4E 80 04 21 */	bctrl 
/* 80458E68  38 00 00 00 */	li r0, 0
/* 80458E6C  98 01 00 08 */	stb r0, 8(r1)
/* 80458E70  98 01 00 09 */	stb r0, 9(r1)
/* 80458E74  98 01 00 0A */	stb r0, 0xa(r1)
/* 80458E78  38 00 00 FF */	li r0, 0xff
/* 80458E7C  98 01 00 0B */	stb r0, 0xb(r1)
/* 80458E80  80 78 00 2C */	lwz r3, 0x2c(r24)
/* 80458E84  38 80 00 00 */	li r4, 0
/* 80458E88  38 A1 00 08 */	addi r5, r1, 8
/* 80458E8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80458E90  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80458E94  7D 89 03 A6 */	mtctr r12
/* 80458E98  4E 80 04 21 */	bctrl 
lbl_80458E9C:
/* 80458E9C  3A 73 00 01 */	addi r19, r19, 1
lbl_80458EA0:
/* 80458EA0  56 63 04 3E */	clrlwi r3, r19, 0x10
/* 80458EA4  A0 19 00 5C */	lhz r0, 0x5c(r25)
/* 80458EA8  7C 03 00 40 */	cmplw r3, r0
/* 80458EAC  41 80 FB F4 */	blt lbl_80458AA0
lbl_80458EB0:
/* 80458EB0  7E A3 AB 78 */	mr r3, r21
/* 80458EB4  4B BB 4E B0 */	b mDoExt_modelEntryDL__FP8J3DModel
/* 80458EB8  80 1B 5F 70 */	lwz r0, 0x5f70(r27)
/* 80458EBC  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80458EC0  80 1B 5F 74 */	lwz r0, 0x5f74(r27)
/* 80458EC4  90 1C 00 4C */	stw r0, 0x4c(r28)
lbl_80458EC8:
/* 80458EC8  3A 94 00 01 */	addi r20, r20, 1
/* 80458ECC  2C 14 00 06 */	cmpwi r20, 6
/* 80458ED0  3A D6 00 14 */	addi r22, r22, 0x14
/* 80458ED4  3B DE 00 04 */	addi r30, r30, 4
/* 80458ED8  41 80 FA 68 */	blt lbl_80458940
/* 80458EDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80458EE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80458EE4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80458EE8  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80458EEC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80458EF0  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80458EF4  1C 8F 04 04 */	mulli r4, r15, 0x404
/* 80458EF8  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 80458EFC  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l
/* 80458F00  7C 60 22 14 */	add r3, r0, r4
/* 80458F04  38 C3 00 6C */	addi r6, r3, 0x6c
/* 80458F08  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80458F0C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80458F10  38 80 00 10 */	li r4, 0x10
/* 80458F14  38 A0 00 00 */	li r5, 0
/* 80458F18  4B D4 A8 AC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80458F1C  38 60 00 01 */	li r3, 1
/* 80458F20  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80458F24  4B F0 92 CC */	b _restgpr_15
/* 80458F28  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80458F2C  7C 08 03 A6 */	mtlr r0
/* 80458F30  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80458F34  4E 80 00 20 */	blr 
