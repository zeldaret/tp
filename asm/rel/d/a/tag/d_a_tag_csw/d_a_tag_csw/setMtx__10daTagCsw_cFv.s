lbl_80D56D98:
/* 80D56D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56D9C  7C 08 02 A6 */	mflr r0
/* 80D56DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D56DA8  7C 7F 1B 78 */	mr r31, r3
/* 80D56DAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56DB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56DB4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D56DB8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D56DBC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D56DC0  4B 5E FB 29 */	bl PSMTXTrans
/* 80D56DC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56DC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56DCC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80D56DD0  4B 2B 56 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D56DD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56DD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56DDC  38 9F 05 8C */	addi r4, r31, 0x58c
/* 80D56DE0  4B 5E F6 D1 */	bl PSMTXCopy
/* 80D56DE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56DE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56DEC  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D56DF0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D56DF4  4B 5E F6 BD */	bl PSMTXCopy
/* 80D56DF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56DFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56E00  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D56E04  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D56E08  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D56E0C  EC 42 00 2A */	fadds f2, f2, f0
/* 80D56E10  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D56E14  4B 5E FA D5 */	bl PSMTXTrans
/* 80D56E18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56E1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56E20  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80D56E24  4B 2B 56 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D56E28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56E2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56E30  38 9F 05 F4 */	addi r4, r31, 0x5f4
/* 80D56E34  4B 5E F6 7D */	bl PSMTXCopy
/* 80D56E38  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80D56E3C  28 00 00 00 */	cmplwi r0, 0
/* 80D56E40  41 82 00 58 */	beq lbl_80D56E98
/* 80D56E44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56E48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56E4C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D56E50  C0 1F 08 E8 */	lfs f0, 0x8e8(r31)
/* 80D56E54  EC 21 00 2A */	fadds f1, f1, f0
/* 80D56E58  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D56E5C  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80D56E60  EC 42 00 2A */	fadds f2, f2, f0
/* 80D56E64  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D56E68  C0 1F 08 F0 */	lfs f0, 0x8f0(r31)
/* 80D56E6C  EC 63 00 2A */	fadds f3, f3, f0
/* 80D56E70  4B 5E FA 79 */	bl PSMTXTrans
/* 80D56E74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56E78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56E7C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80D56E80  4B 2B 55 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D56E84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56E88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56E8C  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D56E90  38 84 00 24 */	addi r4, r4, 0x24
/* 80D56E94  4B 5E F6 1D */	bl PSMTXCopy
lbl_80D56E98:
/* 80D56E98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56E9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56EA0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D56EA4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D56EA8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D56EAC  4B 5E FA 3D */	bl PSMTXTrans
/* 80D56EB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56EB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56EB8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80D56EBC  4B 2B 55 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D56EC0  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80D56EC4  3C 60 80 D6 */	lis r3, lit_3725@ha /* 0x80D585D0@ha */
/* 80D56EC8  C0 43 85 D0 */	lfs f2, lit_3725@l(r3)  /* 0x80D585D0@l */
/* 80D56ECC  FC 60 08 90 */	fmr f3, f1
/* 80D56ED0  4B 2B 5F 69 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80D56ED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56ED8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56EDC  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 80D56EE0  4B 5E F5 D1 */	bl PSMTXCopy
/* 80D56EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D56EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56EEC  7C 08 03 A6 */	mtlr r0
/* 80D56EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56EF4  4E 80 00 20 */	blr 
