lbl_80BCED60:
/* 80BCED60  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BCED64  7C 08 02 A6 */	mflr r0
/* 80BCED68  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BCED6C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80BCED70  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80BCED74  7C 9E 23 78 */	mr r30, r4
/* 80BCED78  7C BF 2B 78 */	mr r31, r5
/* 80BCED7C  38 61 00 14 */	addi r3, r1, 0x14
/* 80BCED80  4B 4A 8E E8 */	b __ct__11dBgS_LinChkFv
/* 80BCED84  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BCED88  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BCED8C  EC 61 00 2A */	fadds f3, f1, f0
/* 80BCED90  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80BCED94  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80BCED98  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BCED9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCEDA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCEDA4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BCEDA8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80BCEDAC  38 61 00 14 */	addi r3, r1, 0x14
/* 80BCEDB0  7F C4 F3 78 */	mr r4, r30
/* 80BCEDB4  38 A1 00 08 */	addi r5, r1, 8
/* 80BCEDB8  38 C0 00 00 */	li r6, 0
/* 80BCEDBC  4B 4A 8F A8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BCEDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BCEDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BCEDC8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BCEDCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80BCEDD0  4B 4A 55 E4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80BCEDD4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BCEDD8  28 00 00 01 */	cmplwi r0, 1
/* 80BCEDDC  40 82 00 18 */	bne lbl_80BCEDF4
/* 80BCEDE0  38 61 00 14 */	addi r3, r1, 0x14
/* 80BCEDE4  38 80 FF FF */	li r4, -1
/* 80BCEDE8  4B 4A 8E F4 */	b __dt__11dBgS_LinChkFv
/* 80BCEDEC  38 60 00 01 */	li r3, 1
/* 80BCEDF0  48 00 00 14 */	b lbl_80BCEE04
lbl_80BCEDF4:
/* 80BCEDF4  38 61 00 14 */	addi r3, r1, 0x14
/* 80BCEDF8  38 80 FF FF */	li r4, -1
/* 80BCEDFC  4B 4A 8E E0 */	b __dt__11dBgS_LinChkFv
/* 80BCEE00  38 60 00 00 */	li r3, 0
lbl_80BCEE04:
/* 80BCEE04  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80BCEE08  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80BCEE0C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BCEE10  7C 08 03 A6 */	mtlr r0
/* 80BCEE14  38 21 00 90 */	addi r1, r1, 0x90
/* 80BCEE18  4E 80 00 20 */	blr 
