lbl_800B2EA4:
/* 800B2EA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B2EA8  7C 08 02 A6 */	mflr r0
/* 800B2EAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B2EB0  39 61 00 20 */	addi r11, r1, 0x20
/* 800B2EB4  48 2A F3 29 */	bl _savegpr_29
/* 800B2EB8  7C 7F 1B 78 */	mr r31, r3
/* 800B2EBC  38 00 00 00 */	li r0, 0
/* 800B2EC0  90 03 27 E4 */	stw r0, 0x27e4(r3)
/* 800B2EC4  90 03 27 E8 */	stw r0, 0x27e8(r3)
/* 800B2EC8  90 03 27 EC */	stw r0, 0x27ec(r3)
/* 800B2ECC  90 03 27 F0 */	stw r0, 0x27f0(r3)
/* 800B2ED0  90 03 27 F4 */	stw r0, 0x27f4(r3)
/* 800B2ED4  90 03 27 F8 */	stw r0, 0x27f8(r3)
/* 800B2ED8  48 06 2D 49 */	bl checkEventRun__9daAlink_cCFv
/* 800B2EDC  2C 03 00 00 */	cmpwi r3, 0
/* 800B2EE0  40 82 00 44 */	bne lbl_800B2F24
/* 800B2EE4  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800B2EE8  3B A0 00 01 */	li r29, 1
/* 800B2EEC  7F C3 F3 78 */	mr r3, r30
/* 800B2EF0  4B FC 08 F5 */	bl LockonTruth__12dAttention_cFv
/* 800B2EF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B2EF8  40 82 00 14 */	bne lbl_800B2F0C
/* 800B2EFC  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800B2F00  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B2F04  40 82 00 08 */	bne lbl_800B2F0C
/* 800B2F08  3B A0 00 00 */	li r29, 0
lbl_800B2F0C:
/* 800B2F0C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800B2F10  40 82 00 14 */	bne lbl_800B2F24
/* 800B2F14  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800B2F18  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B2F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B2F20  40 81 00 28 */	ble lbl_800B2F48
lbl_800B2F24:
/* 800B2F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B2F28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B2F2C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800B2F30  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B2F34  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800B2F38  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800B2F3C  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800B2F40  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800B2F44  48 00 00 4C */	b lbl_800B2F90
lbl_800B2F48:
/* 800B2F48  80 1F 28 38 */	lwz r0, 0x2838(r31)
/* 800B2F4C  28 00 00 00 */	cmplwi r0, 0
/* 800B2F50  40 82 00 18 */	bne lbl_800B2F68
/* 800B2F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B2F58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B2F5C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800B2F60  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B2F64  90 03 5F 18 */	stw r0, 0x5f18(r3)
lbl_800B2F68:
/* 800B2F68  80 1F 28 40 */	lwz r0, 0x2840(r31)
/* 800B2F6C  28 00 00 00 */	cmplwi r0, 0
/* 800B2F70  41 82 00 14 */	beq lbl_800B2F84
/* 800B2F74  7F E3 FB 78 */	mr r3, r31
/* 800B2F78  48 02 E3 FD */	bl getCopyRodControllActor__9daAlink_cFv
/* 800B2F7C  28 03 00 00 */	cmplwi r3, 0
/* 800B2F80  41 82 00 10 */	beq lbl_800B2F90
lbl_800B2F84:
/* 800B2F84  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800B2F88  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800B2F8C  90 1F 05 7C */	stw r0, 0x57c(r31)
lbl_800B2F90:
/* 800B2F90  38 60 00 00 */	li r3, 0
/* 800B2F94  90 7F 27 FC */	stw r3, 0x27fc(r31)
/* 800B2F98  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800B2F9C  28 00 00 62 */	cmplwi r0, 0x62
/* 800B2FA0  41 82 00 10 */	beq lbl_800B2FB0
/* 800B2FA4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B2FA8  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800B2FAC  40 82 00 08 */	bne lbl_800B2FB4
lbl_800B2FB0:
/* 800B2FB0  38 60 00 01 */	li r3, 1
lbl_800B2FB4:
/* 800B2FB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B2FB8  41 82 00 20 */	beq lbl_800B2FD8
/* 800B2FBC  80 1F 28 48 */	lwz r0, 0x2848(r31)
/* 800B2FC0  90 1F 27 EC */	stw r0, 0x27ec(r31)
/* 800B2FC4  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B2FC8  90 1F 27 F4 */	stw r0, 0x27f4(r31)
/* 800B2FCC  80 1F 28 48 */	lwz r0, 0x2848(r31)
/* 800B2FD0  90 1F 27 FC */	stw r0, 0x27fc(r31)
/* 800B2FD4  48 00 01 64 */	b lbl_800B3138
lbl_800B2FD8:
/* 800B2FD8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800B2FDC  28 00 00 C2 */	cmplwi r0, 0xc2
/* 800B2FE0  40 82 00 18 */	bne lbl_800B2FF8
/* 800B2FE4  80 1F 28 58 */	lwz r0, 0x2858(r31)
/* 800B2FE8  90 1F 27 EC */	stw r0, 0x27ec(r31)
/* 800B2FEC  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B2FF0  90 1F 27 F4 */	stw r0, 0x27f4(r31)
/* 800B2FF4  48 00 01 44 */	b lbl_800B3138
lbl_800B2FF8:
/* 800B2FF8  28 00 00 22 */	cmplwi r0, 0x22
/* 800B2FFC  40 82 00 20 */	bne lbl_800B301C
/* 800B3000  80 1F 28 10 */	lwz r0, 0x2810(r31)
/* 800B3004  28 00 00 00 */	cmplwi r0, 0
/* 800B3008  41 82 00 14 */	beq lbl_800B301C
/* 800B300C  90 1F 27 EC */	stw r0, 0x27ec(r31)
/* 800B3010  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B3014  90 1F 27 F4 */	stw r0, 0x27f4(r31)
/* 800B3018  48 00 01 20 */	b lbl_800B3138
lbl_800B301C:
/* 800B301C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B3020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B3024  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800B3028  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800B302C  41 82 00 18 */	beq lbl_800B3044
/* 800B3030  80 1F 28 38 */	lwz r0, 0x2838(r31)
/* 800B3034  90 1F 27 EC */	stw r0, 0x27ec(r31)
/* 800B3038  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B303C  90 1F 27 F4 */	stw r0, 0x27f4(r31)
/* 800B3040  48 00 00 F8 */	b lbl_800B3138
lbl_800B3044:
/* 800B3044  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800B3048  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B304C  41 82 00 18 */	beq lbl_800B3064
/* 800B3050  80 1F 28 40 */	lwz r0, 0x2840(r31)
/* 800B3054  90 1F 27 EC */	stw r0, 0x27ec(r31)
/* 800B3058  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B305C  90 1F 27 F4 */	stw r0, 0x27f4(r31)
/* 800B3060  48 00 00 D8 */	b lbl_800B3138
lbl_800B3064:
/* 800B3064  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800B3068  3B A0 00 01 */	li r29, 1
/* 800B306C  7F C3 F3 78 */	mr r3, r30
/* 800B3070  4B FC 07 75 */	bl LockonTruth__12dAttention_cFv
/* 800B3074  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B3078  40 82 00 14 */	bne lbl_800B308C
/* 800B307C  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800B3080  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B3084  40 82 00 08 */	bne lbl_800B308C
/* 800B3088  3B A0 00 00 */	li r29, 0
lbl_800B308C:
/* 800B308C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800B3090  41 82 00 9C */	beq lbl_800B312C
/* 800B3094  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800B3098  38 80 00 00 */	li r4, 0
/* 800B309C  4B FB D7 A9 */	bl GetLockonList__12dAttention_cFl
/* 800B30A0  90 7F 27 E4 */	stw r3, 0x27e4(r31)
/* 800B30A4  80 1F 27 E4 */	lwz r0, 0x27e4(r31)
/* 800B30A8  28 00 00 00 */	cmplwi r0, 0
/* 800B30AC  41 82 00 50 */	beq lbl_800B30FC
/* 800B30B0  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800B30B4  4B FC 07 31 */	bl LockonTruth__12dAttention_cFv
/* 800B30B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B30BC  41 82 00 40 */	beq lbl_800B30FC
/* 800B30C0  80 7F 27 E4 */	lwz r3, 0x27e4(r31)
/* 800B30C4  4B FC 07 A1 */	bl getActor__10dAttList_cFv
/* 800B30C8  90 7F 27 EC */	stw r3, 0x27ec(r31)
/* 800B30CC  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B30D0  90 1F 27 F4 */	stw r0, 0x27f4(r31)
/* 800B30D4  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800B30D8  64 00 00 01 */	oris r0, r0, 1
/* 800B30DC  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800B30E0  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 800B30E4  48 02 94 65 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800B30E8  2C 03 00 00 */	cmpwi r3, 0
/* 800B30EC  41 82 00 10 */	beq lbl_800B30FC
/* 800B30F0  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800B30F4  60 00 10 00 */	ori r0, r0, 0x1000
/* 800B30F8  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_800B30FC:
/* 800B30FC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B3100  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B3104  41 82 00 10 */	beq lbl_800B3114
/* 800B3108  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B310C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800B3110  40 82 00 0C */	bne lbl_800B311C
lbl_800B3114:
/* 800B3114  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800B3118  B0 1F 2F E4 */	sth r0, 0x2fe4(r31)
lbl_800B311C:
/* 800B311C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B3120  64 00 00 40 */	oris r0, r0, 0x40
/* 800B3124  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800B3128  48 00 00 10 */	b lbl_800B3138
lbl_800B312C:
/* 800B312C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B3130  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800B3134  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_800B3138:
/* 800B3138  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800B313C  28 00 00 00 */	cmplwi r0, 0
/* 800B3140  40 82 00 2C */	bne lbl_800B316C
/* 800B3144  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800B3148  4B FB D7 39 */	bl getActionBtnB__12dAttention_cFv
/* 800B314C  90 7F 27 E4 */	stw r3, 0x27e4(r31)
/* 800B3150  80 7F 27 E4 */	lwz r3, 0x27e4(r31)
/* 800B3154  28 03 00 00 */	cmplwi r3, 0
/* 800B3158  41 82 00 14 */	beq lbl_800B316C
/* 800B315C  4B FC 07 09 */	bl getActor__10dAttList_cFv
/* 800B3160  90 7F 27 F0 */	stw r3, 0x27f0(r31)
/* 800B3164  80 1F 27 F0 */	lwz r0, 0x27f0(r31)
/* 800B3168  90 1F 27 F4 */	stw r0, 0x27f4(r31)
lbl_800B316C:
/* 800B316C  80 7F 27 E0 */	lwz r3, 0x27e0(r31)
/* 800B3170  4B FB D8 05 */	bl getActionBtnXY__12dAttention_cFv
/* 800B3174  90 7F 27 E8 */	stw r3, 0x27e8(r31)
/* 800B3178  80 7F 27 E8 */	lwz r3, 0x27e8(r31)
/* 800B317C  28 03 00 00 */	cmplwi r3, 0
/* 800B3180  41 82 00 0C */	beq lbl_800B318C
/* 800B3184  4B FC 06 E1 */	bl getActor__10dAttList_cFv
/* 800B3188  90 7F 27 F8 */	stw r3, 0x27f8(r31)
lbl_800B318C:
/* 800B318C  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 800B3190  28 04 00 00 */	cmplwi r4, 0
/* 800B3194  41 82 00 34 */	beq lbl_800B31C8
/* 800B3198  88 04 04 96 */	lbz r0, 0x496(r4)
/* 800B319C  20 00 00 02 */	subfic r0, r0, 2
/* 800B31A0  7C 00 00 34 */	cntlzw r0, r0
/* 800B31A4  54 03 D9 7E */	srwi r3, r0, 5
/* 800B31A8  38 03 00 02 */	addi r0, r3, 2
/* 800B31AC  7C 03 03 78 */	mr r3, r0
/* 800B31B0  41 82 00 0C */	beq lbl_800B31BC
/* 800B31B4  80 04 00 04 */	lwz r0, 4(r4)
/* 800B31B8  48 00 00 08 */	b lbl_800B31C0
lbl_800B31BC:
/* 800B31BC  38 00 FF FF */	li r0, -1
lbl_800B31C0:
/* 800B31C0  90 1F 28 F4 */	stw r0, 0x28f4(r31)
/* 800B31C4  48 00 00 40 */	b lbl_800B3204
lbl_800B31C8:
/* 800B31C8  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800B31CC  3B A0 00 01 */	li r29, 1
/* 800B31D0  7F C3 F3 78 */	mr r3, r30
/* 800B31D4  4B FC 06 11 */	bl LockonTruth__12dAttention_cFv
/* 800B31D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B31DC  40 82 00 14 */	bne lbl_800B31F0
/* 800B31E0  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800B31E4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B31E8  40 82 00 08 */	bne lbl_800B31F0
/* 800B31EC  3B A0 00 00 */	li r29, 0
lbl_800B31F0:
/* 800B31F0  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 800B31F4  30 03 FF FF */	addic r0, r3, -1
/* 800B31F8  7C 60 19 10 */	subfe r3, r0, r3
/* 800B31FC  38 00 FF FF */	li r0, -1
/* 800B3200  90 1F 28 F4 */	stw r0, 0x28f4(r31)
lbl_800B3204:
/* 800B3204  98 7F 2D 6A */	stb r3, 0x2d6a(r31)
/* 800B3208  39 61 00 20 */	addi r11, r1, 0x20
/* 800B320C  48 2A F0 1D */	bl _restgpr_29
/* 800B3210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B3214  7C 08 03 A6 */	mtlr r0
/* 800B3218  38 21 00 20 */	addi r1, r1, 0x20
/* 800B321C  4E 80 00 20 */	blr 
