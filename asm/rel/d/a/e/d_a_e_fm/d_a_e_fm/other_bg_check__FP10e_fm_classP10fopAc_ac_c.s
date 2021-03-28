lbl_804EFF68:
/* 804EFF68  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804EFF6C  7C 08 02 A6 */	mflr r0
/* 804EFF70  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804EFF74  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 804EFF78  93 C1 00 98 */	stw r30, 0x98(r1)
/* 804EFF7C  7C 9E 23 78 */	mr r30, r4
/* 804EFF80  7C 7F 1B 78 */	mr r31, r3
/* 804EFF84  38 61 00 20 */	addi r3, r1, 0x20
/* 804EFF88  4B B8 7C E0 */	b __ct__11dBgS_LinChkFv
/* 804EFF8C  28 1E 00 00 */	cmplwi r30, 0
/* 804EFF90  41 82 00 A4 */	beq lbl_804F0034
/* 804EFF94  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804EFF98  D0 01 00 08 */	stfs f0, 8(r1)
/* 804EFF9C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804EFFA0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804EFFA4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804EFFA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804EFFAC  3C 60 80 50 */	lis r3, lit_4237@ha
/* 804EFFB0  C0 03 A7 70 */	lfs f0, lit_4237@l(r3)
/* 804EFFB4  EC 01 00 2A */	fadds f0, f1, f0
/* 804EFFB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804EFFBC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804EFFC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804EFFC4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804EFFC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804EFFCC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804EFFD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804EFFD4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 804EFFD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804EFFDC  38 61 00 20 */	addi r3, r1, 0x20
/* 804EFFE0  38 81 00 14 */	addi r4, r1, 0x14
/* 804EFFE4  38 A1 00 08 */	addi r5, r1, 8
/* 804EFFE8  7F E6 FB 78 */	mr r6, r31
/* 804EFFEC  4B B8 7D 78 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804EFFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804EFFF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804EFFF8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804EFFFC  38 81 00 20 */	addi r4, r1, 0x20
/* 804F0000  4B B8 43 B4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804F0004  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804F0008  41 82 00 18 */	beq lbl_804F0020
/* 804F000C  38 61 00 20 */	addi r3, r1, 0x20
/* 804F0010  38 80 FF FF */	li r4, -1
/* 804F0014  4B B8 7C C8 */	b __dt__11dBgS_LinChkFv
/* 804F0018  38 60 00 01 */	li r3, 1
/* 804F001C  48 00 00 28 */	b lbl_804F0044
lbl_804F0020:
/* 804F0020  38 61 00 20 */	addi r3, r1, 0x20
/* 804F0024  38 80 FF FF */	li r4, -1
/* 804F0028  4B B8 7C B4 */	b __dt__11dBgS_LinChkFv
/* 804F002C  38 60 00 00 */	li r3, 0
/* 804F0030  48 00 00 14 */	b lbl_804F0044
lbl_804F0034:
/* 804F0034  38 61 00 20 */	addi r3, r1, 0x20
/* 804F0038  38 80 FF FF */	li r4, -1
/* 804F003C  4B B8 7C A0 */	b __dt__11dBgS_LinChkFv
/* 804F0040  38 60 00 01 */	li r3, 1
lbl_804F0044:
/* 804F0044  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 804F0048  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 804F004C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804F0050  7C 08 03 A6 */	mtlr r0
/* 804F0054  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804F0058  4E 80 00 20 */	blr 
