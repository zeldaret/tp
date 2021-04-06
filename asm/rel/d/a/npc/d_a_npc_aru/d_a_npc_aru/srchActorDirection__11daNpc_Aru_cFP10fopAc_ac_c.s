lbl_80953C84:
/* 80953C84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80953C88  7C 08 02 A6 */	mflr r0
/* 80953C8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80953C90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80953C94  7C 7F 1B 78 */	mr r31, r3
/* 80953C98  4B 6C 6A 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80953C9C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80953CA0  7C 00 18 50 */	subf r0, r0, r3
/* 80953CA4  7C 1F 07 34 */	extsh r31, r0
/* 80953CA8  7F E3 FB 78 */	mr r3, r31
/* 80953CAC  4B A1 14 25 */	bl abs
/* 80953CB0  7C 65 07 34 */	extsh r5, r3
/* 80953CB4  3C 60 80 95 */	lis r3, lit_5185@ha /* 0x809577F8@ha */
/* 80953CB8  C0 23 77 F8 */	lfs f1, lit_5185@l(r3)  /* 0x809577F8@l */
/* 80953CBC  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha /* 0x809576D0@ha */
/* 80953CC0  38 63 76 D0 */	addi r3, r3, m__17daNpc_Aru_Param_c@l /* 0x809576D0@l */
/* 80953CC4  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 80953CC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80953CCC  FC 00 00 1E */	fctiwz f0, f0
/* 80953CD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80953CD4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80953CD8  7C 80 07 34 */	extsh r0, r4
/* 80953CDC  7C 05 00 00 */	cmpw r5, r0
/* 80953CE0  40 80 00 1C */	bge lbl_80953CFC
/* 80953CE4  7F E0 07 35 */	extsh. r0, r31
/* 80953CE8  40 81 00 0C */	ble lbl_80953CF4
/* 80953CEC  38 00 00 07 */	li r0, 7
/* 80953CF0  48 00 00 50 */	b lbl_80953D40
lbl_80953CF4:
/* 80953CF4  38 00 00 01 */	li r0, 1
/* 80953CF8  48 00 00 48 */	b lbl_80953D40
lbl_80953CFC:
/* 80953CFC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80953D00  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80953D04  7C 04 00 50 */	subf r0, r4, r0
/* 80953D08  7C 00 07 34 */	extsh r0, r0
/* 80953D0C  7C 00 28 00 */	cmpw r0, r5
/* 80953D10  40 80 00 1C */	bge lbl_80953D2C
/* 80953D14  7F E0 07 35 */	extsh. r0, r31
/* 80953D18  40 81 00 0C */	ble lbl_80953D24
/* 80953D1C  38 00 00 05 */	li r0, 5
/* 80953D20  48 00 00 20 */	b lbl_80953D40
lbl_80953D24:
/* 80953D24  38 00 00 03 */	li r0, 3
/* 80953D28  48 00 00 18 */	b lbl_80953D40
lbl_80953D2C:
/* 80953D2C  7F E0 07 35 */	extsh. r0, r31
/* 80953D30  40 81 00 0C */	ble lbl_80953D3C
/* 80953D34  38 00 00 06 */	li r0, 6
/* 80953D38  48 00 00 08 */	b lbl_80953D40
lbl_80953D3C:
/* 80953D3C  38 00 00 02 */	li r0, 2
lbl_80953D40:
/* 80953D40  7C 03 07 34 */	extsh r3, r0
/* 80953D44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80953D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80953D4C  7C 08 03 A6 */	mtlr r0
/* 80953D50  38 21 00 20 */	addi r1, r1, 0x20
/* 80953D54  4E 80 00 20 */	blr 
