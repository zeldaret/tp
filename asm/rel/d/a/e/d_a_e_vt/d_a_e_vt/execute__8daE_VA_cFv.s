lbl_807CCD24:
/* 807CCD24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807CCD28  7C 08 02 A6 */	mflr r0
/* 807CCD2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807CCD30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807CCD34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807CCD38  7C 7F 1B 78 */	mr r31, r3
/* 807CCD3C  80 63 13 40 */	lwz r3, 0x1340(r3)
/* 807CCD40  2C 03 00 00 */	cmpwi r3, 0
/* 807CCD44  41 82 00 0C */	beq lbl_807CCD50
/* 807CCD48  38 03 FF FF */	addi r0, r3, -1
/* 807CCD4C  90 1F 13 40 */	stw r0, 0x1340(r31)
lbl_807CCD50:
/* 807CCD50  80 7F 13 44 */	lwz r3, 0x1344(r31)
/* 807CCD54  2C 03 00 00 */	cmpwi r3, 0
/* 807CCD58  41 82 00 0C */	beq lbl_807CCD64
/* 807CCD5C  38 03 FF FF */	addi r0, r3, -1
/* 807CCD60  90 1F 13 44 */	stw r0, 0x1344(r31)
lbl_807CCD64:
/* 807CCD64  80 7F 13 4C */	lwz r3, 0x134c(r31)
/* 807CCD68  2C 03 00 00 */	cmpwi r3, 0
/* 807CCD6C  41 82 00 0C */	beq lbl_807CCD78
/* 807CCD70  38 03 FF FF */	addi r0, r3, -1
/* 807CCD74  90 1F 13 4C */	stw r0, 0x134c(r31)
lbl_807CCD78:
/* 807CCD78  80 7F 13 50 */	lwz r3, 0x1350(r31)
/* 807CCD7C  2C 03 00 00 */	cmpwi r3, 0
/* 807CCD80  41 82 00 0C */	beq lbl_807CCD8C
/* 807CCD84  38 03 FF FF */	addi r0, r3, -1
/* 807CCD88  90 1F 13 50 */	stw r0, 0x1350(r31)
lbl_807CCD8C:
/* 807CCD8C  A8 7F 13 38 */	lha r3, 0x1338(r31)
/* 807CCD90  2C 03 00 00 */	cmpwi r3, 0
/* 807CCD94  41 82 00 0C */	beq lbl_807CCDA0
/* 807CCD98  38 03 FF FF */	addi r0, r3, -1
/* 807CCD9C  B0 1F 13 38 */	sth r0, 0x1338(r31)
lbl_807CCDA0:
/* 807CCDA0  A8 7F 13 3A */	lha r3, 0x133a(r31)
/* 807CCDA4  2C 03 00 00 */	cmpwi r3, 0
/* 807CCDA8  41 82 00 0C */	beq lbl_807CCDB4
/* 807CCDAC  38 03 FF FF */	addi r0, r3, -1
/* 807CCDB0  B0 1F 13 3A */	sth r0, 0x133a(r31)
lbl_807CCDB4:
/* 807CCDB4  A8 7F 13 3C */	lha r3, 0x133c(r31)
/* 807CCDB8  2C 03 00 00 */	cmpwi r3, 0
/* 807CCDBC  41 82 00 0C */	beq lbl_807CCDC8
/* 807CCDC0  38 03 FF FF */	addi r0, r3, -1
/* 807CCDC4  B0 1F 13 3C */	sth r0, 0x133c(r31)
lbl_807CCDC8:
/* 807CCDC8  A8 7F 13 3E */	lha r3, 0x133e(r31)
/* 807CCDCC  2C 03 00 00 */	cmpwi r3, 0
/* 807CCDD0  41 82 00 0C */	beq lbl_807CCDDC
/* 807CCDD4  38 03 FF FF */	addi r0, r3, -1
/* 807CCDD8  B0 1F 13 3E */	sth r0, 0x133e(r31)
lbl_807CCDDC:
/* 807CCDDC  80 7F 13 48 */	lwz r3, 0x1348(r31)
/* 807CCDE0  2C 03 00 00 */	cmpwi r3, 0
/* 807CCDE4  41 82 00 0C */	beq lbl_807CCDF0
/* 807CCDE8  38 03 FF FF */	addi r0, r3, -1
/* 807CCDEC  90 1F 13 48 */	stw r0, 0x1348(r31)
lbl_807CCDF0:
/* 807CCDF0  80 7F 13 54 */	lwz r3, 0x1354(r31)
/* 807CCDF4  2C 03 00 00 */	cmpwi r3, 0
/* 807CCDF8  41 82 00 0C */	beq lbl_807CCE04
/* 807CCDFC  38 03 FF FF */	addi r0, r3, -1
/* 807CCE00  90 1F 13 54 */	stw r0, 0x1354(r31)
lbl_807CCE04:
/* 807CCE04  80 7F 13 58 */	lwz r3, 0x1358(r31)
/* 807CCE08  2C 03 00 00 */	cmpwi r3, 0
/* 807CCE0C  41 82 00 0C */	beq lbl_807CCE18
/* 807CCE10  38 03 FF FF */	addi r0, r3, -1
/* 807CCE14  90 1F 13 58 */	stw r0, 0x1358(r31)
lbl_807CCE18:
/* 807CCE18  7F E3 FB 78 */	mr r3, r31
/* 807CCE1C  4B FF F1 E9 */	bl action__8daE_VA_cFv
/* 807CCE20  7F E3 FB 78 */	mr r3, r31
/* 807CCE24  4B FF 5A 75 */	bl calcJointNeck__8daE_VA_cFv
/* 807CCE28  7F E3 FB 78 */	mr r3, r31
/* 807CCE2C  4B FF F6 A5 */	bl mtx_set__8daE_VA_cFv
/* 807CCE30  7F E3 FB 78 */	mr r3, r31
/* 807CCE34  4B FF 7B 81 */	bl setFootEffect__8daE_VA_cFv
/* 807CCE38  7F E3 FB 78 */	mr r3, r31
/* 807CCE3C  4B FF 7D 19 */	bl setWeponEffect__8daE_VA_cFv
/* 807CCE40  7F E3 FB 78 */	mr r3, r31
/* 807CCE44  4B FF EA 89 */	bl calcMagicMove__8daE_VA_cFv
/* 807CCE48  7F E3 FB 78 */	mr r3, r31
/* 807CCE4C  4B FF FA 19 */	bl cc_set__8daE_VA_cFv
/* 807CCE50  80 1F 13 70 */	lwz r0, 0x1370(r31)
/* 807CCE54  2C 00 00 02 */	cmpwi r0, 2
/* 807CCE58  40 80 00 54 */	bge lbl_807CCEAC
/* 807CCE5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CCE60  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CCE64  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 807CCE68  7F E4 FB 78 */	mr r4, r31
/* 807CCE6C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807CCE70  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807CCE74  7D 89 03 A6 */	mtctr r12
/* 807CCE78  4E 80 04 21 */	bctrl 
/* 807CCE7C  2C 03 00 00 */	cmpwi r3, 0
/* 807CCE80  41 82 00 1C */	beq lbl_807CCE9C
/* 807CCE84  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 807CCE88  7F E4 FB 78 */	mr r4, r31
/* 807CCE8C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807CCE90  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 807CCE94  7D 89 03 A6 */	mtctr r12
/* 807CCE98  4E 80 04 21 */	bctrl 
lbl_807CCE9C:
/* 807CCE9C  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 807CCEA0  60 00 02 00 */	ori r0, r0, 0x200
/* 807CCEA4  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 807CCEA8  48 00 00 10 */	b lbl_807CCEB8
lbl_807CCEAC:
/* 807CCEAC  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 807CCEB0  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 807CCEB4  B0 1F 05 8E */	sth r0, 0x58e(r31)
lbl_807CCEB8:
/* 807CCEB8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CCEBC  80 63 00 04 */	lwz r3, 4(r3)
/* 807CCEC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CCEC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CCEC8  38 63 06 60 */	addi r3, r3, 0x660
/* 807CCECC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CCED0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CCED4  4B B7 95 DD */	bl PSMTXCopy
/* 807CCED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CCEDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CCEE0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807CCEE4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807CCEE8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807CCEEC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807CCEF0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807CCEF4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807CCEF8  3C 60 80 7D */	lis r3, lit_3909@ha /* 0x807CECB0@ha */
/* 807CCEFC  C0 03 EC B0 */	lfs f0, lit_3909@l(r3)  /* 0x807CECB0@l */
/* 807CCF00  D0 01 00 08 */	stfs f0, 8(r1)
/* 807CCF04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807CCF08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807CCF0C  7F E3 FB 78 */	mr r3, r31
/* 807CCF10  38 9F 12 54 */	addi r4, r31, 0x1254
/* 807CCF14  38 A1 00 14 */	addi r5, r1, 0x14
/* 807CCF18  38 C1 00 08 */	addi r6, r1, 8
/* 807CCF1C  48 00 18 D5 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807CCF20  38 60 00 01 */	li r3, 1
/* 807CCF24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807CCF28  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807CCF2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807CCF30  7C 08 03 A6 */	mtlr r0
/* 807CCF34  38 21 00 30 */	addi r1, r1, 0x30
/* 807CCF38  4E 80 00 20 */	blr 
