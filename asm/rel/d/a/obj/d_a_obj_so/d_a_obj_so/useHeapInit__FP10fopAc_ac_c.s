lbl_80CE3018:
/* 80CE3018  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE301C  7C 08 02 A6 */	mflr r0
/* 80CE3020  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE3024  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE3028  4B 67 F1 9C */	b _savegpr_23
/* 80CE302C  7C 79 1B 78 */	mr r25, r3
/* 80CE3030  3C 60 80 CE */	lis r3, stringBase0@ha
/* 80CE3034  38 63 3B 60 */	addi r3, r3, stringBase0@l
/* 80CE3038  38 63 00 08 */	addi r3, r3, 8
/* 80CE303C  38 80 00 07 */	li r4, 7
/* 80CE3040  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CE3044  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CE3048  3F A5 00 02 */	addis r29, r5, 2
/* 80CE304C  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CE3050  7F A5 EB 78 */	mr r5, r29
/* 80CE3054  38 C0 00 80 */	li r6, 0x80
/* 80CE3058  4B 35 92 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE305C  7C 60 1B 78 */	mr r0, r3
/* 80CE3060  7C 1B 03 78 */	mr r27, r0
/* 80CE3064  3C 80 00 08 */	lis r4, 8
/* 80CE3068  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CE306C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CE3070  4B 33 1B E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE3074  90 79 05 74 */	stw r3, 0x574(r25)
/* 80CE3078  80 19 05 74 */	lwz r0, 0x574(r25)
/* 80CE307C  28 00 00 00 */	cmplwi r0, 0
/* 80CE3080  40 82 00 0C */	bne lbl_80CE308C
/* 80CE3084  38 60 00 00 */	li r3, 0
/* 80CE3088  48 00 01 DC */	b lbl_80CE3264
lbl_80CE308C:
/* 80CE308C  3B 40 00 00 */	li r26, 0
/* 80CE3090  3B 00 00 00 */	li r24, 0
/* 80CE3094  3A E0 00 00 */	li r23, 0
/* 80CE3098  3C 60 80 CE */	lis r3, stringBase0@ha
/* 80CE309C  3B C3 3B 60 */	addi r30, r3, stringBase0@l
/* 80CE30A0  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CE30A4  3B E3 5A 24 */	addi r31, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
lbl_80CE30A8:
/* 80CE30A8  38 60 00 C0 */	li r3, 0xc0
/* 80CE30AC  4B 5E BB A0 */	b __nw__FUl
/* 80CE30B0  7C 60 1B 79 */	or. r0, r3, r3
/* 80CE30B4  41 82 00 0C */	beq lbl_80CE30C0
/* 80CE30B8  4B 39 88 B8 */	b __ct__4dBgWFv
/* 80CE30BC  7C 60 1B 78 */	mr r0, r3
lbl_80CE30C0:
/* 80CE30C0  3B 97 10 4C */	addi r28, r23, 0x104c
/* 80CE30C4  7C 19 E1 2E */	stwx r0, r25, r28
/* 80CE30C8  7C 19 E0 2E */	lwzx r0, r25, r28
/* 80CE30CC  28 00 00 00 */	cmplwi r0, 0
/* 80CE30D0  40 82 00 0C */	bne lbl_80CE30DC
/* 80CE30D4  38 60 00 00 */	li r3, 0
/* 80CE30D8  48 00 01 8C */	b lbl_80CE3264
lbl_80CE30DC:
/* 80CE30DC  38 7E 00 08 */	addi r3, r30, 8
/* 80CE30E0  38 80 00 0A */	li r4, 0xa
/* 80CE30E4  7F A5 EB 78 */	mr r5, r29
/* 80CE30E8  38 C0 00 80 */	li r6, 0x80
/* 80CE30EC  4B 35 92 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE30F0  7C 64 1B 78 */	mr r4, r3
/* 80CE30F4  7C 79 E0 2E */	lwzx r3, r25, r28
/* 80CE30F8  38 A0 00 01 */	li r5, 1
/* 80CE30FC  38 D8 0F EC */	addi r6, r24, 0xfec
/* 80CE3100  7C D9 32 14 */	add r6, r25, r6
/* 80CE3104  4B 39 6E 34 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CE3108  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80CE310C  28 00 00 01 */	cmplwi r0, 1
/* 80CE3110  40 82 00 0C */	bne lbl_80CE311C
/* 80CE3114  38 60 00 00 */	li r3, 0
/* 80CE3118  48 00 01 4C */	b lbl_80CE3264
lbl_80CE311C:
/* 80CE311C  7C 79 E0 2E */	lwzx r3, r25, r28
/* 80CE3120  93 E3 00 B0 */	stw r31, 0xb0(r3)
/* 80CE3124  2C 1A 00 00 */	cmpwi r26, 0
/* 80CE3128  40 82 00 18 */	bne lbl_80CE3140
/* 80CE312C  3C 60 80 CE */	lis r3, ride_call_back_0__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80CE3130  38 03 04 FC */	addi r0, r3, ride_call_back_0__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80CE3134  7C 79 E0 2E */	lwzx r3, r25, r28
/* 80CE3138  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80CE313C  48 00 00 14 */	b lbl_80CE3150
lbl_80CE3140:
/* 80CE3140  3C 60 80 CE */	lis r3, ride_call_back_1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80CE3144  38 03 05 10 */	addi r0, r3, ride_call_back_1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80CE3148  7C 79 E0 2E */	lwzx r3, r25, r28
/* 80CE314C  90 03 00 B4 */	stw r0, 0xb4(r3)
lbl_80CE3150:
/* 80CE3150  3B 5A 00 01 */	addi r26, r26, 1
/* 80CE3154  2C 1A 00 02 */	cmpwi r26, 2
/* 80CE3158  3B 18 00 30 */	addi r24, r24, 0x30
/* 80CE315C  3A F7 00 04 */	addi r23, r23, 4
/* 80CE3160  41 80 FF 48 */	blt lbl_80CE30A8
/* 80CE3164  3B 00 00 00 */	li r24, 0
/* 80CE3168  3B 40 00 00 */	li r26, 0
/* 80CE316C  3E E0 11 00 */	lis r23, 0x1100
lbl_80CE3170:
/* 80CE3170  2C 18 00 00 */	cmpwi r24, 0
/* 80CE3174  40 82 00 28 */	bne lbl_80CE319C
/* 80CE3178  3C 60 80 CE */	lis r3, stringBase0@ha
/* 80CE317C  38 63 3B 60 */	addi r3, r3, stringBase0@l
/* 80CE3180  38 63 00 08 */	addi r3, r3, 8
/* 80CE3184  38 80 00 04 */	li r4, 4
/* 80CE3188  7F A5 EB 78 */	mr r5, r29
/* 80CE318C  38 C0 00 80 */	li r6, 0x80
/* 80CE3190  4B 35 91 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE3194  7C 7B 1B 78 */	mr r27, r3
/* 80CE3198  48 00 00 2C */	b lbl_80CE31C4
lbl_80CE319C:
/* 80CE319C  2C 18 00 02 */	cmpwi r24, 2
/* 80CE31A0  40 82 00 24 */	bne lbl_80CE31C4
/* 80CE31A4  3C 60 80 CE */	lis r3, stringBase0@ha
/* 80CE31A8  38 63 3B 60 */	addi r3, r3, stringBase0@l
/* 80CE31AC  38 63 00 08 */	addi r3, r3, 8
/* 80CE31B0  38 80 00 05 */	li r4, 5
/* 80CE31B4  7F A5 EB 78 */	mr r5, r29
/* 80CE31B8  38 C0 00 80 */	li r6, 0x80
/* 80CE31BC  4B 35 91 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE31C0  7C 7B 1B 78 */	mr r27, r3
lbl_80CE31C4:
/* 80CE31C4  7F 63 DB 78 */	mr r3, r27
/* 80CE31C8  3C 80 00 08 */	lis r4, 8
/* 80CE31CC  38 B7 00 84 */	addi r5, r23, 0x84
/* 80CE31D0  4B 33 1A 84 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE31D4  38 1A 05 94 */	addi r0, r26, 0x594
/* 80CE31D8  7C 79 01 2E */	stwx r3, r25, r0
/* 80CE31DC  7C 19 00 2E */	lwzx r0, r25, r0
/* 80CE31E0  28 00 00 00 */	cmplwi r0, 0
/* 80CE31E4  40 82 00 0C */	bne lbl_80CE31F0
/* 80CE31E8  38 60 00 00 */	li r3, 0
/* 80CE31EC  48 00 00 78 */	b lbl_80CE3264
lbl_80CE31F0:
/* 80CE31F0  3B 18 00 01 */	addi r24, r24, 1
/* 80CE31F4  2C 18 00 1A */	cmpwi r24, 0x1a
/* 80CE31F8  3B 5A 00 04 */	addi r26, r26, 4
/* 80CE31FC  41 80 FF 74 */	blt lbl_80CE3170
/* 80CE3200  3B 00 00 00 */	li r24, 0
/* 80CE3204  3B 40 00 00 */	li r26, 0
/* 80CE3208  3E E0 11 00 */	lis r23, 0x1100 /* 0x11000084@ha */
lbl_80CE320C:
/* 80CE320C  7F 63 DB 78 */	mr r3, r27
/* 80CE3210  3C 80 00 08 */	lis r4, 8
/* 80CE3214  38 B7 00 84 */	addi r5, r23, 0x0084 /* 0x11000084@l */
/* 80CE3218  4B 33 1A 3C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE321C  38 1A 1A A0 */	addi r0, r26, 0x1aa0
/* 80CE3220  7C 79 01 2E */	stwx r3, r25, r0
/* 80CE3224  7C 19 00 2E */	lwzx r0, r25, r0
/* 80CE3228  28 00 00 00 */	cmplwi r0, 0
/* 80CE322C  40 82 00 0C */	bne lbl_80CE3238
/* 80CE3230  38 60 00 00 */	li r3, 0
/* 80CE3234  48 00 00 30 */	b lbl_80CE3264
lbl_80CE3238:
/* 80CE3238  3B 18 00 01 */	addi r24, r24, 1
/* 80CE323C  2C 18 00 08 */	cmpwi r24, 8
/* 80CE3240  3B 5A 00 04 */	addi r26, r26, 4
/* 80CE3244  41 80 FF C8 */	blt lbl_80CE320C
/* 80CE3248  38 79 0D 1C */	addi r3, r25, 0xd1c
/* 80CE324C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80CE3250  7C 85 23 78 */	mr r5, r4
/* 80CE3254  38 C0 00 03 */	li r6, 3
/* 80CE3258  38 E0 00 01 */	li r7, 1
/* 80CE325C  4B 5D D2 D4 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80CE3260  38 60 00 01 */	li r3, 1
lbl_80CE3264:
/* 80CE3264  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE3268  4B 67 EF A8 */	b _restgpr_23
/* 80CE326C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE3270  7C 08 03 A6 */	mtlr r0
/* 80CE3274  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE3278  4E 80 00 20 */	blr 
