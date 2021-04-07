lbl_800E20C8:
/* 800E20C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E20CC  7C 08 02 A6 */	mflr r0
/* 800E20D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E20D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E20D8  7C 7F 1B 78 */	mr r31, r3
/* 800E20DC  38 80 00 65 */	li r4, 0x65
/* 800E20E0  4B FD FE 8D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E20E4  7F E3 FB 78 */	mr r3, r31
/* 800E20E8  4B FF F2 8D */	bl getCopyRodControllActor__9daAlink_cFv
/* 800E20EC  28 03 00 00 */	cmplwi r3, 0
/* 800E20F0  41 82 00 68 */	beq lbl_800E2158
/* 800E20F4  A8 83 00 08 */	lha r4, 8(r3)
/* 800E20F8  2C 04 01 98 */	cmpwi r4, 0x198
/* 800E20FC  40 82 00 10 */	bne lbl_800E210C
/* 800E2100  88 03 0A DD */	lbz r0, 0xadd(r3)
/* 800E2104  28 00 00 01 */	cmplwi r0, 1
/* 800E2108  40 82 00 0C */	bne lbl_800E2114
lbl_800E210C:
/* 800E210C  2C 04 01 98 */	cmpwi r4, 0x198
/* 800E2110  41 82 00 48 */	beq lbl_800E2158
lbl_800E2114:
/* 800E2114  7F E3 FB 78 */	mr r3, r31
/* 800E2118  38 80 01 79 */	li r4, 0x179
/* 800E211C  3C A0 80 39 */	lis r5, m__21daAlinkHIO_copyRod_c0@ha /* 0x8038EAFC@ha */
/* 800E2120  38 A5 EA FC */	addi r5, r5, m__21daAlinkHIO_copyRod_c0@l /* 0x8038EAFC@l */
/* 800E2124  38 A5 00 14 */	addi r5, r5, 0x14
/* 800E2128  4B FC AF CD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E212C  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800E2130  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800E2134  C0 02 93 F0 */	lfs f0, lit_13382(r2)
/* 800E2138  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800E213C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_copyRod_c0@ha /* 0x8038EAFC@ha */
/* 800E2140  38 63 EA FC */	addi r3, r3, m__21daAlinkHIO_copyRod_c0@l /* 0x8038EAFC@l */
/* 800E2144  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800E2148  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 800E214C  C0 02 93 38 */	lfs f0, lit_7807(r2)
/* 800E2150  D0 1F 34 84 */	stfs f0, 0x3484(r31)
/* 800E2154  48 00 00 40 */	b lbl_800E2194
lbl_800E2158:
/* 800E2158  7F E3 FB 78 */	mr r3, r31
/* 800E215C  38 80 01 78 */	li r4, 0x178
/* 800E2160  3C A0 80 39 */	lis r5, m__21daAlinkHIO_copyRod_c0@ha /* 0x8038EAFC@ha */
/* 800E2164  38 A5 EA FC */	addi r5, r5, m__21daAlinkHIO_copyRod_c0@l /* 0x8038EAFC@l */
/* 800E2168  4B FC AF 8D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E216C  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800E2170  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800E2174  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 800E2178  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800E217C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_copyRod_c0@ha /* 0x8038EAFC@ha */
/* 800E2180  38 63 EA FC */	addi r3, r3, m__21daAlinkHIO_copyRod_c0@l /* 0x8038EAFC@l */
/* 800E2184  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800E2188  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 800E218C  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800E2190  D0 1F 34 84 */	stfs f0, 0x3484(r31)
lbl_800E2194:
/* 800E2194  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2198  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E219C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E21A0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E21A4  38 00 00 01 */	li r0, 1
/* 800E21A8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E21AC  38 00 00 00 */	li r0, 0
/* 800E21B0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800E21B4  7F E3 FB 78 */	mr r3, r31
/* 800E21B8  3C 80 00 01 */	lis r4, 1
/* 800E21BC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E21C0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E21C4  7D 89 03 A6 */	mtctr r12
/* 800E21C8  4E 80 04 21 */	bctrl 
/* 800E21CC  C0 02 93 D4 */	lfs f0, lit_11442(r2)
/* 800E21D0  D0 1F 13 6C */	stfs f0, 0x136c(r31)
/* 800E21D4  3C 00 00 80 */	lis r0, 0x80
/* 800E21D8  90 1F 12 3C */	stw r0, 0x123c(r31)
/* 800E21DC  7F E3 FB 78 */	mr r3, r31
/* 800E21E0  4B FC 99 49 */	bl cancelLockAt__9daAlink_cFv
/* 800E21E4  38 60 00 01 */	li r3, 1
/* 800E21E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E21EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E21F0  7C 08 03 A6 */	mtlr r0
/* 800E21F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E21F8  4E 80 00 20 */	blr 
