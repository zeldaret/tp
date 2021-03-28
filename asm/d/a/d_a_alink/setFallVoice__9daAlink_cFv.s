lbl_800B5BC0:
/* 800B5BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B5BC4  7C 08 02 A6 */	mflr r0
/* 800B5BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B5BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B5BD0  7C 7F 1B 78 */	mr r31, r3
/* 800B5BD4  A8 03 30 14 */	lha r0, 0x3014(r3)
/* 800B5BD8  2C 00 00 00 */	cmpwi r0, 0
/* 800B5BDC  40 82 00 44 */	bne lbl_800B5C20
/* 800B5BE0  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 800B5BE4  C0 3F 33 C4 */	lfs f1, 0x33c4(r31)
/* 800B5BE8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800B5BEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B5BF0  EC 22 00 32 */	fmuls f1, f2, f0
/* 800B5BF4  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800B5BF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B5BFC  40 81 00 24 */	ble lbl_800B5C20
/* 800B5C00  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001000C@ha */
/* 800B5C04  38 84 00 0C */	addi r4, r4, 0x000C /* 0x0001000C@l */
/* 800B5C08  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800B5C0C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800B5C10  7D 89 03 A6 */	mtctr r12
/* 800B5C14  4E 80 04 21 */	bctrl 
/* 800B5C18  38 00 00 01 */	li r0, 1
/* 800B5C1C  B0 1F 30 14 */	sth r0, 0x3014(r31)
lbl_800B5C20:
/* 800B5C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B5C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B5C28  7C 08 03 A6 */	mtlr r0
/* 800B5C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B5C30  4E 80 00 20 */	blr 
