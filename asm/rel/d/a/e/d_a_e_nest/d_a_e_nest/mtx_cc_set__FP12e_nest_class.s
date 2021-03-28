lbl_80501A40:
/* 80501A40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80501A44  7C 08 02 A6 */	mflr r0
/* 80501A48  90 01 00 44 */	stw r0, 0x44(r1)
/* 80501A4C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80501A50  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80501A54  39 61 00 30 */	addi r11, r1, 0x30
/* 80501A58  4B E6 07 84 */	b _savegpr_29
/* 80501A5C  7C 7E 1B 78 */	mr r30, r3
/* 80501A60  3C 60 80 50 */	lis r3, lit_3999@ha
/* 80501A64  3B E3 46 DC */	addi r31, r3, lit_3999@l
/* 80501A68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80501A6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80501A70  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80501A74  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80501A78  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80501A7C  4B E4 4E 6C */	b PSMTXTrans
/* 80501A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80501A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80501A88  A8 9E 0A AE */	lha r4, 0xaae(r30)
/* 80501A8C  4B B0 A9 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80501A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80501A94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80501A98  A8 9E 0A AC */	lha r4, 0xaac(r30)
/* 80501A9C  4B B0 A9 00 */	b mDoMtx_XrotM__FPA4_fs
/* 80501AA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80501AA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80501AA8  A8 9E 0A B0 */	lha r4, 0xab0(r30)
/* 80501AAC  4B B0 AA 20 */	b mDoMtx_ZrotM__FPA4_fs
/* 80501AB0  3C 60 80 50 */	lis r3, l_HIO@ha
/* 80501AB4  38 63 49 60 */	addi r3, r3, l_HIO@l
/* 80501AB8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80501ABC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80501AC0  EF E1 00 32 */	fmuls f31, f1, f0
/* 80501AC4  FC 20 F8 90 */	fmr f1, f31
/* 80501AC8  FC 40 F8 90 */	fmr f2, f31
/* 80501ACC  FC 60 F8 90 */	fmr f3, f31
/* 80501AD0  4B B0 B3 68 */	b scaleM__14mDoMtx_stack_cFfff
/* 80501AD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80501AD8  C0 5E 05 8C */	lfs f2, 0x58c(r30)
/* 80501ADC  C0 1E 05 90 */	lfs f0, 0x590(r30)
/* 80501AE0  EC 42 00 2A */	fadds f2, f2, f0
/* 80501AE4  FC 60 08 90 */	fmr f3, f1
/* 80501AE8  4B B0 B2 B4 */	b transM__14mDoMtx_stack_cFfff
/* 80501AEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80501AF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80501AF4  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80501AF8  38 84 00 24 */	addi r4, r4, 0x24
/* 80501AFC  4B E4 49 B4 */	b PSMTXCopy
/* 80501B00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80501B04  D0 21 00 08 */	stfs f1, 8(r1)
/* 80501B08  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80501B0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80501B10  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80501B14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80501B18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80501B1C  38 81 00 08 */	addi r4, r1, 8
/* 80501B20  38 BE 05 A4 */	addi r5, r30, 0x5a4
/* 80501B24  4B E4 52 48 */	b PSMTXMultVec
/* 80501B28  38 7E 09 2C */	addi r3, r30, 0x92c
/* 80501B2C  38 9E 05 A4 */	addi r4, r30, 0x5a4
/* 80501B30  4B D6 DB 18 */	b SetC__8cM3dGSphFRC4cXyz
/* 80501B34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80501B38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80501B3C  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80501B40  7F A3 EB 78 */	mr r3, r29
/* 80501B44  38 9E 08 08 */	addi r4, r30, 0x808
/* 80501B48  4B D6 30 60 */	b Set__4cCcSFP8cCcD_Obj
/* 80501B4C  38 7E 09 2C */	addi r3, r30, 0x92c
/* 80501B50  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80501B54  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80501B58  4B D6 DB B0 */	b SetR__8cM3dGSphFf
/* 80501B5C  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80501B60  2C 00 00 00 */	cmpwi r0, 0
/* 80501B64  40 82 00 58 */	bne lbl_80501BBC
/* 80501B68  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80501B6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80501B70  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80501B74  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80501B78  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80501B7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80501B80  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80501B84  EC 01 00 2A */	fadds f0, f1, f0
/* 80501B88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80501B8C  38 7E 0A 64 */	addi r3, r30, 0xa64
/* 80501B90  38 81 00 08 */	addi r4, r1, 8
/* 80501B94  4B D6 D6 48 */	b SetC__8cM3dGCylFRC4cXyz
/* 80501B98  38 7E 0A 64 */	addi r3, r30, 0xa64
/* 80501B9C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80501BA0  4B D6 D6 60 */	b SetR__8cM3dGCylFf
/* 80501BA4  38 7E 0A 64 */	addi r3, r30, 0xa64
/* 80501BA8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80501BAC  4B D6 D6 4C */	b SetH__8cM3dGCylFf
/* 80501BB0  7F A3 EB 78 */	mr r3, r29
/* 80501BB4  38 9E 09 40 */	addi r4, r30, 0x940
/* 80501BB8  4B D6 2F F0 */	b Set__4cCcSFP8cCcD_Obj
lbl_80501BBC:
/* 80501BBC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80501BC0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80501BC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80501BC8  4B E6 06 60 */	b _restgpr_29
/* 80501BCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80501BD0  7C 08 03 A6 */	mtlr r0
/* 80501BD4  38 21 00 40 */	addi r1, r1, 0x40
/* 80501BD8  4E 80 00 20 */	blr 
