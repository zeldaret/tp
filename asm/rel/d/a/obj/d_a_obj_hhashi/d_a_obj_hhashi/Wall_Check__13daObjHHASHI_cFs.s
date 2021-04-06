lbl_80580358:
/* 80580358  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8058035C  7C 08 02 A6 */	mflr r0
/* 80580360  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80580364  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80580368  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8058036C  7C 7F 1B 78 */	mr r31, r3
/* 80580370  7C 9E 23 78 */	mr r30, r4
/* 80580374  38 61 00 20 */	addi r3, r1, 0x20
/* 80580378  4B AF 78 F1 */	bl __ct__11dBgS_LinChkFv
/* 8058037C  7F C0 07 34 */	extsh r0, r30
/* 80580380  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80580384  7C 7F 02 14 */	add r3, r31, r0
/* 80580388  C0 43 05 B8 */	lfs f2, 0x5b8(r3)
/* 8058038C  C0 03 08 10 */	lfs f0, 0x810(r3)
/* 80580390  3B C3 08 10 */	addi r30, r3, 0x810
/* 80580394  EC 82 00 2A */	fadds f4, f2, f0
/* 80580398  C0 63 05 B4 */	lfs f3, 0x5b4(r3)
/* 8058039C  C0 23 05 B0 */	lfs f1, 0x5b0(r3)
/* 805803A0  C0 03 08 08 */	lfs f0, 0x808(r3)
/* 805803A4  3B E3 08 08 */	addi r31, r3, 0x808
/* 805803A8  EC 01 00 2A */	fadds f0, f1, f0
/* 805803AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805803B0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 805803B4  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 805803B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805803BC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 805803C0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805803C4  38 61 00 20 */	addi r3, r1, 0x20
/* 805803C8  38 81 00 08 */	addi r4, r1, 8
/* 805803CC  38 A1 00 14 */	addi r5, r1, 0x14
/* 805803D0  38 C0 00 00 */	li r6, 0
/* 805803D4  4B AF 79 91 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805803D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805803DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805803E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805803E4  38 81 00 20 */	addi r4, r1, 0x20
/* 805803E8  4B AF 3F CD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 805803EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805803F0  28 00 00 01 */	cmplwi r0, 1
/* 805803F4  40 82 00 24 */	bne lbl_80580418
/* 805803F8  3C 60 80 58 */	lis r3, lit_4006@ha /* 0x8058154C@ha */
/* 805803FC  C0 23 15 4C */	lfs f1, lit_4006@l(r3)  /* 0x8058154C@l */
/* 80580400  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80580404  EC 01 00 32 */	fmuls f0, f1, f0
/* 80580408  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8058040C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80580410  EC 01 00 32 */	fmuls f0, f1, f0
/* 80580414  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_80580418:
/* 80580418  38 61 00 20 */	addi r3, r1, 0x20
/* 8058041C  38 80 FF FF */	li r4, -1
/* 80580420  4B AF 78 BD */	bl __dt__11dBgS_LinChkFv
/* 80580424  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80580428  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8058042C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80580430  7C 08 03 A6 */	mtlr r0
/* 80580434  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80580438  4E 80 00 20 */	blr 
