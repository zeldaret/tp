lbl_800D2F58:
/* 800D2F58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D2F5C  7C 08 02 A6 */	mflr r0
/* 800D2F60  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D2F64  39 61 00 20 */	addi r11, r1, 0x20
/* 800D2F68  48 28 F2 6D */	bl _savegpr_27
/* 800D2F6C  7C 7D 1B 78 */	mr r29, r3
/* 800D2F70  7C 9B 23 78 */	mr r27, r4
/* 800D2F74  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800D2F78  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 800D2F7C  57 60 20 36 */	slwi r0, r27, 4
/* 800D2F80  3B DF 41 B0 */	addi r30, r31, 0x41b0
/* 800D2F84  7F DE 02 14 */	add r30, r30, r0
/* 800D2F88  38 80 00 21 */	li r4, 0x21
/* 800D2F8C  4B FE EF E1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D2F90  7F A3 EB 78 */	mr r3, r29
/* 800D2F94  88 9E 00 08 */	lbz r4, 8(r30)
/* 800D2F98  4B FF E5 95 */	bl setCutType__9daAlink_cFUc
/* 800D2F9C  80 1E 00 04 */	lwz r0, 4(r30)
/* 800D2FA0  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 800D2FA4  2C 1B 00 01 */	cmpwi r27, 1
/* 800D2FA8  40 82 00 0C */	bne lbl_800D2FB4
/* 800D2FAC  3B 7F 03 0C */	addi r27, r31, 0x30c
/* 800D2FB0  48 00 00 38 */	b lbl_800D2FE8
lbl_800D2FB4:
/* 800D2FB4  2C 1B 00 02 */	cmpwi r27, 2
/* 800D2FB8  40 82 00 0C */	bne lbl_800D2FC4
/* 800D2FBC  3B 7F 03 2C */	addi r27, r31, 0x32c
/* 800D2FC0  48 00 00 28 */	b lbl_800D2FE8
lbl_800D2FC4:
/* 800D2FC4  2C 1B 00 04 */	cmpwi r27, 4
/* 800D2FC8  40 82 00 0C */	bne lbl_800D2FD4
/* 800D2FCC  3B 7F 03 6C */	addi r27, r31, 0x36c
/* 800D2FD0  48 00 00 18 */	b lbl_800D2FE8
lbl_800D2FD4:
/* 800D2FD4  2C 1B 00 03 */	cmpwi r27, 3
/* 800D2FD8  40 82 00 0C */	bne lbl_800D2FE4
/* 800D2FDC  3B 7F 03 4C */	addi r27, r31, 0x34c
/* 800D2FE0  48 00 00 08 */	b lbl_800D2FE8
lbl_800D2FE4:
/* 800D2FE4  3B 7F 02 EC */	addi r27, r31, 0x2ec
lbl_800D2FE8:
/* 800D2FE8  C0 1B 00 18 */	lfs f0, 0x18(r27)
/* 800D2FEC  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 800D2FF0  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 800D2FF4  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 800D2FF8  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 800D2FFC  D0 1D 34 80 */	stfs f0, 0x3480(r29)
/* 800D3000  7F A3 EB 78 */	mr r3, r29
/* 800D3004  38 80 00 01 */	li r4, 1
/* 800D3008  38 A0 00 01 */	li r5, 1
/* 800D300C  4B FE 84 AD */	bl checkHeavyStateOn__9daAlink_cFii
/* 800D3010  2C 03 00 00 */	cmpwi r3, 0
/* 800D3014  41 82 00 14 */	beq lbl_800D3028
/* 800D3018  C0 3D 34 80 */	lfs f1, 0x3480(r29)
/* 800D301C  C0 1D 34 34 */	lfs f0, 0x3434(r29)
/* 800D3020  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D3024  D0 1D 34 80 */	stfs f0, 0x3480(r29)
lbl_800D3028:
/* 800D3028  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 800D302C  D0 1D 34 84 */	stfs f0, 0x3484(r29)
/* 800D3030  7F A3 EB 78 */	mr r3, r29
/* 800D3034  4B FE CD 7D */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800D3038  2C 03 00 00 */	cmpwi r3, 0
/* 800D303C  40 82 00 18 */	bne lbl_800D3054
/* 800D3040  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800D3044  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800D3048  41 82 00 0C */	beq lbl_800D3054
/* 800D304C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 800D3050  48 00 00 08 */	b lbl_800D3058
lbl_800D3054:
/* 800D3054  C0 7B 00 0C */	lfs f3, 0xc(r27)
lbl_800D3058:
/* 800D3058  7F A3 EB 78 */	mr r3, r29
/* 800D305C  80 9E 00 00 */	lwz r4, 0(r30)
/* 800D3060  C0 3B 00 04 */	lfs f1, 4(r27)
/* 800D3064  C0 5B 00 08 */	lfs f2, 8(r27)
/* 800D3068  A8 BB 00 00 */	lha r5, 0(r27)
/* 800D306C  4B FD 9F A1 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800D3070  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800D3074  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 800D3078  83 9D 27 E0 */	lwz r28, 0x27e0(r29)
/* 800D307C  3B 60 00 01 */	li r27, 1
/* 800D3080  7F 83 E3 78 */	mr r3, r28
/* 800D3084  4B FA 07 61 */	bl LockonTruth__12dAttention_cFv
/* 800D3088  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D308C  40 82 00 14 */	bne lbl_800D30A0
/* 800D3090  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 800D3094  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800D3098  40 82 00 08 */	bne lbl_800D30A0
/* 800D309C  3B 60 00 00 */	li r27, 0
lbl_800D30A0:
/* 800D30A0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800D30A4  40 82 00 20 */	bne lbl_800D30C4
/* 800D30A8  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800D30AC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800D30B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D30B4  40 81 00 10 */	ble lbl_800D30C4
/* 800D30B8  A8 1D 2F E2 */	lha r0, 0x2fe2(r29)
/* 800D30BC  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 800D30C0  48 00 00 0C */	b lbl_800D30CC
lbl_800D30C4:
/* 800D30C4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800D30C8  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_800D30CC:
/* 800D30CC  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 800D30D0  28 00 00 01 */	cmplwi r0, 1
/* 800D30D4  41 82 00 0C */	beq lbl_800D30E0
/* 800D30D8  38 00 00 0C */	li r0, 0xc
/* 800D30DC  98 1D 2F 99 */	stb r0, 0x2f99(r29)
lbl_800D30E0:
/* 800D30E0  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800D30E4  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800D30E8  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 800D30EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D30F0  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 800D30F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D30F8  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 800D30FC  39 1F 08 34 */	addi r8, r31, 0x834
/* 800D3100  A8 08 00 52 */	lha r0, 0x52(r8)
/* 800D3104  B0 1D 30 7E */	sth r0, 0x307e(r29)
/* 800D3108  7F A3 EB 78 */	mr r3, r29
/* 800D310C  38 80 00 00 */	li r4, 0
/* 800D3110  38 A0 00 01 */	li r5, 1
/* 800D3114  88 DE 00 09 */	lbz r6, 9(r30)
/* 800D3118  38 E0 00 02 */	li r7, 2
/* 800D311C  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 800D3120  C0 48 00 78 */	lfs f2, 0x78(r8)
/* 800D3124  4B FF E5 65 */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D3128  7F A3 EB 78 */	mr r3, r29
/* 800D312C  4B FF F1 D9 */	bl setSwordComboVoice__9daAlink_cFv
/* 800D3130  38 00 00 00 */	li r0, 0
/* 800D3134  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 800D3138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D313C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D3140  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800D3144  60 00 80 00 */	ori r0, r0, 0x8000
/* 800D3148  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800D314C  7F A3 EB 78 */	mr r3, r29
/* 800D3150  48 05 0F F5 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800D3154  7F A3 EB 78 */	mr r3, r29
/* 800D3158  4B FF F5 95 */	bl getCutDirection__9daAlink_cFv
/* 800D315C  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 800D3160  28 00 00 01 */	cmplwi r0, 1
/* 800D3164  40 82 00 20 */	bne lbl_800D3184
/* 800D3168  2C 03 00 02 */	cmpwi r3, 2
/* 800D316C  41 82 00 0C */	beq lbl_800D3178
/* 800D3170  2C 03 00 03 */	cmpwi r3, 3
/* 800D3174  40 82 00 10 */	bne lbl_800D3184
lbl_800D3178:
/* 800D3178  38 00 00 01 */	li r0, 1
/* 800D317C  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800D3180  48 00 00 0C */	b lbl_800D318C
lbl_800D3184:
/* 800D3184  38 00 00 00 */	li r0, 0
/* 800D3188  B0 1D 30 0E */	sth r0, 0x300e(r29)
lbl_800D318C:
/* 800D318C  38 00 00 04 */	li r0, 4
/* 800D3190  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 800D3194  7F A3 EB 78 */	mr r3, r29
/* 800D3198  4B FF FA 65 */	bl initCutAtnActorSearch__9daAlink_cFv
/* 800D319C  38 60 00 01 */	li r3, 1
/* 800D31A0  39 61 00 20 */	addi r11, r1, 0x20
/* 800D31A4  48 28 F0 7D */	bl _restgpr_27
/* 800D31A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D31AC  7C 08 03 A6 */	mtlr r0
/* 800D31B0  38 21 00 20 */	addi r1, r1, 0x20
/* 800D31B4  4E 80 00 20 */	blr 
