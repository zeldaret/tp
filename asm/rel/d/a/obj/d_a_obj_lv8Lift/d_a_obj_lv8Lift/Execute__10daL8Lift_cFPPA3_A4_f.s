lbl_80C88DD4:
/* 80C88DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88DD8  7C 08 02 A6 */	mflr r0
/* 80C88DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C88DE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C88DE8  7C 7E 1B 78 */	mr r30, r3
/* 80C88DEC  7C 9F 23 78 */	mr r31, r4
/* 80C88DF0  48 00 00 45 */	bl moveLift__10daL8Lift_cFv
/* 80C88DF4  7F C3 F3 78 */	mr r3, r30
/* 80C88DF8  4B FF FF 75 */	bl lightSet__10daL8Lift_cFv
/* 80C88DFC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C88E00  38 03 00 24 */	addi r0, r3, 0x24
/* 80C88E04  90 1F 00 00 */	stw r0, 0(r31)
/* 80C88E08  7F C3 F3 78 */	mr r3, r30
/* 80C88E0C  4B FF F9 CD */	bl setBaseMtx__10daL8Lift_cFv
/* 80C88E10  38 00 00 00 */	li r0, 0
/* 80C88E14  98 1E 08 0A */	stb r0, 0x80a(r30)
/* 80C88E18  38 60 00 01 */	li r3, 1
/* 80C88E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C88E20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C88E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88E28  7C 08 03 A6 */	mtlr r0
/* 80C88E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88E30  4E 80 00 20 */	blr 
