lbl_800D6E24:
/* 800D6E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6E28  7C 08 02 A6 */	mflr r0
/* 800D6E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D6E34  7C 7F 1B 78 */	mr r31, r3
/* 800D6E38  A8 83 30 08 */	lha r4, 0x3008(r3)
/* 800D6E3C  38 04 FF FF */	addi r0, r4, -1
/* 800D6E40  B0 03 30 08 */	sth r0, 0x3008(r3)
/* 800D6E44  A8 83 30 0A */	lha r4, 0x300a(r3)
/* 800D6E48  38 04 00 01 */	addi r0, r4, 1
/* 800D6E4C  B0 03 30 0A */	sth r0, 0x300a(r3)
/* 800D6E50  A8 A3 30 0A */	lha r5, 0x300a(r3)
/* 800D6E54  38 80 00 2D */	li r4, 0x2d
/* 800D6E58  7C 05 23 D6 */	divw r0, r5, r4
/* 800D6E5C  7C 00 21 D6 */	mullw r0, r0, r4
/* 800D6E60  7C 00 28 51 */	subf. r0, r0, r5
/* 800D6E64  40 82 00 18 */	bne lbl_800D6E7C
/* 800D6E68  38 80 00 01 */	li r4, 1
/* 800D6E6C  38 A0 00 01 */	li r5, 1
/* 800D6E70  38 C0 00 00 */	li r6, 0
/* 800D6E74  38 E0 00 00 */	li r7, 0
/* 800D6E78  48 00 04 45 */	bl setDamagePoint__9daAlink_cFiiii
lbl_800D6E7C:
/* 800D6E7C  88 1F 2F AE */	lbz r0, 0x2fae(r31)
/* 800D6E80  60 00 00 08 */	ori r0, r0, 8
/* 800D6E84  98 1F 2F AE */	stb r0, 0x2fae(r31)
/* 800D6E88  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800D6E8C  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 800D6E90  41 82 00 10 */	beq lbl_800D6EA0
/* 800D6E94  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800D6E98  38 03 FF FE */	addi r0, r3, -2
/* 800D6E9C  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800D6EA0:
/* 800D6EA0  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800D6EA4  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800D6EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6EAC  40 81 00 2C */	ble lbl_800D6ED8
/* 800D6EB0  A8 7F 30 7C */	lha r3, 0x307c(r31)
/* 800D6EB4  A8 1F 2F E0 */	lha r0, 0x2fe0(r31)
/* 800D6EB8  7C 03 00 50 */	subf r0, r3, r0
/* 800D6EBC  7C 03 07 34 */	extsh r3, r0
/* 800D6EC0  48 28 E2 11 */	bl abs
/* 800D6EC4  2C 03 10 00 */	cmpwi r3, 0x1000
/* 800D6EC8  40 81 00 10 */	ble lbl_800D6ED8
/* 800D6ECC  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800D6ED0  38 03 FF FE */	addi r0, r3, -2
/* 800D6ED4  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800D6ED8:
/* 800D6ED8  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800D6EDC  2C 00 00 00 */	cmpwi r0, 0
/* 800D6EE0  40 80 00 0C */	bge lbl_800D6EEC
/* 800D6EE4  38 00 00 00 */	li r0, 0
/* 800D6EE8  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800D6EEC:
/* 800D6EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D6EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6EF4  7C 08 03 A6 */	mtlr r0
/* 800D6EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 800D6EFC  4E 80 00 20 */	blr 
