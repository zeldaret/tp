lbl_80CC2F1C:
/* 80CC2F1C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CC2F20  7C 08 02 A6 */	mflr r0
/* 80CC2F24  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CC2F28  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CC2F2C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CC2F30  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80CC2F34  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80CC2F38  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80CC2F3C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80CC2F40  39 61 00 60 */	addi r11, r1, 0x60
/* 80CC2F44  4B 69 F2 79 */	bl _savegpr_21
/* 80CC2F48  7C 7D 1B 78 */	mr r29, r3
/* 80CC2F4C  3C 60 80 CC */	lis r3, lit_3649@ha /* 0x80CC3AF4@ha */
/* 80CC2F50  3B C3 3A F4 */	addi r30, r3, lit_3649@l /* 0x80CC3AF4@l */
/* 80CC2F54  A8 7D 06 60 */	lha r3, 0x660(r29)
/* 80CC2F58  38 03 00 01 */	addi r0, r3, 1
/* 80CC2F5C  B0 1D 06 60 */	sth r0, 0x660(r29)
/* 80CC2F60  38 60 00 00 */	li r3, 0
/* 80CC2F64  38 00 00 02 */	li r0, 2
/* 80CC2F68  7C 09 03 A6 */	mtctr r0
lbl_80CC2F6C:
/* 80CC2F6C  38 A3 06 66 */	addi r5, r3, 0x666
/* 80CC2F70  7C 9D 2A AE */	lhax r4, r29, r5
/* 80CC2F74  2C 04 00 00 */	cmpwi r4, 0
/* 80CC2F78  41 82 00 0C */	beq lbl_80CC2F84
/* 80CC2F7C  38 04 FF FF */	addi r0, r4, -1
/* 80CC2F80  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_80CC2F84:
/* 80CC2F84  38 63 00 02 */	addi r3, r3, 2
/* 80CC2F88  42 00 FF E4 */	bdnz lbl_80CC2F6C
/* 80CC2F8C  A8 7D 06 6A */	lha r3, 0x66a(r29)
/* 80CC2F90  2C 03 00 00 */	cmpwi r3, 0
/* 80CC2F94  41 82 00 0C */	beq lbl_80CC2FA0
/* 80CC2F98  38 03 FF FF */	addi r0, r3, -1
/* 80CC2F9C  B0 1D 06 6A */	sth r0, 0x66a(r29)
lbl_80CC2FA0:
/* 80CC2FA0  A8 7D 06 74 */	lha r3, 0x674(r29)
/* 80CC2FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CC2FA8  41 82 00 0C */	beq lbl_80CC2FB4
/* 80CC2FAC  38 03 FF FF */	addi r0, r3, -1
/* 80CC2FB0  B0 1D 06 74 */	sth r0, 0x674(r29)
lbl_80CC2FB4:
/* 80CC2FB4  7F A3 EB 78 */	mr r3, r29
/* 80CC2FB8  4B FF FE C1 */	bl action__FP12obj_rw_class
/* 80CC2FBC  A8 9D 06 74 */	lha r4, 0x674(r29)
/* 80CC2FC0  1C 04 17 00 */	mulli r0, r4, 0x1700
/* 80CC2FC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CC2FC8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CC2FCC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CC2FD0  7C 63 04 2E */	lfsx f3, r3, r0
/* 80CC2FD4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80CC2FD8  C8 3E 00 48 */	lfd f1, 0x48(r30)
/* 80CC2FDC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80CC2FE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC2FE4  3C 00 43 30 */	lis r0, 0x4330
/* 80CC2FE8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CC2FEC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CC2FF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CC2FF4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CC2FF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CC2FFC  FC 00 00 1E */	fctiwz f0, f0
/* 80CC3000  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CC3004  82 C1 00 2C */	lwz r22, 0x2c(r1)
/* 80CC3008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC300C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC3010  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80CC3014  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80CC3018  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80CC301C  4B 68 38 CD */	bl PSMTXTrans
/* 80CC3020  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC3024  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC3028  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CC302C  4B 34 94 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CC3030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC3034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC3038  7E C4 B3 78 */	mr r4, r22
/* 80CC303C  4B 34 93 61 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CC3040  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CC3C90@ha */
/* 80CC3044  3B E3 3C 90 */	addi r31, r3, l_HIO@l /* 0x80CC3C90@l */
/* 80CC3048  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CC304C  FC 40 08 90 */	fmr f2, f1
/* 80CC3050  FC 60 08 90 */	fmr f3, f1
/* 80CC3054  4B 34 9D E5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CC3058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC305C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC3060  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 80CC3064  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC3068  4B 68 34 49 */	bl PSMTXCopy
/* 80CC306C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CC3070  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CC3074  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC3078  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CC307C  4B 34 93 61 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CC3080  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80CC3084  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC3088  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CC308C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CC3090  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80CC3094  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CC3098  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC309C  38 81 00 08 */	addi r4, r1, 8
/* 80CC30A0  4B 5A DE 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CC30A4  38 61 00 08 */	addi r3, r1, 8
/* 80CC30A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CC30AC  7C 65 1B 78 */	mr r5, r3
/* 80CC30B0  4B 68 3F E1 */	bl PSVECAdd
/* 80CC30B4  38 7D 07 D8 */	addi r3, r29, 0x7d8
/* 80CC30B8  38 81 00 08 */	addi r4, r1, 8
/* 80CC30BC  4B 5A C5 8D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CC30C0  38 7D 07 D8 */	addi r3, r29, 0x7d8
/* 80CC30C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CC30C8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CC30CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CC30D0  4B 5A C6 39 */	bl SetR__8cM3dGSphFf
/* 80CC30D4  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CC30D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC30DC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80CC30E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CC30E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80CC30E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CC30EC  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC30F0  38 81 00 08 */	addi r4, r1, 8
/* 80CC30F4  4B 5A DD F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CC30F8  38 61 00 08 */	addi r3, r1, 8
/* 80CC30FC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CC3100  7C 65 1B 78 */	mr r5, r3
/* 80CC3104  4B 68 3F 8D */	bl PSVECAdd
/* 80CC3108  38 7D 09 10 */	addi r3, r29, 0x910
/* 80CC310C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CC3110  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CC3114  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CC3118  4B 5A C5 F1 */	bl SetR__8cM3dGSphFf
/* 80CC311C  38 7D 09 10 */	addi r3, r29, 0x910
/* 80CC3120  38 81 00 08 */	addi r4, r1, 8
/* 80CC3124  4B 5A C5 25 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CC3128  88 1D 0E 38 */	lbz r0, 0xe38(r29)
/* 80CC312C  7C 00 07 75 */	extsb. r0, r0
/* 80CC3130  41 82 00 40 */	beq lbl_80CC3170
/* 80CC3134  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80CC3138  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CC313C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CC3140  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC3144  38 7D 07 D8 */	addi r3, r29, 0x7d8
/* 80CC3148  38 81 00 08 */	addi r4, r1, 8
/* 80CC314C  4B 5A C4 FD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CC3150  38 7D 09 10 */	addi r3, r29, 0x910
/* 80CC3154  38 81 00 08 */	addi r4, r1, 8
/* 80CC3158  4B 5A C4 F1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80CC315C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80CC3160  54 00 00 3E */	slwi r0, r0, 0
/* 80CC3164  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80CC3168  38 00 00 00 */	li r0, 0
/* 80CC316C  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80CC3170:
/* 80CC3170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC3174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC3178  3B 03 23 3C */	addi r24, r3, 0x233c
/* 80CC317C  7F 03 C3 78 */	mr r3, r24
/* 80CC3180  38 9D 06 B4 */	addi r4, r29, 0x6b4
/* 80CC3184  4B 5A 1A 25 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CC3188  7F 03 C3 78 */	mr r3, r24
/* 80CC318C  38 9D 07 EC */	addi r4, r29, 0x7ec
/* 80CC3190  4B 5A 1A 19 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CC3194  3A A0 00 00 */	li r21, 0
/* 80CC3198  3B 80 00 00 */	li r28, 0
/* 80CC319C  3B 60 00 00 */	li r27, 0
/* 80CC31A0  3C 60 80 CC */	lis r3, pole_x@ha /* 0x80CC3B54@ha */
/* 80CC31A4  3B 23 3B 54 */	addi r25, r3, pole_x@l /* 0x80CC3B54@l */
/* 80CC31A8  C3 BE 00 0C */	lfs f29, 0xc(r30)
/* 80CC31AC  3C 60 80 CC */	lis r3, pole_z@ha /* 0x80CC3B64@ha */
/* 80CC31B0  3B 43 3B 64 */	addi r26, r3, pole_z@l /* 0x80CC3B64@l */
/* 80CC31B4  C3 DE 00 30 */	lfs f30, 0x30(r30)
/* 80CC31B8  C3 FE 00 38 */	lfs f31, 0x38(r30)
lbl_80CC31BC:
/* 80CC31BC  7C 19 DC 2E */	lfsx f0, r25, r27
/* 80CC31C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CC31C4  D3 A1 00 18 */	stfs f29, 0x18(r1)
/* 80CC31C8  7C 1A DC 2E */	lfsx f0, r26, r27
/* 80CC31CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CC31D0  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC31D4  38 81 00 08 */	addi r4, r1, 8
/* 80CC31D8  4B 5A DD 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CC31DC  38 61 00 08 */	addi r3, r1, 8
/* 80CC31E0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CC31E4  7C 65 1B 78 */	mr r5, r3
/* 80CC31E8  4B 68 3E A9 */	bl PSVECAdd
/* 80CC31EC  7E DD E2 14 */	add r22, r29, r28
/* 80CC31F0  3A F6 0A 48 */	addi r23, r22, 0xa48
/* 80CC31F4  7E E3 BB 78 */	mr r3, r23
/* 80CC31F8  38 81 00 08 */	addi r4, r1, 8
/* 80CC31FC  4B 5A BF E1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CC3200  7E E3 BB 78 */	mr r3, r23
/* 80CC3204  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CC3208  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80CC320C  4B 5A BF F5 */	bl SetR__8cM3dGCylFf
/* 80CC3210  7E E3 BB 78 */	mr r3, r23
/* 80CC3214  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CC3218  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80CC321C  4B 5A BF DD */	bl SetH__8cM3dGCylFf
/* 80CC3220  7F 03 C3 78 */	mr r3, r24
/* 80CC3224  38 96 09 24 */	addi r4, r22, 0x924
/* 80CC3228  4B 5A 19 81 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CC322C  3A B5 00 01 */	addi r21, r21, 1
/* 80CC3230  2C 15 00 04 */	cmpwi r21, 4
/* 80CC3234  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 80CC3238  3B 7B 00 04 */	addi r27, r27, 4
/* 80CC323C  41 80 FF 80 */	blt lbl_80CC31BC
/* 80CC3240  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CC3244  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80CC3248  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CC324C  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80CC3250  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CC3254  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80CC3258  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80CC325C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CC3260  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC3264  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80CC3268  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80CC326C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80CC3270  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80CC3274  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80CC3278  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80CC327C  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80CC3280  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80CC3284  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80CC3288  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC328C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80CC3290  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CC3294  7C 03 07 74 */	extsb r3, r0
/* 80CC3298  4B 36 9D D5 */	bl dComIfGp_getReverb__Fi
/* 80CC329C  7C 65 1B 78 */	mr r5, r3
/* 80CC32A0  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80CC32A4  38 80 00 00 */	li r4, 0
/* 80CC32A8  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 80CC32AC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80CC32B0  7D 89 03 A6 */	mtctr r12
/* 80CC32B4  4E 80 04 21 */	bctrl 
/* 80CC32B8  38 60 00 01 */	li r3, 1
/* 80CC32BC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CC32C0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CC32C4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80CC32C8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80CC32CC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80CC32D0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80CC32D4  39 61 00 60 */	addi r11, r1, 0x60
/* 80CC32D8  4B 69 EF 31 */	bl _restgpr_21
/* 80CC32DC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CC32E0  7C 08 03 A6 */	mtlr r0
/* 80CC32E4  38 21 00 90 */	addi r1, r1, 0x90
/* 80CC32E8  4E 80 00 20 */	blr 
