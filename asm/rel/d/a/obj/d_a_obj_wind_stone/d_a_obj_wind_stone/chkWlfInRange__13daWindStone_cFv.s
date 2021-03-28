lbl_80D381EC:
/* 80D381EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D381F0  7C 08 02 A6 */	mflr r0
/* 80D381F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D381F8  7C 65 1B 78 */	mr r5, r3
/* 80D381FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38200  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D38204  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D38208  28 04 00 00 */	cmplwi r4, 0
/* 80D3820C  40 82 00 0C */	bne lbl_80D38218
/* 80D38210  38 60 00 00 */	li r3, 0
/* 80D38214  48 00 00 54 */	b lbl_80D38268
lbl_80D38218:
/* 80D38218  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D3821C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D38220  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D38224  41 82 00 40 */	beq lbl_80D38264
/* 80D38228  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80D3822C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D38230  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80D38234  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D38238  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80D3823C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D38240  38 61 00 08 */	addi r3, r1, 8
/* 80D38244  38 85 04 D0 */	addi r4, r5, 0x4d0
/* 80D38248  4B 60 F1 54 */	b PSVECSquareDistance
/* 80D3824C  3C 60 80 D4 */	lis r3, lit_4243@ha
/* 80D38250  C0 03 86 24 */	lfs f0, lit_4243@l(r3)
/* 80D38254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D38258  40 80 00 0C */	bge lbl_80D38264
/* 80D3825C  38 60 00 01 */	li r3, 1
/* 80D38260  48 00 00 08 */	b lbl_80D38268
lbl_80D38264:
/* 80D38264  38 60 00 00 */	li r3, 0
lbl_80D38268:
/* 80D38268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3826C  7C 08 03 A6 */	mtlr r0
/* 80D38270  38 21 00 20 */	addi r1, r1, 0x20
/* 80D38274  4E 80 00 20 */	blr 
