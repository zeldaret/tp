lbl_8079CF00:
/* 8079CF00  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8079CF04  7C 08 02 A6 */	mflr r0
/* 8079CF08  90 01 00 74 */	stw r0, 0x74(r1)
/* 8079CF0C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8079CF10  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8079CF14  3C 60 80 7A */	lis r3, lit_1109@ha
/* 8079CF18  3B C3 DB 88 */	addi r30, r3, lit_1109@l
/* 8079CF1C  3C 60 80 7A */	lis r3, lit_3790@ha
/* 8079CF20  3B E3 D5 B0 */	addi r31, r3, lit_3790@l
/* 8079CF24  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8079CF28  4B FF BC 25 */	bl __ct__13daE_SM2_HIO_cFv
/* 8079CF2C  3C 80 80 7A */	lis r4, __dt__13daE_SM2_HIO_cFv@ha
/* 8079CF30  38 84 CE 94 */	addi r4, r4, __dt__13daE_SM2_HIO_cFv@l
/* 8079CF34  38 BE 00 40 */	addi r5, r30, 0x40
/* 8079CF38  4B FF BB A1 */	bl __register_global_object
/* 8079CF3C  C0 5F 01 4C */	lfs f2, 0x14c(r31)
/* 8079CF40  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8079CF44  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 8079CF48  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8079CF4C  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 8079CF50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8079CF54  D0 5E 00 B4 */	stfs f2, 0xb4(r30)
/* 8079CF58  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8079CF5C  D0 23 00 04 */	stfs f1, 4(r3)
/* 8079CF60  D0 03 00 08 */	stfs f0, 8(r3)
/* 8079CF64  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 8079CF68  38 84 D5 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 8079CF6C  38 BE 00 60 */	addi r5, r30, 0x60
/* 8079CF70  4B FF BB 69 */	bl __register_global_object
/* 8079CF74  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 8079CF78  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8079CF7C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8079CF80  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8079CF84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8079CF88  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079CF8C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8079CF90  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8079CF94  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8079CF98  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8079CF9C  38 63 00 0C */	addi r3, r3, 0xc
/* 8079CFA0  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 8079CFA4  38 84 D5 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 8079CFA8  38 BE 00 6C */	addi r5, r30, 0x6c
/* 8079CFAC  4B FF BB 2D */	bl __register_global_object
/* 8079CFB0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8079CFB4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8079CFB8  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 8079CFBC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8079CFC0  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 8079CFC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8079CFC8  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8079CFCC  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8079CFD0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8079CFD4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8079CFD8  38 63 00 18 */	addi r3, r3, 0x18
/* 8079CFDC  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 8079CFE0  38 84 D5 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 8079CFE4  38 BE 00 78 */	addi r5, r30, 0x78
/* 8079CFE8  4B FF BA F1 */	bl __register_global_object
/* 8079CFEC  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 8079CFF0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8079CFF4  C0 3F 01 60 */	lfs f1, 0x160(r31)
/* 8079CFF8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8079CFFC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8079D000  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8079D004  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8079D008  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 8079D00C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8079D010  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8079D014  38 63 00 24 */	addi r3, r3, 0x24
/* 8079D018  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 8079D01C  38 84 D5 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 8079D020  38 BE 00 84 */	addi r5, r30, 0x84
/* 8079D024  4B FF BA B5 */	bl __register_global_object
/* 8079D028  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8079D02C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8079D030  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8079D034  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8079D038  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8079D03C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079D040  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8079D044  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 8079D048  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8079D04C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8079D050  38 63 00 30 */	addi r3, r3, 0x30
/* 8079D054  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 8079D058  38 84 D5 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 8079D05C  38 BE 00 90 */	addi r5, r30, 0x90
/* 8079D060  4B FF BA 79 */	bl __register_global_object
/* 8079D064  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 8079D068  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8079D06C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8079D070  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8079D074  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8079D078  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8079D07C  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8079D080  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8079D084  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8079D088  38 63 00 3C */	addi r3, r3, 0x3c
/* 8079D08C  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 8079D090  38 84 D5 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 8079D094  38 BE 00 9C */	addi r5, r30, 0x9c
/* 8079D098  4B FF BA 41 */	bl __register_global_object
/* 8079D09C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8079D0A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8079D0A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8079D0A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8079D0AC  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8079D0B0  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8079D0B4  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 8079D0B8  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 8079D0BC  38 63 00 48 */	addi r3, r3, 0x48
/* 8079D0C0  3C 80 80 7A */	lis r4, __dt__4cXyzFv@ha
/* 8079D0C4  38 84 D5 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 8079D0C8  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 8079D0CC  4B FF BA 0D */	bl __register_global_object
/* 8079D0D0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8079D0D4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8079D0D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8079D0DC  7C 08 03 A6 */	mtlr r0
/* 8079D0E0  38 21 00 70 */	addi r1, r1, 0x70
/* 8079D0E4  4E 80 00 20 */	blr 
