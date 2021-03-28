lbl_8064E9DC:
/* 8064E9DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8064E9E0  7C 08 02 A6 */	mflr r0
/* 8064E9E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8064E9E8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8064E9EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8064E9F0  3C 60 80 65 */	lis r3, lit_1109@ha
/* 8064E9F4  3B C3 F5 B8 */	addi r30, r3, lit_1109@l
/* 8064E9F8  3C 60 80 65 */	lis r3, lit_3757@ha
/* 8064E9FC  3B E3 EB 1C */	addi r31, r3, lit_3757@l
/* 8064EA00  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8064EA04  4B FE F7 09 */	bl __ct__14daB_ZANT_HIO_cFv
/* 8064EA08  3C 80 80 65 */	lis r4, __dt__14daB_ZANT_HIO_cFv@ha
/* 8064EA0C  38 84 E9 94 */	addi r4, r4, __dt__14daB_ZANT_HIO_cFv@l
/* 8064EA10  38 BE 00 40 */	addi r5, r30, 0x40
/* 8064EA14  4B FE F6 85 */	bl __register_global_object
/* 8064EA18  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8064EA1C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8064EA20  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 8064EA24  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8064EA28  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 8064EA2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064EA30  D0 5E 00 B4 */	stfs f2, 0xb4(r30)
/* 8064EA34  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8064EA38  D0 23 00 04 */	stfs f1, 4(r3)
/* 8064EA3C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8064EA40  3C 80 80 64 */	lis r4, __dt__4cXyzFv@ha
/* 8064EA44  38 84 E5 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 8064EA48  38 BE 00 90 */	addi r5, r30, 0x90
/* 8064EA4C  4B FE F6 4D */	bl __register_global_object
/* 8064EA50  C0 5F 01 BC */	lfs f2, 0x1bc(r31)
/* 8064EA54  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8064EA58  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 8064EA5C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8064EA60  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8064EA64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8064EA68  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8064EA6C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8064EA70  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8064EA74  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8064EA78  38 63 00 0C */	addi r3, r3, 0xc
/* 8064EA7C  3C 80 80 64 */	lis r4, __dt__4cXyzFv@ha
/* 8064EA80  38 84 E5 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 8064EA84  38 BE 00 9C */	addi r5, r30, 0x9c
/* 8064EA88  4B FE F6 11 */	bl __register_global_object
/* 8064EA8C  C0 5F 02 A8 */	lfs f2, 0x2a8(r31)
/* 8064EA90  D0 41 00 08 */	stfs f2, 8(r1)
/* 8064EA94  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 8064EA98  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8064EA9C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8064EAA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064EAA4  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8064EAA8  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8064EAAC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8064EAB0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8064EAB4  38 63 00 18 */	addi r3, r3, 0x18
/* 8064EAB8  3C 80 80 64 */	lis r4, __dt__4cXyzFv@ha
/* 8064EABC  38 84 E5 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 8064EAC0  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 8064EAC4  4B FE F5 D5 */	bl __register_global_object
/* 8064EAC8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8064EACC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8064EAD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8064EAD4  7C 08 03 A6 */	mtlr r0
/* 8064EAD8  38 21 00 40 */	addi r1, r1, 0x40
/* 8064EADC  4E 80 00 20 */	blr 
