lbl_800F2028:
/* 800F2028  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F202C  7C 08 02 A6 */	mflr r0
/* 800F2030  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F2034  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800F2038  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800F203C  7C 7F 1B 78 */	mr r31, r3
/* 800F2040  38 80 00 00 */	li r4, 0
/* 800F2044  4B FF C8 D5 */	bl setSyncRide__9daAlink_cFi
/* 800F2048  2C 03 00 00 */	cmpwi r3, 0
/* 800F204C  40 82 00 0C */	bne lbl_800F2058
/* 800F2050  38 60 00 01 */	li r3, 1
/* 800F2054  48 00 00 E4 */	b lbl_800F2138
lbl_800F2058:
/* 800F2058  3B DF 20 48 */	addi r30, r31, 0x2048
/* 800F205C  C0 7F 34 7C */	lfs f3, 0x347c(r31)
/* 800F2060  C0 5F 20 58 */	lfs f2, 0x2058(r31)
/* 800F2064  A8 1F 20 4E */	lha r0, 0x204e(r31)
/* 800F2068  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F206C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F2070  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F2074  3C 00 43 30 */	lis r0, 0x4330
/* 800F2078  90 01 00 08 */	stw r0, 8(r1)
/* 800F207C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F2080  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F2084  EC 02 00 28 */	fsubs f0, f2, f0
/* 800F2088  EC 23 00 32 */	fmuls f1, f3, f0
/* 800F208C  48 17 55 59 */	bl cM_rad2s__Ff
/* 800F2090  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800F2094  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800F2098  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800F209C  7C 43 04 2E */	lfsx f2, r3, r0
/* 800F20A0  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800F20A4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F20A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F20AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F20B0  3C 60 43 30 */	lis r3, 0x4330
/* 800F20B4  90 61 00 10 */	stw r3, 0x10(r1)
/* 800F20B8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800F20BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F20C0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800F20C4  FC 00 00 1E */	fctiwz f0, f0
/* 800F20C8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800F20CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800F20D0  B0 1F 05 9C */	sth r0, 0x59c(r31)
/* 800F20D4  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800F20D8  7C 00 00 D0 */	neg r0, r0
/* 800F20DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F20E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F20E4  90 61 00 20 */	stw r3, 0x20(r1)
/* 800F20E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800F20EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F20F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800F20F4  FC 00 00 1E */	fctiwz f0, f0
/* 800F20F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800F20FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800F2100  B0 1F 05 A0 */	sth r0, 0x5a0(r31)
/* 800F2104  38 00 00 00 */	li r0, 0
/* 800F2108  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 800F210C  7F C3 F3 78 */	mr r3, r30
/* 800F2110  48 06 C3 BD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F2114  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F2118  41 82 00 1C */	beq lbl_800F2134
/* 800F211C  7F E3 FB 78 */	mr r3, r31
/* 800F2120  38 80 00 02 */	li r4, 2
/* 800F2124  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800F2128  4B FB B5 FD */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F212C  7F E3 FB 78 */	mr r3, r31
/* 800F2130  4B FF E8 51 */	bl procHorseWaitInit__9daAlink_cFv
lbl_800F2134:
/* 800F2134  38 60 00 01 */	li r3, 1
lbl_800F2138:
/* 800F2138  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800F213C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800F2140  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F2144  7C 08 03 A6 */	mtlr r0
/* 800F2148  38 21 00 40 */	addi r1, r1, 0x40
/* 800F214C  4E 80 00 20 */	blr 
