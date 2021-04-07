lbl_80CB2610:
/* 80CB2610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2614  7C 08 02 A6 */	mflr r0
/* 80CB2618  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB261C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2620  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB2624  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB2628  7C 9F 23 78 */	mr r31, r4
/* 80CB262C  41 82 00 5C */	beq lbl_80CB2688
/* 80CB2630  3C 60 80 CB */	lis r3, __vt__12daPoCandle_c@ha /* 0x80CB27D8@ha */
/* 80CB2634  38 63 27 D8 */	addi r3, r3, __vt__12daPoCandle_c@l /* 0x80CB27D8@l */
/* 80CB2638  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CB263C  38 03 00 28 */	addi r0, r3, 0x28
/* 80CB2640  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80CB2644  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80CB2648  41 82 00 10 */	beq lbl_80CB2658
/* 80CB264C  3C 60 80 CB */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80CB27C0@ha */
/* 80CB2650  38 03 27 C0 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80CB27C0@l */
/* 80CB2654  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80CB2658:
/* 80CB2658  28 1E 00 00 */	cmplwi r30, 0
/* 80CB265C  41 82 00 1C */	beq lbl_80CB2678
/* 80CB2660  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80CB2664  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80CB2668  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CB266C  7F C3 F3 78 */	mr r3, r30
/* 80CB2670  38 80 00 00 */	li r4, 0
/* 80CB2674  4B 36 66 19 */	bl __dt__10fopAc_ac_cFv
lbl_80CB2678:
/* 80CB2678  7F E0 07 35 */	extsh. r0, r31
/* 80CB267C  40 81 00 0C */	ble lbl_80CB2688
/* 80CB2680  7F C3 F3 78 */	mr r3, r30
/* 80CB2684  4B 61 C6 B9 */	bl __dl__FPv
lbl_80CB2688:
/* 80CB2688  7F C3 F3 78 */	mr r3, r30
/* 80CB268C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2690  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB2694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2698  7C 08 03 A6 */	mtlr r0
/* 80CB269C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB26A0  4E 80 00 20 */	blr 
