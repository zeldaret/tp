lbl_806FFDB0:
/* 806FFDB0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806FFDB4  7C 08 02 A6 */	mflr r0
/* 806FFDB8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806FFDBC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 806FFDC0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 806FFDC4  7C 7F 1B 78 */	mr r31, r3
/* 806FFDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FFDCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FFDD0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 806FFDD4  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFDD8  4B 97 7E 90 */	b __ct__11dBgS_LinChkFv
/* 806FFDDC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806FFDE0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FFDE4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806FFDE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806FFDEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806FFDF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806FFDF4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806FFDF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806FFDFC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806FFE00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806FFE04  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806FFE08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806FFE0C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806FFE10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806FFE14  3C 60 80 70 */	lis r3, lit_3903@ha
/* 806FFE18  C0 03 5A F8 */	lfs f0, lit_3903@l(r3)
/* 806FFE1C  EC 01 00 2A */	fadds f0, f1, f0
/* 806FFE20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806FFE24  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFE28  38 81 00 14 */	addi r4, r1, 0x14
/* 806FFE2C  38 A1 00 08 */	addi r5, r1, 8
/* 806FFE30  7F E6 FB 78 */	mr r6, r31
/* 806FFE34  4B 97 7F 30 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806FFE38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FFE3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FFE40  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806FFE44  38 81 00 20 */	addi r4, r1, 0x20
/* 806FFE48  4B 97 45 6C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806FFE4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FFE50  41 82 00 18 */	beq lbl_806FFE68
/* 806FFE54  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFE58  38 80 FF FF */	li r4, -1
/* 806FFE5C  4B 97 7E 80 */	b __dt__11dBgS_LinChkFv
/* 806FFE60  38 60 00 01 */	li r3, 1
/* 806FFE64  48 00 00 14 */	b lbl_806FFE78
lbl_806FFE68:
/* 806FFE68  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFE6C  38 80 FF FF */	li r4, -1
/* 806FFE70  4B 97 7E 6C */	b __dt__11dBgS_LinChkFv
/* 806FFE74  38 60 00 00 */	li r3, 0
lbl_806FFE78:
/* 806FFE78  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806FFE7C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 806FFE80  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806FFE84  7C 08 03 A6 */	mtlr r0
/* 806FFE88  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806FFE8C  4E 80 00 20 */	blr 
