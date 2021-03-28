lbl_8076C9D0:
/* 8076C9D0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8076C9D4  7C 08 02 A6 */	mflr r0
/* 8076C9D8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8076C9DC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8076C9E0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8076C9E4  7C 9E 23 78 */	mr r30, r4
/* 8076C9E8  7C 7F 1B 78 */	mr r31, r3
/* 8076C9EC  38 61 00 20 */	addi r3, r1, 0x20
/* 8076C9F0  4B 90 B2 78 */	b __ct__11dBgS_LinChkFv
/* 8076C9F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8076C9F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8076C9FC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8076CA00  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8076CA04  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8076CA08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8076CA0C  3C 60 80 78 */	lis r3, lit_4442@ha
/* 8076CA10  C0 03 9E 74 */	lfs f0, lit_4442@l(r3)
/* 8076CA14  EC 01 00 2A */	fadds f0, f1, f0
/* 8076CA18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8076CA1C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8076CA20  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8076CA24  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8076CA28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8076CA2C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8076CA30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8076CA34  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8076CA38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8076CA3C  38 61 00 20 */	addi r3, r1, 0x20
/* 8076CA40  38 81 00 14 */	addi r4, r1, 0x14
/* 8076CA44  38 A1 00 08 */	addi r5, r1, 8
/* 8076CA48  7F E6 FB 78 */	mr r6, r31
/* 8076CA4C  4B 90 B3 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8076CA50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076CA54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8076CA58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8076CA5C  38 81 00 20 */	addi r4, r1, 0x20
/* 8076CA60  4B 90 79 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8076CA64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8076CA68  41 82 00 18 */	beq lbl_8076CA80
/* 8076CA6C  38 61 00 20 */	addi r3, r1, 0x20
/* 8076CA70  38 80 FF FF */	li r4, -1
/* 8076CA74  4B 90 B2 68 */	b __dt__11dBgS_LinChkFv
/* 8076CA78  38 60 00 01 */	li r3, 1
/* 8076CA7C  48 00 00 14 */	b lbl_8076CA90
lbl_8076CA80:
/* 8076CA80  38 61 00 20 */	addi r3, r1, 0x20
/* 8076CA84  38 80 FF FF */	li r4, -1
/* 8076CA88  4B 90 B2 54 */	b __dt__11dBgS_LinChkFv
/* 8076CA8C  38 60 00 00 */	li r3, 0
lbl_8076CA90:
/* 8076CA90  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8076CA94  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8076CA98  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8076CA9C  7C 08 03 A6 */	mtlr r0
/* 8076CAA0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8076CAA4  4E 80 00 20 */	blr 
