lbl_806FFE90:
/* 806FFE90  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806FFE94  7C 08 02 A6 */	mflr r0
/* 806FFE98  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806FFE9C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 806FFEA0  7C 7F 1B 78 */	mr r31, r3
/* 806FFEA4  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFEA8  4B 97 7D C1 */	bl __ct__11dBgS_LinChkFv
/* 806FFEAC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 806FFEB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FFEB4  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 806FFEB8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806FFEBC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 806FFEC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806FFEC4  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 806FFEC8  C0 03 5A F8 */	lfs f0, lit_3903@l(r3)  /* 0x80705AF8@l */
/* 806FFECC  EC 01 00 2A */	fadds f0, f1, f0
/* 806FFED0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806FFED4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806FFED8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806FFEDC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806FFEE0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806FFEE4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806FFEE8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806FFEEC  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFEF0  38 81 00 14 */	addi r4, r1, 0x14
/* 806FFEF4  38 A1 00 08 */	addi r5, r1, 8
/* 806FFEF8  7F E6 FB 78 */	mr r6, r31
/* 806FFEFC  4B 97 7E 69 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806FFF00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FFF04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FFF08  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806FFF0C  38 81 00 20 */	addi r4, r1, 0x20
/* 806FFF10  4B 97 44 A5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806FFF14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FFF18  41 82 00 18 */	beq lbl_806FFF30
/* 806FFF1C  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFF20  38 80 FF FF */	li r4, -1
/* 806FFF24  4B 97 7D B9 */	bl __dt__11dBgS_LinChkFv
/* 806FFF28  38 60 00 01 */	li r3, 1
/* 806FFF2C  48 00 00 14 */	b lbl_806FFF40
lbl_806FFF30:
/* 806FFF30  38 61 00 20 */	addi r3, r1, 0x20
/* 806FFF34  38 80 FF FF */	li r4, -1
/* 806FFF38  4B 97 7D A5 */	bl __dt__11dBgS_LinChkFv
/* 806FFF3C  38 60 00 00 */	li r3, 0
lbl_806FFF40:
/* 806FFF40  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806FFF44  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806FFF48  7C 08 03 A6 */	mtlr r0
/* 806FFF4C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806FFF50  4E 80 00 20 */	blr 
