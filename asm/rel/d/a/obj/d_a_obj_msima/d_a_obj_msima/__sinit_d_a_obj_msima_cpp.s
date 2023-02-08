lbl_80C9CAE8:
/* 80C9CAE8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C9CAEC  7C 08 02 A6 */	mflr r0
/* 80C9CAF0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C9CAF4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80C9CAF8  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80C9CAFC  3C 60 80 CA */	lis r3, lit_1109@ha /* 0x80C9CE68@ha */
/* 80C9CB00  3B C3 CE 68 */	addi r30, r3, lit_1109@l /* 0x80C9CE68@l */
/* 80C9CB04  3C 60 80 CA */	lis r3, lit_3863@ha /* 0x80C9CD4C@ha */
/* 80C9CB08  3B E3 CD 4C */	addi r31, r3, lit_3863@l /* 0x80C9CD4C@l */
/* 80C9CB0C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80C9CB10  4B FF E8 FD */	bl __ct__17daObj_Msima_HIO_cFv
/* 80C9CB14  3C 80 80 CA */	lis r4, __dt__17daObj_Msima_HIO_cFv@ha /* 0x80C9CAA0@ha */
/* 80C9CB18  38 84 CA A0 */	addi r4, r4, __dt__17daObj_Msima_HIO_cFv@l /* 0x80C9CAA0@l */
/* 80C9CB1C  38 BE 00 40 */	addi r5, r30, 0x40
/* 80C9CB20  4B FF E8 79 */	bl __register_global_object
/* 80C9CB24  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C9CB28  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 80C9CB2C  38 7E 00 6C */	addi r3, r30, 0x6c
/* 80C9CB30  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C9CB34  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C9CB38  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CB3C  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CB40  38 BE 00 60 */	addi r5, r30, 0x60
/* 80C9CB44  4B FF E8 55 */	bl __register_global_object
/* 80C9CB48  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C9CB4C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80C9CB50  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80C9CB54  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C9CB58  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80C9CB5C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C9CB60  D0 5E 00 A8 */	stfs f2, 0xa8(r30)
/* 80C9CB64  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80C9CB68  D0 23 00 04 */	stfs f1, 4(r3)
/* 80C9CB6C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C9CB70  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CB74  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CB78  38 BE 00 78 */	addi r5, r30, 0x78
/* 80C9CB7C  4B FF E8 1D */	bl __register_global_object
/* 80C9CB80  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C9CB84  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80C9CB88  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80C9CB8C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C9CB90  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C9CB94  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C9CB98  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80C9CB9C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80C9CBA0  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80C9CBA4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C9CBA8  38 63 00 0C */	addi r3, r3, 0xc
/* 80C9CBAC  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CBB0  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CBB4  38 BE 00 84 */	addi r5, r30, 0x84
/* 80C9CBB8  4B FF E7 E1 */	bl __register_global_object
/* 80C9CBBC  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C9CBC0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80C9CBC4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80C9CBC8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C9CBCC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C9CBD0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C9CBD4  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80C9CBD8  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80C9CBDC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80C9CBE0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C9CBE4  38 63 00 18 */	addi r3, r3, 0x18
/* 80C9CBE8  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CBEC  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CBF0  38 BE 00 90 */	addi r5, r30, 0x90
/* 80C9CBF4  4B FF E7 A5 */	bl __register_global_object
/* 80C9CBF8  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80C9CBFC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80C9CC00  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80C9CC04  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C9CC08  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C9CC0C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C9CC10  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80C9CC14  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80C9CC18  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80C9CC1C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80C9CC20  38 63 00 24 */	addi r3, r3, 0x24
/* 80C9CC24  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CC28  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CC2C  38 BE 00 9C */	addi r5, r30, 0x9c
/* 80C9CC30  4B FF E7 69 */	bl __register_global_object
/* 80C9CC34  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C9CC38  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80C9CC3C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C9CC40  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C9CC44  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80C9CC48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C9CC4C  D0 5E 01 08 */	stfs f2, 0x108(r30)
/* 80C9CC50  38 7E 01 08 */	addi r3, r30, 0x108
/* 80C9CC54  D0 23 00 04 */	stfs f1, 4(r3)
/* 80C9CC58  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C9CC5C  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CC60  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CC64  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 80C9CC68  4B FF E7 31 */	bl __register_global_object
/* 80C9CC6C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C9CC70  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C9CC74  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C9CC78  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C9CC7C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C9CC80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C9CC84  38 7E 01 08 */	addi r3, r30, 0x108
/* 80C9CC88  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80C9CC8C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80C9CC90  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C9CC94  38 63 00 0C */	addi r3, r3, 0xc
/* 80C9CC98  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CC9C  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CCA0  38 BE 00 E4 */	addi r5, r30, 0xe4
/* 80C9CCA4  4B FF E6 F5 */	bl __register_global_object
/* 80C9CCA8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C9CCAC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C9CCB0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C9CCB4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C9CCB8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C9CCBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C9CCC0  38 7E 01 08 */	addi r3, r30, 0x108
/* 80C9CCC4  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80C9CCC8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80C9CCCC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C9CCD0  38 63 00 18 */	addi r3, r3, 0x18
/* 80C9CCD4  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CCD8  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CCDC  38 BE 00 F0 */	addi r5, r30, 0xf0
/* 80C9CCE0  4B FF E6 B9 */	bl __register_global_object
/* 80C9CCE4  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80C9CCE8  D0 41 00 08 */	stfs f2, 8(r1)
/* 80C9CCEC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80C9CCF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C9CCF4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C9CCF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9CCFC  38 7E 01 08 */	addi r3, r30, 0x108
/* 80C9CD00  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80C9CD04  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80C9CD08  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80C9CD0C  38 63 00 24 */	addi r3, r3, 0x24
/* 80C9CD10  3C 80 80 CA */	lis r4, __dt__4cXyzFv@ha /* 0x80C9B890@ha */
/* 80C9CD14  38 84 B8 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80C9B890@l */
/* 80C9CD18  38 BE 00 FC */	addi r5, r30, 0xfc
/* 80C9CD1C  4B FF E6 7D */	bl __register_global_object
/* 80C9CD20  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80C9CD24  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80C9CD28  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C9CD2C  7C 08 03 A6 */	mtlr r0
/* 80C9CD30  38 21 00 70 */	addi r1, r1, 0x70
/* 80C9CD34  4E 80 00 20 */	blr 
