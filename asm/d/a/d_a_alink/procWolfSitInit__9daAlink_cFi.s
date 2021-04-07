lbl_8012F278:
/* 8012F278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F27C  7C 08 02 A6 */	mflr r0
/* 8012F280  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F288  93 C1 00 08 */	stw r30, 8(r1)
/* 8012F28C  7C 7E 1B 78 */	mr r30, r3
/* 8012F290  7C 9F 23 78 */	mr r31, r4
/* 8012F294  38 80 00 FF */	li r4, 0xff
/* 8012F298  4B F9 3B 0D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012F29C  2C 03 00 00 */	cmpwi r3, 0
/* 8012F2A0  40 82 00 0C */	bne lbl_8012F2AC
/* 8012F2A4  38 60 00 00 */	li r3, 0
/* 8012F2A8  48 00 00 98 */	b lbl_8012F340
lbl_8012F2AC:
/* 8012F2AC  2C 1F 00 00 */	cmpwi r31, 0
/* 8012F2B0  41 82 00 4C */	beq lbl_8012F2FC
/* 8012F2B4  7F C3 F3 78 */	mr r3, r30
/* 8012F2B8  38 80 00 0E */	li r4, 0xe
/* 8012F2BC  4B FF 95 51 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012F2C0  2C 03 00 00 */	cmpwi r3, 0
/* 8012F2C4  40 82 00 38 */	bne lbl_8012F2FC
/* 8012F2C8  7F C3 F3 78 */	mr r3, r30
/* 8012F2CC  38 80 00 5D */	li r4, 0x5d
/* 8012F2D0  4B FF 95 3D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012F2D4  2C 03 00 00 */	cmpwi r3, 0
/* 8012F2D8  40 82 00 24 */	bne lbl_8012F2FC
/* 8012F2DC  7F C3 F3 78 */	mr r3, r30
/* 8012F2E0  38 80 00 0B */	li r4, 0xb
/* 8012F2E4  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha /* 0x8038F138@ha */
/* 8012F2E8  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l /* 0x8038F138@l */
/* 8012F2EC  4B FF A5 5D */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012F2F0  38 00 00 00 */	li r0, 0
/* 8012F2F4  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8012F2F8  48 00 00 3C */	b lbl_8012F334
lbl_8012F2FC:
/* 8012F2FC  38 00 00 01 */	li r0, 1
/* 8012F300  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8012F304  7F C3 F3 78 */	mr r3, r30
/* 8012F308  38 80 00 0E */	li r4, 0xe
/* 8012F30C  4B FF 95 01 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012F310  2C 03 00 00 */	cmpwi r3, 0
/* 8012F314  40 82 00 20 */	bne lbl_8012F334
/* 8012F318  7F C3 F3 78 */	mr r3, r30
/* 8012F31C  38 80 00 0E */	li r4, 0xe
/* 8012F320  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha /* 0x8038F138@ha */
/* 8012F324  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l /* 0x8038F138@l */
/* 8012F328  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 8012F32C  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 8012F330  4B FF A3 A9 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_8012F334:
/* 8012F334  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8012F338  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8012F33C  38 60 00 01 */	li r3, 1
lbl_8012F340:
/* 8012F340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F344  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012F348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F34C  7C 08 03 A6 */	mtlr r0
/* 8012F350  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F354  4E 80 00 20 */	blr 
