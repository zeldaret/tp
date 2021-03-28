lbl_80606C6C:
/* 80606C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80606C70  7C 08 02 A6 */	mflr r0
/* 80606C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80606C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80606C7C  4B D5 B5 5C */	b _savegpr_28
/* 80606C80  7C 7C 1B 78 */	mr r28, r3
/* 80606C84  7C BD 2B 78 */	mr r29, r5
/* 80606C88  3B E0 00 00 */	li r31, 0
/* 80606C8C  38 00 00 04 */	li r0, 4
/* 80606C90  7C 09 03 A6 */	mtctr r0
lbl_80606C94:
/* 80606C94  38 1F 26 B8 */	addi r0, r31, 0x26b8
/* 80606C98  7C 1C 00 AE */	lbzx r0, r28, r0
/* 80606C9C  28 00 00 00 */	cmplwi r0, 0
/* 80606CA0  40 82 00 9C */	bne lbl_80606D3C
/* 80606CA4  38 00 00 01 */	li r0, 1
/* 80606CA8  7C 7C FA 14 */	add r3, r28, r31
/* 80606CAC  98 03 26 B8 */	stb r0, 0x26b8(r3)
/* 80606CB0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80606CB4  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80606CB8  7F DC 02 14 */	add r30, r28, r0
/* 80606CBC  D0 1E 26 64 */	stfs f0, 0x2664(r30)
/* 80606CC0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80606CC4  D0 1E 26 68 */	stfs f0, 0x2668(r30)
/* 80606CC8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80606CCC  D0 1E 26 6C */	stfs f0, 0x266c(r30)
/* 80606CD0  7C 83 23 78 */	mr r3, r4
/* 80606CD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80606CD8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80606CDC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80606CE0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80606CE4  4B C6 9F 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80606CE8  57 E0 08 3C */	slwi r0, r31, 1
/* 80606CEC  7C 9C 02 14 */	add r4, r28, r0
/* 80606CF0  B0 64 26 C0 */	sth r3, 0x26c0(r4)
/* 80606CF4  7C 7C FA 14 */	add r3, r28, r31
/* 80606CF8  9B A3 26 BC */	stb r29, 0x26bc(r3)
/* 80606CFC  88 03 26 BC */	lbz r0, 0x26bc(r3)
/* 80606D00  28 00 00 00 */	cmplwi r0, 0
/* 80606D04  40 82 00 1C */	bne lbl_80606D20
/* 80606D08  C0 3E 26 68 */	lfs f1, 0x2668(r30)
/* 80606D0C  3C 60 80 61 */	lis r3, lit_4626@ha
/* 80606D10  C0 03 FE 48 */	lfs f0, lit_4626@l(r3)
/* 80606D14  EC 01 00 2A */	fadds f0, f1, f0
/* 80606D18  D0 1E 26 68 */	stfs f0, 0x2668(r30)
/* 80606D1C  48 00 00 18 */	b lbl_80606D34
lbl_80606D20:
/* 80606D20  C0 3E 26 6C */	lfs f1, 0x266c(r30)
/* 80606D24  3C 60 80 61 */	lis r3, lit_4626@ha
/* 80606D28  C0 03 FE 48 */	lfs f0, lit_4626@l(r3)
/* 80606D2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80606D30  D0 1E 26 6C */	stfs f0, 0x266c(r30)
lbl_80606D34:
/* 80606D34  7F E3 FB 78 */	mr r3, r31
/* 80606D38  48 00 00 10 */	b lbl_80606D48
lbl_80606D3C:
/* 80606D3C  3B FF 00 01 */	addi r31, r31, 1
/* 80606D40  42 00 FF 54 */	bdnz lbl_80606C94
/* 80606D44  38 60 FF FF */	li r3, -1
lbl_80606D48:
/* 80606D48  39 61 00 20 */	addi r11, r1, 0x20
/* 80606D4C  4B D5 B4 D8 */	b _restgpr_28
/* 80606D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80606D54  7C 08 03 A6 */	mtlr r0
/* 80606D58  38 21 00 20 */	addi r1, r1, 0x20
/* 80606D5C  4E 80 00 20 */	blr 
