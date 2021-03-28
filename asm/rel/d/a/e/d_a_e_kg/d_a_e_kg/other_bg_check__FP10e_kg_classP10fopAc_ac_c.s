lbl_806F80D0:
/* 806F80D0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806F80D4  7C 08 02 A6 */	mflr r0
/* 806F80D8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806F80DC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 806F80E0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 806F80E4  7C 9E 23 78 */	mr r30, r4
/* 806F80E8  7C 7F 1B 78 */	mr r31, r3
/* 806F80EC  38 61 00 20 */	addi r3, r1, 0x20
/* 806F80F0  4B 97 FB 78 */	b __ct__11dBgS_LinChkFv
/* 806F80F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806F80F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806F80FC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806F8100  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806F8104  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806F8108  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806F810C  3C 60 80 70 */	lis r3, lit_3788@ha
/* 806F8110  C0 03 A3 A4 */	lfs f0, lit_3788@l(r3)
/* 806F8114  EC 01 00 2A */	fadds f0, f1, f0
/* 806F8118  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806F811C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806F8120  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806F8124  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806F8128  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F812C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806F8130  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F8134  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806F8138  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F813C  38 61 00 20 */	addi r3, r1, 0x20
/* 806F8140  38 81 00 14 */	addi r4, r1, 0x14
/* 806F8144  38 A1 00 08 */	addi r5, r1, 8
/* 806F8148  7F E6 FB 78 */	mr r6, r31
/* 806F814C  4B 97 FC 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806F8150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F8154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F8158  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806F815C  38 81 00 20 */	addi r4, r1, 0x20
/* 806F8160  4B 97 C2 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806F8164  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F8168  41 82 00 18 */	beq lbl_806F8180
/* 806F816C  38 61 00 20 */	addi r3, r1, 0x20
/* 806F8170  38 80 FF FF */	li r4, -1
/* 806F8174  4B 97 FB 68 */	b __dt__11dBgS_LinChkFv
/* 806F8178  38 60 00 01 */	li r3, 1
/* 806F817C  48 00 00 14 */	b lbl_806F8190
lbl_806F8180:
/* 806F8180  38 61 00 20 */	addi r3, r1, 0x20
/* 806F8184  38 80 FF FF */	li r4, -1
/* 806F8188  4B 97 FB 54 */	b __dt__11dBgS_LinChkFv
/* 806F818C  38 60 00 00 */	li r3, 0
lbl_806F8190:
/* 806F8190  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806F8194  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 806F8198  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806F819C  7C 08 03 A6 */	mtlr r0
/* 806F81A0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806F81A4  4E 80 00 20 */	blr 
