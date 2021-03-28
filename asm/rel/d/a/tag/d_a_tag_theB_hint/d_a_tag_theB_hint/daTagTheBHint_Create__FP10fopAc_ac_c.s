lbl_80D63CD8:
/* 80D63CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63CDC  7C 08 02 A6 */	mflr r0
/* 80D63CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63CE8  7C 7F 1B 78 */	mr r31, r3
/* 80D63CEC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D63CF0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D63CF4  40 82 00 1C */	bne lbl_80D63D10
/* 80D63CF8  28 1F 00 00 */	cmplwi r31, 0
/* 80D63CFC  41 82 00 08 */	beq lbl_80D63D04
/* 80D63D00  4B 2B 4E 64 */	b __ct__10fopAc_ac_cFv
lbl_80D63D04:
/* 80D63D04  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D63D08  60 00 00 08 */	ori r0, r0, 8
/* 80D63D0C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D63D10:
/* 80D63D10  3C 60 80 D6 */	lis r3, lit_3831@ha
/* 80D63D14  C0 23 3E 54 */	lfs f1, lit_3831@l(r3)
/* 80D63D18  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D63D1C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D63D20  3C 60 80 D6 */	lis r3, lit_3832@ha
/* 80D63D24  C8 43 3E 5C */	lfd f2, lit_3832@l(r3)
/* 80D63D28  4B 60 8A 58 */	b pow
/* 80D63D2C  FC 00 08 18 */	frsp f0, f1
/* 80D63D30  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80D63D34  38 60 00 04 */	li r3, 4
/* 80D63D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D63D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63D40  7C 08 03 A6 */	mtlr r0
/* 80D63D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63D48  4E 80 00 20 */	blr 
