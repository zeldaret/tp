lbl_805059A4:
/* 805059A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805059A8  7C 08 02 A6 */	mflr r0
/* 805059AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805059B0  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 805059B4  93 C1 00 98 */	stw r30, 0x98(r1)
/* 805059B8  7C 9E 23 78 */	mr r30, r4
/* 805059BC  7C 7F 1B 78 */	mr r31, r3
/* 805059C0  38 61 00 20 */	addi r3, r1, 0x20
/* 805059C4  4B B7 22 A4 */	b __ct__11dBgS_LinChkFv
/* 805059C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805059CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805059D0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805059D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805059D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805059DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805059E0  3C 60 80 52 */	lis r3, lit_4720@ha
/* 805059E4  C0 03 85 FC */	lfs f0, lit_4720@l(r3)
/* 805059E8  EC 01 00 2A */	fadds f0, f1, f0
/* 805059EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805059F0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805059F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805059F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805059FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80505A00  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80505A04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80505A08  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80505A0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80505A10  38 61 00 20 */	addi r3, r1, 0x20
/* 80505A14  38 81 00 14 */	addi r4, r1, 0x14
/* 80505A18  38 A1 00 08 */	addi r5, r1, 8
/* 80505A1C  7F E6 FB 78 */	mr r6, r31
/* 80505A20  4B B7 23 44 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80505A24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80505A28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80505A2C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80505A30  7F E3 FB 78 */	mr r3, r31
/* 80505A34  38 81 00 20 */	addi r4, r1, 0x20
/* 80505A38  4B B6 E9 7C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80505A3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80505A40  41 82 00 2C */	beq lbl_80505A6C
/* 80505A44  7F E3 FB 78 */	mr r3, r31
/* 80505A48  A0 81 00 36 */	lhz r4, 0x36(r1)
/* 80505A4C  4B B6 EB CC */	b GetActorPointer__4cBgSCFi
/* 80505A50  7C 1E 18 40 */	cmplw r30, r3
/* 80505A54  41 82 00 18 */	beq lbl_80505A6C
/* 80505A58  38 61 00 20 */	addi r3, r1, 0x20
/* 80505A5C  38 80 FF FF */	li r4, -1
/* 80505A60  4B B7 22 7C */	b __dt__11dBgS_LinChkFv
/* 80505A64  38 60 00 01 */	li r3, 1
/* 80505A68  48 00 00 14 */	b lbl_80505A7C
lbl_80505A6C:
/* 80505A6C  38 61 00 20 */	addi r3, r1, 0x20
/* 80505A70  38 80 FF FF */	li r4, -1
/* 80505A74  4B B7 22 68 */	b __dt__11dBgS_LinChkFv
/* 80505A78  38 60 00 00 */	li r3, 0
lbl_80505A7C:
/* 80505A7C  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80505A80  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80505A84  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80505A88  7C 08 03 A6 */	mtlr r0
/* 80505A8C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80505A90  4E 80 00 20 */	blr 
