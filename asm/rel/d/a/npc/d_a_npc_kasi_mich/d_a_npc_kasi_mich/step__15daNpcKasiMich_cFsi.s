lbl_80A27D30:
/* 80A27D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A27D34  7C 08 02 A6 */	mflr r0
/* 80A27D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A27D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A27D40  7C 7F 1B 78 */	mr r31, r3
/* 80A27D44  80 03 09 6C */	lwz r0, 0x96c(r3)
/* 80A27D48  2C 00 00 00 */	cmpwi r0, 0
/* 80A27D4C  40 82 00 4C */	bne lbl_80A27D98
/* 80A27D50  B0 9F 09 96 */	sth r4, 0x996(r31)
/* 80A27D54  38 00 00 00 */	li r0, 0
/* 80A27D58  90 1F 09 68 */	stw r0, 0x968(r31)
/* 80A27D5C  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 80A27D60  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 80A27D64  7C 03 00 00 */	cmpw r3, r0
/* 80A27D68  40 82 00 10 */	bne lbl_80A27D78
/* 80A27D6C  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A27D70  38 03 00 01 */	addi r0, r3, 1
/* 80A27D74  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80A27D78:
/* 80A27D78  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A27D7C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A27D80  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A27D84  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A27D88  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A27D8C  38 03 00 01 */	addi r0, r3, 1
/* 80A27D90  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A27D94  48 00 00 60 */	b lbl_80A27DF4
lbl_80A27D98:
/* 80A27D98  2C 00 00 01 */	cmpwi r0, 1
/* 80A27D9C  40 82 00 58 */	bne lbl_80A27DF4
/* 80A27DA0  A8 9F 09 96 */	lha r4, 0x996(r31)
/* 80A27DA4  3C A0 80 A3 */	lis r5, lit_4448@ha
/* 80A27DA8  C0 25 A0 EC */	lfs f1, lit_4448@l(r5)
/* 80A27DAC  38 A0 00 00 */	li r5, 0
/* 80A27DB0  4B 72 C1 44 */	b turn__8daNpcF_cFsfi
/* 80A27DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A27DB8  41 82 00 2C */	beq lbl_80A27DE4
/* 80A27DBC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A27DC0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A27DC4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A27DC8  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A27DCC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A27DD0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A27DD4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A27DD8  38 03 00 01 */	addi r0, r3, 1
/* 80A27DDC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A27DE0  48 00 00 14 */	b lbl_80A27DF4
lbl_80A27DE4:
/* 80A27DE4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A27DE8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A27DEC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A27DF0  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
lbl_80A27DF4:
/* 80A27DF4  80 9F 09 6C */	lwz r4, 0x96c(r31)
/* 80A27DF8  38 00 00 01 */	li r0, 1
/* 80A27DFC  7C 80 02 78 */	xor r0, r4, r0
/* 80A27E00  7C 03 0E 70 */	srawi r3, r0, 1
/* 80A27E04  7C 00 20 38 */	and r0, r0, r4
/* 80A27E08  7C 00 18 50 */	subf r0, r0, r3
/* 80A27E0C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80A27E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A27E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A27E18  7C 08 03 A6 */	mtlr r0
/* 80A27E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A27E20  4E 80 00 20 */	blr 
