lbl_805781FC:
/* 805781FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80578200  7C 08 02 A6 */	mflr r0
/* 80578204  90 01 00 24 */	stw r0, 0x24(r1)
/* 80578208  39 61 00 20 */	addi r11, r1, 0x20
/* 8057820C  4B DE 9F C8 */	b _savegpr_27
/* 80578210  7C 7F 1B 78 */	mr r31, r3
/* 80578214  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 80578218  2C 00 00 02 */	cmpwi r0, 2
/* 8057821C  40 82 00 64 */	bne lbl_80578280
/* 80578220  3B 60 00 00 */	li r27, 0
/* 80578224  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80578228  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 8057822C  48 00 00 44 */	b lbl_80578270
lbl_80578230:
/* 80578230  7F 7C 07 34 */	extsh r28, r27
/* 80578234  1C 1C 00 34 */	mulli r0, r28, 0x34
/* 80578238  7F BF 02 14 */	add r29, r31, r0
/* 8057823C  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80578240  4B A9 4B 24 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80578244  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80578248  4B A9 4C FC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8057824C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80578250  4B A9 4C 20 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80578254  7F C3 F3 78 */	mr r3, r30
/* 80578258  57 84 10 3A */	slwi r4, r28, 2
/* 8057825C  38 04 11 F0 */	addi r0, r4, 0x11f0
/* 80578260  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80578264  38 84 00 24 */	addi r4, r4, 0x24
/* 80578268  4B DC E2 48 */	b PSMTXCopy
/* 8057826C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80578270:
/* 80578270  7F 60 07 34 */	extsh r0, r27
/* 80578274  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80578278  41 80 FF B8 */	blt lbl_80578230
/* 8057827C  48 00 00 28 */	b lbl_805782A4
lbl_80578280:
/* 80578280  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80578284  4B A9 4A E0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80578288  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8057828C  4B A9 4C B8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80578290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80578294  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80578298  80 9F 11 EC */	lwz r4, 0x11ec(r31)
/* 8057829C  38 84 00 24 */	addi r4, r4, 0x24
/* 805782A0  4B DC E2 10 */	b PSMTXCopy
lbl_805782A4:
/* 805782A4  3C 60 80 58 */	lis r3, lit_3931@ha
/* 805782A8  C0 23 8A FC */	lfs f1, lit_3931@l(r3)
/* 805782AC  3C 60 80 58 */	lis r3, lit_3795@ha
/* 805782B0  C0 43 8A CC */	lfs f2, lit_3795@l(r3)
/* 805782B4  FC 60 08 90 */	fmr f3, f1
/* 805782B8  4B A9 4A E4 */	b transM__14mDoMtx_stack_cFfff
/* 805782BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805782C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805782C4  38 9F 05 6C */	addi r4, r31, 0x56c
/* 805782C8  4B DC E1 E8 */	b PSMTXCopy
/* 805782CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805782D0  4B DE 9F 50 */	b _restgpr_27
/* 805782D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805782D8  7C 08 03 A6 */	mtlr r0
/* 805782DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805782E0  4E 80 00 20 */	blr 
