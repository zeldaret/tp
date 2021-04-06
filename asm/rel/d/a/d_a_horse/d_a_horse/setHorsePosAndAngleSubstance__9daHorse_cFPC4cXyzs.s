lbl_80841468:
/* 80841468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8084146C  7C 08 02 A6 */	mflr r0
/* 80841470  90 01 00 34 */	stw r0, 0x34(r1)
/* 80841474  39 61 00 30 */	addi r11, r1, 0x30
/* 80841478  4B B2 0D 5D */	bl _savegpr_27
/* 8084147C  7C 7B 1B 78 */	mr r27, r3
/* 80841480  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80841484  D0 01 00 08 */	stfs f0, 8(r1)
/* 80841488  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084148C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80841490  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80841494  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80841498  AB A3 04 E6 */	lha r29, 0x4e6(r3)
/* 8084149C  28 04 00 00 */	cmplwi r4, 0
/* 808414A0  41 82 00 34 */	beq lbl_808414D4
/* 808414A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 808414A8  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 808414AC  C0 04 00 04 */	lfs f0, 4(r4)
/* 808414B0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 808414B4  C0 04 00 08 */	lfs f0, 8(r4)
/* 808414B8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 808414BC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 808414C0  D0 1B 04 BC */	stfs f0, 0x4bc(r27)
/* 808414C4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 808414C8  D0 1B 04 C0 */	stfs f0, 0x4c0(r27)
/* 808414CC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 808414D0  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
lbl_808414D4:
/* 808414D4  B0 BB 04 E6 */	sth r5, 0x4e6(r27)
/* 808414D8  B0 BB 04 DE */	sth r5, 0x4de(r27)
/* 808414DC  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 808414E0  B0 1B 16 E8 */	sth r0, 0x16e8(r27)
/* 808414E4  B0 BB 17 0E */	sth r5, 0x170e(r27)
/* 808414E8  B0 BB 17 10 */	sth r5, 0x1710(r27)
/* 808414EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808414F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808414F4  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 808414F8  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 808414FC  C0 7B 04 D8 */	lfs f3, 0x4d8(r27)
/* 80841500  4B B0 53 E9 */	bl PSMTXTrans
/* 80841504  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80841508  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084150C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80841510  7C 1D 00 50 */	subf r0, r29, r0
/* 80841514  7C 04 07 34 */	extsh r4, r0
/* 80841518  4B 7C AF 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 8084151C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80841520  FC 20 00 50 */	fneg f1, f0
/* 80841524  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80841528  FC 40 00 50 */	fneg f2, f0
/* 8084152C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80841530  FC 60 00 50 */	fneg f3, f0
/* 80841534  4B 7C B8 69 */	bl transM__14mDoMtx_stack_cFfff
/* 80841538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084153C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80841540  38 9B 17 A0 */	addi r4, r27, 0x17a0
/* 80841544  7C 85 23 78 */	mr r5, r4
/* 80841548  4B B0 58 25 */	bl PSMTXMultVec
/* 8084154C  3B 9B 11 50 */	addi r28, r27, 0x1150
/* 80841550  3B C0 00 00 */	li r30, 0
/* 80841554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80841558  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8084155C:
/* 8084155C  83 7C 00 00 */	lwz r27, 0(r28)
/* 80841560  3B A0 00 00 */	li r29, 0
/* 80841564  48 00 00 1C */	b lbl_80841580
lbl_80841568:
/* 80841568  7F E3 FB 78 */	mr r3, r31
/* 8084156C  7F 64 DB 78 */	mr r4, r27
/* 80841570  7F 65 DB 78 */	mr r5, r27
/* 80841574  4B B0 57 F9 */	bl PSMTXMultVec
/* 80841578  3B BD 00 01 */	addi r29, r29, 1
/* 8084157C  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_80841580:
/* 80841580  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80841584  7C 1D 00 00 */	cmpw r29, r0
/* 80841588  41 80 FF E0 */	blt lbl_80841568
/* 8084158C  3B DE 00 01 */	addi r30, r30, 1
/* 80841590  2C 1E 00 03 */	cmpwi r30, 3
/* 80841594  3B 9C 00 28 */	addi r28, r28, 0x28
/* 80841598  41 80 FF C4 */	blt lbl_8084155C
/* 8084159C  39 61 00 30 */	addi r11, r1, 0x30
/* 808415A0  4B B2 0C 81 */	bl _restgpr_27
/* 808415A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808415A8  7C 08 03 A6 */	mtlr r0
/* 808415AC  38 21 00 30 */	addi r1, r1, 0x30
/* 808415B0  4E 80 00 20 */	blr 
