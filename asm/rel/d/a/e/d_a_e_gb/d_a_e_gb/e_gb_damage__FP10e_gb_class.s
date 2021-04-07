lbl_806C2FC0:
/* 806C2FC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C2FC4  7C 08 02 A6 */	mflr r0
/* 806C2FC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C2FCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C2FD0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C2FD4  7C 7E 1B 78 */	mr r30, r3
/* 806C2FD8  3C 60 80 6C */	lis r3, lit_3906@ha /* 0x806C74E8@ha */
/* 806C2FDC  3B E3 74 E8 */	addi r31, r3, lit_3906@l /* 0x806C74E8@l */
/* 806C2FE0  38 00 00 23 */	li r0, 0x23
/* 806C2FE4  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 806C2FE8  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 806C2FEC  2C 00 00 01 */	cmpwi r0, 1
/* 806C2FF0  41 82 00 EC */	beq lbl_806C30DC
/* 806C2FF4  40 80 01 24 */	bge lbl_806C3118
/* 806C2FF8  2C 00 00 00 */	cmpwi r0, 0
/* 806C2FFC  40 80 00 08 */	bge lbl_806C3004
/* 806C3000  48 00 01 18 */	b lbl_806C3118
lbl_806C3004:
/* 806C3004  38 00 00 01 */	li r0, 1
/* 806C3008  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C300C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806C3010  A8 1E 06 B8 */	lha r0, 0x6b8(r30)
/* 806C3014  7C 03 00 50 */	subf r0, r3, r0
/* 806C3018  7C 00 07 35 */	extsh. r0, r0
/* 806C301C  40 80 00 10 */	bge lbl_806C302C
/* 806C3020  38 03 20 00 */	addi r0, r3, 0x2000
/* 806C3024  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806C3028  48 00 00 0C */	b lbl_806C3034
lbl_806C302C:
/* 806C302C  38 03 E0 00 */	addi r0, r3, -8192
/* 806C3030  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806C3034:
/* 806C3034  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806C3038  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806C303C  80 63 00 00 */	lwz r3, 0(r3)
/* 806C3040  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806C3044  4B 94 93 99 */	bl mDoMtx_YrotS__FPA4_fs
/* 806C3048  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C304C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806C3050  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806C3054  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806C3058  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806C305C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806C3060  38 61 00 08 */	addi r3, r1, 8
/* 806C3064  38 9E 06 A8 */	addi r4, r30, 0x6a8
/* 806C3068  4B BA DE 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806C306C  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 806C3070  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806C3074  7C 65 1B 78 */	mr r5, r3
/* 806C3078  4B C8 40 19 */	bl PSVECAdd
/* 806C307C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806C3080  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 806C3084  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C3088  FC 00 02 10 */	fabs f0, f0
/* 806C308C  FC 00 00 18 */	frsp f0, f0
/* 806C3090  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806C3094  EC 02 00 32 */	fmuls f0, f2, f0
/* 806C3098  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 806C309C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806C30A0  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 806C30A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C30A8  FC 00 02 10 */	fabs f0, f0
/* 806C30AC  FC 00 00 18 */	frsp f0, f0
/* 806C30B0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806C30B4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806C30B8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 806C30BC  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 806C30C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C30C4  FC 00 02 10 */	fabs f0, f0
/* 806C30C8  FC 00 00 18 */	frsp f0, f0
/* 806C30CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 806C30D0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 806C30D4  38 00 00 0F */	li r0, 0xf
/* 806C30D8  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
lbl_806C30DC:
/* 806C30DC  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 806C30E0  2C 00 00 00 */	cmpwi r0, 0
/* 806C30E4  40 82 00 34 */	bne lbl_806C3118
/* 806C30E8  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806C30EC  2C 00 00 00 */	cmpwi r0, 0
/* 806C30F0  41 81 00 18 */	bgt lbl_806C3108
/* 806C30F4  38 00 00 05 */	li r0, 5
/* 806C30F8  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 806C30FC  38 00 00 00 */	li r0, 0
/* 806C3100  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C3104  48 00 00 14 */	b lbl_806C3118
lbl_806C3108:
/* 806C3108  38 00 00 00 */	li r0, 0
/* 806C310C  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 806C3110  38 00 FF FE */	li r0, -2
/* 806C3114  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_806C3118:
/* 806C3118  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806C311C  C0 3E 06 A8 */	lfs f1, 0x6a8(r30)
/* 806C3120  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C3124  C0 7E 04 F8 */	lfs f3, 0x4f8(r30)
/* 806C3128  4B BA C9 15 */	bl cLib_addCalc2__FPffff
/* 806C312C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806C3130  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 806C3134  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C3138  C0 7E 04 FC */	lfs f3, 0x4fc(r30)
/* 806C313C  4B BA C9 01 */	bl cLib_addCalc2__FPffff
/* 806C3140  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 806C3144  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 806C3148  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C314C  C0 7E 05 00 */	lfs f3, 0x500(r30)
/* 806C3150  4B BA C8 ED */	bl cLib_addCalc2__FPffff
/* 806C3154  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806C3158  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806C315C  38 A0 00 02 */	li r5, 2
/* 806C3160  38 C0 20 00 */	li r6, 0x2000
/* 806C3164  4B BA D4 A5 */	bl cLib_addCalcAngleS2__FPssss
/* 806C3168  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806C316C  38 80 00 00 */	li r4, 0
/* 806C3170  38 A0 00 04 */	li r5, 4
/* 806C3174  38 C0 08 00 */	li r6, 0x800
/* 806C3178  4B BA D4 91 */	bl cLib_addCalcAngleS2__FPssss
/* 806C317C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C3180  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C3184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C3188  7C 08 03 A6 */	mtlr r0
/* 806C318C  38 21 00 20 */	addi r1, r1, 0x20
/* 806C3190  4E 80 00 20 */	blr 
