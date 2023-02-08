lbl_806C8374:
/* 806C8374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C8378  80 03 0B 70 */	lwz r0, 0xb70(r3)
/* 806C837C  2C 00 00 02 */	cmpwi r0, 2
/* 806C8380  41 82 00 0C */	beq lbl_806C838C
/* 806C8384  38 60 00 00 */	li r3, 0
/* 806C8388  48 00 00 68 */	b lbl_806C83F0
lbl_806C838C:
/* 806C838C  80 03 0B 78 */	lwz r0, 0xb78(r3)
/* 806C8390  2C 00 00 02 */	cmpwi r0, 2
/* 806C8394  41 82 00 0C */	beq lbl_806C83A0
/* 806C8398  38 60 00 00 */	li r3, 0
/* 806C839C  48 00 00 54 */	b lbl_806C83F0
lbl_806C83A0:
/* 806C83A0  A8 03 0B 8E */	lha r0, 0xb8e(r3)
/* 806C83A4  3C 60 80 6D */	lis r3, lit_4168@ha /* 0x806CD070@ha */
/* 806C83A8  C8 23 D0 70 */	lfd f1, lit_4168@l(r3)  /* 0x806CD070@l */
/* 806C83AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806C83B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C83B4  3C 00 43 30 */	lis r0, 0x4330
/* 806C83B8  90 01 00 08 */	stw r0, 8(r1)
/* 806C83BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 806C83C0  EC 40 08 28 */	fsubs f2, f0, f1
/* 806C83C4  3C 60 80 6D */	lis r3, lit_4166@ha /* 0x806CD068@ha */
/* 806C83C8  C0 23 D0 68 */	lfs f1, lit_4166@l(r3)  /* 0x806CD068@l */
/* 806C83CC  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806C83D0  38 63 D3 68 */	addi r3, r3, l_HIO@l /* 0x806CD368@l */
/* 806C83D4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 806C83D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C83DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C83E0  7C 00 00 26 */	mfcr r0
/* 806C83E4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 806C83E8  7C 00 00 34 */	cntlzw r0, r0
/* 806C83EC  54 03 D9 7E */	srwi r3, r0, 5
lbl_806C83F0:
/* 806C83F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806C83F4  4E 80 00 20 */	blr 
