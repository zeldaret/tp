lbl_80D63044:
/* 80D63044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63048  7C 08 02 A6 */	mflr r0
/* 80D6304C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63054  7C 7F 1B 78 */	mr r31, r3
/* 80D63058  3C 80 80 D6 */	lis r4, lit_3843@ha
/* 80D6305C  38 84 37 A0 */	addi r4, r4, lit_3843@l
/* 80D63060  C0 24 00 00 */	lfs f1, 0(r4)
/* 80D63064  C0 44 00 04 */	lfs f2, 4(r4)
/* 80D63068  FC 60 08 90 */	fmr f3, f1
/* 80D6306C  C0 84 00 08 */	lfs f4, 8(r4)
/* 80D63070  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 80D63074  FC C0 20 90 */	fmr f6, f4
/* 80D63078  4B 2B 74 D0 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D6307C  38 00 00 00 */	li r0, 0
/* 80D63080  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D63084  38 00 00 06 */	li r0, 6
/* 80D63088  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80D6308C  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80D63090  60 00 00 04 */	ori r0, r0, 4
/* 80D63094  98 1F 04 9A */	stb r0, 0x49a(r31)
/* 80D63098  7F E3 FB 78 */	mr r3, r31
/* 80D6309C  4B FF FF 39 */	bl restart__15daTag_SSDrink_cFv
/* 80D630A0  7F E3 FB 78 */	mr r3, r31
/* 80D630A4  4B FF FD C1 */	bl Execute__15daTag_SSDrink_cFv
/* 80D630A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D630AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D630B0  7C 08 03 A6 */	mtlr r0
/* 80D630B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D630B8  4E 80 00 20 */	blr 
