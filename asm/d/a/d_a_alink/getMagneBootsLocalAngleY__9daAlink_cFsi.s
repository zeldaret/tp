lbl_800E2738:
/* 800E2738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E273C  7C 08 02 A6 */	mflr r0
/* 800E2740  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2744  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E2748  7C 7F 1B 78 */	mr r31, r3
/* 800E274C  2C 05 00 01 */	cmpwi r5, 1
/* 800E2750  41 82 00 20 */	beq lbl_800E2770
/* 800E2754  2C 05 00 02 */	cmpwi r5, 2
/* 800E2758  41 82 00 20 */	beq lbl_800E2778
/* 800E275C  A8 1F 31 14 */	lha r0, 0x3114(r31)
/* 800E2760  2C 00 40 00 */	cmpwi r0, 0x4000
/* 800E2764  41 81 00 14 */	bgt lbl_800E2778
/* 800E2768  2C 00 80 00 */	cmpwi r0, -32768
/* 800E276C  41 82 00 0C */	beq lbl_800E2778
lbl_800E2770:
/* 800E2770  7C 83 23 78 */	mr r3, r4
/* 800E2774  48 00 00 80 */	b lbl_800E27F4
lbl_800E2778:
/* 800E2778  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800E277C  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 800E2780  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 800E2784  7C 65 02 14 */	add r3, r5, r0
/* 800E2788  C0 23 00 04 */	lfs f1, 4(r3)
/* 800E278C  7C 05 04 2E */	lfsx f0, r5, r0
/* 800E2790  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E2794  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2798  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E279C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800E27A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E27A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E27A8  A8 9F 31 16 */	lha r4, 0x3116(r31)
/* 800E27AC  4B F2 9C 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 800E27B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E27B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E27B8  38 80 80 00 */	li r4, -32768
/* 800E27BC  4B F2 9B E1 */	bl mDoMtx_XrotM__FPA4_fs
/* 800E27C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E27C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E27C8  A8 1F 31 16 */	lha r0, 0x3116(r31)
/* 800E27CC  7C 00 00 D0 */	neg r0, r0
/* 800E27D0  7C 04 07 34 */	extsh r4, r0
/* 800E27D4  4B F2 9C 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 800E27D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800E27DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800E27E0  38 81 00 08 */	addi r4, r1, 8
/* 800E27E4  7C 85 23 78 */	mr r5, r4
/* 800E27E8  48 26 45 85 */	bl PSMTXMultVec
/* 800E27EC  38 61 00 08 */	addi r3, r1, 8
/* 800E27F0  48 18 49 39 */	bl atan2sX_Z__4cXyzCFv
lbl_800E27F4:
/* 800E27F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E27F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E27FC  7C 08 03 A6 */	mtlr r0
/* 800E2800  38 21 00 20 */	addi r1, r1, 0x20
/* 800E2804  4E 80 00 20 */	blr 
