lbl_80A49088:
/* 80A49088  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80A4908C  7C 08 02 A6 */	mflr r0
/* 80A49090  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A49094  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80A49098  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80A4909C  7C 7E 1B 78 */	mr r30, r3
/* 80A490A0  7C 9F 23 78 */	mr r31, r4
/* 80A490A4  38 61 00 20 */	addi r3, r1, 0x20
/* 80A490A8  4B 62 EB C0 */	b __ct__11dBgS_LinChkFv
/* 80A490AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A490B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A490B4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80A490B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A490BC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A490C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A490C4  3C 60 80 A6 */	lis r3, lit_4096@ha
/* 80A490C8  C0 03 DF 1C */	lfs f0, lit_4096@l(r3)
/* 80A490CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A490D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A490D4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A490D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A490DC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A490E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A490E4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A490E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A490EC  3C 60 80 A6 */	lis r3, lit_4097@ha
/* 80A490F0  C0 03 DF 20 */	lfs f0, lit_4097@l(r3)
/* 80A490F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A490F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A490FC  38 61 00 20 */	addi r3, r1, 0x20
/* 80A49100  38 81 00 14 */	addi r4, r1, 0x14
/* 80A49104  38 A1 00 08 */	addi r5, r1, 8
/* 80A49108  7F C6 F3 78 */	mr r6, r30
/* 80A4910C  4B 62 EC 58 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A49110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A49114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A49118  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A4911C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A49120  4B 62 B2 94 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A49124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A49128  41 82 00 18 */	beq lbl_80A49140
/* 80A4912C  38 61 00 20 */	addi r3, r1, 0x20
/* 80A49130  38 80 FF FF */	li r4, -1
/* 80A49134  4B 62 EB A8 */	b __dt__11dBgS_LinChkFv
/* 80A49138  38 60 00 01 */	li r3, 1
/* 80A4913C  48 00 00 14 */	b lbl_80A49150
lbl_80A49140:
/* 80A49140  38 61 00 20 */	addi r3, r1, 0x20
/* 80A49144  38 80 FF FF */	li r4, -1
/* 80A49148  4B 62 EB 94 */	b __dt__11dBgS_LinChkFv
/* 80A4914C  38 60 00 00 */	li r3, 0
lbl_80A49150:
/* 80A49150  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80A49154  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80A49158  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80A4915C  7C 08 03 A6 */	mtlr r0
/* 80A49160  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80A49164  4E 80 00 20 */	blr 
