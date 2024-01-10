lbl_802B2E3C:
/* 802B2E3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B2E40  7C 08 02 A6 */	mflr r0
/* 802B2E44  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B2E48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B2E4C  7C 7F 1B 78 */	mr r31, r3
/* 802B2E50  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 802B2E54  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000067@ha */
/* 802B2E58  38 04 00 67 */	addi r0, r4, 0x0067 /* 0x01000067@l */
/* 802B2E5C  7C 05 00 00 */	cmpw r5, r0
/* 802B2E60  41 82 03 44 */	beq lbl_802B31A4
/* 802B2E64  40 80 00 94 */	bge lbl_802B2EF8
/* 802B2E68  38 04 00 1C */	addi r0, r4, 0x1c
/* 802B2E6C  7C 05 00 00 */	cmpw r5, r0
/* 802B2E70  41 82 02 30 */	beq lbl_802B30A0
/* 802B2E74  40 80 00 40 */	bge lbl_802B2EB4
/* 802B2E78  38 04 00 12 */	addi r0, r4, 0x12
/* 802B2E7C  7C 05 00 00 */	cmpw r5, r0
/* 802B2E80  41 82 01 0C */	beq lbl_802B2F8C
/* 802B2E84  40 80 00 20 */	bge lbl_802B2EA4
/* 802B2E88  38 04 00 0C */	addi r0, r4, 0xc
/* 802B2E8C  7C 05 00 00 */	cmpw r5, r0
/* 802B2E90  40 80 03 14 */	bge lbl_802B31A4
/* 802B2E94  38 04 00 0A */	addi r0, r4, 0xa
/* 802B2E98  7C 05 00 00 */	cmpw r5, r0
/* 802B2E9C  40 80 02 04 */	bge lbl_802B30A0
/* 802B2EA0  48 00 03 04 */	b lbl_802B31A4
lbl_802B2EA4:
/* 802B2EA4  38 04 00 14 */	addi r0, r4, 0x14
/* 802B2EA8  7C 05 00 00 */	cmpw r5, r0
/* 802B2EAC  41 82 01 58 */	beq lbl_802B3004
/* 802B2EB0  48 00 02 F4 */	b lbl_802B31A4
lbl_802B2EB4:
/* 802B2EB4  38 04 00 52 */	addi r0, r4, 0x52
/* 802B2EB8  7C 05 00 00 */	cmpw r5, r0
/* 802B2EBC  40 80 00 20 */	bge lbl_802B2EDC
/* 802B2EC0  38 04 00 47 */	addi r0, r4, 0x47
/* 802B2EC4  7C 05 00 00 */	cmpw r5, r0
/* 802B2EC8  40 80 02 DC */	bge lbl_802B31A4
/* 802B2ECC  38 04 00 43 */	addi r0, r4, 0x43
/* 802B2ED0  7C 05 00 00 */	cmpw r5, r0
/* 802B2ED4  40 80 01 C4 */	bge lbl_802B3098
/* 802B2ED8  48 00 02 CC */	b lbl_802B31A4
lbl_802B2EDC:
/* 802B2EDC  38 04 00 66 */	addi r0, r4, 0x66
/* 802B2EE0  7C 05 00 00 */	cmpw r5, r0
/* 802B2EE4  40 80 02 38 */	bge lbl_802B311C
/* 802B2EE8  38 04 00 56 */	addi r0, r4, 0x56
/* 802B2EEC  7C 05 00 00 */	cmpw r5, r0
/* 802B2EF0  40 80 02 B4 */	bge lbl_802B31A4
/* 802B2EF4  48 00 02 28 */	b lbl_802B311C
lbl_802B2EF8:
/* 802B2EF8  38 04 00 7E */	addi r0, r4, 0x7e
/* 802B2EFC  7C 05 00 00 */	cmpw r5, r0
/* 802B2F00  41 82 02 A4 */	beq lbl_802B31A4
/* 802B2F04  40 80 00 4C */	bge lbl_802B2F50
/* 802B2F08  38 04 00 74 */	addi r0, r4, 0x74
/* 802B2F0C  7C 05 00 00 */	cmpw r5, r0
/* 802B2F10  41 82 02 94 */	beq lbl_802B31A4
/* 802B2F14  40 80 00 20 */	bge lbl_802B2F34
/* 802B2F18  38 04 00 72 */	addi r0, r4, 0x72
/* 802B2F1C  7C 05 00 00 */	cmpw r5, r0
/* 802B2F20  40 80 01 FC */	bge lbl_802B311C
/* 802B2F24  38 04 00 6A */	addi r0, r4, 0x6a
/* 802B2F28  7C 05 00 00 */	cmpw r5, r0
/* 802B2F2C  40 80 02 78 */	bge lbl_802B31A4
/* 802B2F30  48 00 01 EC */	b lbl_802B311C
lbl_802B2F34:
/* 802B2F34  38 04 00 7C */	addi r0, r4, 0x7c
/* 802B2F38  7C 05 00 00 */	cmpw r5, r0
/* 802B2F3C  40 80 01 E0 */	bge lbl_802B311C
/* 802B2F40  38 04 00 77 */	addi r0, r4, 0x77
/* 802B2F44  7C 05 00 00 */	cmpw r5, r0
/* 802B2F48  40 80 02 5C */	bge lbl_802B31A4
/* 802B2F4C  48 00 01 D0 */	b lbl_802B311C
lbl_802B2F50:
/* 802B2F50  38 04 00 A0 */	addi r0, r4, 0xa0
/* 802B2F54  7C 05 00 00 */	cmpw r5, r0
/* 802B2F58  41 82 01 48 */	beq lbl_802B30A0
/* 802B2F5C  40 80 00 20 */	bge lbl_802B2F7C
/* 802B2F60  38 04 00 84 */	addi r0, r4, 0x84
/* 802B2F64  7C 05 00 00 */	cmpw r5, r0
/* 802B2F68  40 80 02 3C */	bge lbl_802B31A4
/* 802B2F6C  38 04 00 81 */	addi r0, r4, 0x81
/* 802B2F70  7C 05 00 00 */	cmpw r5, r0
/* 802B2F74  40 80 01 2C */	bge lbl_802B30A0
/* 802B2F78  48 00 01 A4 */	b lbl_802B311C
lbl_802B2F7C:
/* 802B2F7C  38 04 00 A4 */	addi r0, r4, 0xa4
/* 802B2F80  7C 05 00 00 */	cmpw r5, r0
/* 802B2F84  41 82 00 10 */	beq lbl_802B2F94
/* 802B2F88  48 00 02 1C */	b lbl_802B31A4
lbl_802B2F8C:
/* 802B2F8C  38 00 00 96 */	li r0, 0x96
/* 802B2F90  98 1F 00 BA */	stb r0, 0xba(r31)
lbl_802B2F94:
/* 802B2F94  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 802B2F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B2F9C  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B2FA0  38 81 00 14 */	addi r4, r1, 0x14
/* 802B2FA4  38 BF 00 08 */	addi r5, r31, 8
/* 802B2FA8  38 C0 00 00 */	li r6, 0
/* 802B2FAC  81 83 00 00 */	lwz r12, 0(r3)
/* 802B2FB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B2FB4  7D 89 03 A6 */	mtctr r12
/* 802B2FB8  4E 80 04 21 */	bctrl 
/* 802B2FBC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 802B2FC0  38 00 00 01 */	li r0, 1
/* 802B2FC4  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B2FC8  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B2FCC  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B2FD0  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802B2FD4  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B2FD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B2FDC  3C 00 43 30 */	lis r0, 0x4330
/* 802B2FE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B2FE4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B2FE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B2FEC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B2FF0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802B2FF4  D0 7F 00 5C */	stfs f3, 0x5c(r31)
/* 802B2FF8  38 00 FF FF */	li r0, -1
/* 802B2FFC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802B3000  48 00 01 A4 */	b lbl_802B31A4
lbl_802B3004:
/* 802B3004  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802B3008  28 00 00 00 */	cmplwi r0, 0
/* 802B300C  40 82 00 30 */	bne lbl_802B303C
/* 802B3010  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802B3014  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B3018  38 81 00 10 */	addi r4, r1, 0x10
/* 802B301C  38 BF 00 08 */	addi r5, r31, 8
/* 802B3020  38 C0 00 00 */	li r6, 0
/* 802B3024  81 83 00 00 */	lwz r12, 0(r3)
/* 802B3028  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B302C  7D 89 03 A6 */	mtctr r12
/* 802B3030  4E 80 04 21 */	bctrl 
/* 802B3034  38 00 00 19 */	li r0, 0x19
/* 802B3038  98 1F 00 BA */	stb r0, 0xba(r31)
lbl_802B303C:
/* 802B303C  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802B3040  28 00 00 01 */	cmplwi r0, 1
/* 802B3044  40 82 01 60 */	bne lbl_802B31A4
/* 802B3048  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 802B304C  38 00 00 01 */	li r0, 1
/* 802B3050  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B3054  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B3058  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B305C  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802B3060  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3064  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3068  3C 00 43 30 */	lis r0, 0x4330
/* 802B306C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3070  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3074  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3078  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B307C  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802B3080  D0 7F 00 5C */	stfs f3, 0x5c(r31)
/* 802B3084  38 00 FF FF */	li r0, -1
/* 802B3088  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802B308C  38 00 00 00 */	li r0, 0
/* 802B3090  98 1F 00 BA */	stb r0, 0xba(r31)
/* 802B3094  48 00 01 10 */	b lbl_802B31A4
lbl_802B3098:
/* 802B3098  38 80 00 00 */	li r4, 0
/* 802B309C  4B FF F9 ED */	bl changeFishingBgm__8Z2SeqMgrFl
lbl_802B30A0:
/* 802B30A0  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802B30A4  28 00 00 00 */	cmplwi r0, 0
/* 802B30A8  40 82 00 FC */	bne lbl_802B31A4
/* 802B30AC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 802B30B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B30B4  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B30B8  38 81 00 0C */	addi r4, r1, 0xc
/* 802B30BC  38 BF 00 08 */	addi r5, r31, 8
/* 802B30C0  38 C0 00 00 */	li r6, 0
/* 802B30C4  81 83 00 00 */	lwz r12, 0(r3)
/* 802B30C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B30CC  7D 89 03 A6 */	mtctr r12
/* 802B30D0  4E 80 04 21 */	bctrl 
/* 802B30D4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 802B30D8  38 00 00 01 */	li r0, 1
/* 802B30DC  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B30E0  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B30E4  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B30E8  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802B30EC  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B30F0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B30F4  3C 00 43 30 */	lis r0, 0x4330
/* 802B30F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B30FC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3100  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3104  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3108  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802B310C  D0 7F 00 5C */	stfs f3, 0x5c(r31)
/* 802B3110  38 00 FF FF */	li r0, -1
/* 802B3114  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802B3118  48 00 00 8C */	b lbl_802B31A4
lbl_802B311C:
/* 802B311C  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802B3120  28 00 00 00 */	cmplwi r0, 0
/* 802B3124  40 82 00 4C */	bne lbl_802B3170
/* 802B3128  38 00 00 32 */	li r0, 0x32
/* 802B312C  98 1F 00 BA */	stb r0, 0xba(r31)
/* 802B3130  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 802B3134  38 00 00 1E */	li r0, 0x1e
/* 802B3138  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B313C  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B3140  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B3144  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802B3148  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B314C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3150  3C 00 43 30 */	lis r0, 0x4330
/* 802B3154  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3158  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B315C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3160  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B3164  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802B3168  D0 7F 00 5C */	stfs f3, 0x5c(r31)
/* 802B316C  48 00 00 38 */	b lbl_802B31A4
lbl_802B3170:
/* 802B3170  28 00 00 01 */	cmplwi r0, 1
/* 802B3174  40 82 00 30 */	bne lbl_802B31A4
/* 802B3178  90 A1 00 08 */	stw r5, 8(r1)
/* 802B317C  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B3180  38 81 00 08 */	addi r4, r1, 8
/* 802B3184  38 BF 00 08 */	addi r5, r31, 8
/* 802B3188  38 C0 00 00 */	li r6, 0
/* 802B318C  81 83 00 00 */	lwz r12, 0(r3)
/* 802B3190  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B3194  7D 89 03 A6 */	mtctr r12
/* 802B3198  4E 80 04 21 */	bctrl 
/* 802B319C  38 00 FF FF */	li r0, -1
/* 802B31A0  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_802B31A4:
/* 802B31A4  38 60 00 00 */	li r3, 0
/* 802B31A8  80 1F 00 08 */	lwz r0, 8(r31)
/* 802B31AC  28 00 00 00 */	cmplwi r0, 0
/* 802B31B0  40 82 00 10 */	bne lbl_802B31C0
/* 802B31B4  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802B31B8  28 00 00 00 */	cmplwi r0, 0
/* 802B31BC  41 82 00 08 */	beq lbl_802B31C4
lbl_802B31C0:
/* 802B31C0  38 60 00 01 */	li r3, 1
lbl_802B31C4:
/* 802B31C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B31C8  40 82 00 8C */	bne lbl_802B3254
/* 802B31CC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B31D0  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802B31D4  28 00 00 00 */	cmplwi r0, 0
/* 802B31D8  41 82 00 0C */	beq lbl_802B31E4
/* 802B31DC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 802B31E0  48 00 00 08 */	b lbl_802B31E8
lbl_802B31E4:
/* 802B31E4  C0 1F 00 54 */	lfs f0, 0x54(r31)
lbl_802B31E8:
/* 802B31E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802B31EC  41 82 00 68 */	beq lbl_802B3254
/* 802B31F0  88 0D 82 E1 */	lbz r0, struct_80450861+0x0(r13)
/* 802B31F4  28 00 00 00 */	cmplwi r0, 0
/* 802B31F8  41 82 00 40 */	beq lbl_802B3238
/* 802B31FC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 802B3200  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B3204  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B3208  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B320C  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802B3210  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B3214  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B3218  3C 00 43 30 */	lis r0, 0x4330
/* 802B321C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B3220  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B3224  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B3228  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B322C  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802B3230  D0 7F 00 5C */	stfs f3, 0x5c(r31)
/* 802B3234  48 00 00 20 */	b lbl_802B3254
lbl_802B3238:
/* 802B3238  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B323C  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 802B3240  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B3244  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802B3248  38 00 00 00 */	li r0, 0
/* 802B324C  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802B3250  D0 1F 00 5C */	stfs f0, 0x5c(r31)
lbl_802B3254:
/* 802B3254  88 7F 00 BA */	lbz r3, 0xba(r31)
/* 802B3258  28 03 00 00 */	cmplwi r3, 0
/* 802B325C  41 82 00 0C */	beq lbl_802B3268
/* 802B3260  38 03 FF FF */	addi r0, r3, -1
/* 802B3264  98 1F 00 BA */	stb r0, 0xba(r31)
lbl_802B3268:
/* 802B3268  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B326C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B3270  7C 08 03 A6 */	mtlr r0
/* 802B3274  38 21 00 30 */	addi r1, r1, 0x30
/* 802B3278  4E 80 00 20 */	blr 
