lbl_8012DD08:
/* 8012DD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012DD0C  7C 08 02 A6 */	mflr r0
/* 8012DD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012DD14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012DD18  7C 7F 1B 78 */	mr r31, r3
/* 8012DD1C  38 80 00 F5 */	li r4, 0xf5
/* 8012DD20  4B F9 50 85 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012DD24  2C 03 00 00 */	cmpwi r3, 0
/* 8012DD28  40 82 00 0C */	bne lbl_8012DD34
/* 8012DD2C  38 60 00 00 */	li r3, 0
/* 8012DD30  48 00 00 70 */	b lbl_8012DDA0
lbl_8012DD34:
/* 8012DD34  7F E3 FB 78 */	mr r3, r31
/* 8012DD38  38 80 00 01 */	li r4, 1
/* 8012DD3C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8012DD40  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8012DD44  41 82 00 14 */	beq lbl_8012DD58
/* 8012DD48  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8012DD4C  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8012DD50  C0 25 00 74 */	lfs f1, 0x74(r5)
/* 8012DD54  48 00 00 10 */	b lbl_8012DD64
lbl_8012DD58:
/* 8012DD58  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 8012DD5C  38 A5 EF 28 */	addi r5, r5, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 8012DD60  C0 25 00 18 */	lfs f1, 0x18(r5)
lbl_8012DD64:
/* 8012DD64  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8012DD68  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8012DD6C  C0 45 00 94 */	lfs f2, 0x94(r5)
/* 8012DD70  4B FF B9 69 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012DD74  7F E3 FB 78 */	mr r3, r31
/* 8012DD78  4B FE 7E A9 */	bl checkEventRun__9daAlink_cCFv
/* 8012DD7C  2C 03 00 00 */	cmpwi r3, 0
/* 8012DD80  41 82 00 0C */	beq lbl_8012DD8C
/* 8012DD84  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012DD88  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_8012DD8C:
/* 8012DD8C  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 8012DD90  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8012DD94  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012DD98  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012DD9C  38 60 00 01 */	li r3, 1
lbl_8012DDA0:
/* 8012DDA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012DDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012DDA8  7C 08 03 A6 */	mtlr r0
/* 8012DDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8012DDB0  4E 80 00 20 */	blr 
