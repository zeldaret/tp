lbl_802E2F54:
/* 802E2F54  94 21 FC 60 */	stwu r1, -0x3a0(r1)
/* 802E2F58  7C 08 02 A6 */	mflr r0
/* 802E2F5C  90 01 03 A4 */	stw r0, 0x3a4(r1)
/* 802E2F60  39 61 03 A0 */	addi r11, r1, 0x3a0
/* 802E2F64  48 07 F2 5D */	bl _savegpr_22
/* 802E2F68  7C 7D 1B 78 */	mr r29, r3
/* 802E2F6C  7C 99 23 78 */	mr r25, r4
/* 802E2F70  7C B8 2B 78 */	mr r24, r5
/* 802E2F74  3A E0 00 00 */	li r23, 0
/* 802E2F78  48 05 F7 85 */	bl OSGetTime
/* 802E2F7C  7C 9C 23 78 */	mr r28, r4
/* 802E2F80  7C 7B 1B 78 */	mr r27, r3
/* 802E2F84  3F 40 80 00 */	lis r26, 0x8000
lbl_802E2F88:
/* 802E2F88  48 05 F7 75 */	bl OSGetTime
/* 802E2F8C  7C 9C 20 10 */	subfc r4, r28, r4
/* 802E2F90  7C 7B 19 10 */	subfe r3, r27, r3
/* 802E2F94  80 1A 00 F8 */	lwz r0, 0xf8(r26)
/* 802E2F98  54 05 F0 BE */	srwi r5, r0, 2
/* 802E2F9C  38 00 03 E8 */	li r0, 0x3e8
/* 802E2FA0  7C C5 03 96 */	divwu r6, r5, r0
/* 802E2FA4  38 A0 00 00 */	li r5, 0
/* 802E2FA8  48 07 F3 7D */	bl __div2i
/* 802E2FAC  38 C0 00 32 */	li r6, 0x32
/* 802E2FB0  38 00 00 00 */	li r0, 0
/* 802E2FB4  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 802E2FB8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802E2FBC  7C 06 20 10 */	subfc r0, r6, r4
/* 802E2FC0  7C 63 29 10 */	subfe r3, r3, r5
/* 802E2FC4  7C 65 29 10 */	subfe r3, r5, r5
/* 802E2FC8  7C 63 00 D1 */	neg. r3, r3
/* 802E2FCC  40 82 FF BC */	bne lbl_802E2F88
/* 802E2FD0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 802E2FD4  3C 03 00 01 */	addis r0, r3, 1
/* 802E2FD8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802E2FDC  40 82 03 A4 */	bne lbl_802E3380
/* 802E2FE0  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 802E2FE4  38 80 00 00 */	li r4, 0
/* 802E2FE8  4B FF D6 F5 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 802E2FEC  38 61 02 18 */	addi r3, r1, 0x218
/* 802E2FF0  38 80 00 01 */	li r4, 1
/* 802E2FF4  4B FF D6 E9 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 802E2FF8  38 61 01 68 */	addi r3, r1, 0x168
/* 802E2FFC  38 80 00 02 */	li r4, 2
/* 802E3000  4B FF D6 DD */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 802E3004  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802E3008  38 80 00 03 */	li r4, 3
/* 802E300C  4B FF D6 D1 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 802E3010  4B FF D8 D5 */	bl read__10JUTGamePadFv
/* 802E3014  38 60 00 00 */	li r3, 0
/* 802E3018  A8 01 03 44 */	lha r0, 0x344(r1)
/* 802E301C  2C 00 FF FF */	cmpwi r0, -1
/* 802E3020  41 82 00 14 */	beq lbl_802E3034
/* 802E3024  88 01 03 60 */	lbz r0, 0x360(r1)
/* 802E3028  28 00 00 00 */	cmplwi r0, 0
/* 802E302C  41 82 00 08 */	beq lbl_802E3034
/* 802E3030  38 60 00 01 */	li r3, 1
lbl_802E3034:
/* 802E3034  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E3038  41 82 00 34 */	beq lbl_802E306C
/* 802E303C  3C 60 80 3D */	lis r3, c3bcnt@ha
/* 802E3040  38 83 C6 40 */	addi r4, r3, c3bcnt@l
/* 802E3044  80 64 00 00 */	lwz r3, 0(r4)
/* 802E3048  80 84 00 04 */	lwz r4, 4(r4)
/* 802E304C  38 00 00 00 */	li r0, 0
/* 802E3050  7C 85 02 78 */	xor r5, r4, r0
/* 802E3054  7C 60 02 78 */	xor r0, r3, r0
/* 802E3058  7C A0 03 79 */	or. r0, r5, r0
/* 802E305C  41 82 00 08 */	beq lbl_802E3064
/* 802E3060  48 00 00 14 */	b lbl_802E3074
lbl_802E3064:
/* 802E3064  48 05 F6 99 */	bl OSGetTime
/* 802E3068  48 00 00 0C */	b lbl_802E3074
lbl_802E306C:
/* 802E306C  38 80 00 00 */	li r4, 0
/* 802E3070  7C 83 23 78 */	mr r3, r4
lbl_802E3074:
/* 802E3074  3C A0 80 3D */	lis r5, c3bcnt@ha
/* 802E3078  38 A5 C6 40 */	addi r5, r5, c3bcnt@l
/* 802E307C  90 85 00 04 */	stw r4, 4(r5)
/* 802E3080  90 65 00 00 */	stw r3, 0(r5)
/* 802E3084  38 60 00 00 */	li r3, 0
/* 802E3088  A8 01 02 94 */	lha r0, 0x294(r1)
/* 802E308C  2C 00 FF FF */	cmpwi r0, -1
/* 802E3090  41 82 00 14 */	beq lbl_802E30A4
/* 802E3094  88 01 02 B0 */	lbz r0, 0x2b0(r1)
/* 802E3098  28 00 00 00 */	cmplwi r0, 0
/* 802E309C  41 82 00 08 */	beq lbl_802E30A4
/* 802E30A0  38 60 00 01 */	li r3, 1
lbl_802E30A4:
/* 802E30A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E30A8  41 82 00 34 */	beq lbl_802E30DC
/* 802E30AC  3C 60 80 3D */	lis r3, c3bcnt@ha
/* 802E30B0  38 83 C6 40 */	addi r4, r3, c3bcnt@l
/* 802E30B4  80 64 00 08 */	lwz r3, 8(r4)
/* 802E30B8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802E30BC  38 00 00 00 */	li r0, 0
/* 802E30C0  7C 85 02 78 */	xor r5, r4, r0
/* 802E30C4  7C 60 02 78 */	xor r0, r3, r0
/* 802E30C8  7C A0 03 79 */	or. r0, r5, r0
/* 802E30CC  41 82 00 08 */	beq lbl_802E30D4
/* 802E30D0  48 00 00 14 */	b lbl_802E30E4
lbl_802E30D4:
/* 802E30D4  48 05 F6 29 */	bl OSGetTime
/* 802E30D8  48 00 00 0C */	b lbl_802E30E4
lbl_802E30DC:
/* 802E30DC  38 80 00 00 */	li r4, 0
/* 802E30E0  7C 83 23 78 */	mr r3, r4
lbl_802E30E4:
/* 802E30E4  3C A0 80 3D */	lis r5, c3bcnt@ha
/* 802E30E8  3B 85 C6 40 */	addi r28, r5, c3bcnt@l
/* 802E30EC  90 9C 00 0C */	stw r4, 0xc(r28)
/* 802E30F0  90 7C 00 08 */	stw r3, 8(r28)
/* 802E30F4  38 60 00 00 */	li r3, 0
/* 802E30F8  A8 01 01 E4 */	lha r0, 0x1e4(r1)
/* 802E30FC  2C 00 FF FF */	cmpwi r0, -1
/* 802E3100  41 82 00 14 */	beq lbl_802E3114
/* 802E3104  88 01 02 00 */	lbz r0, 0x200(r1)
/* 802E3108  28 00 00 00 */	cmplwi r0, 0
/* 802E310C  41 82 00 08 */	beq lbl_802E3114
/* 802E3110  38 60 00 01 */	li r3, 1
lbl_802E3114:
/* 802E3114  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E3118  41 82 00 34 */	beq lbl_802E314C
/* 802E311C  3C 60 80 3D */	lis r3, c3bcnt@ha
/* 802E3120  38 83 C6 40 */	addi r4, r3, c3bcnt@l
/* 802E3124  80 64 00 10 */	lwz r3, 0x10(r4)
/* 802E3128  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802E312C  38 00 00 00 */	li r0, 0
/* 802E3130  7C 85 02 78 */	xor r5, r4, r0
/* 802E3134  7C 60 02 78 */	xor r0, r3, r0
/* 802E3138  7C A0 03 79 */	or. r0, r5, r0
/* 802E313C  41 82 00 08 */	beq lbl_802E3144
/* 802E3140  48 00 00 14 */	b lbl_802E3154
lbl_802E3144:
/* 802E3144  48 05 F5 B9 */	bl OSGetTime
/* 802E3148  48 00 00 0C */	b lbl_802E3154
lbl_802E314C:
/* 802E314C  38 80 00 00 */	li r4, 0
/* 802E3150  7C 83 23 78 */	mr r3, r4
lbl_802E3154:
/* 802E3154  3C A0 80 3D */	lis r5, c3bcnt@ha
/* 802E3158  3B A5 C6 40 */	addi r29, r5, c3bcnt@l
/* 802E315C  90 9D 00 14 */	stw r4, 0x14(r29)
/* 802E3160  90 7D 00 10 */	stw r3, 0x10(r29)
/* 802E3164  38 60 00 00 */	li r3, 0
/* 802E3168  A8 01 01 34 */	lha r0, 0x134(r1)
/* 802E316C  2C 00 FF FF */	cmpwi r0, -1
/* 802E3170  41 82 00 14 */	beq lbl_802E3184
/* 802E3174  88 01 01 50 */	lbz r0, 0x150(r1)
/* 802E3178  28 00 00 00 */	cmplwi r0, 0
/* 802E317C  41 82 00 08 */	beq lbl_802E3184
/* 802E3180  38 60 00 01 */	li r3, 1
lbl_802E3184:
/* 802E3184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E3188  41 82 00 34 */	beq lbl_802E31BC
/* 802E318C  3C 60 80 3D */	lis r3, c3bcnt@ha
/* 802E3190  38 83 C6 40 */	addi r4, r3, c3bcnt@l
/* 802E3194  80 64 00 18 */	lwz r3, 0x18(r4)
/* 802E3198  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 802E319C  38 00 00 00 */	li r0, 0
/* 802E31A0  7C 85 02 78 */	xor r5, r4, r0
/* 802E31A4  7C 60 02 78 */	xor r0, r3, r0
/* 802E31A8  7C A0 03 79 */	or. r0, r5, r0
/* 802E31AC  41 82 00 08 */	beq lbl_802E31B4
/* 802E31B0  48 00 00 14 */	b lbl_802E31C4
lbl_802E31B4:
/* 802E31B4  48 05 F5 49 */	bl OSGetTime
/* 802E31B8  48 00 00 0C */	b lbl_802E31C4
lbl_802E31BC:
/* 802E31BC  38 80 00 00 */	li r4, 0
/* 802E31C0  7C 83 23 78 */	mr r3, r4
lbl_802E31C4:
/* 802E31C4  3C A0 80 3D */	lis r5, c3bcnt@ha
/* 802E31C8  3B E5 C6 40 */	addi r31, r5, c3bcnt@l
/* 802E31CC  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 802E31D0  90 7F 00 18 */	stw r3, 0x18(r31)
/* 802E31D4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E31D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802E31DC  3B C0 00 00 */	li r30, 0
/* 802E31E0  7C 63 F2 78 */	xor r3, r3, r30
/* 802E31E4  7C 00 F2 78 */	xor r0, r0, r30
/* 802E31E8  7C 60 03 79 */	or. r0, r3, r0
/* 802E31EC  41 82 00 20 */	beq lbl_802E320C
/* 802E31F0  48 05 F5 0D */	bl OSGetTime
/* 802E31F4  3C A0 80 3D */	lis r5, c3bcnt@ha
/* 802E31F8  84 05 C6 40 */	lwzu r0, c3bcnt@l(r5)
/* 802E31FC  80 A5 00 04 */	lwz r5, 4(r5)
/* 802E3200  7F C5 20 10 */	subfc r30, r5, r4
/* 802E3204  7F 60 19 10 */	subfe r27, r0, r3
/* 802E3208  48 00 00 08 */	b lbl_802E3210
lbl_802E320C:
/* 802E320C  7F DB F3 78 */	mr r27, r30
lbl_802E3210:
/* 802E3210  80 1C 00 08 */	lwz r0, 8(r28)
/* 802E3214  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802E3218  3B 40 00 00 */	li r26, 0
/* 802E321C  7C 63 D2 78 */	xor r3, r3, r26
/* 802E3220  7C 00 D2 78 */	xor r0, r0, r26
/* 802E3224  7C 60 03 79 */	or. r0, r3, r0
/* 802E3228  41 82 00 1C */	beq lbl_802E3244
/* 802E322C  48 05 F4 D1 */	bl OSGetTime
/* 802E3230  80 1C 00 08 */	lwz r0, 8(r28)
/* 802E3234  80 BC 00 0C */	lwz r5, 0xc(r28)
/* 802E3238  7F 45 20 10 */	subfc r26, r5, r4
/* 802E323C  7F 80 19 10 */	subfe r28, r0, r3
/* 802E3240  48 00 00 08 */	b lbl_802E3248
lbl_802E3244:
/* 802E3244  7F 5C D3 78 */	mr r28, r26
lbl_802E3248:
/* 802E3248  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802E324C  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 802E3250  3A E0 00 00 */	li r23, 0
/* 802E3254  7C 63 BA 78 */	xor r3, r3, r23
/* 802E3258  7C 00 BA 78 */	xor r0, r0, r23
/* 802E325C  7C 60 03 79 */	or. r0, r3, r0
/* 802E3260  41 82 00 1C */	beq lbl_802E327C
/* 802E3264  48 05 F4 99 */	bl OSGetTime
/* 802E3268  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802E326C  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 802E3270  7E E5 20 10 */	subfc r23, r5, r4
/* 802E3274  7F A0 19 10 */	subfe r29, r0, r3
/* 802E3278  48 00 00 08 */	b lbl_802E3280
lbl_802E327C:
/* 802E327C  7E FD BB 78 */	mr r29, r23
lbl_802E3280:
/* 802E3280  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802E3284  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802E3288  3A C0 00 00 */	li r22, 0
/* 802E328C  7C 63 B2 78 */	xor r3, r3, r22
/* 802E3290  7C 00 B2 78 */	xor r0, r0, r22
/* 802E3294  7C 60 03 79 */	or. r0, r3, r0
/* 802E3298  41 82 00 1C */	beq lbl_802E32B4
/* 802E329C  48 05 F4 61 */	bl OSGetTime
/* 802E32A0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802E32A4  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 802E32A8  7E C5 20 10 */	subfc r22, r5, r4
/* 802E32AC  7F E0 19 10 */	subfe r31, r0, r3
/* 802E32B0  48 00 00 08 */	b lbl_802E32B8
lbl_802E32B4:
/* 802E32B4  7E DF B3 78 */	mr r31, r22
lbl_802E32B8:
/* 802E32B8  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 802E32BC  7F C6 F3 78 */	mr r6, r30
/* 802E32C0  7F 65 DB 78 */	mr r5, r27
/* 802E32C4  4B FF D9 A9 */	bl checkResetCallback__10JUTGamePadFx
/* 802E32C8  38 61 02 18 */	addi r3, r1, 0x218
/* 802E32CC  7F 46 D3 78 */	mr r6, r26
/* 802E32D0  7F 85 E3 78 */	mr r5, r28
/* 802E32D4  4B FF D9 99 */	bl checkResetCallback__10JUTGamePadFx
/* 802E32D8  38 61 01 68 */	addi r3, r1, 0x168
/* 802E32DC  7E E6 BB 78 */	mr r6, r23
/* 802E32E0  7F A5 EB 78 */	mr r5, r29
/* 802E32E4  4B FF D9 89 */	bl checkResetCallback__10JUTGamePadFx
/* 802E32E8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802E32EC  7E C6 B3 78 */	mr r6, r22
/* 802E32F0  7F E5 FB 78 */	mr r5, r31
/* 802E32F4  4B FF D9 79 */	bl checkResetCallback__10JUTGamePadFx
/* 802E32F8  28 19 00 00 */	cmplwi r25, 0
/* 802E32FC  41 82 00 24 */	beq lbl_802E3320
/* 802E3300  80 A1 00 D4 */	lwz r5, 0xd4(r1)
/* 802E3304  80 81 01 84 */	lwz r4, 0x184(r1)
/* 802E3308  80 61 02 E4 */	lwz r3, 0x2e4(r1)
/* 802E330C  80 01 02 34 */	lwz r0, 0x234(r1)
/* 802E3310  7C 60 03 78 */	or r0, r3, r0
/* 802E3314  7C 80 03 78 */	or r0, r4, r0
/* 802E3318  7C A0 03 78 */	or r0, r5, r0
/* 802E331C  90 19 00 00 */	stw r0, 0(r25)
lbl_802E3320:
/* 802E3320  28 18 00 00 */	cmplwi r24, 0
/* 802E3324  41 82 00 24 */	beq lbl_802E3348
/* 802E3328  80 A1 00 D0 */	lwz r5, 0xd0(r1)
/* 802E332C  80 81 01 80 */	lwz r4, 0x180(r1)
/* 802E3330  80 61 02 E0 */	lwz r3, 0x2e0(r1)
/* 802E3334  80 01 02 30 */	lwz r0, 0x230(r1)
/* 802E3338  7C 60 03 78 */	or r0, r3, r0
/* 802E333C  7C 80 03 78 */	or r0, r4, r0
/* 802E3340  7C A0 03 78 */	or r0, r5, r0
/* 802E3344  90 18 00 00 */	stw r0, 0(r24)
lbl_802E3348:
/* 802E3348  3A E0 00 01 */	li r23, 1
/* 802E334C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802E3350  38 80 FF FF */	li r4, -1
/* 802E3354  4B FF D4 5D */	bl __dt__10JUTGamePadFv
/* 802E3358  38 61 01 68 */	addi r3, r1, 0x168
/* 802E335C  38 80 FF FF */	li r4, -1
/* 802E3360  4B FF D4 51 */	bl __dt__10JUTGamePadFv
/* 802E3364  38 61 02 18 */	addi r3, r1, 0x218
/* 802E3368  38 80 FF FF */	li r4, -1
/* 802E336C  4B FF D4 45 */	bl __dt__10JUTGamePadFv
/* 802E3370  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 802E3374  38 80 FF FF */	li r4, -1
/* 802E3378  4B FF D4 39 */	bl __dt__10JUTGamePadFv
/* 802E337C  48 00 01 28 */	b lbl_802E34A4
lbl_802E3380:
/* 802E3380  80 9D 00 88 */	lwz r4, 0x88(r29)
/* 802E3384  2C 04 00 00 */	cmpwi r4, 0
/* 802E3388  41 80 00 E4 */	blt lbl_802E346C
/* 802E338C  38 61 00 08 */	addi r3, r1, 8
/* 802E3390  4B FF D3 4D */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 802E3394  3C 60 80 3D */	lis r3, c3bcnt@ha
/* 802E3398  3B 43 C6 40 */	addi r26, r3, c3bcnt@l
/* 802E339C  38 60 00 00 */	li r3, 0
/* 802E33A0  A8 01 00 84 */	lha r0, 0x84(r1)
/* 802E33A4  2C 00 FF FF */	cmpwi r0, -1
/* 802E33A8  41 82 00 14 */	beq lbl_802E33BC
/* 802E33AC  88 01 00 A0 */	lbz r0, 0xa0(r1)
/* 802E33B0  28 00 00 00 */	cmplwi r0, 0
/* 802E33B4  41 82 00 08 */	beq lbl_802E33BC
/* 802E33B8  38 60 00 01 */	li r3, 1
lbl_802E33BC:
/* 802E33BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E33C0  41 82 00 2C */	beq lbl_802E33EC
/* 802E33C4  80 7A 00 00 */	lwz r3, 0(r26)
/* 802E33C8  80 9A 00 04 */	lwz r4, 4(r26)
/* 802E33CC  38 00 00 00 */	li r0, 0
/* 802E33D0  7C 85 02 78 */	xor r5, r4, r0
/* 802E33D4  7C 60 02 78 */	xor r0, r3, r0
/* 802E33D8  7C A0 03 79 */	or. r0, r5, r0
/* 802E33DC  41 82 00 08 */	beq lbl_802E33E4
/* 802E33E0  48 00 00 14 */	b lbl_802E33F4
lbl_802E33E4:
/* 802E33E4  48 05 F3 19 */	bl OSGetTime
/* 802E33E8  48 00 00 0C */	b lbl_802E33F4
lbl_802E33EC:
/* 802E33EC  38 80 00 00 */	li r4, 0
/* 802E33F0  7C 83 23 78 */	mr r3, r4
lbl_802E33F4:
/* 802E33F4  90 9A 00 04 */	stw r4, 4(r26)
/* 802E33F8  90 7A 00 00 */	stw r3, 0(r26)
/* 802E33FC  38 C0 00 00 */	li r6, 0
/* 802E3400  7C 84 32 78 */	xor r4, r4, r6
/* 802E3404  7C 60 32 78 */	xor r0, r3, r6
/* 802E3408  7C 80 03 79 */	or. r0, r4, r0
/* 802E340C  41 82 00 1C */	beq lbl_802E3428
/* 802E3410  48 05 F2 ED */	bl OSGetTime
/* 802E3414  80 1A 00 00 */	lwz r0, 0(r26)
/* 802E3418  80 BA 00 04 */	lwz r5, 4(r26)
/* 802E341C  7C C5 20 10 */	subfc r6, r5, r4
/* 802E3420  7C A0 19 10 */	subfe r5, r0, r3
/* 802E3424  48 00 00 08 */	b lbl_802E342C
lbl_802E3428:
/* 802E3428  7C C5 33 78 */	mr r5, r6
lbl_802E342C:
/* 802E342C  38 61 00 08 */	addi r3, r1, 8
/* 802E3430  4B FF D8 3D */	bl checkResetCallback__10JUTGamePadFx
/* 802E3434  4B FF D4 B1 */	bl read__10JUTGamePadFv
/* 802E3438  28 19 00 00 */	cmplwi r25, 0
/* 802E343C  41 82 00 0C */	beq lbl_802E3448
/* 802E3440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E3444  90 19 00 00 */	stw r0, 0(r25)
lbl_802E3448:
/* 802E3448  28 18 00 00 */	cmplwi r24, 0
/* 802E344C  41 82 00 0C */	beq lbl_802E3458
/* 802E3450  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802E3454  90 18 00 00 */	stw r0, 0(r24)
lbl_802E3458:
/* 802E3458  3A E0 00 01 */	li r23, 1
/* 802E345C  38 61 00 08 */	addi r3, r1, 8
/* 802E3460  38 80 FF FF */	li r4, -1
/* 802E3464  4B FF D3 4D */	bl __dt__10JUTGamePadFv
/* 802E3468  48 00 00 3C */	b lbl_802E34A4
lbl_802E346C:
/* 802E346C  28 03 00 00 */	cmplwi r3, 0
/* 802E3470  41 82 00 34 */	beq lbl_802E34A4
/* 802E3474  4B FF D4 71 */	bl read__10JUTGamePadFv
/* 802E3478  28 19 00 00 */	cmplwi r25, 0
/* 802E347C  41 82 00 10 */	beq lbl_802E348C
/* 802E3480  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 802E3484  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802E3488  90 19 00 00 */	stw r0, 0(r25)
lbl_802E348C:
/* 802E348C  28 18 00 00 */	cmplwi r24, 0
/* 802E3490  41 82 00 10 */	beq lbl_802E34A0
/* 802E3494  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 802E3498  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802E349C  90 18 00 00 */	stw r0, 0(r24)
lbl_802E34A0:
/* 802E34A0  3A E0 00 01 */	li r23, 1
lbl_802E34A4:
/* 802E34A4  7E E3 BB 78 */	mr r3, r23
/* 802E34A8  39 61 03 A0 */	addi r11, r1, 0x3a0
/* 802E34AC  48 07 ED 61 */	bl _restgpr_22
/* 802E34B0  80 01 03 A4 */	lwz r0, 0x3a4(r1)
/* 802E34B4  7C 08 03 A6 */	mtlr r0
/* 802E34B8  38 21 03 A0 */	addi r1, r1, 0x3a0
/* 802E34BC  4E 80 00 20 */	blr 
