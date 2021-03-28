lbl_800C6D20:
/* 800C6D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6D24  7C 08 02 A6 */	mflr r0
/* 800C6D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C6D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C6D30  93 C1 00 08 */	stw r30, 8(r1)
/* 800C6D34  7C 7F 1B 78 */	mr r31, r3
/* 800C6D38  A8 63 30 12 */	lha r3, 0x3012(r3)
/* 800C6D3C  7C 60 07 35 */	extsh. r0, r3
/* 800C6D40  40 82 00 18 */	bne lbl_800C6D58
/* 800C6D44  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800C6D48  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C6D4C  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 800C6D50  48 1A 99 F1 */	bl cLib_chaseF__FPfff
/* 800C6D54  48 00 00 1C */	b lbl_800C6D70
lbl_800C6D58:
/* 800C6D58  7C 60 07 35 */	extsh. r0, r3
/* 800C6D5C  40 81 00 14 */	ble lbl_800C6D70
/* 800C6D60  38 00 FF FF */	li r0, -1
/* 800C6D64  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800C6D68  38 60 00 01 */	li r3, 1
/* 800C6D6C  48 00 01 94 */	b lbl_800C6F00
lbl_800C6D70:
/* 800C6D70  7F E3 FB 78 */	mr r3, r31
/* 800C6D74  4B FE EE C1 */	bl setLandPassiveData__9daAlink_cFv
/* 800C6D78  7F E3 FB 78 */	mr r3, r31
/* 800C6D7C  4B FF 07 39 */	bl checkUpperItemActionFly__9daAlink_cFv
/* 800C6D80  2C 03 00 00 */	cmpwi r3, 0
/* 800C6D84  41 82 00 0C */	beq lbl_800C6D90
/* 800C6D88  38 60 00 01 */	li r3, 1
/* 800C6D8C  48 00 01 74 */	b lbl_800C6F00
lbl_800C6D90:
/* 800C6D90  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800C6D94  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C6D98  41 82 00 14 */	beq lbl_800C6DAC
/* 800C6D9C  7F E3 FB 78 */	mr r3, r31
/* 800C6DA0  A8 9F 30 0E */	lha r4, 0x300e(r31)
/* 800C6DA4  4B FE EF 29 */	bl checkLandAction__9daAlink_cFi
/* 800C6DA8  48 00 01 58 */	b lbl_800C6F00
lbl_800C6DAC:
/* 800C6DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800C6DB0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 800C6DB4  A0 1E 00 02 */	lhz r0, 2(r30)
/* 800C6DB8  28 00 00 00 */	cmplwi r0, 0
/* 800C6DBC  41 82 01 2C */	beq lbl_800C6EE8
/* 800C6DC0  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800C6DC4  2C 00 00 01 */	cmpwi r0, 1
/* 800C6DC8  40 82 00 80 */	bne lbl_800C6E48
/* 800C6DCC  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 800C6DD0  2C 03 00 00 */	cmpwi r3, 0
/* 800C6DD4  40 81 00 10 */	ble lbl_800C6DE4
/* 800C6DD8  38 03 FF FF */	addi r0, r3, -1
/* 800C6DDC  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 800C6DE0  48 00 00 88 */	b lbl_800C6E68
lbl_800C6DE4:
/* 800C6DE4  7F E3 FB 78 */	mr r3, r31
/* 800C6DE8  4B FE 94 D5 */	bl setFrontWallType__9daAlink_cFv
/* 800C6DEC  80 1F 32 CC */	lwz r0, 0x32cc(r31)
/* 800C6DF0  28 00 00 00 */	cmplwi r0, 0
/* 800C6DF4  40 82 00 3C */	bne lbl_800C6E30
/* 800C6DF8  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800C6DFC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800C6E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6E04  40 81 00 20 */	ble lbl_800C6E24
/* 800C6E08  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C6E0C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800C6E10  7C 03 00 50 */	subf r0, r3, r0
/* 800C6E14  7C 03 07 34 */	extsh r3, r0
/* 800C6E18  4B FE C6 7D */	bl getDirectionFromAngle__9daAlink_cFs
/* 800C6E1C  2C 03 00 00 */	cmpwi r3, 0
/* 800C6E20  41 82 00 10 */	beq lbl_800C6E30
lbl_800C6E24:
/* 800C6E24  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800C6E28  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C6E2C  41 82 00 3C */	beq lbl_800C6E68
lbl_800C6E30:
/* 800C6E30  7F E3 FB 78 */	mr r3, r31
/* 800C6E34  4B FE FB FD */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 800C6E38  2C 03 00 00 */	cmpwi r3, 0
/* 800C6E3C  41 82 00 2C */	beq lbl_800C6E68
/* 800C6E40  38 60 00 01 */	li r3, 1
/* 800C6E44  48 00 00 BC */	b lbl_800C6F00
lbl_800C6E48:
/* 800C6E48  2C 00 00 02 */	cmpwi r0, 2
/* 800C6E4C  40 82 00 1C */	bne lbl_800C6E68
/* 800C6E50  7F E3 FB 78 */	mr r3, r31
/* 800C6E54  4B FE FB DD */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 800C6E58  2C 03 00 00 */	cmpwi r3, 0
/* 800C6E5C  41 82 00 0C */	beq lbl_800C6E68
/* 800C6E60  38 60 00 01 */	li r3, 1
/* 800C6E64  48 00 00 9C */	b lbl_800C6F00
lbl_800C6E68:
/* 800C6E68  7F E3 FB 78 */	mr r3, r31
/* 800C6E6C  4B FE ED 55 */	bl setFallVoice__9daAlink_cFv
/* 800C6E70  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 800C6E74  C0 3F 33 C4 */	lfs f1, 0x33c4(r31)
/* 800C6E78  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800C6E7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C6E80  EC 22 00 32 */	fmuls f1, f2, f0
/* 800C6E84  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C6E88  2C 00 00 00 */	cmpwi r0, 0
/* 800C6E8C  40 82 00 34 */	bne lbl_800C6EC0
/* 800C6E90  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha
/* 800C6E94  38 A3 E4 54 */	addi r5, r3, m__21daAlinkHIO_damFall_c0@l
/* 800C6E98  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 800C6E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6EA0  40 81 00 20 */	ble lbl_800C6EC0
/* 800C6EA4  7F E3 FB 78 */	mr r3, r31
/* 800C6EA8  38 80 00 8C */	li r4, 0x8c
/* 800C6EAC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C6EB0  C0 45 00 44 */	lfs f2, 0x44(r5)
/* 800C6EB4  4B FE 61 2D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C6EB8  38 00 00 01 */	li r0, 1
/* 800C6EBC  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800C6EC0:
/* 800C6EC0  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800C6EC4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C6EC8  7C 03 00 00 */	cmpw r3, r0
/* 800C6ECC  40 82 00 1C */	bne lbl_800C6EE8
/* 800C6ED0  7F E3 FB 78 */	mr r3, r31
/* 800C6ED4  4B FE FA F9 */	bl checkCutJumpInFly__9daAlink_cFv
/* 800C6ED8  2C 03 00 00 */	cmpwi r3, 0
/* 800C6EDC  41 82 00 0C */	beq lbl_800C6EE8
/* 800C6EE0  38 60 00 01 */	li r3, 1
/* 800C6EE4  48 00 00 1C */	b lbl_800C6F00
lbl_800C6EE8:
/* 800C6EE8  A0 1E 00 02 */	lhz r0, 2(r30)
/* 800C6EEC  28 00 00 00 */	cmplwi r0, 0
/* 800C6EF0  41 82 00 0C */	beq lbl_800C6EFC
/* 800C6EF4  7F E3 FB 78 */	mr r3, r31
/* 800C6EF8  4B FF 2A 55 */	bl checkItemChangeFromButton__9daAlink_cFv
lbl_800C6EFC:
/* 800C6EFC  38 60 00 01 */	li r3, 1
lbl_800C6F00:
/* 800C6F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C6F04  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C6F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C6F0C  7C 08 03 A6 */	mtlr r0
/* 800C6F10  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6F14  4E 80 00 20 */	blr 
