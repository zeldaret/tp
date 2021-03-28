lbl_80131C74:
/* 80131C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80131C78  7C 08 02 A6 */	mflr r0
/* 80131C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80131C80  39 61 00 20 */	addi r11, r1, 0x20
/* 80131C84  48 23 05 55 */	bl _savegpr_28
/* 80131C88  7C 7C 1B 78 */	mr r28, r3
/* 80131C8C  7C 9D 23 78 */	mr r29, r4
/* 80131C90  7C BE 2B 78 */	mr r30, r5
/* 80131C94  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 80131C98  38 80 01 13 */	li r4, 0x113
/* 80131C9C  4B F9 02 D1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80131CA0  7F 83 E3 78 */	mr r3, r28
/* 80131CA4  4B FF FD 4D */	bl initWolfRopeShapeAngle__9daAlink_cFv
/* 80131CA8  B0 7C 30 0C */	sth r3, 0x300c(r28)
/* 80131CAC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80131CB0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80131CB4  7F 83 E3 78 */	mr r3, r28
/* 80131CB8  38 80 00 21 */	li r4, 0x21
/* 80131CBC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80131CC0  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlRope_c0@ha
/* 80131CC4  38 A5 F4 6C */	addi r5, r5, m__20daAlinkHIO_wlRope_c0@l
/* 80131CC8  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 80131CCC  4B FF 7A 0D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 80131CD0  2C 1D 00 00 */	cmpwi r29, 0
/* 80131CD4  41 82 00 14 */	beq lbl_80131CE8
/* 80131CD8  C0 02 97 70 */	lfs f0, lit_47597(r2)
/* 80131CDC  D0 1C 1F E0 */	stfs f0, 0x1fe0(r28)
/* 80131CE0  80 7C 1F 2C */	lwz r3, 0x1f2c(r28)
/* 80131CE4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80131CE8:
/* 80131CE8  7F 83 E3 78 */	mr r3, r28
/* 80131CEC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80131CF0  C0 5C 05 34 */	lfs f2, 0x534(r28)
/* 80131CF4  38 80 00 00 */	li r4, 0
/* 80131CF8  4B F8 9A 79 */	bl setSpecialGravity__9daAlink_cFffi
/* 80131CFC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80131D00  D0 3C 04 FC */	stfs f1, 0x4fc(r28)
/* 80131D04  2C 1E 00 00 */	cmpwi r30, 0
/* 80131D08  41 82 00 28 */	beq lbl_80131D30
/* 80131D0C  C0 1F 07 34 */	lfs f0, 0x734(r31)
/* 80131D10  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80131D14  C0 1F 07 38 */	lfs f0, 0x738(r31)
/* 80131D18  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80131D1C  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 80131D20  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80131D24  D0 3C 34 78 */	stfs f1, 0x3478(r28)
/* 80131D28  38 00 00 00 */	li r0, 0
/* 80131D2C  B0 1C 30 08 */	sth r0, 0x3008(r28)
lbl_80131D30:
/* 80131D30  7F 83 E3 78 */	mr r3, r28
/* 80131D34  4B FF F9 E5 */	bl setWolfRopePosY__9daAlink_cFv
/* 80131D38  7C 64 1B 78 */	mr r4, r3
/* 80131D3C  7F 83 E3 78 */	mr r3, r28
/* 80131D40  4B FF FD BD */	bl setWolfRopeOffsetY__9daAlink_cFi
/* 80131D44  38 60 00 00 */	li r3, 0
/* 80131D48  A0 1C 1F BC */	lhz r0, 0x1fbc(r28)
/* 80131D4C  28 00 02 DA */	cmplwi r0, 0x2da
/* 80131D50  41 82 00 10 */	beq lbl_80131D60
/* 80131D54  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80131D58  28 00 02 DB */	cmplwi r0, 0x2db
/* 80131D5C  40 82 00 08 */	bne lbl_80131D64
lbl_80131D60:
/* 80131D60  38 60 00 01 */	li r3, 1
lbl_80131D64:
/* 80131D64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80131D68  41 82 00 0C */	beq lbl_80131D74
/* 80131D6C  38 00 E8 00 */	li r0, -6144
/* 80131D70  B0 1C 30 A0 */	sth r0, 0x30a0(r28)
lbl_80131D74:
/* 80131D74  38 00 00 00 */	li r0, 0
/* 80131D78  B0 1C 30 0E */	sth r0, 0x300e(r28)
/* 80131D7C  7F 83 E3 78 */	mr r3, r28
/* 80131D80  4B F8 1A C5 */	bl initServiceWaitTime__9daAlink_cFv
/* 80131D84  38 60 00 01 */	li r3, 1
/* 80131D88  39 61 00 20 */	addi r11, r1, 0x20
/* 80131D8C  48 23 04 99 */	bl _restgpr_28
/* 80131D90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80131D94  7C 08 03 A6 */	mtlr r0
/* 80131D98  38 21 00 20 */	addi r1, r1, 0x20
/* 80131D9C  4E 80 00 20 */	blr 
