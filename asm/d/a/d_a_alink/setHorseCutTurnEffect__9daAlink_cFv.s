lbl_801233A4:
/* 801233A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801233A8  7C 08 02 A6 */	mflr r0
/* 801233AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801233B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801233B4  7C 7F 1B 78 */	mr r31, r3
/* 801233B8  38 61 00 08 */	addi r3, r1, 8
/* 801233BC  38 80 00 00 */	li r4, 0
/* 801233C0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 801233C4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 801233C8  48 14 40 2D */	bl __ct__5csXyzFsss
/* 801233CC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 801233D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801233D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801233D8  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 801233DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801233E0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 801233E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801233E8  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 801233EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801233F0  7F E3 FB 78 */	mr r3, r31
/* 801233F4  38 9F 32 04 */	addi r4, r31, 0x3204
/* 801233F8  38 A0 01 F0 */	li r5, 0x1f0
/* 801233FC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80123400  38 E1 00 08 */	addi r7, r1, 8
/* 80123404  4B FF D1 7D */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123408  7F E3 FB 78 */	mr r3, r31
/* 8012340C  38 9F 32 08 */	addi r4, r31, 0x3208
/* 80123410  38 A0 01 F1 */	li r5, 0x1f1
/* 80123414  38 C1 00 10 */	addi r6, r1, 0x10
/* 80123418  38 E1 00 08 */	addi r7, r1, 8
/* 8012341C  4B FF D1 65 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123420  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80123424  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80123428  7C 08 03 A6 */	mtlr r0
/* 8012342C  38 21 00 30 */	addi r1, r1, 0x30
/* 80123430  4E 80 00 20 */	blr 
