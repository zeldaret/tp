lbl_800C3C3C:
/* 800C3C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C3C40  7C 08 02 A6 */	mflr r0
/* 800C3C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3C4C  93 C1 00 08 */	stw r30, 8(r1)
/* 800C3C50  7C 7F 1B 78 */	mr r31, r3
/* 800C3C54  7C 9E 23 78 */	mr r30, r4
/* 800C3C58  38 80 00 09 */	li r4, 9
/* 800C3C5C  4B FF F1 49 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C3C60  2C 03 00 00 */	cmpwi r3, 0
/* 800C3C64  40 82 00 0C */	bne lbl_800C3C70
/* 800C3C68  38 60 00 00 */	li r3, 0
/* 800C3C6C  48 00 00 B4 */	b lbl_800C3D20
lbl_800C3C70:
/* 800C3C70  7F E3 FB 78 */	mr r3, r31
/* 800C3C74  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800C3C78  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800C3C7C  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C3C80  4B FE A1 95 */	bl setBlendMoveAnime__9daAlink_cFf
/* 800C3C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800C3C88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800C3C8C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800C3C90  60 00 08 00 */	ori r0, r0, 0x800
/* 800C3C94  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800C3C98  2C 1E 00 00 */	cmpwi r30, 0
/* 800C3C9C  41 82 00 48 */	beq lbl_800C3CE4
/* 800C3CA0  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha
/* 800C3CA4  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l
/* 800C3CA8  A8 83 00 14 */	lha r4, 0x14(r3)
/* 800C3CAC  54 83 10 3A */	slwi r3, r4, 2
/* 800C3CB0  38 03 4A 56 */	addi r0, r3, 0x4a56
/* 800C3CB4  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800C3CB8  54 80 08 3C */	slwi r0, r4, 1
/* 800C3CBC  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800C3CC0  38 00 00 02 */	li r0, 2
/* 800C3CC4  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 800C3CC8  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800C3CCC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C3CD0  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800C3CD4  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800C3CD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C3CDC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C3CE0  48 00 00 24 */	b lbl_800C3D04
lbl_800C3CE4:
/* 800C3CE4  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha
/* 800C3CE8  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l
/* 800C3CEC  A8 63 00 14 */	lha r3, 0x14(r3)
/* 800C3CF0  54 60 08 3C */	slwi r0, r3, 1
/* 800C3CF4  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800C3CF8  B0 7F 30 10 */	sth r3, 0x3010(r31)
/* 800C3CFC  38 00 00 03 */	li r0, 3
/* 800C3D00  B0 1F 30 0A */	sth r0, 0x300a(r31)
lbl_800C3D04:
/* 800C3D04  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha
/* 800C3D08  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l
/* 800C3D0C  A8 63 00 14 */	lha r3, 0x14(r3)
/* 800C3D10  54 60 08 3C */	slwi r0, r3, 1
/* 800C3D14  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800C3D18  B0 7F 30 10 */	sth r3, 0x3010(r31)
/* 800C3D1C  38 60 00 01 */	li r3, 1
lbl_800C3D20:
/* 800C3D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C3D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3D2C  7C 08 03 A6 */	mtlr r0
/* 800C3D30  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3D34  4E 80 00 20 */	blr 
