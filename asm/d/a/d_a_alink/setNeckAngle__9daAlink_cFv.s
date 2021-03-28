lbl_800A1F90:
/* 800A1F90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A1F94  7C 08 02 A6 */	mflr r0
/* 800A1F98  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A1F9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800A1FA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800A1FA4  7C 7F 1B 78 */	mr r31, r3
/* 800A1FA8  38 00 00 00 */	li r0, 0
/* 800A1FAC  B0 01 00 0E */	sth r0, 0xe(r1)
/* 800A1FB0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 800A1FB4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800A1FB8  B0 01 00 08 */	sth r0, 8(r1)
/* 800A1FBC  38 00 00 02 */	li r0, 2
/* 800A1FC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 800A1FC4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800A1FC8  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 800A1FCC  90 03 05 74 */	stw r0, 0x574(r3)
/* 800A1FD0  38 81 00 14 */	addi r4, r1, 0x14
/* 800A1FD4  38 A1 00 10 */	addi r5, r1, 0x10
/* 800A1FD8  38 C0 00 01 */	li r6, 1
/* 800A1FDC  4B FF E9 61 */	bl getNeckAimPos__9daAlink_cFP4cXyzPii
/* 800A1FE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A1FE4  41 82 00 88 */	beq lbl_800A206C
/* 800A1FE8  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800A1FEC  3C 60 08 00 */	lis r3, 0x0800 /* 0x08000100@ha */
/* 800A1FF0  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x08000100@l */
/* 800A1FF4  7C 80 00 39 */	and. r0, r4, r0
/* 800A1FF8  41 82 00 74 */	beq lbl_800A206C
/* 800A1FFC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A2000  60 00 00 04 */	ori r0, r0, 4
/* 800A2004  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800A2008  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800A200C  2C 00 00 00 */	cmpwi r0, 0
/* 800A2010  41 82 00 70 */	beq lbl_800A2080
/* 800A2014  2C 00 00 01 */	cmpwi r0, 1
/* 800A2018  40 82 00 2C */	bne lbl_800A2044
/* 800A201C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 800A2020  D0 1F 35 F4 */	stfs f0, 0x35f4(r31)
/* 800A2024  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 800A2028  D0 1F 35 F8 */	stfs f0, 0x35f8(r31)
/* 800A202C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 800A2030  D0 1F 35 FC */	stfs f0, 0x35fc(r31)
/* 800A2034  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A2038  64 00 00 08 */	oris r0, r0, 8
/* 800A203C  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800A2040  48 00 00 40 */	b lbl_800A2080
lbl_800A2044:
/* 800A2044  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800A2048  D0 1F 35 F4 */	stfs f0, 0x35f4(r31)
/* 800A204C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 800A2050  D0 1F 35 F8 */	stfs f0, 0x35f8(r31)
/* 800A2054  C0 1E 00 08 */	lfs f0, 8(r30)
/* 800A2058  D0 1F 35 FC */	stfs f0, 0x35fc(r31)
/* 800A205C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A2060  64 00 00 08 */	oris r0, r0, 8
/* 800A2064  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800A2068  48 00 00 18 */	b lbl_800A2080
lbl_800A206C:
/* 800A206C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 800A2070  3C 60 FF F8 */	lis r3, 0xFFF8 /* 0xFFF7FFFB@ha */
/* 800A2074  38 03 FF FB */	addi r0, r3, 0xFFFB /* 0xFFF7FFFB@l */
/* 800A2078  7C 80 00 38 */	and r0, r4, r0
/* 800A207C  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_800A2080:
/* 800A2080  7F E3 FB 78 */	mr r3, r31
/* 800A2084  38 80 00 72 */	li r4, 0x72
/* 800A2088  48 08 67 85 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 800A208C  2C 03 00 00 */	cmpwi r3, 0
/* 800A2090  40 82 00 54 */	bne lbl_800A20E4
/* 800A2094  7F E3 FB 78 */	mr r3, r31
/* 800A2098  38 80 00 54 */	li r4, 0x54
/* 800A209C  48 00 A4 BD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A20A0  2C 03 00 00 */	cmpwi r3, 0
/* 800A20A4  40 82 00 40 */	bne lbl_800A20E4
/* 800A20A8  7F E3 FB 78 */	mr r3, r31
/* 800A20AC  38 80 01 85 */	li r4, 0x185
/* 800A20B0  48 00 A4 A9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A20B4  2C 03 00 00 */	cmpwi r3, 0
/* 800A20B8  40 82 00 2C */	bne lbl_800A20E4
/* 800A20BC  7F E3 FB 78 */	mr r3, r31
/* 800A20C0  38 80 00 5A */	li r4, 0x5a
/* 800A20C4  48 00 A4 95 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A20C8  2C 03 00 00 */	cmpwi r3, 0
/* 800A20CC  40 82 00 18 */	bne lbl_800A20E4
/* 800A20D0  7F E3 FB 78 */	mr r3, r31
/* 800A20D4  38 80 00 5B */	li r4, 0x5b
/* 800A20D8  48 00 A4 81 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A20DC  2C 03 00 00 */	cmpwi r3, 0
/* 800A20E0  41 82 00 08 */	beq lbl_800A20E8
lbl_800A20E4:
/* 800A20E4  3B C0 00 00 */	li r30, 0
lbl_800A20E8:
/* 800A20E8  7F E3 FB 78 */	mr r3, r31
/* 800A20EC  7F C4 F3 78 */	mr r4, r30
/* 800A20F0  38 A1 00 0E */	addi r5, r1, 0xe
/* 800A20F4  38 C1 00 0C */	addi r6, r1, 0xc
/* 800A20F8  38 E1 00 0A */	addi r7, r1, 0xa
/* 800A20FC  39 01 00 08 */	addi r8, r1, 8
/* 800A2100  4B FF F3 2D */	bl getNeckAimAngle__9daAlink_cFP4cXyzPsPsPsPs
/* 800A2104  38 7F 31 24 */	addi r3, r31, 0x3124
/* 800A2108  A8 81 00 0E */	lha r4, 0xe(r1)
/* 800A210C  38 A0 00 03 */	li r5, 3
/* 800A2110  38 C0 10 00 */	li r6, 0x1000
/* 800A2114  38 E0 01 00 */	li r7, 0x100
/* 800A2118  48 0B D8 65 */	bl daPy_addCalcShort__FPsssss
/* 800A211C  38 7F 31 26 */	addi r3, r31, 0x3126
/* 800A2120  A8 81 00 0C */	lha r4, 0xc(r1)
/* 800A2124  38 A0 00 03 */	li r5, 3
/* 800A2128  38 C0 10 00 */	li r6, 0x1000
/* 800A212C  38 E0 01 00 */	li r7, 0x100
/* 800A2130  48 0B D8 4D */	bl daPy_addCalcShort__FPsssss
/* 800A2134  7F E3 FB 78 */	mr r3, r31
/* 800A2138  7F C4 F3 78 */	mr r4, r30
/* 800A213C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 800A2140  A8 C1 00 08 */	lha r6, 8(r1)
/* 800A2144  4B FF F9 A9 */	bl setEyeMove__9daAlink_cFP4cXyzss
/* 800A2148  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800A214C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800A2150  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A2154  7C 08 03 A6 */	mtlr r0
/* 800A2158  38 21 00 30 */	addi r1, r1, 0x30
/* 800A215C  4E 80 00 20 */	blr 
