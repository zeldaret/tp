lbl_804BEDB8:
/* 804BEDB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BEDBC  7C 08 02 A6 */	mflr r0
/* 804BEDC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BEDC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804BEDC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804BEDCC  7C 7E 1B 78 */	mr r30, r3
/* 804BEDD0  3C 60 80 4C */	lis r3, lit_3777@ha /* 0x804C64C8@ha */
/* 804BEDD4  3B E3 64 C8 */	addi r31, r3, lit_3777@l /* 0x804C64C8@l */
/* 804BEDD8  38 7F 01 1C */	addi r3, r31, 0x11c
/* 804BEDDC  A0 63 00 D8 */	lhz r3, 0xd8(r3)
/* 804BEDE0  A0 1E 05 E4 */	lhz r0, 0x5e4(r30)
/* 804BEDE4  7C 03 00 40 */	cmplw r3, r0
/* 804BEDE8  40 82 00 18 */	bne lbl_804BEE00
/* 804BEDEC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BEDF0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804BEDF4  C0 1F 04 1C */	lfs f0, 0x41c(r31)
/* 804BEDF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BEDFC  41 81 00 20 */	bgt lbl_804BEE1C
lbl_804BEE00:
/* 804BEE00  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804BEE04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEE08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BEE0C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BEE10  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BEE14  38 BE 05 38 */	addi r5, r30, 0x538
/* 804BEE18  4B E8 7F 55 */	bl PSMTXMultVec
lbl_804BEE1C:
/* 804BEE1C  88 9E 08 4E */	lbz r4, 0x84e(r30)
/* 804BEE20  28 04 00 01 */	cmplwi r4, 1
/* 804BEE24  41 82 00 2C */	beq lbl_804BEE50
/* 804BEE28  38 7F 01 1C */	addi r3, r31, 0x11c
/* 804BEE2C  A0 63 00 C0 */	lhz r3, 0xc0(r3)
/* 804BEE30  A0 1E 05 E4 */	lhz r0, 0x5e4(r30)
/* 804BEE34  7C 03 00 40 */	cmplw r3, r0
/* 804BEE38  40 82 00 A4 */	bne lbl_804BEEDC
/* 804BEE3C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 804BEE40  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804BEE44  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 804BEE48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BEE4C  40 80 00 90 */	bge lbl_804BEEDC
lbl_804BEE50:
/* 804BEE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BEE54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BEE58  80 A3 5D B4 */	lwz r5, 0x5db4(r3)
/* 804BEE5C  80 05 05 74 */	lwz r0, 0x574(r5)
/* 804BEE60  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804BEE64  41 82 00 0C */	beq lbl_804BEE70
/* 804BEE68  C0 9F 04 24 */	lfs f4, 0x424(r31)
/* 804BEE6C  48 00 00 08 */	b lbl_804BEE74
lbl_804BEE70:
/* 804BEE70  C0 9F 04 28 */	lfs f4, 0x428(r31)
lbl_804BEE74:
/* 804BEE74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804BEE78  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804BEE7C  A8 05 04 E6 */	lha r0, 0x4e6(r5)
/* 804BEE80  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804BEE84  7C 64 02 14 */	add r3, r4, r0
/* 804BEE88  C0 03 00 04 */	lfs f0, 4(r3)
/* 804BEE8C  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 804BEE90  EC 04 00 32 */	fmuls f0, f4, f0
/* 804BEE94  EC 61 00 2A */	fadds f3, f1, f0
/* 804BEE98  C0 25 04 D4 */	lfs f1, 0x4d4(r5)
/* 804BEE9C  C0 1F 04 2C */	lfs f0, 0x42c(r31)
/* 804BEEA0  EC 41 00 28 */	fsubs f2, f1, f0
/* 804BEEA4  7C 04 04 2E */	lfsx f0, r4, r0
/* 804BEEA8  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 804BEEAC  EC 04 00 32 */	fmuls f0, f4, f0
/* 804BEEB0  EC 01 00 2A */	fadds f0, f1, f0
/* 804BEEB4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 804BEEB8  D0 5E 05 54 */	stfs f2, 0x554(r30)
/* 804BEEBC  D0 7E 05 58 */	stfs f3, 0x558(r30)
/* 804BEEC0  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 804BEEC4  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 804BEEC8  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 804BEECC  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 804BEED0  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 804BEED4  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 804BEED8  48 00 00 48 */	b lbl_804BEF20
lbl_804BEEDC:
/* 804BEEDC  28 04 00 02 */	cmplwi r4, 2
/* 804BEEE0  40 82 00 20 */	bne lbl_804BEF00
/* 804BEEE4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 804BEEE8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 804BEEEC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 804BEEF0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 804BEEF4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 804BEEF8  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 804BEEFC  48 00 00 24 */	b lbl_804BEF20
lbl_804BEF00:
/* 804BEF00  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 804BEF04  C0 3F 04 30 */	lfs f1, 0x430(r31)
/* 804BEF08  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804BEF0C  EC 21 00 2A */	fadds f1, f1, f0
/* 804BEF10  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804BEF14  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 804BEF18  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 804BEF1C  D0 5E 05 58 */	stfs f2, 0x558(r30)
lbl_804BEF20:
/* 804BEF20  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804BEF24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEF28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BEF2C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BEF30  38 9F 00 20 */	addi r4, r31, 0x20
/* 804BEF34  38 BE 09 58 */	addi r5, r30, 0x958
/* 804BEF38  4B E8 7E 35 */	bl PSMTXMultVec
/* 804BEF3C  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804BEF40  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804BEF44  40 82 00 44 */	bne lbl_804BEF88
/* 804BEF48  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804BEF4C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BEF50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BEF54  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BEF58  38 9F 04 10 */	addi r4, r31, 0x410
/* 804BEF5C  38 A1 00 08 */	addi r5, r1, 8
/* 804BEF60  4B E8 7E 0D */	bl PSMTXMultVec
/* 804BEF64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BEF68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BEF6C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804BEF70  C0 01 00 08 */	lfs f0, 8(r1)
/* 804BEF74  D0 03 05 B0 */	stfs f0, 0x5b0(r3)
/* 804BEF78  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804BEF7C  D0 03 05 B4 */	stfs f0, 0x5b4(r3)
/* 804BEF80  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804BEF84  D0 03 05 B8 */	stfs f0, 0x5b8(r3)
lbl_804BEF88:
/* 804BEF88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804BEF8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804BEF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BEF94  7C 08 03 A6 */	mtlr r0
/* 804BEF98  38 21 00 20 */	addi r1, r1, 0x20
/* 804BEF9C  4E 80 00 20 */	blr 
