lbl_80698250:
/* 80698250  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80698254  7C 08 02 A6 */	mflr r0
/* 80698258  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8069825C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80698260  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80698264  7C 9E 23 78 */	mr r30, r4
/* 80698268  7C 7F 1B 78 */	mr r31, r3
/* 8069826C  38 61 00 20 */	addi r3, r1, 0x20
/* 80698270  4B 9D F9 F8 */	b __ct__11dBgS_LinChkFv
/* 80698274  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80698278  D0 01 00 08 */	stfs f0, 8(r1)
/* 8069827C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80698280  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80698284  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80698288  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8069828C  3C 60 80 6A */	lis r3, lit_3788@ha
/* 80698290  C0 03 9C B0 */	lfs f0, lit_3788@l(r3)
/* 80698294  EC 01 00 2A */	fadds f0, f1, f0
/* 80698298  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8069829C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806982A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806982A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806982A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806982AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806982B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806982B4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806982B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806982BC  38 61 00 20 */	addi r3, r1, 0x20
/* 806982C0  38 81 00 14 */	addi r4, r1, 0x14
/* 806982C4  38 A1 00 08 */	addi r5, r1, 8
/* 806982C8  7F E6 FB 78 */	mr r6, r31
/* 806982CC  4B 9D FA 98 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806982D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806982D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806982D8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806982DC  38 81 00 20 */	addi r4, r1, 0x20
/* 806982E0  4B 9D C0 D4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806982E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806982E8  41 82 00 18 */	beq lbl_80698300
/* 806982EC  38 61 00 20 */	addi r3, r1, 0x20
/* 806982F0  38 80 FF FF */	li r4, -1
/* 806982F4  4B 9D F9 E8 */	b __dt__11dBgS_LinChkFv
/* 806982F8  38 60 00 01 */	li r3, 1
/* 806982FC  48 00 00 14 */	b lbl_80698310
lbl_80698300:
/* 80698300  38 61 00 20 */	addi r3, r1, 0x20
/* 80698304  38 80 FF FF */	li r4, -1
/* 80698308  4B 9D F9 D4 */	b __dt__11dBgS_LinChkFv
/* 8069830C  38 60 00 00 */	li r3, 0
lbl_80698310:
/* 80698310  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80698314  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80698318  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8069831C  7C 08 03 A6 */	mtlr r0
/* 80698320  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80698324  4E 80 00 20 */	blr 
