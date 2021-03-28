lbl_80CDED9C:
/* 80CDED9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDEDA0  7C 08 02 A6 */	mflr r0
/* 80CDEDA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDEDA8  7C 65 1B 78 */	mr r5, r3
/* 80CDEDAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDEDB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDEDB4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80CDEDB8  28 04 00 00 */	cmplwi r4, 0
/* 80CDEDBC  40 82 00 0C */	bne lbl_80CDEDC8
/* 80CDEDC0  38 60 00 00 */	li r3, 0
/* 80CDEDC4  48 00 00 54 */	b lbl_80CDEE18
lbl_80CDEDC8:
/* 80CDEDC8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CDEDCC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80CDEDD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80CDEDD4  41 82 00 40 */	beq lbl_80CDEE14
/* 80CDEDD8  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80CDEDDC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CDEDE0  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80CDEDE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CDEDE8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80CDEDEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDEDF0  38 61 00 08 */	addi r3, r1, 8
/* 80CDEDF4  38 85 04 D0 */	addi r4, r5, 0x4d0
/* 80CDEDF8  4B 66 85 A4 */	b PSVECSquareDistance
/* 80CDEDFC  3C 60 80 CE */	lis r3, lit_4350@ha
/* 80CDEE00  C0 03 EF 10 */	lfs f0, lit_4350@l(r3)
/* 80CDEE04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CDEE08  40 80 00 0C */	bge lbl_80CDEE14
/* 80CDEE0C  38 60 00 01 */	li r3, 1
/* 80CDEE10  48 00 00 08 */	b lbl_80CDEE18
lbl_80CDEE14:
/* 80CDEE14  38 60 00 00 */	li r3, 0
lbl_80CDEE18:
/* 80CDEE18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDEE1C  7C 08 03 A6 */	mtlr r0
/* 80CDEE20  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDEE24  4E 80 00 20 */	blr 
