lbl_807D2F18:
/* 807D2F18  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807D2F1C  7C 08 02 A6 */	mflr r0
/* 807D2F20  90 01 00 74 */	stw r0, 0x74(r1)
/* 807D2F24  39 61 00 70 */	addi r11, r1, 0x70
/* 807D2F28  4B B8 F2 A1 */	bl _savegpr_24
/* 807D2F2C  7C 7B 1B 78 */	mr r27, r3
/* 807D2F30  3C 60 80 7E */	lis r3, lit_3882@ha /* 0x807E298C@ha */
/* 807D2F34  3B C3 29 8C */	addi r30, r3, lit_3882@l /* 0x807E298C@l */
/* 807D2F38  88 1B 14 30 */	lbz r0, 0x1430(r27)
/* 807D2F3C  7C 00 07 75 */	extsb. r0, r0
/* 807D2F40  40 82 00 10 */	bne lbl_807D2F50
/* 807D2F44  A8 1B 06 90 */	lha r0, 0x690(r27)
/* 807D2F48  2C 00 00 32 */	cmpwi r0, 0x32
/* 807D2F4C  40 82 00 0C */	bne lbl_807D2F58
lbl_807D2F50:
/* 807D2F50  38 60 00 01 */	li r3, 1
/* 807D2F54  48 00 07 00 */	b lbl_807D3654
lbl_807D2F58:
/* 807D2F58  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D2F5C  83 23 00 04 */	lwz r25, 4(r3)
/* 807D2F60  7F 3D CB 78 */	mr r29, r25
/* 807D2F64  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807D2F68  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807D2F6C  38 80 00 00 */	li r4, 0
/* 807D2F70  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807D2F74  38 DB 01 0C */	addi r6, r27, 0x10c
/* 807D2F78  4B 9D 08 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807D2F7C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807D2F80  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807D2F84  80 99 00 04 */	lwz r4, 4(r25)
/* 807D2F88  38 BB 01 0C */	addi r5, r27, 0x10c
/* 807D2F8C  4B 9D 1E 15 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807D2F90  80 7B 05 E0 */	lwz r3, 0x5e0(r27)
/* 807D2F94  4B 83 E2 2D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 807D2F98  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 807D2F9C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807D2FA0  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807D2FA4  EC 21 00 2A */	fadds f1, f1, f0
/* 807D2FA8  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807D2FAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807D2FB0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807D2FB4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807D2FB8  80 7B 06 94 */	lwz r3, 0x694(r27)
/* 807D2FBC  38 80 00 01 */	li r4, 1
/* 807D2FC0  7F 25 CB 78 */	mr r5, r25
/* 807D2FC4  38 C1 00 28 */	addi r6, r1, 0x28
/* 807D2FC8  88 1B 07 9D */	lbz r0, 0x79d(r27)
/* 807D2FCC  7C 00 07 75 */	extsb. r0, r0
/* 807D2FD0  41 82 00 14 */	beq lbl_807D2FE4
/* 807D2FD4  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807D2FD8  C0 1B 04 F4 */	lfs f0, 0x4f4(r27)
/* 807D2FDC  EC 21 00 32 */	fmuls f1, f1, f0
/* 807D2FE0  48 00 00 10 */	b lbl_807D2FF0
lbl_807D2FE4:
/* 807D2FE4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807D2FE8  C0 1B 04 F4 */	lfs f0, 0x4f4(r27)
/* 807D2FEC  EC 21 00 32 */	fmuls f1, f1, f0
lbl_807D2FF0:
/* 807D2FF0  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 807D2FF4  C0 7B 04 D4 */	lfs f3, 0x4d4(r27)
/* 807D2FF8  C0 9B 08 84 */	lfs f4, 0x884(r27)
/* 807D2FFC  38 FB 08 DC */	addi r7, r27, 0x8dc
/* 807D3000  39 1B 01 0C */	addi r8, r27, 0x10c
/* 807D3004  39 20 00 00 */	li r9, 0
/* 807D3008  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 807D300C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807D3010  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807D3014  4B 85 B8 FD */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807D3018  90 7B 06 94 */	stw r3, 0x694(r27)
/* 807D301C  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D3020  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D3024  88 03 00 59 */	lbz r0, 0x59(r3)
/* 807D3028  28 00 00 00 */	cmplwi r0, 0
/* 807D302C  40 82 06 24 */	bne lbl_807D3650
/* 807D3030  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807D3034  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807D3038  80 7B 06 88 */	lwz r3, 0x688(r27)
/* 807D303C  38 03 00 0B */	addi r0, r3, 0xb
/* 807D3040  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807D3044  7C 64 02 14 */	add r3, r4, r0
/* 807D3048  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807D304C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807D3050  80 84 00 00 */	lwz r4, 0(r4)
/* 807D3054  4B B7 34 5D */	bl PSMTXCopy
/* 807D3058  4B A9 DE C5 */	bl MtxPush__Fv
/* 807D305C  3B 80 00 00 */	li r28, 0
/* 807D3060  80 1B 14 34 */	lwz r0, 0x1434(r27)
/* 807D3064  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D3068  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807D306C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807D3070  38 81 00 0C */	addi r4, r1, 0xc
/* 807D3074  4B 84 67 85 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807D3078  7C 7F 1B 78 */	mr r31, r3
/* 807D307C  A0 1B 06 BE */	lhz r0, 0x6be(r27)
/* 807D3080  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D3084  41 82 00 8C */	beq lbl_807D3110
/* 807D3088  28 1F 00 00 */	cmplwi r31, 0
/* 807D308C  41 82 00 2C */	beq lbl_807D30B8
/* 807D3090  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 807D3094  2C 00 00 02 */	cmpwi r0, 2
/* 807D3098  40 82 00 20 */	bne lbl_807D30B8
/* 807D309C  88 1B 07 A2 */	lbz r0, 0x7a2(r27)
/* 807D30A0  7C 00 07 75 */	extsb. r0, r0
/* 807D30A4  40 82 00 6C */	bne lbl_807D3110
/* 807D30A8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 807D30AC  83 A3 00 04 */	lwz r29, 4(r3)
/* 807D30B0  3B 80 00 01 */	li r28, 1
/* 807D30B4  48 00 00 5C */	b lbl_807D3110
lbl_807D30B8:
/* 807D30B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D30BC  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D30C0  83 1A 5D B4 */	lwz r24, 0x5db4(r26)
/* 807D30C4  3B 20 00 00 */	li r25, 0
/* 807D30C8  7F 03 C3 78 */	mr r3, r24
/* 807D30CC  81 98 06 28 */	lwz r12, 0x628(r24)
/* 807D30D0  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 807D30D4  7D 89 03 A6 */	mtctr r12
/* 807D30D8  4E 80 04 21 */	bctrl 
/* 807D30DC  28 03 00 00 */	cmplwi r3, 0
/* 807D30E0  41 82 00 14 */	beq lbl_807D30F4
/* 807D30E4  80 18 28 18 */	lwz r0, 0x2818(r24)
/* 807D30E8  7C 00 D8 40 */	cmplw r0, r27
/* 807D30EC  40 82 00 08 */	bne lbl_807D30F4
/* 807D30F0  3B 20 00 01 */	li r25, 1
lbl_807D30F4:
/* 807D30F4  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 807D30F8  41 82 00 18 */	beq lbl_807D3110
/* 807D30FC  80 7A 5D B4 */	lwz r3, 0x5db4(r26)
/* 807D3100  4B 91 A0 F1 */	bl checkHorseNotGrab__9daAlink_cCFv
/* 807D3104  2C 03 00 00 */	cmpwi r3, 0
/* 807D3108  40 82 00 08 */	bne lbl_807D3110
/* 807D310C  3B 80 00 01 */	li r28, 1
lbl_807D3110:
/* 807D3110  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807D3114  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D3118  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807D311C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D3120  88 1B 07 9D */	lbz r0, 0x79d(r27)
/* 807D3124  7C 00 07 75 */	extsb. r0, r0
/* 807D3128  41 82 00 10 */	beq lbl_807D3138
/* 807D312C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 807D3130  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D3134  48 00 00 0C */	b lbl_807D3140
lbl_807D3138:
/* 807D3138  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 807D313C  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_807D3140:
/* 807D3140  38 61 00 40 */	addi r3, r1, 0x40
/* 807D3144  38 81 00 34 */	addi r4, r1, 0x34
/* 807D3148  4B A9 DD A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D314C  7F 63 DB 78 */	mr r3, r27
/* 807D3150  38 81 00 34 */	addi r4, r1, 0x34
/* 807D3154  38 A0 00 00 */	li r5, 0
/* 807D3158  7F 86 E3 78 */	mr r6, r28
/* 807D315C  4B FF F6 79 */	bl himo_control1__FP10e_wb_classP4cXyziSc
/* 807D3160  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 807D3164  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807D3168  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D316C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D3170  4B A9 DD E9 */	bl MtxPull__Fv
/* 807D3174  38 61 00 40 */	addi r3, r1, 0x40
/* 807D3178  38 81 00 34 */	addi r4, r1, 0x34
/* 807D317C  4B A9 DD 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D3180  7F 63 DB 78 */	mr r3, r27
/* 807D3184  38 81 00 34 */	addi r4, r1, 0x34
/* 807D3188  38 A0 00 01 */	li r5, 1
/* 807D318C  7F 86 E3 78 */	mr r6, r28
/* 807D3190  4B FF F6 45 */	bl himo_control1__FP10e_wb_classP4cXyziSc
/* 807D3194  7F 80 07 75 */	extsb. r0, r28
/* 807D3198  41 82 03 4C */	beq lbl_807D34E4
/* 807D319C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D31A0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D31A4  83 19 5D B4 */	lwz r24, 0x5db4(r25)
/* 807D31A8  3B 40 00 00 */	li r26, 0
/* 807D31AC  7F 03 C3 78 */	mr r3, r24
/* 807D31B0  81 98 06 28 */	lwz r12, 0x628(r24)
/* 807D31B4  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 807D31B8  7D 89 03 A6 */	mtctr r12
/* 807D31BC  4E 80 04 21 */	bctrl 
/* 807D31C0  28 03 00 00 */	cmplwi r3, 0
/* 807D31C4  41 82 00 14 */	beq lbl_807D31D8
/* 807D31C8  80 18 28 18 */	lwz r0, 0x2818(r24)
/* 807D31CC  7C 00 D8 40 */	cmplw r0, r27
/* 807D31D0  40 82 00 08 */	bne lbl_807D31D8
/* 807D31D4  3B 40 00 01 */	li r26, 1
lbl_807D31D8:
/* 807D31D8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 807D31DC  41 82 00 48 */	beq lbl_807D3224
/* 807D31E0  80 79 5D B4 */	lwz r3, 0x5db4(r25)
/* 807D31E4  38 81 00 1C */	addi r4, r1, 0x1c
/* 807D31E8  38 A1 00 34 */	addi r5, r1, 0x34
/* 807D31EC  4B 91 9E E9 */	bl getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz
/* 807D31F0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807D31F4  D0 1B 14 38 */	stfs f0, 0x1438(r27)
/* 807D31F8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807D31FC  D0 1B 14 3C */	stfs f0, 0x143c(r27)
/* 807D3200  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807D3204  D0 1B 14 40 */	stfs f0, 0x1440(r27)
/* 807D3208  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D320C  D0 1B 14 44 */	stfs f0, 0x1444(r27)
/* 807D3210  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807D3214  D0 1B 14 48 */	stfs f0, 0x1448(r27)
/* 807D3218  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807D321C  D0 1B 14 4C */	stfs f0, 0x144c(r27)
/* 807D3220  48 00 00 A4 */	b lbl_807D32C4
lbl_807D3224:
/* 807D3224  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 807D3228  7C 00 07 75 */	extsb. r0, r0
/* 807D322C  41 82 00 10 */	beq lbl_807D323C
/* 807D3230  3B 00 00 0F */	li r24, 0xf
/* 807D3234  38 00 00 14 */	li r0, 0x14
/* 807D3238  48 00 00 0C */	b lbl_807D3244
lbl_807D323C:
/* 807D323C  3B 00 00 13 */	li r24, 0x13
/* 807D3240  38 00 00 18 */	li r0, 0x18
lbl_807D3244:
/* 807D3244  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807D3248  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807D324C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807D3250  7C 63 02 14 */	add r3, r3, r0
/* 807D3254  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807D3258  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807D325C  80 84 00 00 */	lwz r4, 0(r4)
/* 807D3260  4B B7 32 51 */	bl PSMTXCopy
/* 807D3264  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807D3268  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D326C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D3270  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D3274  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D3278  38 61 00 40 */	addi r3, r1, 0x40
/* 807D327C  38 81 00 34 */	addi r4, r1, 0x34
/* 807D3280  4B A9 DC 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D3284  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807D3288  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807D328C  1C 18 00 30 */	mulli r0, r24, 0x30
/* 807D3290  7C 63 02 14 */	add r3, r3, r0
/* 807D3294  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807D3298  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807D329C  80 84 00 00 */	lwz r4, 0(r4)
/* 807D32A0  4B B7 32 11 */	bl PSMTXCopy
/* 807D32A4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807D32A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D32AC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D32B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D32B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D32B8  38 61 00 40 */	addi r3, r1, 0x40
/* 807D32BC  38 81 00 1C */	addi r4, r1, 0x1c
/* 807D32C0  4B A9 DC 2D */	bl MtxPosition__FP4cXyzP4cXyz
lbl_807D32C4:
/* 807D32C4  C0 7B 16 8C */	lfs f3, 0x168c(r27)
/* 807D32C8  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807D32CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 807D32D0  40 81 00 38 */	ble lbl_807D3308
/* 807D32D4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807D32D8  D0 1B 14 38 */	stfs f0, 0x1438(r27)
/* 807D32DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807D32E0  D0 1B 14 3C */	stfs f0, 0x143c(r27)
/* 807D32E4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807D32E8  D0 1B 14 40 */	stfs f0, 0x1440(r27)
/* 807D32EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D32F0  D0 1B 14 44 */	stfs f0, 0x1444(r27)
/* 807D32F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807D32F8  D0 1B 14 48 */	stfs f0, 0x1448(r27)
/* 807D32FC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807D3300  D0 1B 14 4C */	stfs f0, 0x144c(r27)
/* 807D3304  48 00 02 4C */	b lbl_807D3550
lbl_807D3308:
/* 807D3308  38 7B 14 38 */	addi r3, r27, 0x1438
/* 807D330C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807D3310  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D3314  4B A9 C7 29 */	bl cLib_addCalc2__FPffff
/* 807D3318  38 7B 14 3C */	addi r3, r27, 0x143c
/* 807D331C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 807D3320  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D3324  C0 7B 16 8C */	lfs f3, 0x168c(r27)
/* 807D3328  4B A9 C7 15 */	bl cLib_addCalc2__FPffff
/* 807D332C  38 7B 14 40 */	addi r3, r27, 0x1440
/* 807D3330  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 807D3334  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D3338  C0 7B 16 8C */	lfs f3, 0x168c(r27)
/* 807D333C  4B A9 C7 01 */	bl cLib_addCalc2__FPffff
/* 807D3340  38 7B 14 44 */	addi r3, r27, 0x1444
/* 807D3344  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 807D3348  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D334C  C0 7B 16 8C */	lfs f3, 0x168c(r27)
/* 807D3350  4B A9 C6 ED */	bl cLib_addCalc2__FPffff
/* 807D3354  38 7B 14 48 */	addi r3, r27, 0x1448
/* 807D3358  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807D335C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D3360  C0 7B 16 8C */	lfs f3, 0x168c(r27)
/* 807D3364  4B A9 C6 D9 */	bl cLib_addCalc2__FPffff
/* 807D3368  38 7B 14 4C */	addi r3, r27, 0x144c
/* 807D336C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807D3370  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D3374  C0 7B 16 8C */	lfs f3, 0x168c(r27)
/* 807D3378  4B A9 C6 C5 */	bl cLib_addCalc2__FPffff
/* 807D337C  38 7B 16 8C */	addi r3, r27, 0x168c
/* 807D3380  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807D3384  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D3388  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 807D338C  4B A9 C6 B1 */	bl cLib_addCalc2__FPffff
/* 807D3390  38 61 00 10 */	addi r3, r1, 0x10
/* 807D3394  38 9B 14 38 */	addi r4, r27, 0x1438
/* 807D3398  38 A1 00 34 */	addi r5, r1, 0x34
/* 807D339C  4B A9 37 99 */	bl __mi__4cXyzCFRC3Vec
/* 807D33A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807D33A4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D33A8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807D33AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D33B0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807D33B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D33B8  38 61 00 40 */	addi r3, r1, 0x40
/* 807D33BC  4B B7 3D 7D */	bl PSVECSquareMag
/* 807D33C0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D33C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D33C8  40 81 00 58 */	ble lbl_807D3420
/* 807D33CC  FC 00 08 34 */	frsqrte f0, f1
/* 807D33D0  C8 9E 00 90 */	lfd f4, 0x90(r30)
/* 807D33D4  FC 44 00 32 */	fmul f2, f4, f0
/* 807D33D8  C8 7E 00 98 */	lfd f3, 0x98(r30)
/* 807D33DC  FC 00 00 32 */	fmul f0, f0, f0
/* 807D33E0  FC 01 00 32 */	fmul f0, f1, f0
/* 807D33E4  FC 03 00 28 */	fsub f0, f3, f0
/* 807D33E8  FC 02 00 32 */	fmul f0, f2, f0
/* 807D33EC  FC 44 00 32 */	fmul f2, f4, f0
/* 807D33F0  FC 00 00 32 */	fmul f0, f0, f0
/* 807D33F4  FC 01 00 32 */	fmul f0, f1, f0
/* 807D33F8  FC 03 00 28 */	fsub f0, f3, f0
/* 807D33FC  FC 02 00 32 */	fmul f0, f2, f0
/* 807D3400  FC 44 00 32 */	fmul f2, f4, f0
/* 807D3404  FC 00 00 32 */	fmul f0, f0, f0
/* 807D3408  FC 01 00 32 */	fmul f0, f1, f0
/* 807D340C  FC 03 00 28 */	fsub f0, f3, f0
/* 807D3410  FC 02 00 32 */	fmul f0, f2, f0
/* 807D3414  FC 21 00 32 */	fmul f1, f1, f0
/* 807D3418  FC 20 08 18 */	frsp f1, f1
/* 807D341C  48 00 00 88 */	b lbl_807D34A4
lbl_807D3420:
/* 807D3420  C8 1E 00 A0 */	lfd f0, 0xa0(r30)
/* 807D3424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D3428  40 80 00 10 */	bge lbl_807D3438
/* 807D342C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D3430  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807D3434  48 00 00 70 */	b lbl_807D34A4
lbl_807D3438:
/* 807D3438  D0 21 00 08 */	stfs f1, 8(r1)
/* 807D343C  80 81 00 08 */	lwz r4, 8(r1)
/* 807D3440  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D3444  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D3448  7C 03 00 00 */	cmpw r3, r0
/* 807D344C  41 82 00 14 */	beq lbl_807D3460
/* 807D3450  40 80 00 40 */	bge lbl_807D3490
/* 807D3454  2C 03 00 00 */	cmpwi r3, 0
/* 807D3458  41 82 00 20 */	beq lbl_807D3478
/* 807D345C  48 00 00 34 */	b lbl_807D3490
lbl_807D3460:
/* 807D3460  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D3464  41 82 00 0C */	beq lbl_807D3470
/* 807D3468  38 00 00 01 */	li r0, 1
/* 807D346C  48 00 00 28 */	b lbl_807D3494
lbl_807D3470:
/* 807D3470  38 00 00 02 */	li r0, 2
/* 807D3474  48 00 00 20 */	b lbl_807D3494
lbl_807D3478:
/* 807D3478  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D347C  41 82 00 0C */	beq lbl_807D3488
/* 807D3480  38 00 00 05 */	li r0, 5
/* 807D3484  48 00 00 10 */	b lbl_807D3494
lbl_807D3488:
/* 807D3488  38 00 00 03 */	li r0, 3
/* 807D348C  48 00 00 08 */	b lbl_807D3494
lbl_807D3490:
/* 807D3490  38 00 00 04 */	li r0, 4
lbl_807D3494:
/* 807D3494  2C 00 00 01 */	cmpwi r0, 1
/* 807D3498  40 82 00 0C */	bne lbl_807D34A4
/* 807D349C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807D34A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807D34A4:
/* 807D34A4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 807D34A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D34AC  40 81 00 A4 */	ble lbl_807D3550
/* 807D34B0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807D34B4  D0 1B 14 38 */	stfs f0, 0x1438(r27)
/* 807D34B8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807D34BC  D0 1B 14 3C */	stfs f0, 0x143c(r27)
/* 807D34C0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807D34C4  D0 1B 14 40 */	stfs f0, 0x1440(r27)
/* 807D34C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D34CC  D0 1B 14 44 */	stfs f0, 0x1444(r27)
/* 807D34D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807D34D4  D0 1B 14 48 */	stfs f0, 0x1448(r27)
/* 807D34D8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807D34DC  D0 1B 14 4C */	stfs f0, 0x144c(r27)
/* 807D34E0  48 00 00 70 */	b lbl_807D3550
lbl_807D34E4:
/* 807D34E4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D34E8  D0 1B 16 8C */	stfs f0, 0x168c(r27)
/* 807D34EC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807D34F0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807D34F4  80 7B 06 88 */	lwz r3, 0x688(r27)
/* 807D34F8  38 03 00 0E */	addi r0, r3, 0xe
/* 807D34FC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807D3500  7C 64 02 14 */	add r3, r4, r0
/* 807D3504  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807D3508  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807D350C  80 84 00 00 */	lwz r4, 0(r4)
/* 807D3510  4B B7 2F A1 */	bl PSMTXCopy
/* 807D3514  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807D3518  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807D351C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807D3520  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D3524  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807D3528  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D352C  38 61 00 40 */	addi r3, r1, 0x40
/* 807D3530  38 9B 14 38 */	addi r4, r27, 0x1438
/* 807D3534  4B A9 D9 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807D3538  C0 1B 14 38 */	lfs f0, 0x1438(r27)
/* 807D353C  D0 1B 14 44 */	stfs f0, 0x1444(r27)
/* 807D3540  C0 1B 14 3C */	lfs f0, 0x143c(r27)
/* 807D3544  D0 1B 14 48 */	stfs f0, 0x1448(r27)
/* 807D3548  C0 1B 14 40 */	lfs f0, 0x1440(r27)
/* 807D354C  D0 1B 14 4C */	stfs f0, 0x144c(r27)
lbl_807D3550:
/* 807D3550  7F 63 DB 78 */	mr r3, r27
/* 807D3554  38 9B 14 38 */	addi r4, r27, 0x1438
/* 807D3558  38 A0 00 00 */	li r5, 0
/* 807D355C  7F 86 E3 78 */	mr r6, r28
/* 807D3560  4B FF F6 25 */	bl himo_control2__FP10e_wb_classP4cXyziSc
/* 807D3564  7F 63 DB 78 */	mr r3, r27
/* 807D3568  38 9B 14 44 */	addi r4, r27, 0x1444
/* 807D356C  38 A0 00 01 */	li r5, 1
/* 807D3570  7F 86 E3 78 */	mr r6, r28
/* 807D3574  4B FF F6 11 */	bl himo_control2__FP10e_wb_classP4cXyziSc
/* 807D3578  38 7B 15 D0 */	addi r3, r27, 0x15d0
/* 807D357C  38 80 00 10 */	li r4, 0x10
/* 807D3580  3C A0 80 7E */	lis r5, l_color@ha /* 0x807E2F78@ha */
/* 807D3584  38 A5 2F 78 */	addi r5, r5, l_color@l /* 0x807E2F78@l */
/* 807D3588  38 DB 01 0C */	addi r6, r27, 0x10c
/* 807D358C  4B 84 0A 25 */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 807D3590  38 7B 15 D0 */	addi r3, r27, 0x15d0
/* 807D3594  81 9B 15 D0 */	lwz r12, 0x15d0(r27)
/* 807D3598  81 8C 00 08 */	lwz r12, 8(r12)
/* 807D359C  7D 89 03 A6 */	mtctr r12
/* 807D35A0  4E 80 04 21 */	bctrl 
/* 807D35A4  1C 83 00 14 */	mulli r4, r3, 0x14
/* 807D35A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807D35AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807D35B0  3B 03 5F 64 */	addi r24, r3, 0x5f64
/* 807D35B4  3C 64 00 01 */	addis r3, r4, 1
/* 807D35B8  38 63 61 54 */	addi r3, r3, 0x6154
/* 807D35BC  7C 78 1A 14 */	add r3, r24, r3
/* 807D35C0  38 9B 15 D0 */	addi r4, r27, 0x15d0
/* 807D35C4  4B 84 11 75 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 807D35C8  38 7B 16 0C */	addi r3, r27, 0x160c
/* 807D35CC  38 80 00 10 */	li r4, 0x10
/* 807D35D0  3C A0 80 7E */	lis r5, l_color@ha /* 0x807E2F78@ha */
/* 807D35D4  38 A5 2F 78 */	addi r5, r5, l_color@l /* 0x807E2F78@l */
/* 807D35D8  38 DB 01 0C */	addi r6, r27, 0x10c
/* 807D35DC  4B 84 09 D5 */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 807D35E0  38 7B 16 0C */	addi r3, r27, 0x160c
/* 807D35E4  81 9B 16 0C */	lwz r12, 0x160c(r27)
/* 807D35E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 807D35EC  7D 89 03 A6 */	mtctr r12
/* 807D35F0  4E 80 04 21 */	bctrl 
/* 807D35F4  1C 63 00 14 */	mulli r3, r3, 0x14
/* 807D35F8  3C 63 00 01 */	addis r3, r3, 1
/* 807D35FC  38 63 61 54 */	addi r3, r3, 0x6154
/* 807D3600  7C 78 1A 14 */	add r3, r24, r3
/* 807D3604  38 9B 16 0C */	addi r4, r27, 0x160c
/* 807D3608  4B 84 11 31 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 807D360C  38 7B 16 48 */	addi r3, r27, 0x1648
/* 807D3610  38 80 00 02 */	li r4, 2
/* 807D3614  3C A0 80 7E */	lis r5, l_color@ha /* 0x807E2F78@ha */
/* 807D3618  38 A5 2F 78 */	addi r5, r5, l_color@l /* 0x807E2F78@l */
/* 807D361C  38 DB 01 0C */	addi r6, r27, 0x10c
/* 807D3620  4B 84 09 91 */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 807D3624  38 7B 16 48 */	addi r3, r27, 0x1648
/* 807D3628  81 9B 16 48 */	lwz r12, 0x1648(r27)
/* 807D362C  81 8C 00 08 */	lwz r12, 8(r12)
/* 807D3630  7D 89 03 A6 */	mtctr r12
/* 807D3634  4E 80 04 21 */	bctrl 
/* 807D3638  1C 63 00 14 */	mulli r3, r3, 0x14
/* 807D363C  3C 63 00 01 */	addis r3, r3, 1
/* 807D3640  38 63 61 54 */	addi r3, r3, 0x6154
/* 807D3644  7C 78 1A 14 */	add r3, r24, r3
/* 807D3648  38 9B 16 48 */	addi r4, r27, 0x1648
/* 807D364C  4B 84 10 ED */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_807D3650:
/* 807D3650  38 60 00 01 */	li r3, 1
lbl_807D3654:
/* 807D3654  39 61 00 70 */	addi r11, r1, 0x70
/* 807D3658  4B B8 EB BD */	bl _restgpr_24
/* 807D365C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807D3660  7C 08 03 A6 */	mtlr r0
/* 807D3664  38 21 00 70 */	addi r1, r1, 0x70
/* 807D3668  4E 80 00 20 */	blr 
