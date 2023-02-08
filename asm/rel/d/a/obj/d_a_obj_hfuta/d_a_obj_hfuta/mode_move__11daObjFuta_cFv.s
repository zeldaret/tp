lbl_80C1EC44:
/* 80C1EC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1EC48  7C 08 02 A6 */	mflr r0
/* 80C1EC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1EC50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1EC54  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1EC58  7C 7E 1B 78 */	mr r30, r3
/* 80C1EC5C  3C 60 80 C2 */	lis r3, lit_3644@ha /* 0x80C1EE78@ha */
/* 80C1EC60  3B E3 EE 78 */	addi r31, r3, lit_3644@l /* 0x80C1EE78@l */
/* 80C1EC64  A0 1E 05 CA */	lhz r0, 0x5ca(r30)
/* 80C1EC68  28 00 00 0C */	cmplwi r0, 0xc
/* 80C1EC6C  40 81 00 30 */	ble lbl_80C1EC9C
/* 80C1EC70  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C1EC74  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C1EC78  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C1EC7C  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80C1EC80  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80C1EC84  4B 65 0C F9 */	bl cLib_addCalc__FPfffff
/* 80C1EC88  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C1EC8C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C1EC90  40 82 00 0C */	bne lbl_80C1EC9C
/* 80C1EC94  38 00 00 02 */	li r0, 2
/* 80C1EC98  98 1E 05 BE */	stb r0, 0x5be(r30)
lbl_80C1EC9C:
/* 80C1EC9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1ECA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1ECA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1ECA8  7C 08 03 A6 */	mtlr r0
/* 80C1ECAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1ECB0  4E 80 00 20 */	blr 
