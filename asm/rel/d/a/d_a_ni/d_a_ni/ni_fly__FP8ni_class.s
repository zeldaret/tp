lbl_8094D7BC:
/* 8094D7BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8094D7C0  7C 08 02 A6 */	mflr r0
/* 8094D7C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8094D7C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8094D7CC  4B A1 4A 10 */	b _savegpr_29
/* 8094D7D0  7C 7F 1B 78 */	mr r31, r3
/* 8094D7D4  3C 80 80 95 */	lis r4, lit_3958@ha
/* 8094D7D8  3B C4 11 C0 */	addi r30, r4, lit_3958@l
/* 8094D7DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8094D7E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8094D7E4  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8094D7E8  A8 03 05 FC */	lha r0, 0x5fc(r3)
/* 8094D7EC  2C 00 00 01 */	cmpwi r0, 1
/* 8094D7F0  41 82 00 54 */	beq lbl_8094D844
/* 8094D7F4  40 80 00 60 */	bge lbl_8094D854
/* 8094D7F8  2C 00 00 00 */	cmpwi r0, 0
/* 8094D7FC  40 80 00 08 */	bge lbl_8094D804
/* 8094D800  48 00 00 54 */	b lbl_8094D854
lbl_8094D804:
/* 8094D804  38 80 00 05 */	li r4, 5
/* 8094D808  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8094D80C  38 A0 00 00 */	li r5, 0
/* 8094D810  FC 40 08 90 */	fmr f2, f1
/* 8094D814  4B FF E4 95 */	bl anm_init__FP8ni_classifUcf
/* 8094D818  A8 7F 05 FC */	lha r3, 0x5fc(r31)
/* 8094D81C  38 03 00 01 */	addi r0, r3, 1
/* 8094D820  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 8094D824  38 00 00 28 */	li r0, 0x28
/* 8094D828  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 8094D82C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8094D830  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 8094D834  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8094D838  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 8094D83C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8094D840  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
lbl_8094D844:
/* 8094D844  7F E3 FB 78 */	mr r3, r31
/* 8094D848  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8094D84C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8094D850  4B FF E5 19 */	bl hane_set__FP8ni_classff
lbl_8094D854:
/* 8094D854  3C 60 80 95 */	lis r3, l_HIO@ha
/* 8094D858  38 63 15 9C */	addi r3, r3, l_HIO@l
/* 8094D85C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8094D860  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8094D864  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8094D868  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8094D86C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094D870  40 80 00 08 */	bge lbl_8094D878
/* 8094D874  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_8094D878:
/* 8094D878  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 8094D87C  2C 00 00 03 */	cmpwi r0, 3
/* 8094D880  40 82 00 24 */	bne lbl_8094D8A4
/* 8094D884  A8 1F 06 04 */	lha r0, 0x604(r31)
/* 8094D888  2C 00 00 00 */	cmpwi r0, 0
/* 8094D88C  40 82 00 18 */	bne lbl_8094D8A4
/* 8094D890  38 00 00 06 */	li r0, 6
/* 8094D894  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8094D898  38 00 00 00 */	li r0, 0
/* 8094D89C  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 8094D8A0  48 00 00 34 */	b lbl_8094D8D4
lbl_8094D8A4:
/* 8094D8A4  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 8094D8A8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8094D8AC  40 82 00 18 */	bne lbl_8094D8C4
/* 8094D8B0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8094D8B4  40 82 00 10 */	bne lbl_8094D8C4
/* 8094D8B8  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 8094D8BC  7C 00 07 75 */	extsb. r0, r0
/* 8094D8C0  41 82 00 14 */	beq lbl_8094D8D4
lbl_8094D8C4:
/* 8094D8C4  38 00 00 08 */	li r0, 8
/* 8094D8C8  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8094D8CC  38 00 00 00 */	li r0, 0
/* 8094D8D0  B0 1F 05 FC */	sth r0, 0x5fc(r31)
lbl_8094D8D4:
/* 8094D8D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8094D8D8  4B A1 49 50 */	b _restgpr_29
/* 8094D8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8094D8E0  7C 08 03 A6 */	mtlr r0
/* 8094D8E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8094D8E8  4E 80 00 20 */	blr 
