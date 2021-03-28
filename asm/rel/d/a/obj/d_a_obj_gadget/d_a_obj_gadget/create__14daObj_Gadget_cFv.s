lbl_80BF2F28:
/* 80BF2F28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF2F2C  7C 08 02 A6 */	mflr r0
/* 80BF2F30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF2F34  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF2F38  4B 76 F2 9C */	b _savegpr_27
/* 80BF2F3C  7C 7C 1B 78 */	mr r28, r3
/* 80BF2F40  3C 80 80 BF */	lis r4, cNullVec__6Z2Calc@ha
/* 80BF2F44  3B C4 4A 2C */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80BF2F48  3C 80 80 BF */	lis r4, m__20daObj_Gadget_Param_c@ha
/* 80BF2F4C  3B E4 49 44 */	addi r31, r4, m__20daObj_Gadget_Param_c@l
/* 80BF2F50  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BF2F54  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BF2F58  40 82 01 08 */	bne lbl_80BF3060
/* 80BF2F5C  7F 80 E3 79 */	or. r0, r28, r28
/* 80BF2F60  41 82 00 F4 */	beq lbl_80BF3054
/* 80BF2F64  7C 1D 03 78 */	mr r29, r0
/* 80BF2F68  4B 42 5B FC */	b __ct__10fopAc_ac_cFv
/* 80BF2F6C  3C 60 80 BF */	lis r3, __vt__14daObj_Gadget_c@ha
/* 80BF2F70  38 03 4B 78 */	addi r0, r3, __vt__14daObj_Gadget_c@l
/* 80BF2F74  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80BF2F78  3B 7D 05 78 */	addi r27, r29, 0x578
/* 80BF2F7C  7F 63 DB 78 */	mr r3, r27
/* 80BF2F80  4B 48 31 20 */	b __ct__9dBgS_AcchFv
/* 80BF2F84  3C 60 80 BF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BF2F88  38 63 4B 0C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BF2F8C  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80BF2F90  38 03 00 0C */	addi r0, r3, 0xc
/* 80BF2F94  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80BF2F98  38 03 00 18 */	addi r0, r3, 0x18
/* 80BF2F9C  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80BF2FA0  38 7B 00 14 */	addi r3, r27, 0x14
/* 80BF2FA4  4B 48 5E C4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BF2FA8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BF2FAC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BF2FB0  90 1D 07 68 */	stw r0, 0x768(r29)
/* 80BF2FB4  38 7D 07 6C */	addi r3, r29, 0x76c
/* 80BF2FB8  4B 49 07 A8 */	b __ct__10dCcD_GSttsFv
/* 80BF2FBC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BF2FC0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BF2FC4  90 7D 07 68 */	stw r3, 0x768(r29)
/* 80BF2FC8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BF2FCC  90 1D 07 6C */	stw r0, 0x76c(r29)
/* 80BF2FD0  38 7D 07 8C */	addi r3, r29, 0x78c
/* 80BF2FD4  4B 48 2E D8 */	b __ct__12dBgS_AcchCirFv
/* 80BF2FD8  38 7D 07 CC */	addi r3, r29, 0x7cc
/* 80BF2FDC  4B 67 4C 40 */	b __ct__11cBgS_GndChkFv
/* 80BF2FE0  3B 7D 08 08 */	addi r27, r29, 0x808
/* 80BF2FE4  7F 63 DB 78 */	mr r3, r27
/* 80BF2FE8  4B 49 0A 40 */	b __ct__12dCcD_GObjInfFv
/* 80BF2FEC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BF2FF0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BF2FF4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BF2FF8  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BF2FFC  38 03 4B 54 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BF3000  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80BF3004  3C 60 80 BF */	lis r3, __vt__8cM3dGCyl@ha
/* 80BF3008  38 03 4B 60 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BF300C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80BF3010  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BF3014  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BF3018  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80BF301C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BF3020  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80BF3024  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BF3028  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BF302C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80BF3030  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BF3034  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80BF3038  38 03 00 84 */	addi r0, r3, 0x84
/* 80BF303C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80BF3040  3C 60 80 BF */	lis r3, __vt__8cM3dGLin@ha
/* 80BF3044  38 03 4B 6C */	addi r0, r3, __vt__8cM3dGLin@l
/* 80BF3048  90 1D 09 5C */	stw r0, 0x95c(r29)
/* 80BF304C  38 7D 09 60 */	addi r3, r29, 0x960
/* 80BF3050  4B 48 4C 18 */	b __ct__11dBgS_LinChkFv
lbl_80BF3054:
/* 80BF3054  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80BF3058  60 00 00 08 */	ori r0, r0, 8
/* 80BF305C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80BF3060:
/* 80BF3060  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80BF3064  98 1C 09 D0 */	stb r0, 0x9d0(r28)
/* 80BF3068  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80BF306C  38 9E 00 20 */	addi r4, r30, 0x20
/* 80BF3070  88 1C 09 D0 */	lbz r0, 0x9d0(r28)
/* 80BF3074  54 00 18 38 */	slwi r0, r0, 3
/* 80BF3078  7C 84 02 14 */	add r4, r4, r0
/* 80BF307C  80 04 00 04 */	lwz r0, 4(r4)
/* 80BF3080  54 00 10 3A */	slwi r0, r0, 2
/* 80BF3084  38 9E 00 30 */	addi r4, r30, 0x30
/* 80BF3088  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF308C  4B 43 9E 30 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BF3090  7C 7D 1B 78 */	mr r29, r3
/* 80BF3094  2C 1D 00 04 */	cmpwi r29, 4
/* 80BF3098  40 82 01 74 */	bne lbl_80BF320C
/* 80BF309C  7F 83 E3 78 */	mr r3, r28
/* 80BF30A0  3C 80 80 BF */	lis r4, createHeapCallBack__14daObj_Gadget_cFP10fopAc_ac_c@ha
/* 80BF30A4  38 84 41 30 */	addi r4, r4, createHeapCallBack__14daObj_Gadget_cFP10fopAc_ac_c@l
/* 80BF30A8  38 A0 00 00 */	li r5, 0
/* 80BF30AC  4B 42 74 04 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BF30B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF30B4  40 82 00 0C */	bne lbl_80BF30C0
/* 80BF30B8  38 60 00 05 */	li r3, 5
/* 80BF30BC  48 00 01 54 */	b lbl_80BF3210
lbl_80BF30C0:
/* 80BF30C0  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80BF30C4  38 03 00 24 */	addi r0, r3, 0x24
/* 80BF30C8  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80BF30CC  7F 83 E3 78 */	mr r3, r28
/* 80BF30D0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BF30D4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80BF30D8  FC 60 08 90 */	fmr f3, f1
/* 80BF30DC  C0 9F 00 64 */	lfs f4, 0x64(r31)
/* 80BF30E0  C0 BF 00 68 */	lfs f5, 0x68(r31)
/* 80BF30E4  FC C0 20 90 */	fmr f6, f4
/* 80BF30E8  4B 42 74 60 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BF30EC  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80BF30F0  90 01 00 08 */	stw r0, 8(r1)
/* 80BF30F4  38 7C 05 78 */	addi r3, r28, 0x578
/* 80BF30F8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80BF30FC  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80BF3100  7F 86 E3 78 */	mr r6, r28
/* 80BF3104  38 E0 00 01 */	li r7, 1
/* 80BF3108  39 1C 07 8C */	addi r8, r28, 0x78c
/* 80BF310C  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80BF3110  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80BF3114  4B 48 31 34 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BF3118  38 7C 07 50 */	addi r3, r28, 0x750
/* 80BF311C  38 9F 00 00 */	addi r4, r31, 0
/* 80BF3120  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80BF3124  FC 00 00 1E */	fctiwz f0, f0
/* 80BF3128  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BF312C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80BF3130  38 A0 00 00 */	li r5, 0
/* 80BF3134  7F 86 E3 78 */	mr r6, r28
/* 80BF3138  4B 49 07 28 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BF313C  38 7C 08 08 */	addi r3, r28, 0x808
/* 80BF3140  38 9E 00 38 */	addi r4, r30, 0x38
/* 80BF3144  4B 49 17 70 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BF3148  38 1C 07 50 */	addi r0, r28, 0x750
/* 80BF314C  90 1C 08 4C */	stw r0, 0x84c(r28)
/* 80BF3150  38 7C 05 78 */	addi r3, r28, 0x578
/* 80BF3154  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BF3158  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BF315C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BF3160  4B 48 39 4C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80BF3164  80 1C 06 54 */	lwz r0, 0x654(r28)
/* 80BF3168  90 1C 07 CC */	stw r0, 0x7cc(r28)
/* 80BF316C  80 1C 06 58 */	lwz r0, 0x658(r28)
/* 80BF3170  90 1C 07 D0 */	stw r0, 0x7d0(r28)
/* 80BF3174  80 1C 06 5C */	lwz r0, 0x65c(r28)
/* 80BF3178  90 1C 07 D4 */	stw r0, 0x7d4(r28)
/* 80BF317C  88 1C 06 60 */	lbz r0, 0x660(r28)
/* 80BF3180  98 1C 07 D8 */	stb r0, 0x7d8(r28)
/* 80BF3184  A0 1C 06 68 */	lhz r0, 0x668(r28)
/* 80BF3188  B0 1C 07 E0 */	sth r0, 0x7e0(r28)
/* 80BF318C  A0 1C 06 6A */	lhz r0, 0x66a(r28)
/* 80BF3190  B0 1C 07 E2 */	sth r0, 0x7e2(r28)
/* 80BF3194  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 80BF3198  90 1C 07 E4 */	stw r0, 0x7e4(r28)
/* 80BF319C  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 80BF31A0  90 1C 07 E8 */	stw r0, 0x7e8(r28)
/* 80BF31A4  C0 1C 06 78 */	lfs f0, 0x678(r28)
/* 80BF31A8  D0 1C 07 F0 */	stfs f0, 0x7f0(r28)
/* 80BF31AC  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 80BF31B0  D0 1C 07 F4 */	stfs f0, 0x7f4(r28)
/* 80BF31B4  C0 1C 06 80 */	lfs f0, 0x680(r28)
/* 80BF31B8  D0 1C 07 F8 */	stfs f0, 0x7f8(r28)
/* 80BF31BC  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 80BF31C0  90 1C 07 FC */	stw r0, 0x7fc(r28)
/* 80BF31C4  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 80BF31C8  D0 1C 08 00 */	stfs f0, 0x800(r28)
/* 80BF31CC  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80BF31D0  90 1C 08 04 */	stw r0, 0x804(r28)
/* 80BF31D4  C0 1C 06 10 */	lfs f0, 0x610(r28)
/* 80BF31D8  D0 1C 0A 00 */	stfs f0, 0xa00(r28)
/* 80BF31DC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BF31E0  C0 1C 0A 00 */	lfs f0, 0xa00(r28)
/* 80BF31E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BF31E8  41 82 00 14 */	beq lbl_80BF31FC
/* 80BF31EC  7F 83 E3 78 */	mr r3, r28
/* 80BF31F0  48 00 0F 61 */	bl setEnvTevColor__14daObj_Gadget_cFv
/* 80BF31F4  7F 83 E3 78 */	mr r3, r28
/* 80BF31F8  48 00 0F B5 */	bl setRoomNo__14daObj_Gadget_cFv
lbl_80BF31FC:
/* 80BF31FC  7F 83 E3 78 */	mr r3, r28
/* 80BF3200  48 00 0F F1 */	bl reset__14daObj_Gadget_cFv
/* 80BF3204  7F 83 E3 78 */	mr r3, r28
/* 80BF3208  48 00 03 31 */	bl Execute__14daObj_Gadget_cFv
lbl_80BF320C:
/* 80BF320C  7F A3 EB 78 */	mr r3, r29
lbl_80BF3210:
/* 80BF3210  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF3214  4B 76 F0 0C */	b _restgpr_27
/* 80BF3218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF321C  7C 08 03 A6 */	mtlr r0
/* 80BF3220  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF3224  4E 80 00 20 */	blr 
