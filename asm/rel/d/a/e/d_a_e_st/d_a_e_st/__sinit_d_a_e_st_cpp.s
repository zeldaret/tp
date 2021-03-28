lbl_807A6244:
/* 807A6244  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A6248  7C 08 02 A6 */	mflr r0
/* 807A624C  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A6250  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807A6254  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807A6258  3C 60 80 7A */	lis r3, lit_1109@ha
/* 807A625C  3B C3 6D A0 */	addi r30, r3, lit_1109@l
/* 807A6260  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A6264  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 807A6268  38 7E 00 54 */	addi r3, r30, 0x54
/* 807A626C  4B FF 7B 81 */	bl __ct__12daE_ST_HIO_cFv
/* 807A6270  3C 80 80 7A */	lis r4, __dt__12daE_ST_HIO_cFv@ha
/* 807A6274  38 84 61 FC */	addi r4, r4, __dt__12daE_ST_HIO_cFv@l
/* 807A6278  38 BE 00 48 */	addi r5, r30, 0x48
/* 807A627C  4B FF 7A FD */	bl __register_global_object
/* 807A6280  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807A6284  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 807A6288  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A628C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807A6290  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A6294  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807A6298  D0 5E 00 A8 */	stfs f2, 0xa8(r30)
/* 807A629C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 807A62A0  D0 23 00 04 */	stfs f1, 4(r3)
/* 807A62A4  D0 03 00 08 */	stfs f0, 8(r3)
/* 807A62A8  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 807A62AC  38 84 67 B8 */	addi r4, r4, __dt__4cXyzFv@l
/* 807A62B0  38 BE 00 78 */	addi r5, r30, 0x78
/* 807A62B4  4B FF 7A C5 */	bl __register_global_object
/* 807A62B8  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 807A62BC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807A62C0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A62C4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807A62C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A62CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A62D0  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 807A62D4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807A62D8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807A62DC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807A62E0  38 63 00 0C */	addi r3, r3, 0xc
/* 807A62E4  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 807A62E8  38 84 67 B8 */	addi r4, r4, __dt__4cXyzFv@l
/* 807A62EC  38 BE 00 84 */	addi r5, r30, 0x84
/* 807A62F0  4B FF 7A 89 */	bl __register_global_object
/* 807A62F4  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 807A62F8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807A62FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A6300  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A6304  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A6308  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 807A630C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 807A6310  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 807A6314  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807A6318  38 63 00 18 */	addi r3, r3, 0x18
/* 807A631C  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 807A6320  38 84 67 B8 */	addi r4, r4, __dt__4cXyzFv@l
/* 807A6324  38 BE 00 90 */	addi r5, r30, 0x90
/* 807A6328  4B FF 7A 51 */	bl __register_global_object
/* 807A632C  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 807A6330  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A6334  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A6338  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A633C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A6340  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 807A6344  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 807A6348  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 807A634C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 807A6350  38 63 00 24 */	addi r3, r3, 0x24
/* 807A6354  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 807A6358  38 84 67 B8 */	addi r4, r4, __dt__4cXyzFv@l
/* 807A635C  38 BE 00 9C */	addi r5, r30, 0x9c
/* 807A6360  4B FF 7A 19 */	bl __register_global_object
/* 807A6364  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807A6368  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807A636C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A6370  7C 08 03 A6 */	mtlr r0
/* 807A6374  38 21 00 40 */	addi r1, r1, 0x40
/* 807A6378  4E 80 00 20 */	blr 
