lbl_80D46B9C:
/* 80D46B9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D46BA0  7C 08 02 A6 */	mflr r0
/* 80D46BA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D46BA8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D46BAC  7C 7F 1B 78 */	mr r31, r3
/* 80D46BB0  3C 60 80 D4 */	lis r3, lit_4430@ha /* 0x80D46CA8@ha */
/* 80D46BB4  C8 23 6C A8 */	lfd f1, lit_4430@l(r3)  /* 0x80D46CA8@l */
/* 80D46BB8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80D46BBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D46BC0  3C 00 43 30 */	lis r0, 0x4330
/* 80D46BC4  90 01 00 08 */	stw r0, 8(r1)
/* 80D46BC8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D46BCC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D46BD0  4B 52 0D 85 */	bl cM_rndF__Ff
/* 80D46BD4  3C 60 80 D4 */	lis r3, lit_4430@ha /* 0x80D46CA8@ha */
/* 80D46BD8  C8 43 6C A8 */	lfd f2, lit_4430@l(r3)  /* 0x80D46CA8@l */
/* 80D46BDC  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80D46BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46BE4  3C 00 43 30 */	lis r0, 0x4330
/* 80D46BE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D46BEC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D46BF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D46BF4  EC 00 08 2A */	fadds f0, f0, f1
/* 80D46BF8  FC 00 00 1E */	fctiwz f0, f0
/* 80D46BFC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D46C00  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80D46C04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D46C08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D46C0C  7C 08 03 A6 */	mtlr r0
/* 80D46C10  38 21 00 30 */	addi r1, r1, 0x30
/* 80D46C14  4E 80 00 20 */	blr 
