lbl_8012FFA4:
/* 8012FFA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012FFA8  7C 08 02 A6 */	mflr r0
/* 8012FFAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012FFB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012FFB4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012FFB8  7C 7F 1B 78 */	mr r31, r3
/* 8012FFBC  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012FFC0  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8012FFC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012FFC8  38 81 00 08 */	addi r4, r1, 8
/* 8012FFCC  4B F8 20 0D */	bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 8012FFD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012FFD4  41 82 00 D0 */	beq lbl_801300A4
/* 8012FFD8  38 61 00 08 */	addi r3, r1, 8
/* 8012FFDC  48 13 71 4D */	bl atan2sX_Z__4cXyzCFv
/* 8012FFE0  7C 7E 1B 78 */	mr r30, r3
/* 8012FFE4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8012FFE8  7F C4 F3 78 */	mr r4, r30
/* 8012FFEC  38 A0 00 04 */	li r5, 4
/* 8012FFF0  38 C0 10 00 */	li r6, 0x1000
/* 8012FFF4  38 E0 04 00 */	li r7, 0x400
/* 8012FFF8  48 14 05 49 */	bl cLib_addCalcAngleS__FPsssss
/* 8012FFFC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80130000  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80130004  3C 84 00 01 */	addis r4, r4, 1
/* 80130008  38 04 80 00 */	addi r0, r4, -32768
/* 8013000C  7C 04 07 34 */	extsh r4, r0
/* 80130010  38 A0 00 04 */	li r5, 4
/* 80130014  38 C0 10 00 */	li r6, 0x1000
/* 80130018  38 E0 04 00 */	li r7, 0x400
/* 8013001C  48 14 05 25 */	bl cLib_addCalcAngleS__FPsssss
/* 80130020  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80130024  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80130028  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8013002C  7C 1E 00 50 */	subf r0, r30, r0
/* 80130030  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80130034  7C 63 02 14 */	add r3, r3, r0
/* 80130038  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8013003C  C0 9F 33 98 */	lfs f4, 0x3398(r31)
/* 80130040  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlSlide_c0@ha /* 0x8038F3F0@ha */
/* 80130044  38 63 F3 F0 */	addi r3, r3, m__21daAlinkHIO_wlSlide_c0@l /* 0x8038F3F0@l */
/* 80130048  C0 63 00 58 */	lfs f3, 0x58(r3)
/* 8013004C  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 80130050  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80130054  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80130058  EC 02 00 28 */	fsubs f0, f2, f0
/* 8013005C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80130060  EC 02 00 2A */	fadds f0, f2, f0
/* 80130064  EC 03 00 32 */	fmuls f0, f3, f0
/* 80130068  EC 00 01 72 */	fmuls f0, f0, f5
/* 8013006C  EC 04 00 2A */	fadds f0, f4, f0
/* 80130070  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80130074  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 80130078  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 8013007C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80130080  40 81 00 08 */	ble lbl_80130088
/* 80130084  D0 3F 33 98 */	stfs f1, 0x3398(r31)
lbl_80130088:
/* 80130088  38 00 00 78 */	li r0, 0x78
/* 8013008C  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 80130090  7F E3 FB 78 */	mr r3, r31
/* 80130094  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030018@ha */
/* 80130098  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00030018@l */
/* 8013009C  4B F8 F1 31 */	bl seStartMapInfoLevel__9daAlink_cFUl
/* 801300A0  48 00 00 0C */	b lbl_801300AC
lbl_801300A4:
/* 801300A4  7F E3 FB 78 */	mr r3, r31
/* 801300A8  48 00 00 2D */	bl procWolfSlideLandInit__9daAlink_cFv
lbl_801300AC:
/* 801300AC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 801300B0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 801300B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801300B8  38 60 00 01 */	li r3, 1
/* 801300BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801300C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801300C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801300C8  7C 08 03 A6 */	mtlr r0
/* 801300CC  38 21 00 30 */	addi r1, r1, 0x30
/* 801300D0  4E 80 00 20 */	blr 
