lbl_800DC79C:
/* 800DC79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DC7A0  7C 08 02 A6 */	mflr r0
/* 800DC7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DC7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DC7AC  93 C1 00 08 */	stw r30, 8(r1)
/* 800DC7B0  7C 7E 1B 78 */	mr r30, r3
/* 800DC7B4  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800DC7B8  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800DC7BC  40 82 00 F0 */	bne lbl_800DC8AC
/* 800DC7C0  3B E0 00 00 */	li r31, 0
/* 800DC7C4  39 40 00 00 */	li r10, 0
/* 800DC7C8  38 60 00 00 */	li r3, 0
/* 800DC7CC  38 C0 FF FF */	li r6, -1
/* 800DC7D0  7C 65 1B 78 */	mr r5, r3
/* 800DC7D4  38 00 00 10 */	li r0, 0x10
/* 800DC7D8  7C 09 03 A6 */	mtctr r0
lbl_800DC7DC:
/* 800DC7DC  39 03 28 B0 */	addi r8, r3, 0x28b0
/* 800DC7E0  7C FE 40 2E */	lwzx r7, r30, r8
/* 800DC7E4  3C 07 00 01 */	addis r0, r7, 1
/* 800DC7E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 800DC7EC  41 82 00 34 */	beq lbl_800DC820
/* 800DC7F0  39 2A 2F 7C */	addi r9, r10, 0x2f7c
/* 800DC7F4  7C FE 48 AE */	lbzx r7, r30, r9
/* 800DC7F8  28 07 00 00 */	cmplwi r7, 0
/* 800DC7FC  41 82 00 0C */	beq lbl_800DC808
/* 800DC800  2C 04 00 00 */	cmpwi r4, 0
/* 800DC804  41 82 00 14 */	beq lbl_800DC818
lbl_800DC808:
/* 800DC808  7C DE 41 2E */	stwx r6, r30, r8
/* 800DC80C  7C BE 49 AE */	stbx r5, r30, r9
/* 800DC810  3B FF 00 01 */	addi r31, r31, 1
/* 800DC814  48 00 00 0C */	b lbl_800DC820
lbl_800DC818:
/* 800DC818  38 07 FF FF */	addi r0, r7, -1
/* 800DC81C  7C 1E 49 AE */	stbx r0, r30, r9
lbl_800DC820:
/* 800DC820  39 4A 00 01 */	addi r10, r10, 1
/* 800DC824  38 63 00 04 */	addi r3, r3, 4
/* 800DC828  42 00 FF B4 */	bdnz lbl_800DC7DC
/* 800DC82C  7F E0 07 35 */	extsh. r0, r31
/* 800DC830  41 82 00 7C */	beq lbl_800DC8AC
/* 800DC834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DC838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DC83C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800DC840  28 00 00 FF */	cmplwi r0, 0xff
/* 800DC844  41 82 00 5C */	beq lbl_800DC8A0
/* 800DC848  38 60 00 43 */	li r3, 0x43
/* 800DC84C  38 80 00 01 */	li r4, 1
/* 800DC850  4B FB B6 91 */	bl checkItemGet__FUci
/* 800DC854  2C 03 00 00 */	cmpwi r3, 0
/* 800DC858  41 82 00 48 */	beq lbl_800DC8A0
/* 800DC85C  7F E0 07 34 */	extsh r0, r31
/* 800DC860  2C 00 00 01 */	cmpwi r0, 1
/* 800DC864  38 80 00 0E */	li r4, 0xe
/* 800DC868  40 82 00 08 */	bne lbl_800DC870
/* 800DC86C  38 80 00 11 */	li r4, 0x11
lbl_800DC870:
/* 800DC870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DC874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DC878  A8 03 5D F4 */	lha r0, 0x5df4(r3)
/* 800DC87C  7C 00 FA 14 */	add r0, r0, r31
/* 800DC880  B0 03 5D F4 */	sth r0, 0x5df4(r3)
/* 800DC884  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800DC888  38 A0 FF FF */	li r5, -1
/* 800DC88C  38 C0 00 00 */	li r6, 0
/* 800DC890  38 E0 00 00 */	li r7, 0
/* 800DC894  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DC898  FC 40 08 90 */	fmr f2, f1
/* 800DC89C  4B F3 F9 61 */	bl fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff
lbl_800DC8A0:
/* 800DC8A0  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800DC8A4  60 00 00 01 */	ori r0, r0, 1
/* 800DC8A8  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_800DC8AC:
/* 800DC8AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DC8B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DC8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DC8B8  7C 08 03 A6 */	mtlr r0
/* 800DC8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800DC8C0  4E 80 00 20 */	blr 
