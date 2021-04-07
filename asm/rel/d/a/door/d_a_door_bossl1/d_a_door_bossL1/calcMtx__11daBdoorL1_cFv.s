lbl_804E2578:
/* 804E2578  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E257C  7C 08 02 A6 */	mflr r0
/* 804E2580  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E2584  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E2588  7C 7F 1B 78 */	mr r31, r3
/* 804E258C  C0 23 05 A8 */	lfs f1, 0x5a8(r3)
/* 804E2590  3C 80 80 4E */	lis r4, lit_3919@ha /* 0x804E4A54@ha */
/* 804E2594  C0 04 4A 54 */	lfs f0, lit_3919@l(r4)  /* 0x804E4A54@l */
/* 804E2598  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E259C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E25A0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804E25A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804E25A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E25AC  3C 80 80 4E */	lis r4, lit_3920@ha /* 0x804E4A58@ha */
/* 804E25B0  C0 04 4A 58 */	lfs f0, lit_3920@l(r4)  /* 0x804E4A58@l */
/* 804E25B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E25B8  4B FF FB 0D */	bl getDoorType__11daBdoorL1_cFv
/* 804E25BC  2C 03 00 01 */	cmpwi r3, 1
/* 804E25C0  41 82 01 00 */	beq lbl_804E26C0
/* 804E25C4  40 80 01 7C */	bge lbl_804E2740
/* 804E25C8  2C 03 00 00 */	cmpwi r3, 0
/* 804E25CC  40 80 00 08 */	bge lbl_804E25D4
/* 804E25D0  48 00 01 70 */	b lbl_804E2740
lbl_804E25D4:
/* 804E25D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E25D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E25DC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 804E25E0  4B B2 9D FD */	bl mDoMtx_YrotS__FPA4_fs
/* 804E25E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E25E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E25EC  38 81 00 14 */	addi r4, r1, 0x14
/* 804E25F0  7C 85 23 78 */	mr r5, r4
/* 804E25F4  4B E6 47 79 */	bl PSMTXMultVec
/* 804E25F8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804E25FC  4B B2 A7 69 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804E2600  7F E3 FB 78 */	mr r3, r31
/* 804E2604  48 00 1D 29 */	bl checkFront__11daBdoorL1_cFv
/* 804E2608  2C 03 00 00 */	cmpwi r3, 0
/* 804E260C  40 82 00 0C */	bne lbl_804E2618
/* 804E2610  38 61 00 14 */	addi r3, r1, 0x14
/* 804E2614  4B B2 A7 C1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
lbl_804E2618:
/* 804E2618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E261C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E2620  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 804E2624  38 04 7F FF */	addi r0, r4, 0x7fff
/* 804E2628  7C 04 07 34 */	extsh r4, r0
/* 804E262C  4B B2 9E 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 804E2630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E2634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E2638  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 804E263C  38 84 00 24 */	addi r4, r4, 0x24
/* 804E2640  4B E6 3E 71 */	bl PSMTXCopy
/* 804E2644  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804E2648  4B B2 A7 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804E264C  7F E3 FB 78 */	mr r3, r31
/* 804E2650  48 00 1C DD */	bl checkFront__11daBdoorL1_cFv
/* 804E2654  2C 03 00 00 */	cmpwi r3, 0
/* 804E2658  41 82 00 0C */	beq lbl_804E2664
/* 804E265C  38 61 00 14 */	addi r3, r1, 0x14
/* 804E2660  4B B2 A7 75 */	bl transM__14mDoMtx_stack_cFRC4cXyz
lbl_804E2664:
/* 804E2664  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E2668  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E266C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 804E2670  4B B2 9D C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 804E2674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E2678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E267C  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 804E2680  38 84 00 24 */	addi r4, r4, 0x24
/* 804E2684  4B E6 3E 2D */	bl PSMTXCopy
/* 804E2688  7F E3 FB 78 */	mr r3, r31
/* 804E268C  48 00 1C A1 */	bl checkFront__11daBdoorL1_cFv
/* 804E2690  2C 03 00 00 */	cmpwi r3, 0
/* 804E2694  41 82 00 18 */	beq lbl_804E26AC
/* 804E2698  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 804E269C  38 63 00 24 */	addi r3, r3, 0x24
/* 804E26A0  38 9F 07 EC */	addi r4, r31, 0x7ec
/* 804E26A4  4B E6 3E 0D */	bl PSMTXCopy
/* 804E26A8  48 00 00 98 */	b lbl_804E2740
lbl_804E26AC:
/* 804E26AC  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 804E26B0  38 63 00 24 */	addi r3, r3, 0x24
/* 804E26B4  38 9F 07 EC */	addi r4, r31, 0x7ec
/* 804E26B8  4B E6 3D F9 */	bl PSMTXCopy
/* 804E26BC  48 00 00 84 */	b lbl_804E2740
lbl_804E26C0:
/* 804E26C0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804E26C4  4B B2 A6 A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804E26C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E26CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E26D0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 804E26D4  4B B2 9D 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 804E26D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E26DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E26E0  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 804E26E4  38 84 00 24 */	addi r4, r4, 0x24
/* 804E26E8  4B E6 3D C9 */	bl PSMTXCopy
/* 804E26EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E26F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E26F4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 804E26F8  4B B2 9C E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 804E26FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E2700  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E2704  38 81 00 08 */	addi r4, r1, 8
/* 804E2708  7C 85 23 78 */	mr r5, r4
/* 804E270C  4B E6 46 61 */	bl PSMTXMultVec
/* 804E2710  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804E2714  4B B2 A6 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804E2718  38 61 00 08 */	addi r3, r1, 8
/* 804E271C  4B B2 A6 B9 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 804E2720  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E2724  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E2728  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 804E272C  4B B2 9D 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 804E2730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E2734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E2738  38 9F 07 EC */	addi r4, r31, 0x7ec
/* 804E273C  4B E6 3D 75 */	bl PSMTXCopy
lbl_804E2740:
/* 804E2740  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E2744  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E2748  7C 08 03 A6 */	mtlr r0
/* 804E274C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E2750  4E 80 00 20 */	blr 
