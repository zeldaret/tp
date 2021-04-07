lbl_80C34058:
/* 80C34058  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3405C  7C 08 02 A6 */	mflr r0
/* 80C34060  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C34064  39 61 00 30 */	addi r11, r1, 0x30
/* 80C34068  4B 72 E1 71 */	bl _savegpr_28
/* 80C3406C  7C 7F 1B 78 */	mr r31, r3
/* 80C34070  7C BE 2B 78 */	mr r30, r5
/* 80C34074  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 80C34078  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80C3407C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C34080  1F BC 00 30 */	mulli r29, r28, 0x30
/* 80C34084  7C 60 EA 14 */	add r3, r0, r29
/* 80C34088  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3408C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34090  4B 71 24 21 */	bl PSMTXCopy
/* 80C34094  2C 1C 00 01 */	cmpwi r28, 1
/* 80C34098  41 82 00 C0 */	beq lbl_80C34158
/* 80C3409C  40 80 00 10 */	bge lbl_80C340AC
/* 80C340A0  2C 1C 00 00 */	cmpwi r28, 0
/* 80C340A4  40 80 00 14 */	bge lbl_80C340B8
/* 80C340A8  48 00 01 98 */	b lbl_80C34240
lbl_80C340AC:
/* 80C340AC  2C 1C 00 03 */	cmpwi r28, 3
/* 80C340B0  40 80 01 90 */	bge lbl_80C34240
/* 80C340B4  48 00 01 44 */	b lbl_80C341F8
lbl_80C340B8:
/* 80C340B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C340BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C340C0  A8 9F 05 6E */	lha r4, 0x56e(r31)
/* 80C340C4  4B 3D 84 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C340C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C340CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C340D0  A8 9F 05 84 */	lha r4, 0x584(r31)
/* 80C340D4  4B 3D 83 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C340D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C340DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C340E0  A8 1F 05 6E */	lha r0, 0x56e(r31)
/* 80C340E4  3C 80 80 C3 */	lis r4, lit_3809@ha /* 0x80C34EF4@ha */
/* 80C340E8  C8 64 4E F4 */	lfd f3, lit_3809@l(r4)  /* 0x80C34EF4@l */
/* 80C340EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C340F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C340F4  3C A0 43 30 */	lis r5, 0x4330
/* 80C340F8  90 A1 00 08 */	stw r5, 8(r1)
/* 80C340FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C34100  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C34104  3C 80 80 C3 */	lis r4, lit_3806@ha /* 0x80C34EEC@ha */
/* 80C34108  C0 24 4E EC */	lfs f1, lit_3806@l(r4)  /* 0x80C34EEC@l */
/* 80C3410C  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 80C34110  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C34114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34118  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80C3411C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C34120  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C34124  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C34128  EC 02 00 2A */	fadds f0, f2, f0
/* 80C3412C  FC 00 00 1E */	fctiwz f0, f0
/* 80C34130  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C34134  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80C34138  4B 3D 82 65 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C3413C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C34140  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34144  A8 1F 05 84 */	lha r0, 0x584(r31)
/* 80C34148  7C 00 00 D0 */	neg r0, r0
/* 80C3414C  7C 04 07 34 */	extsh r4, r0
/* 80C34150  4B 3D 82 E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C34154  48 00 00 EC */	b lbl_80C34240
lbl_80C34158:
/* 80C34158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3415C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34160  A8 9F 05 70 */	lha r4, 0x570(r31)
/* 80C34164  4B 3D 83 69 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C34168  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3416C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34170  A8 9F 05 84 */	lha r4, 0x584(r31)
/* 80C34174  4B 3D 82 C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C34178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3417C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34180  A8 1F 05 70 */	lha r0, 0x570(r31)
/* 80C34184  3C 80 80 C3 */	lis r4, lit_3809@ha /* 0x80C34EF4@ha */
/* 80C34188  C8 64 4E F4 */	lfd f3, lit_3809@l(r4)  /* 0x80C34EF4@l */
/* 80C3418C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C34190  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C34194  3C A0 43 30 */	lis r5, 0x4330
/* 80C34198  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80C3419C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C341A0  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C341A4  3C 80 80 C3 */	lis r4, lit_3807@ha /* 0x80C34EF0@ha */
/* 80C341A8  C0 24 4E F0 */	lfs f1, lit_3807@l(r4)  /* 0x80C34EF0@l */
/* 80C341AC  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 80C341B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C341B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C341B8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80C341BC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C341C0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C341C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C341C8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C341CC  FC 00 00 1E */	fctiwz f0, f0
/* 80C341D0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C341D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C341D8  4B 3D 81 C5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C341DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C341E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C341E4  A8 1F 05 84 */	lha r0, 0x584(r31)
/* 80C341E8  7C 00 00 D0 */	neg r0, r0
/* 80C341EC  7C 04 07 34 */	extsh r4, r0
/* 80C341F0  4B 3D 82 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C341F4  48 00 00 4C */	b lbl_80C34240
lbl_80C341F8:
/* 80C341F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C341FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34200  A8 9F 05 72 */	lha r4, 0x572(r31)
/* 80C34204  4B 3D 82 C9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C34208  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3420C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34210  A8 9F 05 84 */	lha r4, 0x584(r31)
/* 80C34214  4B 3D 82 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C34218  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3421C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34220  A8 9F 05 72 */	lha r4, 0x572(r31)
/* 80C34224  4B 3D 81 79 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C34228  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3422C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34230  A8 1F 05 84 */	lha r0, 0x584(r31)
/* 80C34234  7C 00 00 D0 */	neg r0, r0
/* 80C34238  7C 04 07 34 */	extsh r4, r0
/* 80C3423C  4B 3D 81 F9 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80C34240:
/* 80C34240  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C34244  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34248  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80C3424C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C34250  7C 80 EA 14 */	add r4, r0, r29
/* 80C34254  4B 71 22 5D */	bl PSMTXCopy
/* 80C34258  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3425C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C34260  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80C34264  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80C34268  4B 71 22 49 */	bl PSMTXCopy
/* 80C3426C  38 60 00 01 */	li r3, 1
/* 80C34270  39 61 00 30 */	addi r11, r1, 0x30
/* 80C34274  4B 72 DF B1 */	bl _restgpr_28
/* 80C34278  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3427C  7C 08 03 A6 */	mtlr r0
/* 80C34280  38 21 00 30 */	addi r1, r1, 0x30
/* 80C34284  4E 80 00 20 */	blr 
