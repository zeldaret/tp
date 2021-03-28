lbl_8068DCD0:
/* 8068DCD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8068DCD4  7C 08 02 A6 */	mflr r0
/* 8068DCD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068DCDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8068DCE0  7C 7F 1B 78 */	mr r31, r3
/* 8068DCE4  A8 03 05 BC */	lha r0, 0x5bc(r3)
/* 8068DCE8  2C 00 00 01 */	cmpwi r0, 1
/* 8068DCEC  41 82 00 6C */	beq lbl_8068DD58
/* 8068DCF0  40 80 00 CC */	bge lbl_8068DDBC
/* 8068DCF4  2C 00 00 00 */	cmpwi r0, 0
/* 8068DCF8  40 80 00 08 */	bge lbl_8068DD00
/* 8068DCFC  48 00 00 C0 */	b lbl_8068DDBC
lbl_8068DD00:
/* 8068DD00  A8 1F 05 BE */	lha r0, 0x5be(r31)
/* 8068DD04  2C 00 00 00 */	cmpwi r0, 0
/* 8068DD08  40 82 00 B4 */	bne lbl_8068DDBC
/* 8068DD0C  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 8068DD10  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068DD14  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8068DD18  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8068DD1C  38 81 00 10 */	addi r4, r1, 0x10
/* 8068DD20  4B 98 BA D8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8068DD24  28 03 00 00 */	cmplwi r3, 0
/* 8068DD28  40 82 00 94 */	bne lbl_8068DDBC
/* 8068DD2C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8068DD30  2C 00 00 32 */	cmpwi r0, 0x32
/* 8068DD34  40 82 00 10 */	bne lbl_8068DD44
/* 8068DD38  38 00 00 5A */	li r0, 0x5a
/* 8068DD3C  B0 1F 05 BE */	sth r0, 0x5be(r31)
/* 8068DD40  48 00 00 0C */	b lbl_8068DD4C
lbl_8068DD44:
/* 8068DD44  38 00 00 3C */	li r0, 0x3c
/* 8068DD48  B0 1F 05 BE */	sth r0, 0x5be(r31)
lbl_8068DD4C:
/* 8068DD4C  38 00 00 01 */	li r0, 1
/* 8068DD50  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 8068DD54  48 00 00 68 */	b lbl_8068DDBC
lbl_8068DD58:
/* 8068DD58  A8 1F 05 BE */	lha r0, 0x5be(r31)
/* 8068DD5C  2C 00 00 00 */	cmpwi r0, 0
/* 8068DD60  40 82 00 5C */	bne lbl_8068DDBC
/* 8068DD64  38 60 00 00 */	li r3, 0
/* 8068DD68  B0 7F 05 BC */	sth r3, 0x5bc(r31)
/* 8068DD6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8068DD70  7C 07 07 74 */	extsb r7, r0
/* 8068DD74  90 61 00 08 */	stw r3, 8(r1)
/* 8068DD78  38 60 03 04 */	li r3, 0x304
/* 8068DD7C  28 1F 00 00 */	cmplwi r31, 0
/* 8068DD80  41 82 00 0C */	beq lbl_8068DD8C
/* 8068DD84  80 9F 00 04 */	lwz r4, 4(r31)
/* 8068DD88  48 00 00 08 */	b lbl_8068DD90
lbl_8068DD8C:
/* 8068DD8C  38 80 FF FF */	li r4, -1
lbl_8068DD90:
/* 8068DD90  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8068DD94  54 00 40 2E */	slwi r0, r0, 8
/* 8068DD98  60 05 00 01 */	ori r5, r0, 1
/* 8068DD9C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8068DDA0  39 1F 04 DC */	addi r8, r31, 0x4dc
/* 8068DDA4  39 20 00 00 */	li r9, 0
/* 8068DDA8  39 40 FF FF */	li r10, -1
/* 8068DDAC  4B 98 C1 44 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8068DDB0  90 7F 04 A4 */	stw r3, 0x4a4(r31)
/* 8068DDB4  38 00 00 14 */	li r0, 0x14
/* 8068DDB8  B0 1F 05 BE */	sth r0, 0x5be(r31)
lbl_8068DDBC:
/* 8068DDBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8068DDC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068DDC4  7C 08 03 A6 */	mtlr r0
/* 8068DDC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8068DDCC  4E 80 00 20 */	blr 
