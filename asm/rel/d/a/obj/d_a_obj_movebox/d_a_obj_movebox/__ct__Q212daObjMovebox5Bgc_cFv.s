lbl_8047DAEC:
/* 8047DAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047DAF0  7C 08 02 A6 */	mflr r0
/* 8047DAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047DAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047DAFC  7C 7F 1B 78 */	mr r31, r3
/* 8047DB00  38 7F 00 64 */	addi r3, r31, 0x64
/* 8047DB04  3C 80 80 48 */	lis r4, __ct__4cXyzFv@ha /* 0x8047DBEC@ha */
/* 8047DB08  38 84 DB EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x8047DBEC@l */
/* 8047DB0C  3C A0 80 48 */	lis r5, __dt__4cXyzFv@ha /* 0x8047DBB0@ha */
/* 8047DB10  38 A5 DB B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8047DBB0@l */
/* 8047DB14  38 C0 00 0C */	li r6, 0xc
/* 8047DB18  38 E0 00 17 */	li r7, 0x17
/* 8047DB1C  4B EE 42 45 */	bl __construct_array
/* 8047DB20  38 60 00 00 */	li r3, 0
/* 8047DB24  38 80 00 00 */	li r4, 0
/* 8047DB28  3C A0 80 43 */	lis r5, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8047DB2C  38 C5 0C F4 */	addi r6, r5, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8047DB30  3C A0 80 48 */	lis r5, lit_3687@ha /* 0x804810E8@ha */
/* 8047DB34  C0 25 10 E8 */	lfs f1, lit_3687@l(r5)  /* 0x804810E8@l */
/* 8047DB38  38 00 00 17 */	li r0, 0x17
/* 8047DB3C  7C 09 03 A6 */	mtctr r0
lbl_8047DB40:
/* 8047DB40  7C 3F 25 2E */	stfsx f1, r31, r4
/* 8047DB44  C0 06 00 00 */	lfs f0, 0(r6)
/* 8047DB48  7C BF 1A 14 */	add r5, r31, r3
/* 8047DB4C  D0 05 00 64 */	stfs f0, 0x64(r5)
/* 8047DB50  C0 06 00 04 */	lfs f0, 4(r6)
/* 8047DB54  D0 05 00 68 */	stfs f0, 0x68(r5)
/* 8047DB58  C0 06 00 08 */	lfs f0, 8(r6)
/* 8047DB5C  D0 05 00 6C */	stfs f0, 0x6c(r5)
/* 8047DB60  38 63 00 0C */	addi r3, r3, 0xc
/* 8047DB64  38 84 00 04 */	addi r4, r4, 4
/* 8047DB68  42 00 FF D8 */	bdnz lbl_8047DB40
/* 8047DB6C  38 00 FF FF */	li r0, -1
/* 8047DB70  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8047DB74  90 1F 01 78 */	stw r0, 0x178(r31)
/* 8047DB78  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 8047DB7C  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 8047DB80  D0 1F 01 7C */	stfs f0, 0x17c(r31)
/* 8047DB84  3C 60 80 48 */	lis r3, lit_3687@ha /* 0x804810E8@ha */
/* 8047DB88  C0 03 10 E8 */	lfs f0, lit_3687@l(r3)  /* 0x804810E8@l */
/* 8047DB8C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 8047DB90  38 00 00 00 */	li r0, 0
/* 8047DB94  90 1F 01 80 */	stw r0, 0x180(r31)
/* 8047DB98  7F E3 FB 78 */	mr r3, r31
/* 8047DB9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047DBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047DBA4  7C 08 03 A6 */	mtlr r0
/* 8047DBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8047DBAC  4E 80 00 20 */	blr 
