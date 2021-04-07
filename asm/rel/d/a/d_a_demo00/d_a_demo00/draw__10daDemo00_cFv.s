lbl_804A6F94:
/* 804A6F94  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 804A6F98  7C 08 02 A6 */	mflr r0
/* 804A6F9C  90 01 01 24 */	stw r0, 0x124(r1)
/* 804A6FA0  39 61 01 20 */	addi r11, r1, 0x120
/* 804A6FA4  4B EB B2 35 */	bl _savegpr_28
/* 804A6FA8  7C 7F 1B 78 */	mr r31, r3
/* 804A6FAC  3C 60 80 4B */	lis r3, lit_3727@ha /* 0x804A8860@ha */
/* 804A6FB0  3B C3 88 60 */	addi r30, r3, lit_3727@l /* 0x804A8860@l */
/* 804A6FB4  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 804A6FB8  28 00 00 00 */	cmplwi r0, 0
/* 804A6FBC  41 82 09 F4 */	beq lbl_804A79B0
/* 804A6FC0  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 804A6FC4  28 00 00 07 */	cmplwi r0, 7
/* 804A6FC8  40 82 00 0C */	bne lbl_804A6FD4
/* 804A6FCC  38 00 00 FF */	li r0, 0xff
/* 804A6FD0  B0 1F 04 6A */	sth r0, 0x46a(r31)
lbl_804A6FD4:
/* 804A6FD4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A6FD8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A6FDC  88 9F 06 AC */	lbz r4, 0x6ac(r31)
/* 804A6FE0  38 BF 05 38 */	addi r5, r31, 0x538
/* 804A6FE4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804A6FE8  4B CF C7 DD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804A6FEC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A6FF0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A6FF4  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 804A6FF8  80 84 00 04 */	lwz r4, 4(r4)
/* 804A6FFC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A7000  4B CF DD A1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A7004  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7008  4B D0 5D 1D */	bl dKy_bg_MAxx_proc__FPv
/* 804A700C  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 804A7010  28 03 00 00 */	cmplwi r3, 0
/* 804A7014  41 82 00 24 */	beq lbl_804A7038
/* 804A7018  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 804A701C  80 84 00 04 */	lwz r4, 4(r4)
/* 804A7020  38 84 00 58 */	addi r4, r4, 0x58
/* 804A7024  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804A7028  FC 00 00 1E */	fctiwz f0, f0
/* 804A702C  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 804A7030  80 A1 01 04 */	lwz r5, 0x104(r1)
/* 804A7034  4B B6 65 B5 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_804A7038:
/* 804A7038  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804A703C  28 03 00 00 */	cmplwi r3, 0
/* 804A7040  41 82 00 18 */	beq lbl_804A7058
/* 804A7044  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 804A7048  80 84 00 04 */	lwz r4, 4(r4)
/* 804A704C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804A7050  38 84 00 58 */	addi r4, r4, 0x58
/* 804A7054  4B B6 66 85 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_804A7058:
/* 804A7058  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A705C  28 03 00 00 */	cmplwi r3, 0
/* 804A7060  41 82 00 18 */	beq lbl_804A7078
/* 804A7064  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 804A7068  80 84 00 04 */	lwz r4, 4(r4)
/* 804A706C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804A7070  38 84 00 58 */	addi r4, r4, 0x58
/* 804A7074  4B B6 67 35 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_804A7078:
/* 804A7078  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A707C  28 03 00 00 */	cmplwi r3, 0
/* 804A7080  41 82 00 18 */	beq lbl_804A7098
/* 804A7084  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 804A7088  80 84 00 04 */	lwz r4, 4(r4)
/* 804A708C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804A7090  38 84 00 58 */	addi r4, r4, 0x58
/* 804A7094  4B B6 64 85 */	bl entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
lbl_804A7098:
/* 804A7098  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 804A709C  28 03 00 00 */	cmplwi r3, 0
/* 804A70A0  41 82 00 10 */	beq lbl_804A70B0
/* 804A70A4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804A70A8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804A70AC  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804A70B0:
/* 804A70B0  88 1F 06 A5 */	lbz r0, 0x6a5(r31)
/* 804A70B4  28 00 00 00 */	cmplwi r0, 0
/* 804A70B8  41 82 00 54 */	beq lbl_804A710C
/* 804A70BC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A70C0  83 A3 00 04 */	lwz r29, 4(r3)
/* 804A70C4  3B 80 00 00 */	li r28, 0
/* 804A70C8  48 00 00 34 */	b lbl_804A70FC
lbl_804A70CC:
/* 804A70CC  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 804A70D0  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 804A70D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 804A70D8  88 1F 06 A5 */	lbz r0, 0x6a5(r31)
/* 804A70DC  28 00 00 01 */	cmplwi r0, 1
/* 804A70E0  40 82 00 10 */	bne lbl_804A70F0
/* 804A70E4  38 80 00 00 */	li r4, 0
/* 804A70E8  4B FF EF C9 */	bl mDad00_changeXluMaterial__FP11J3DMateriali
/* 804A70EC  48 00 00 0C */	b lbl_804A70F8
lbl_804A70F0:
/* 804A70F0  38 80 00 01 */	li r4, 1
/* 804A70F4  4B FF EF BD */	bl mDad00_changeXluMaterial__FP11J3DMateriali
lbl_804A70F8:
/* 804A70F8  3B 9C 00 01 */	addi r28, r28, 1
lbl_804A70FC:
/* 804A70FC  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 804A7100  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 804A7104  7C 03 00 40 */	cmplw r3, r0
/* 804A7108  41 80 FF C4 */	blt lbl_804A70CC
lbl_804A710C:
/* 804A710C  88 1F 06 A6 */	lbz r0, 0x6a6(r31)
/* 804A7110  28 00 00 02 */	cmplwi r0, 2
/* 804A7114  40 82 00 28 */	bne lbl_804A713C
/* 804A7118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A711C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A7120  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 804A7124  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804A7128  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804A712C  90 03 00 48 */	stw r0, 0x48(r3)
/* 804A7130  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 804A7134  90 03 00 4C */	stw r0, 0x4c(r3)
/* 804A7138  48 00 00 28 */	b lbl_804A7160
lbl_804A713C:
/* 804A713C  28 00 00 03 */	cmplwi r0, 3
/* 804A7140  40 82 00 20 */	bne lbl_804A7160
/* 804A7144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A7148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A714C  80 03 5F 94 */	lwz r0, 0x5f94(r3)
/* 804A7150  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804A7154  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804A7158  90 03 00 48 */	stw r0, 0x48(r3)
/* 804A715C  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_804A7160:
/* 804A7160  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 804A7164  28 00 00 00 */	cmplwi r0, 0
/* 804A7168  41 82 00 28 */	beq lbl_804A7190
/* 804A716C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A7170  4B B6 A0 7D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 804A7174  88 1F 06 B5 */	lbz r0, 0x6b5(r31)
/* 804A7178  28 00 00 00 */	cmplwi r0, 0
/* 804A717C  41 82 00 50 */	beq lbl_804A71CC
/* 804A7180  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 804A7184  38 80 00 00 */	li r4, 0
/* 804A7188  4B B6 76 39 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 804A718C  48 00 00 40 */	b lbl_804A71CC
lbl_804A7190:
/* 804A7190  88 1F 06 B5 */	lbz r0, 0x6b5(r31)
/* 804A7194  28 00 00 00 */	cmplwi r0, 0
/* 804A7198  41 82 00 24 */	beq lbl_804A71BC
/* 804A719C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A71A0  28 03 00 00 */	cmplwi r3, 0
/* 804A71A4  41 82 00 0C */	beq lbl_804A71B0
/* 804A71A8  4B B6 9F AD */	bl updateDL__16mDoExt_McaMorfSOFv
/* 804A71AC  48 00 00 20 */	b lbl_804A71CC
lbl_804A71B0:
/* 804A71B0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A71B4  4B B6 6B 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 804A71B8  48 00 00 14 */	b lbl_804A71CC
lbl_804A71BC:
/* 804A71BC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A71C0  28 03 00 00 */	cmplwi r3, 0
/* 804A71C4  41 82 00 08 */	beq lbl_804A71CC
/* 804A71C8  4B B6 A0 25 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_804A71CC:
/* 804A71CC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A71D0  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 804A71D4  28 00 00 00 */	cmplwi r0, 0
/* 804A71D8  41 82 00 24 */	beq lbl_804A71FC
/* 804A71DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A71E0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A71E4  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 804A71E8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804A71EC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804A71F0  90 03 00 48 */	stw r0, 0x48(r3)
/* 804A71F4  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 804A71F8  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_804A71FC:
/* 804A71FC  88 1F 06 A6 */	lbz r0, 0x6a6(r31)
/* 804A7200  28 00 00 02 */	cmplwi r0, 2
/* 804A7204  41 82 00 0C */	beq lbl_804A7210
/* 804A7208  28 00 00 03 */	cmplwi r0, 3
/* 804A720C  40 82 00 24 */	bne lbl_804A7230
lbl_804A7210:
/* 804A7210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A7214  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A7218  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 804A721C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804A7220  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804A7224  90 03 00 48 */	stw r0, 0x48(r3)
/* 804A7228  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 804A722C  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_804A7230:
/* 804A7230  89 3F 06 A7 */	lbz r9, 0x6a7(r31)
/* 804A7234  7D 20 07 75 */	extsb. r0, r9
/* 804A7238  41 80 03 08 */	blt lbl_804A7540
/* 804A723C  7D 20 07 75 */	extsb. r0, r9
/* 804A7240  40 82 00 28 */	bne lbl_804A7268
/* 804A7244  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7248  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 804A724C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A7250  38 C0 00 16 */	li r6, 0x16
/* 804A7254  38 E0 00 1B */	li r7, 0x1b
/* 804A7258  39 00 00 27 */	li r8, 0x27
/* 804A725C  7D 29 07 74 */	extsb r9, r9
/* 804A7260  4B FF F1 C9 */	bl teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii
/* 804A7264  48 00 02 DC */	b lbl_804A7540
lbl_804A7268:
/* 804A7268  7D 29 07 74 */	extsb r9, r9
/* 804A726C  2C 09 00 01 */	cmpwi r9, 1
/* 804A7270  40 82 00 24 */	bne lbl_804A7294
/* 804A7274  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7278  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 804A727C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A7280  38 C0 00 2B */	li r6, 0x2b
/* 804A7284  38 E0 00 2B */	li r7, 0x2b
/* 804A7288  39 00 00 27 */	li r8, 0x27
/* 804A728C  4B FF F1 9D */	bl teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii
/* 804A7290  48 00 02 B0 */	b lbl_804A7540
lbl_804A7294:
/* 804A7294  2C 09 00 02 */	cmpwi r9, 2
/* 804A7298  40 82 00 24 */	bne lbl_804A72BC
/* 804A729C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A72A0  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 804A72A4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A72A8  38 C0 00 17 */	li r6, 0x17
/* 804A72AC  38 E0 00 1F */	li r7, 0x1f
/* 804A72B0  39 00 00 3E */	li r8, 0x3e
/* 804A72B4  4B FF F1 75 */	bl teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii
/* 804A72B8  48 00 02 88 */	b lbl_804A7540
lbl_804A72BC:
/* 804A72BC  2C 09 00 03 */	cmpwi r9, 3
/* 804A72C0  40 82 00 24 */	bne lbl_804A72E4
/* 804A72C4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A72C8  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 804A72CC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A72D0  38 C0 00 1F */	li r6, 0x1f
/* 804A72D4  38 E0 00 1F */	li r7, 0x1f
/* 804A72D8  39 00 00 3E */	li r8, 0x3e
/* 804A72DC  4B FF F1 4D */	bl teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii
/* 804A72E0  48 00 02 60 */	b lbl_804A7540
lbl_804A72E4:
/* 804A72E4  2C 09 00 04 */	cmpwi r9, 4
/* 804A72E8  40 82 00 24 */	bne lbl_804A730C
/* 804A72EC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A72F0  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 804A72F4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A72F8  38 C0 00 17 */	li r6, 0x17
/* 804A72FC  38 E0 00 17 */	li r7, 0x17
/* 804A7300  39 00 00 3E */	li r8, 0x3e
/* 804A7304  4B FF F1 25 */	bl teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii
/* 804A7308  48 00 02 38 */	b lbl_804A7540
lbl_804A730C:
/* 804A730C  2C 09 00 06 */	cmpwi r9, 6
/* 804A7310  40 82 00 18 */	bne lbl_804A7328
/* 804A7314  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7318  38 80 00 20 */	li r4, 0x20
/* 804A731C  38 A0 00 21 */	li r5, 0x21
/* 804A7320  4B FF F5 49 */	bl teduna_ganon_hand_set__FP8J3DModelii
/* 804A7324  48 00 02 1C */	b lbl_804A7540
lbl_804A7328:
/* 804A7328  2C 09 00 07 */	cmpwi r9, 7
/* 804A732C  40 82 00 18 */	bne lbl_804A7344
/* 804A7330  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7334  38 80 00 16 */	li r4, 0x16
/* 804A7338  38 A0 00 17 */	li r5, 0x17
/* 804A733C  4B FF F5 2D */	bl teduna_ganon_hand_set__FP8J3DModelii
/* 804A7340  48 00 02 00 */	b lbl_804A7540
lbl_804A7344:
/* 804A7344  2C 09 00 05 */	cmpwi r9, 5
/* 804A7348  40 82 00 24 */	bne lbl_804A736C
/* 804A734C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7350  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 804A7354  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A7358  38 C0 00 00 */	li r6, 0
/* 804A735C  38 E0 00 00 */	li r7, 0
/* 804A7360  39 00 00 13 */	li r8, 0x13
/* 804A7364  4B FF F0 C5 */	bl teduna_draw__FP8J3DModelP19mDoExt_3DlineMat1_cP12dKy_tevstr_ciiii
/* 804A7368  48 00 01 D8 */	b lbl_804A7540
lbl_804A736C:
/* 804A736C  2C 09 00 08 */	cmpwi r9, 8
/* 804A7370  40 82 01 D0 */	bne lbl_804A7540
/* 804A7374  38 61 00 1C */	addi r3, r1, 0x1c
/* 804A7378  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804A737C  38 BF 29 1C */	addi r5, r31, 0x291c
/* 804A7380  4B DB F7 B5 */	bl __mi__4cXyzCFRC3Vec
/* 804A7384  38 61 00 1C */	addi r3, r1, 0x1c
/* 804A7388  4B E9 FD B1 */	bl PSVECSquareMag
/* 804A738C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804A7390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A7394  40 81 00 58 */	ble lbl_804A73EC
/* 804A7398  FC 00 08 34 */	frsqrte f0, f1
/* 804A739C  C8 9E 00 18 */	lfd f4, 0x18(r30)
/* 804A73A0  FC 44 00 32 */	fmul f2, f4, f0
/* 804A73A4  C8 7E 00 20 */	lfd f3, 0x20(r30)
/* 804A73A8  FC 00 00 32 */	fmul f0, f0, f0
/* 804A73AC  FC 01 00 32 */	fmul f0, f1, f0
/* 804A73B0  FC 03 00 28 */	fsub f0, f3, f0
/* 804A73B4  FC 02 00 32 */	fmul f0, f2, f0
/* 804A73B8  FC 44 00 32 */	fmul f2, f4, f0
/* 804A73BC  FC 00 00 32 */	fmul f0, f0, f0
/* 804A73C0  FC 01 00 32 */	fmul f0, f1, f0
/* 804A73C4  FC 03 00 28 */	fsub f0, f3, f0
/* 804A73C8  FC 02 00 32 */	fmul f0, f2, f0
/* 804A73CC  FC 44 00 32 */	fmul f2, f4, f0
/* 804A73D0  FC 00 00 32 */	fmul f0, f0, f0
/* 804A73D4  FC 01 00 32 */	fmul f0, f1, f0
/* 804A73D8  FC 03 00 28 */	fsub f0, f3, f0
/* 804A73DC  FC 02 00 32 */	fmul f0, f2, f0
/* 804A73E0  FC 21 00 32 */	fmul f1, f1, f0
/* 804A73E4  FC 20 08 18 */	frsp f1, f1
/* 804A73E8  48 00 00 88 */	b lbl_804A7470
lbl_804A73EC:
/* 804A73EC  C8 1E 00 28 */	lfd f0, 0x28(r30)
/* 804A73F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A73F4  40 80 00 10 */	bge lbl_804A7404
/* 804A73F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A73FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804A7400  48 00 00 70 */	b lbl_804A7470
lbl_804A7404:
/* 804A7404  D0 21 00 08 */	stfs f1, 8(r1)
/* 804A7408  80 81 00 08 */	lwz r4, 8(r1)
/* 804A740C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804A7410  3C 00 7F 80 */	lis r0, 0x7f80
/* 804A7414  7C 03 00 00 */	cmpw r3, r0
/* 804A7418  41 82 00 14 */	beq lbl_804A742C
/* 804A741C  40 80 00 40 */	bge lbl_804A745C
/* 804A7420  2C 03 00 00 */	cmpwi r3, 0
/* 804A7424  41 82 00 20 */	beq lbl_804A7444
/* 804A7428  48 00 00 34 */	b lbl_804A745C
lbl_804A742C:
/* 804A742C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A7430  41 82 00 0C */	beq lbl_804A743C
/* 804A7434  38 00 00 01 */	li r0, 1
/* 804A7438  48 00 00 28 */	b lbl_804A7460
lbl_804A743C:
/* 804A743C  38 00 00 02 */	li r0, 2
/* 804A7440  48 00 00 20 */	b lbl_804A7460
lbl_804A7444:
/* 804A7444  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A7448  41 82 00 0C */	beq lbl_804A7454
/* 804A744C  38 00 00 05 */	li r0, 5
/* 804A7450  48 00 00 10 */	b lbl_804A7460
lbl_804A7454:
/* 804A7454  38 00 00 03 */	li r0, 3
/* 804A7458  48 00 00 08 */	b lbl_804A7460
lbl_804A745C:
/* 804A745C  38 00 00 04 */	li r0, 4
lbl_804A7460:
/* 804A7460  2C 00 00 01 */	cmpwi r0, 1
/* 804A7464  40 82 00 0C */	bne lbl_804A7470
/* 804A7468  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A746C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804A7470:
/* 804A7470  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 804A7474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A7478  40 81 00 24 */	ble lbl_804A749C
/* 804A747C  38 00 00 05 */	li r0, 5
/* 804A7480  98 1F 06 B3 */	stb r0, 0x6b3(r31)
/* 804A7484  3B 80 00 00 */	li r28, 0
lbl_804A7488:
/* 804A7488  7F E3 FB 78 */	mr r3, r31
/* 804A748C  4B FF F8 95 */	bl ke_set__FP10daDemo00_c
/* 804A7490  3B 9C 00 01 */	addi r28, r28, 1
/* 804A7494  2C 1C 00 0A */	cmpwi r28, 0xa
/* 804A7498  41 80 FF F0 */	blt lbl_804A7488
lbl_804A749C:
/* 804A749C  7F E3 FB 78 */	mr r3, r31
/* 804A74A0  4B FF F8 81 */	bl ke_set__FP10daDemo00_c
/* 804A74A4  38 00 00 14 */	li r0, 0x14
/* 804A74A8  98 01 00 0C */	stb r0, 0xc(r1)
/* 804A74AC  98 01 00 0D */	stb r0, 0xd(r1)
/* 804A74B0  98 01 00 0E */	stb r0, 0xe(r1)
/* 804A74B4  38 00 00 FF */	li r0, 0xff
/* 804A74B8  98 01 00 0F */	stb r0, 0xf(r1)
/* 804A74BC  88 1F 06 B5 */	lbz r0, 0x6b5(r31)
/* 804A74C0  28 00 00 00 */	cmplwi r0, 0
/* 804A74C4  41 82 00 50 */	beq lbl_804A7514
/* 804A74C8  38 7F 29 00 */	addi r3, r31, 0x2900
/* 804A74CC  38 80 00 10 */	li r4, 0x10
/* 804A74D0  38 A1 00 0C */	addi r5, r1, 0xc
/* 804A74D4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804A74D8  4B B6 B9 65 */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 804A74DC  38 7F 29 00 */	addi r3, r31, 0x2900
/* 804A74E0  81 9F 29 00 */	lwz r12, 0x2900(r31)
/* 804A74E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 804A74E8  7D 89 03 A6 */	mtctr r12
/* 804A74EC  4E 80 04 21 */	bctrl 
/* 804A74F0  1C 83 00 14 */	mulli r4, r3, 0x14
/* 804A74F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A74F8  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A74FC  7C 60 22 14 */	add r3, r0, r4
/* 804A7500  3C 63 00 01 */	addis r3, r3, 1
/* 804A7504  38 63 61 54 */	addi r3, r3, 0x6154
/* 804A7508  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 804A750C  38 9F 29 00 */	addi r4, r31, 0x2900
/* 804A7510  4B B6 D2 29 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_804A7514:
/* 804A7514  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A7518  D0 1F 29 1C */	stfs f0, 0x291c(r31)
/* 804A751C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A7520  D0 1F 29 20 */	stfs f0, 0x2920(r31)
/* 804A7524  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A7528  D0 1F 29 24 */	stfs f0, 0x2924(r31)
/* 804A752C  88 7F 06 B3 */	lbz r3, 0x6b3(r31)
/* 804A7530  7C 60 07 75 */	extsb. r0, r3
/* 804A7534  41 82 00 0C */	beq lbl_804A7540
/* 804A7538  38 03 FF FF */	addi r0, r3, -1
/* 804A753C  98 1F 06 B3 */	stb r0, 0x6b3(r31)
lbl_804A7540:
/* 804A7540  88 1F 06 B6 */	lbz r0, 0x6b6(r31)
/* 804A7544  28 00 00 00 */	cmplwi r0, 0
/* 804A7548  41 82 00 80 */	beq lbl_804A75C8
/* 804A754C  28 00 00 01 */	cmplwi r0, 1
/* 804A7550  40 82 00 40 */	bne lbl_804A7590
/* 804A7554  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7558  80 63 00 04 */	lwz r3, 4(r3)
/* 804A755C  28 03 00 00 */	cmplwi r3, 0
/* 804A7560  41 82 00 68 */	beq lbl_804A75C8
/* 804A7564  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804A7568  80 63 00 24 */	lwz r3, 0x24(r3)
/* 804A756C  28 03 00 00 */	cmplwi r3, 0
/* 804A7570  41 82 00 58 */	beq lbl_804A75C8
/* 804A7574  80 63 00 08 */	lwz r3, 8(r3)
/* 804A7578  28 03 00 00 */	cmplwi r3, 0
/* 804A757C  41 82 00 4C */	beq lbl_804A75C8
/* 804A7580  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A7584  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804A7588  90 03 00 0C */	stw r0, 0xc(r3)
/* 804A758C  48 00 00 3C */	b lbl_804A75C8
lbl_804A7590:
/* 804A7590  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7594  80 63 00 04 */	lwz r3, 4(r3)
/* 804A7598  28 03 00 00 */	cmplwi r3, 0
/* 804A759C  41 82 00 2C */	beq lbl_804A75C8
/* 804A75A0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 804A75A4  80 63 00 24 */	lwz r3, 0x24(r3)
/* 804A75A8  28 03 00 00 */	cmplwi r3, 0
/* 804A75AC  41 82 00 1C */	beq lbl_804A75C8
/* 804A75B0  80 63 00 08 */	lwz r3, 8(r3)
/* 804A75B4  28 03 00 00 */	cmplwi r3, 0
/* 804A75B8  41 82 00 10 */	beq lbl_804A75C8
/* 804A75BC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A75C0  60 00 00 01 */	ori r0, r0, 1
/* 804A75C4  90 03 00 0C */	stw r0, 0xc(r3)
lbl_804A75C8:
/* 804A75C8  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 804A75CC  28 00 00 00 */	cmplwi r0, 0
/* 804A75D0  41 82 01 A4 */	beq lbl_804A7774
/* 804A75D4  88 1F 06 B7 */	lbz r0, 0x6b7(r31)
/* 804A75D8  28 00 00 00 */	cmplwi r0, 0
/* 804A75DC  41 82 01 98 */	beq lbl_804A7774
/* 804A75E0  88 1F 06 B5 */	lbz r0, 0x6b5(r31)
/* 804A75E4  28 00 00 00 */	cmplwi r0, 0
/* 804A75E8  41 82 01 8C */	beq lbl_804A7774
/* 804A75EC  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 804A75F0  28 00 00 00 */	cmplwi r0, 0
/* 804A75F4  41 82 01 80 */	beq lbl_804A7774
/* 804A75F8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A75FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804A7600  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A7604  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A7608  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A760C  4B E9 EE A5 */	bl PSMTXCopy
/* 804A7610  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804A7614  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804A7618  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804A761C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804A7620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A7624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A7628  38 81 00 88 */	addi r4, r1, 0x88
/* 804A762C  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 804A7630  4B E9 F7 3D */	bl PSMTXMultVec
/* 804A7634  38 61 00 A0 */	addi r3, r1, 0xa0
/* 804A7638  38 81 00 94 */	addi r4, r1, 0x94
/* 804A763C  4B B6 DC D5 */	bl mDoLib_project__FP3VecP3Vec
/* 804A7640  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 804A7644  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 804A7648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A764C  4C 41 13 82 */	cror 2, 1, 2
/* 804A7650  40 82 01 24 */	bne lbl_804A7774
/* 804A7654  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 804A7658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A765C  40 80 01 18 */	bge lbl_804A7774
/* 804A7660  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 804A7664  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 804A7668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A766C  4C 41 13 82 */	cror 2, 1, 2
/* 804A7670  40 82 01 04 */	bne lbl_804A7774
/* 804A7674  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 804A7678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A767C  40 80 00 F8 */	bge lbl_804A7774
/* 804A7680  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 804A7684  28 00 00 00 */	cmplwi r0, 0
/* 804A7688  41 82 00 0C */	beq lbl_804A7694
/* 804A768C  28 00 00 01 */	cmplwi r0, 1
/* 804A7690  40 82 00 A4 */	bne lbl_804A7734
lbl_804A7694:
/* 804A7694  38 61 00 10 */	addi r3, r1, 0x10
/* 804A7698  38 81 00 A0 */	addi r4, r1, 0xa0
/* 804A769C  80 BF 05 EC */	lwz r5, 0x5ec(r31)
/* 804A76A0  38 A5 00 04 */	addi r5, r5, 4
/* 804A76A4  4B DB F4 41 */	bl __pl__4cXyzCFRC3Vec
/* 804A76A8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A76AC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804A76B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A76B4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804A76B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804A76BC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804A76C0  80 FF 05 F8 */	lwz r7, 0x5f8(r31)
/* 804A76C4  C0 07 00 54 */	lfs f0, 0x54(r7)
/* 804A76C8  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 804A76CC  EC 00 18 2A */	fadds f0, f0, f3
/* 804A76D0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804A76D4  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 804A76D8  30 03 FF FF */	addic r0, r3, -1
/* 804A76DC  7C 00 19 10 */	subfe r0, r0, r3
/* 804A76E0  C0 81 00 A4 */	lfs f4, 0xa4(r1)
/* 804A76E4  81 1F 05 EC */	lwz r8, 0x5ec(r31)
/* 804A76E8  80 68 00 00 */	lwz r3, 0(r8)
/* 804A76EC  7C 04 07 74 */	extsb r4, r0
/* 804A76F0  80 BF 05 D4 */	lwz r5, 0x5d4(r31)
/* 804A76F4  38 C1 00 7C */	addi r6, r1, 0x7c
/* 804A76F8  C0 28 00 1C */	lfs f1, 0x1c(r8)
/* 804A76FC  C0 48 00 20 */	lfs f2, 0x20(r8)
/* 804A7700  EC 64 18 2A */	fadds f3, f4, f3
/* 804A7704  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804A7708  EC 80 20 2A */	fadds f4, f0, f4
/* 804A770C  38 E7 00 14 */	addi r7, r7, 0x14
/* 804A7710  39 1F 01 0C */	addi r8, r31, 0x10c
/* 804A7714  39 20 00 00 */	li r9, 0
/* 804A7718  C0 BE 00 4C */	lfs f5, 0x4c(r30)
/* 804A771C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 804A7720  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 804A7724  4B B8 71 ED */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 804A7728  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 804A772C  90 64 00 00 */	stw r3, 0(r4)
/* 804A7730  48 00 00 44 */	b lbl_804A7774
lbl_804A7734:
/* 804A7734  80 BF 05 F8 */	lwz r5, 0x5f8(r31)
/* 804A7738  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 804A773C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804A7740  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804A7744  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 804A7748  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804A774C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804A7750  38 61 00 70 */	addi r3, r1, 0x70
/* 804A7754  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 804A7758  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 804A775C  38 85 00 14 */	addi r4, r5, 0x14
/* 804A7760  38 A0 00 00 */	li r5, 0
/* 804A7764  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 804A7768  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 804A776C  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 804A7770  4B B8 59 45 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_804A7774:
/* 804A7774  80 9F 05 E0 */	lwz r4, 0x5e0(r31)
/* 804A7778  28 04 00 00 */	cmplwi r4, 0
/* 804A777C  41 82 00 18 */	beq lbl_804A7794
/* 804A7780  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A7784  80 63 00 04 */	lwz r3, 4(r3)
/* 804A7788  38 63 00 58 */	addi r3, r3, 0x58
/* 804A778C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 804A7790  4B E8 7F 69 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_804A7794:
/* 804A7794  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 804A7798  28 04 00 00 */	cmplwi r4, 0
/* 804A779C  41 82 00 18 */	beq lbl_804A77B4
/* 804A77A0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A77A4  80 63 00 04 */	lwz r3, 4(r3)
/* 804A77A8  38 63 00 58 */	addi r3, r3, 0x58
/* 804A77AC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 804A77B0  4B E8 80 05 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_804A77B4:
/* 804A77B4  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 804A77B8  28 04 00 00 */	cmplwi r4, 0
/* 804A77BC  41 82 00 18 */	beq lbl_804A77D4
/* 804A77C0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A77C4  80 63 00 04 */	lwz r3, 4(r3)
/* 804A77C8  38 63 00 58 */	addi r3, r3, 0x58
/* 804A77CC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 804A77D0  4B E8 80 B1 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_804A77D4:
/* 804A77D4  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 804A77D8  28 04 00 00 */	cmplwi r4, 0
/* 804A77DC  41 82 00 18 */	beq lbl_804A77F4
/* 804A77E0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A77E4  80 63 00 04 */	lwz r3, 4(r3)
/* 804A77E8  38 63 00 58 */	addi r3, r3, 0x58
/* 804A77EC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 804A77F0  4B E8 7E 5D */	bl removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor
lbl_804A77F4:
/* 804A77F4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A77F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804A77FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A7800  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A7804  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A7808  4B E9 EC A9 */	bl PSMTXCopy
/* 804A780C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804A7810  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804A7814  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804A7818  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804A781C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A7820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A7824  38 81 00 64 */	addi r4, r1, 0x64
/* 804A7828  38 A1 00 58 */	addi r5, r1, 0x58
/* 804A782C  4B E9 F5 41 */	bl PSMTXMultVec
/* 804A7830  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804A7834  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804A7838  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804A783C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804A7840  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804A7844  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804A7848  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 804A784C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804A7850  EC 01 00 2A */	fadds f0, f1, f0
/* 804A7854  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804A7858  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 804A785C  7C 00 07 75 */	extsb. r0, r0
/* 804A7860  40 81 01 50 */	ble lbl_804A79B0
/* 804A7864  38 61 00 AC */	addi r3, r1, 0xac
/* 804A7868  4B BD 01 99 */	bl __ct__18dBgS_CamGndChk_WtrFv
/* 804A786C  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 804A7870  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 804A7874  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 804A7878  40 82 01 2C */	bne lbl_804A79A4
/* 804A787C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 804A7880  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804A7884  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 804A7888  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A788C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 804A7890  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804A7894  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 804A7898  7C 00 07 74 */	extsb r0, r0
/* 804A789C  2C 00 00 0A */	cmpwi r0, 0xa
/* 804A78A0  40 82 00 18 */	bne lbl_804A78B8
/* 804A78A4  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 804A78A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804A78AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A78B0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A78B4  48 00 00 88 */	b lbl_804A793C
lbl_804A78B8:
/* 804A78B8  2C 00 00 06 */	cmpwi r0, 6
/* 804A78BC  40 82 00 70 */	bne lbl_804A792C
/* 804A78C0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A78C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804A78C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A78CC  38 63 01 50 */	addi r3, r3, 0x150
/* 804A78D0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A78D4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A78D8  4B E9 EB D9 */	bl PSMTXCopy
/* 804A78DC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804A78E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804A78E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804A78E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804A78EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804A78F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804A78F4  38 81 00 34 */	addi r4, r1, 0x34
/* 804A78F8  38 A1 00 28 */	addi r5, r1, 0x28
/* 804A78FC  4B E9 F4 71 */	bl PSMTXMultVec
/* 804A7900  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804A7904  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804A7908  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804A790C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A7910  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804A7914  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804A7918  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804A791C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804A7920  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A7924  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804A7928  48 00 00 14 */	b lbl_804A793C
lbl_804A792C:
/* 804A792C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804A7930  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804A7934  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A7938  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_804A793C:
/* 804A793C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 804A7940  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 804A7944  EC 01 00 2A */	fadds f0, f1, f0
/* 804A7948  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A794C  38 61 00 AC */	addi r3, r1, 0xac
/* 804A7950  38 81 00 4C */	addi r4, r1, 0x4c
/* 804A7954  4B DC 03 D5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804A7958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A795C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A7960  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804A7964  38 81 00 AC */	addi r4, r1, 0xac
/* 804A7968  4B BC CB 39 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804A796C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 804A7970  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804A7974  7C 09 07 74 */	extsb r9, r0
/* 804A7978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A797C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A7980  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804A7984  38 9F 06 8C */	addi r4, r31, 0x68c
/* 804A7988  3C A0 80 3F */	lis r5, mWaterCheck__11fopAcM_wt_c@ha /* 0x803F1D80@ha */
/* 804A798C  38 A5 1D 80 */	addi r5, r5, mWaterCheck__11fopAcM_wt_c@l /* 0x803F1D80@l */
/* 804A7990  38 C1 00 4C */	addi r6, r1, 0x4c
/* 804A7994  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804A7998  38 FF 01 0C */	addi r7, r31, 0x10c
/* 804A799C  39 01 00 40 */	addi r8, r1, 0x40
/* 804A79A0  4B BA 4E 99 */	bl setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc
lbl_804A79A4:
/* 804A79A4  38 61 00 AC */	addi r3, r1, 0xac
/* 804A79A8  38 80 FF FF */	li r4, -1
/* 804A79AC  4B BD 00 ED */	bl __dt__18dBgS_CamGndChk_WtrFv
lbl_804A79B0:
/* 804A79B0  88 1F 06 A9 */	lbz r0, 0x6a9(r31)
/* 804A79B4  7C 00 07 74 */	extsb r0, r0
/* 804A79B8  2C 00 00 01 */	cmpwi r0, 1
/* 804A79BC  41 80 00 1C */	blt lbl_804A79D8
/* 804A79C0  4B CD 9C 81 */	bl dCam_getBody__Fv
/* 804A79C4  38 80 00 19 */	li r4, 0x19
/* 804A79C8  38 A0 00 00 */	li r5, 0
/* 804A79CC  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 804A79D0  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 804A79D4  4B CD 97 9D */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
lbl_804A79D8:
/* 804A79D8  88 1F 06 AA */	lbz r0, 0x6aa(r31)
/* 804A79DC  7C 00 07 74 */	extsb r0, r0
/* 804A79E0  2C 00 FF FF */	cmpwi r0, -1
/* 804A79E4  41 82 00 64 */	beq lbl_804A7A48
/* 804A79E8  2C 00 00 01 */	cmpwi r0, 1
/* 804A79EC  40 82 00 3C */	bne lbl_804A7A28
/* 804A79F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804A79F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A79F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A79FC  D0 23 12 70 */	stfs f1, 0x1270(r3)
/* 804A7A00  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804A7A04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A7A08  40 81 00 08 */	ble lbl_804A7A10
/* 804A7A0C  D0 03 12 70 */	stfs f0, 0x1270(r3)
lbl_804A7A10:
/* 804A7A10  C0 23 12 70 */	lfs f1, 0x1270(r3)
/* 804A7A14  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804A7A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A7A1C  40 80 00 2C */	bge lbl_804A7A48
/* 804A7A20  D0 03 12 70 */	stfs f0, 0x1270(r3)
/* 804A7A24  48 00 00 24 */	b lbl_804A7A48
lbl_804A7A28:
/* 804A7A28  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A7A2C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A7A30  38 63 12 70 */	addi r3, r3, 0x1270
/* 804A7A34  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804A7A38  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 804A7A3C  C0 7E 00 DC */	lfs f3, 0xdc(r30)
/* 804A7A40  C0 9E 01 2C */	lfs f4, 0x12c(r30)
/* 804A7A44  4B DC 7F 39 */	bl cLib_addCalc__FPfffff
lbl_804A7A48:
/* 804A7A48  88 9F 06 AB */	lbz r4, 0x6ab(r31)
/* 804A7A4C  7C 80 07 75 */	extsb. r0, r4
/* 804A7A50  41 80 00 34 */	blt lbl_804A7A84
/* 804A7A54  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A7A58  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A7A5C  98 83 12 FC */	stb r4, 0x12fc(r3)
/* 804A7A60  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804A7A64  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 804A7A68  EC 21 00 24 */	fdivs f1, f1, f0
/* 804A7A6C  D0 23 12 78 */	stfs f1, 0x1278(r3)
/* 804A7A70  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804A7A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A7A78  4C 41 13 82 */	cror 2, 1, 2
/* 804A7A7C  40 82 00 08 */	bne lbl_804A7A84
/* 804A7A80  D0 03 12 78 */	stfs f0, 0x1278(r3)
lbl_804A7A84:
/* 804A7A84  88 1F 06 B2 */	lbz r0, 0x6b2(r31)
/* 804A7A88  2C 00 00 01 */	cmpwi r0, 1
/* 804A7A8C  41 82 00 18 */	beq lbl_804A7AA4
/* 804A7A90  40 80 00 08 */	bge lbl_804A7A98
/* 804A7A94  48 00 00 58 */	b lbl_804A7AEC
lbl_804A7A98:
/* 804A7A98  2C 00 00 03 */	cmpwi r0, 3
/* 804A7A9C  40 80 00 50 */	bge lbl_804A7AEC
/* 804A7AA0  48 00 00 24 */	b lbl_804A7AC4
lbl_804A7AA4:
/* 804A7AA4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A7AA8  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A7AAC  80 64 0E AC */	lwz r3, 0xeac(r4)
/* 804A7AB0  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 804A7AB4  40 80 00 38 */	bge lbl_804A7AEC
/* 804A7AB8  38 03 00 03 */	addi r0, r3, 3
/* 804A7ABC  90 04 0E AC */	stw r0, 0xeac(r4)
/* 804A7AC0  48 00 00 2C */	b lbl_804A7AEC
lbl_804A7AC4:
/* 804A7AC4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A7AC8  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A7ACC  80 64 0E AC */	lwz r3, 0xeac(r4)
/* 804A7AD0  2C 03 00 03 */	cmpwi r3, 3
/* 804A7AD4  40 81 00 10 */	ble lbl_804A7AE4
/* 804A7AD8  38 03 FF FD */	addi r0, r3, -3
/* 804A7ADC  90 04 0E AC */	stw r0, 0xeac(r4)
/* 804A7AE0  48 00 00 0C */	b lbl_804A7AEC
lbl_804A7AE4:
/* 804A7AE4  38 00 00 00 */	li r0, 0
/* 804A7AE8  90 04 0E AC */	stw r0, 0xeac(r4)
lbl_804A7AEC:
/* 804A7AEC  A8 1F 06 9C */	lha r0, 0x69c(r31)
/* 804A7AF0  2C 00 FF FF */	cmpwi r0, -1
/* 804A7AF4  41 82 00 30 */	beq lbl_804A7B24
/* 804A7AF8  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 804A7AFC  7C 03 00 00 */	cmpw r3, r0
/* 804A7B00  41 82 00 1C */	beq lbl_804A7B1C
/* 804A7B04  40 80 00 10 */	bge lbl_804A7B14
/* 804A7B08  38 03 00 01 */	addi r0, r3, 1
/* 804A7B0C  90 1F 06 94 */	stw r0, 0x694(r31)
/* 804A7B10  48 00 00 0C */	b lbl_804A7B1C
lbl_804A7B14:
/* 804A7B14  38 03 FF FF */	addi r0, r3, -1
/* 804A7B18  90 1F 06 94 */	stw r0, 0x694(r31)
lbl_804A7B1C:
/* 804A7B1C  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 804A7B20  4B BB 3B 2D */	bl dKyw_rain_set__Fi
lbl_804A7B24:
/* 804A7B24  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 804A7B28  2C 00 FF FF */	cmpwi r0, -1
/* 804A7B2C  41 82 00 40 */	beq lbl_804A7B6C
/* 804A7B30  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 804A7B34  7C 03 00 00 */	cmpw r3, r0
/* 804A7B38  41 82 00 1C */	beq lbl_804A7B54
/* 804A7B3C  40 80 00 10 */	bge lbl_804A7B4C
/* 804A7B40  38 03 00 01 */	addi r0, r3, 1
/* 804A7B44  90 1F 06 98 */	stw r0, 0x698(r31)
/* 804A7B48  48 00 00 0C */	b lbl_804A7B54
lbl_804A7B4C:
/* 804A7B4C  38 03 FF FF */	addi r0, r3, -1
/* 804A7B50  90 1F 06 98 */	stw r0, 0x698(r31)
lbl_804A7B54:
/* 804A7B54  38 00 00 01 */	li r0, 1
/* 804A7B58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804A7B5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804A7B60  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 804A7B64  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 804A7B68  90 03 0E B8 */	stw r0, 0xeb8(r3)
lbl_804A7B6C:
/* 804A7B6C  38 60 00 01 */	li r3, 1
/* 804A7B70  39 61 01 20 */	addi r11, r1, 0x120
/* 804A7B74  4B EB A6 B1 */	bl _restgpr_28
/* 804A7B78  80 01 01 24 */	lwz r0, 0x124(r1)
/* 804A7B7C  7C 08 03 A6 */	mtlr r0
/* 804A7B80  38 21 01 20 */	addi r1, r1, 0x120
/* 804A7B84  4E 80 00 20 */	blr 
