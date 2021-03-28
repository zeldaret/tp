lbl_800C5CA4:
/* 800C5CA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800C5CA8  7C 08 02 A6 */	mflr r0
/* 800C5CAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800C5CB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800C5CB4  7C 7F 1B 78 */	mr r31, r3
/* 800C5CB8  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800C5CBC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C5CC0  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha
/* 800C5CC4  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l
/* 800C5CC8  C0 44 00 44 */	lfs f2, 0x44(r4)
/* 800C5CCC  48 1A AA 75 */	bl cLib_chaseF__FPfff
/* 800C5CD0  7F E3 FB 78 */	mr r3, r31
/* 800C5CD4  4B FE DC 31 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800C5CD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5CDC  41 82 00 60 */	beq lbl_800C5D3C
/* 800C5CE0  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800C5CE4  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800C5CE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C5CEC  40 81 00 40 */	ble lbl_800C5D2C
/* 800C5CF0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C5CF4  3C 63 00 01 */	addis r3, r3, 1
/* 800C5CF8  38 03 80 00 */	addi r0, r3, -32768
/* 800C5CFC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C5D00  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C5D04  38 03 01 00 */	addi r0, r3, 0x100
/* 800C5D08  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800C5D0C  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800C5D10  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800C5D14  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C5D18  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C5D1C  7F E3 FB 78 */	mr r3, r31
/* 800C5D20  38 80 00 00 */	li r4, 0
/* 800C5D24  4B FF DF 19 */	bl procMoveTurnInit__9daAlink_cFi
/* 800C5D28  48 00 01 28 */	b lbl_800C5E50
lbl_800C5D2C:
/* 800C5D2C  7F E3 FB 78 */	mr r3, r31
/* 800C5D30  38 80 00 00 */	li r4, 0
/* 800C5D34  4B FF 43 9D */	bl checkNextAction__9daAlink_cFi
/* 800C5D38  48 00 01 18 */	b lbl_800C5E50
lbl_800C5D3C:
/* 800C5D3C  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800C5D40  38 03 FF FF */	addi r0, r3, -1
/* 800C5D44  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800C5D48  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800C5D4C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C5D50  40 82 00 1C */	bne lbl_800C5D6C
/* 800C5D54  80 1F 31 74 */	lwz r0, 0x3174(r31)
/* 800C5D58  2C 00 00 08 */	cmpwi r0, 8
/* 800C5D5C  40 82 00 2C */	bne lbl_800C5D88
/* 800C5D60  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800C5D64  2C 00 00 00 */	cmpwi r0, 0
/* 800C5D68  40 82 00 20 */	bne lbl_800C5D88
lbl_800C5D6C:
/* 800C5D6C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C5D70  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C5D74  7F E3 FB 78 */	mr r3, r31
/* 800C5D78  38 80 00 00 */	li r4, 0
/* 800C5D7C  4B FF 43 55 */	bl checkNextAction__9daAlink_cFi
/* 800C5D80  38 60 00 01 */	li r3, 1
/* 800C5D84  48 00 00 D0 */	b lbl_800C5E54
lbl_800C5D88:
/* 800C5D88  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800C5D8C  C0 02 93 D8 */	lfs f0, lit_11470(r2)
/* 800C5D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C5D94  40 81 00 0C */	ble lbl_800C5DA0
/* 800C5D98  38 00 00 40 */	li r0, 0x40
/* 800C5D9C  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
lbl_800C5DA0:
/* 800C5DA0  C0 9F 04 D0 */	lfs f4, 0x4d0(r31)
/* 800C5DA4  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 800C5DA8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800C5DAC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800C5DB0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 800C5DB4  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 800C5DB8  C0 02 93 D8 */	lfs f0, lit_11470(r2)
/* 800C5DBC  EC 41 00 2A */	fadds f2, f1, f0
/* 800C5DC0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800C5DC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800C5DC8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800C5DCC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800C5DD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C5DD4  7C 64 02 14 */	add r3, r4, r0
/* 800C5DD8  C0 A3 00 04 */	lfs f5, 4(r3)
/* 800C5DDC  7C 04 04 2E */	lfsx f0, r4, r0
/* 800C5DE0  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800C5DE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C5DE8  EC 04 00 2A */	fadds f0, f4, f0
/* 800C5DEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 800C5DF0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800C5DF4  EC 01 01 72 */	fmuls f0, f1, f5
/* 800C5DF8  EC 03 00 2A */	fadds f0, f3, f0
/* 800C5DFC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800C5E00  7F E3 FB 78 */	mr r3, r31
/* 800C5E04  38 81 00 14 */	addi r4, r1, 0x14
/* 800C5E08  38 A1 00 08 */	addi r5, r1, 8
/* 800C5E0C  4B FD C3 8D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800C5E10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5E14  41 82 00 2C */	beq lbl_800C5E40
/* 800C5E18  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 800C5E1C  4B FA FE F1 */	bl dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 800C5E20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5E24  41 82 00 1C */	beq lbl_800C5E40
/* 800C5E28  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C5E2C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C5E30  7F E3 FB 78 */	mr r3, r31
/* 800C5E34  38 80 00 00 */	li r4, 0
/* 800C5E38  4B FF 42 99 */	bl checkNextAction__9daAlink_cFi
/* 800C5E3C  48 00 00 18 */	b lbl_800C5E54
lbl_800C5E40:
/* 800C5E40  7F E3 FB 78 */	mr r3, r31
/* 800C5E44  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030017@ha */
/* 800C5E48  38 84 00 17 */	addi r4, r4, 0x0017 /* 0x00030017@l */
/* 800C5E4C  4B FF 93 81 */	bl seStartMapInfoLevel__9daAlink_cFUl
lbl_800C5E50:
/* 800C5E50  38 60 00 01 */	li r3, 1
lbl_800C5E54:
/* 800C5E54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800C5E58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800C5E5C  7C 08 03 A6 */	mtlr r0
/* 800C5E60  38 21 00 30 */	addi r1, r1, 0x30
/* 800C5E64  4E 80 00 20 */	blr 
