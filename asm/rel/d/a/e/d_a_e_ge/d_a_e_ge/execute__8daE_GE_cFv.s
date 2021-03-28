lbl_806CC068:
/* 806CC068  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CC06C  7C 08 02 A6 */	mflr r0
/* 806CC070  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CC074  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806CC078  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806CC07C  7C 7E 1B 78 */	mr r30, r3
/* 806CC080  3C 60 80 6D */	lis r3, lit_3904@ha
/* 806CC084  3B E3 D0 00 */	addi r31, r3, lit_3904@l
/* 806CC088  38 60 00 00 */	li r3, 0
/* 806CC08C  38 00 00 02 */	li r0, 2
/* 806CC090  7C 09 03 A6 */	mtctr r0
lbl_806CC094:
/* 806CC094  38 A3 0B 8E */	addi r5, r3, 0xb8e
/* 806CC098  7C 9E 2A AE */	lhax r4, r30, r5
/* 806CC09C  2C 04 00 00 */	cmpwi r4, 0
/* 806CC0A0  41 82 00 0C */	beq lbl_806CC0AC
/* 806CC0A4  38 04 FF FF */	addi r0, r4, -1
/* 806CC0A8  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_806CC0AC:
/* 806CC0AC  38 63 00 02 */	addi r3, r3, 2
/* 806CC0B0  42 00 FF E4 */	bdnz lbl_806CC094
/* 806CC0B4  A8 7E 0B 92 */	lha r3, 0xb92(r30)
/* 806CC0B8  2C 03 00 00 */	cmpwi r3, 0
/* 806CC0BC  41 82 00 0C */	beq lbl_806CC0C8
/* 806CC0C0  38 03 FF FF */	addi r0, r3, -1
/* 806CC0C4  B0 1E 0B 92 */	sth r0, 0xb92(r30)
lbl_806CC0C8:
/* 806CC0C8  A8 7E 0B 96 */	lha r3, 0xb96(r30)
/* 806CC0CC  2C 03 00 00 */	cmpwi r3, 0
/* 806CC0D0  41 82 00 0C */	beq lbl_806CC0DC
/* 806CC0D4  38 03 FF FF */	addi r0, r3, -1
/* 806CC0D8  B0 1E 0B 96 */	sth r0, 0xb96(r30)
lbl_806CC0DC:
/* 806CC0DC  A8 7E 0B 94 */	lha r3, 0xb94(r30)
/* 806CC0E0  2C 03 00 00 */	cmpwi r3, 0
/* 806CC0E4  41 82 00 20 */	beq lbl_806CC104
/* 806CC0E8  38 03 FF FF */	addi r0, r3, -1
/* 806CC0EC  B0 1E 0B 94 */	sth r0, 0xb94(r30)
/* 806CC0F0  A8 1E 0B 94 */	lha r0, 0xb94(r30)
/* 806CC0F4  2C 00 00 00 */	cmpwi r0, 0
/* 806CC0F8  40 82 00 0C */	bne lbl_806CC104
/* 806CC0FC  7F C3 F3 78 */	mr r3, r30
/* 806CC100  4B FF EC F5 */	bl setSurprise__8daE_GE_cFv
lbl_806CC104:
/* 806CC104  80 7E 0B 80 */	lwz r3, 0xb80(r30)
/* 806CC108  2C 03 00 00 */	cmpwi r3, 0
/* 806CC10C  41 82 00 0C */	beq lbl_806CC118
/* 806CC110  38 03 FF FF */	addi r0, r3, -1
/* 806CC114  90 1E 0B 80 */	stw r0, 0xb80(r30)
lbl_806CC118:
/* 806CC118  7F C3 F3 78 */	mr r3, r30
/* 806CC11C  4B FF FB 1D */	bl action__8daE_GE_cFv
/* 806CC120  7F C3 F3 78 */	mr r3, r30
/* 806CC124  4B FF FD 75 */	bl mtx_set__8daE_GE_cFv
/* 806CC128  7F C3 F3 78 */	mr r3, r30
/* 806CC12C  4B FF FD C5 */	bl cc_set__8daE_GE_cFv
/* 806CC130  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 806CC134  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 806CC138  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806CC13C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806CC140  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 806CC144  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 806CC148  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 806CC14C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806CC150  EC 01 00 2A */	fadds f0, f1, f0
/* 806CC154  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 806CC158  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806CC15C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806CC160  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806CC164  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806CC168  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806CC16C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806CC170  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806CC174  EC 01 00 2A */	fadds f0, f1, f0
/* 806CC178  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CC17C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CC180  D0 01 00 08 */	stfs f0, 8(r1)
/* 806CC184  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806CC188  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806CC18C  7F C3 F3 78 */	mr r3, r30
/* 806CC190  38 9E 05 B8 */	addi r4, r30, 0x5b8
/* 806CC194  38 A1 00 14 */	addi r5, r1, 0x14
/* 806CC198  38 C1 00 08 */	addi r6, r1, 8
/* 806CC19C  48 00 0A 3D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806CC1A0  38 60 00 01 */	li r3, 1
/* 806CC1A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806CC1A8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806CC1AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CC1B0  7C 08 03 A6 */	mtlr r0
/* 806CC1B4  38 21 00 30 */	addi r1, r1, 0x30
/* 806CC1B8  4E 80 00 20 */	blr 
