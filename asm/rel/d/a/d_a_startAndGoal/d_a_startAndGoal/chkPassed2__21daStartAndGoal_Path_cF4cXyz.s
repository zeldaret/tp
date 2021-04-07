lbl_80D4D7B8:
/* 80D4D7B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4D7BC  7C 08 02 A6 */	mflr r0
/* 80D4D7C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4D7C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4D7C8  4B 61 4A 15 */	bl _savegpr_29
/* 80D4D7CC  7C 7D 1B 78 */	mr r29, r3
/* 80D4D7D0  7C 9E 23 78 */	mr r30, r4
/* 80D4D7D4  3B E0 00 00 */	li r31, 0
/* 80D4D7D8  48 00 00 48 */	b lbl_80D4D820
lbl_80D4D7DC:
/* 80D4D7DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D4D7E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D4D7E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80D4D7E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D4D7EC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D4D7F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D4D7F4  7F A3 EB 78 */	mr r3, r29
/* 80D4D7F8  38 81 00 08 */	addi r4, r1, 8
/* 80D4D7FC  4B 40 32 29 */	bl chkPassed__13daNpcF_Path_cF4cXyz
/* 80D4D800  2C 03 00 00 */	cmpwi r3, 0
/* 80D4D804  41 82 00 24 */	beq lbl_80D4D828
/* 80D4D808  3B E0 00 01 */	li r31, 1
/* 80D4D80C  7F A3 EB 78 */	mr r3, r29
/* 80D4D810  4B 40 33 D1 */	bl setNextIdx__13daNpcF_Path_cFv
/* 80D4D814  2C 03 00 00 */	cmpwi r3, 0
/* 80D4D818  41 82 00 08 */	beq lbl_80D4D820
/* 80D4D81C  3B E0 00 02 */	li r31, 2
lbl_80D4D820:
/* 80D4D820  2C 1F 00 01 */	cmpwi r31, 1
/* 80D4D824  41 80 FF B8 */	blt lbl_80D4D7DC
lbl_80D4D828:
/* 80D4D828  7C 1F 00 D0 */	neg r0, r31
/* 80D4D82C  7C 00 F8 78 */	andc r0, r0, r31
/* 80D4D830  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80D4D834  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4D838  4B 61 49 F1 */	bl _restgpr_29
/* 80D4D83C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4D840  7C 08 03 A6 */	mtlr r0
/* 80D4D844  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4D848  4E 80 00 20 */	blr 
