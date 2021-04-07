lbl_80A1DA28:
/* 80A1DA28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1DA2C  7C 08 02 A6 */	mflr r0
/* 80A1DA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1DA34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1DA38  7C 7F 1B 78 */	mr r31, r3
/* 80A1DA3C  80 03 09 6C */	lwz r0, 0x96c(r3)
/* 80A1DA40  2C 00 00 00 */	cmpwi r0, 0
/* 80A1DA44  40 82 00 4C */	bne lbl_80A1DA90
/* 80A1DA48  B0 9F 09 96 */	sth r4, 0x996(r31)
/* 80A1DA4C  38 00 00 00 */	li r0, 0
/* 80A1DA50  90 1F 09 68 */	stw r0, 0x968(r31)
/* 80A1DA54  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 80A1DA58  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 80A1DA5C  7C 03 00 00 */	cmpw r3, r0
/* 80A1DA60  40 82 00 10 */	bne lbl_80A1DA70
/* 80A1DA64  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A1DA68  38 03 00 01 */	addi r0, r3, 1
/* 80A1DA6C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80A1DA70:
/* 80A1DA70  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A1DA74  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A1DA78  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1DA7C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A1DA80  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A1DA84  38 03 00 01 */	addi r0, r3, 1
/* 80A1DA88  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A1DA8C  48 00 00 60 */	b lbl_80A1DAEC
lbl_80A1DA90:
/* 80A1DA90  2C 00 00 01 */	cmpwi r0, 1
/* 80A1DA94  40 82 00 58 */	bne lbl_80A1DAEC
/* 80A1DA98  A8 9F 09 96 */	lha r4, 0x996(r31)
/* 80A1DA9C  3C A0 80 A2 */	lis r5, lit_5045@ha /* 0x80A21168@ha */
/* 80A1DAA0  C0 25 11 68 */	lfs f1, lit_5045@l(r5)  /* 0x80A21168@l */
/* 80A1DAA4  38 A0 00 00 */	li r5, 0
/* 80A1DAA8  4B 73 64 4D */	bl turn__8daNpcF_cFsfi
/* 80A1DAAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1DAB0  41 82 00 2C */	beq lbl_80A1DADC
/* 80A1DAB4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1DAB8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A1DABC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1DAC0  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A1DAC4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1DAC8  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A1DACC  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A1DAD0  38 03 00 01 */	addi r0, r3, 1
/* 80A1DAD4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A1DAD8  48 00 00 14 */	b lbl_80A1DAEC
lbl_80A1DADC:
/* 80A1DADC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1DAE0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A1DAE4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A1DAE8  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
lbl_80A1DAEC:
/* 80A1DAEC  80 9F 09 6C */	lwz r4, 0x96c(r31)
/* 80A1DAF0  38 00 00 01 */	li r0, 1
/* 80A1DAF4  7C 80 02 78 */	xor r0, r4, r0
/* 80A1DAF8  7C 03 0E 70 */	srawi r3, r0, 1
/* 80A1DAFC  7C 00 20 38 */	and r0, r0, r4
/* 80A1DB00  7C 00 18 50 */	subf r0, r0, r3
/* 80A1DB04  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80A1DB08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1DB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1DB10  7C 08 03 A6 */	mtlr r0
/* 80A1DB14  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1DB18  4E 80 00 20 */	blr 
