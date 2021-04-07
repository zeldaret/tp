lbl_806BEB04:
/* 806BEB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BEB08  7C 08 02 A6 */	mflr r0
/* 806BEB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BEB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BEB14  93 C1 00 08 */	stw r30, 8(r1)
/* 806BEB18  7C 7E 1B 78 */	mr r30, r3
/* 806BEB1C  A8 63 07 08 */	lha r3, 0x708(r3)
/* 806BEB20  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806BEB24  7C 03 00 50 */	subf r0, r3, r0
/* 806BEB28  7C 1F 07 34 */	extsh r31, r0
/* 806BEB2C  7F E3 FB 78 */	mr r3, r31
/* 806BEB30  4B CA 65 A1 */	bl abs
/* 806BEB34  2C 03 48 00 */	cmpwi r3, 0x4800
/* 806BEB38  40 81 00 24 */	ble lbl_806BEB5C
/* 806BEB3C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806BEB40  3C 63 00 01 */	addis r3, r3, 1
/* 806BEB44  38 63 80 00 */	addi r3, r3, -32768
/* 806BEB48  A8 1E 07 08 */	lha r0, 0x708(r30)
/* 806BEB4C  54 00 08 3C */	slwi r0, r0, 1
/* 806BEB50  7C 03 00 50 */	subf r0, r3, r0
/* 806BEB54  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BEB58  48 00 00 30 */	b lbl_806BEB88
lbl_806BEB5C:
/* 806BEB5C  2C 1F 38 00 */	cmpwi r31, 0x3800
/* 806BEB60  40 81 00 14 */	ble lbl_806BEB74
/* 806BEB64  A8 7E 07 08 */	lha r3, 0x708(r30)
/* 806BEB68  38 03 38 00 */	addi r0, r3, 0x3800
/* 806BEB6C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BEB70  48 00 00 18 */	b lbl_806BEB88
lbl_806BEB74:
/* 806BEB74  2C 1F C8 00 */	cmpwi r31, -14336
/* 806BEB78  40 80 00 10 */	bge lbl_806BEB88
/* 806BEB7C  A8 7E 07 08 */	lha r3, 0x708(r30)
/* 806BEB80  38 03 C8 00 */	addi r0, r3, -14336
/* 806BEB84  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806BEB88:
/* 806BEB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BEB8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BEB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BEB94  7C 08 03 A6 */	mtlr r0
/* 806BEB98  38 21 00 10 */	addi r1, r1, 0x10
/* 806BEB9C  4E 80 00 20 */	blr 
