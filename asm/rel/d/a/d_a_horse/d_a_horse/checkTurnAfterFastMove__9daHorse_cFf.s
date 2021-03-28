lbl_808409C0:
/* 808409C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808409C4  7C 08 02 A6 */	mflr r0
/* 808409C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808409CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808409D0  93 C1 00 08 */	stw r30, 8(r1)
/* 808409D4  7C 7F 1B 78 */	mr r31, r3
/* 808409D8  C0 03 17 7C */	lfs f0, 0x177c(r3)
/* 808409DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808409E0  40 81 01 2C */	ble lbl_80840B0C
/* 808409E4  4B FF FF 0D */	bl checkTgHitTurn__9daHorse_cFv
/* 808409E8  2C 03 00 00 */	cmpwi r3, 0
/* 808409EC  41 82 00 0C */	beq lbl_808409F8
/* 808409F0  38 60 00 01 */	li r3, 1
/* 808409F4  48 00 01 1C */	b lbl_80840B10
lbl_808409F8:
/* 808409F8  C0 3F 17 58 */	lfs f1, 0x1758(r31)
/* 808409FC  3C 60 80 84 */	lis r3, lit_5722@ha
/* 80840A00  C0 03 56 78 */	lfs f0, lit_5722@l(r3)
/* 80840A04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80840A08  40 81 01 04 */	ble lbl_80840B0C
/* 80840A0C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80840A10  A8 1F 16 EC */	lha r0, 0x16ec(r31)
/* 80840A14  7C 03 00 50 */	subf r0, r3, r0
/* 80840A18  7C 03 07 34 */	extsh r3, r0
/* 80840A1C  4B B2 46 B4 */	b abs
/* 80840A20  7C 7E 1B 78 */	mr r30, r3
/* 80840A24  88 7F 16 BC */	lbz r3, 0x16bc(r31)
/* 80840A28  28 03 00 00 */	cmplwi r3, 0
/* 80840A2C  41 82 00 1C */	beq lbl_80840A48
/* 80840A30  38 03 FF FF */	addi r0, r3, -1
/* 80840A34  98 1F 16 BC */	stb r0, 0x16bc(r31)
/* 80840A38  7F E3 FB 78 */	mr r3, r31
/* 80840A3C  38 80 00 00 */	li r4, 0
/* 80840A40  48 00 1E 39 */	bl procTurnInit__9daHorse_cFi
/* 80840A44  48 00 00 CC */	b lbl_80840B10
lbl_80840A48:
/* 80840A48  2C 1E 20 00 */	cmpwi r30, 0x2000
/* 80840A4C  40 80 00 3C */	bge lbl_80840A88
/* 80840A50  7F E3 FB 78 */	mr r3, r31
/* 80840A54  38 80 00 01 */	li r4, 1
/* 80840A58  4B FF B4 F1 */	bl checkHorseNoMove__9daHorse_cFi
/* 80840A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80840A60  40 82 00 28 */	bne lbl_80840A88
/* 80840A64  3C 60 80 84 */	lis r3, m__14daHorse_hio_c0@ha
/* 80840A68  38 63 54 CC */	addi r3, r3, m__14daHorse_hio_c0@l
/* 80840A6C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80840A70  C0 1F 17 8C */	lfs f0, 0x178c(r31)
/* 80840A74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80840A78  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80840A7C  7F E3 FB 78 */	mr r3, r31
/* 80840A80  48 00 14 85 */	bl procMoveInit__9daHorse_cFv
/* 80840A84  48 00 00 8C */	b lbl_80840B10
lbl_80840A88:
/* 80840A88  88 1F 16 B4 */	lbz r0, 0x16b4(r31)
/* 80840A8C  28 00 00 03 */	cmplwi r0, 3
/* 80840A90  40 82 00 18 */	bne lbl_80840AA8
/* 80840A94  A8 1F 17 22 */	lha r0, 0x1722(r31)
/* 80840A98  2C 00 00 00 */	cmpwi r0, 0
/* 80840A9C  41 82 00 0C */	beq lbl_80840AA8
/* 80840AA0  38 60 00 00 */	li r3, 0
/* 80840AA4  48 00 00 6C */	b lbl_80840B10
lbl_80840AA8:
/* 80840AA8  2C 1E 60 00 */	cmpwi r30, 0x6000
/* 80840AAC  40 80 00 10 */	bge lbl_80840ABC
/* 80840AB0  7F E3 FB 78 */	mr r3, r31
/* 80840AB4  48 00 0C 55 */	bl procWaitInit__9daHorse_cFv
/* 80840AB8  48 00 00 58 */	b lbl_80840B10
lbl_80840ABC:
/* 80840ABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80840AC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80840AC4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80840AC8  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80840ACC  28 00 00 3D */	cmplwi r0, 0x3d
/* 80840AD0  40 82 00 3C */	bne lbl_80840B0C
/* 80840AD4  7F E3 FB 78 */	mr r3, r31
/* 80840AD8  4B FF FD 6D */	bl checkTurnInput__9daHorse_cFv
/* 80840ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80840AE0  41 82 00 20 */	beq lbl_80840B00
/* 80840AE4  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 80840AE8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80840AEC  40 82 00 14 */	bne lbl_80840B00
/* 80840AF0  7F E3 FB 78 */	mr r3, r31
/* 80840AF4  38 80 00 00 */	li r4, 0
/* 80840AF8  48 00 1D 81 */	bl procTurnInit__9daHorse_cFi
/* 80840AFC  48 00 00 14 */	b lbl_80840B10
lbl_80840B00:
/* 80840B00  7F E3 FB 78 */	mr r3, r31
/* 80840B04  48 00 0C 05 */	bl procWaitInit__9daHorse_cFv
/* 80840B08  48 00 00 08 */	b lbl_80840B10
lbl_80840B0C:
/* 80840B0C  38 60 00 00 */	li r3, 0
lbl_80840B10:
/* 80840B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80840B14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80840B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80840B1C  7C 08 03 A6 */	mtlr r0
/* 80840B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80840B24  4E 80 00 20 */	blr 
