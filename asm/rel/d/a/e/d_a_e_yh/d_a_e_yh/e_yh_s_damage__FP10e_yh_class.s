lbl_807FFF38:
/* 807FFF38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807FFF3C  7C 08 02 A6 */	mflr r0
/* 807FFF40  90 01 00 34 */	stw r0, 0x34(r1)
/* 807FFF44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807FFF48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807FFF4C  7C 7F 1B 78 */	mr r31, r3
/* 807FFF50  3C 80 80 80 */	lis r4, lit_3902@ha /* 0x8080427C@ha */
/* 807FFF54  3B C4 42 7C */	addi r30, r4, lit_3902@l /* 0x8080427C@l */
/* 807FFF58  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807FFF5C  2C 00 00 01 */	cmpwi r0, 1
/* 807FFF60  41 82 01 10 */	beq lbl_80800070
/* 807FFF64  40 80 01 C0 */	bge lbl_80800124
/* 807FFF68  2C 00 00 00 */	cmpwi r0, 0
/* 807FFF6C  40 80 00 08 */	bge lbl_807FFF74
/* 807FFF70  48 00 01 B4 */	b lbl_80800124
lbl_807FFF74:
/* 807FFF74  38 80 00 0C */	li r4, 0xc
/* 807FFF78  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 807FFF7C  38 A0 00 00 */	li r5, 0
/* 807FFF80  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FFF84  4B FF D7 39 */	bl anm_init__FP10e_yh_classifUcf
/* 807FFF88  7F E3 FB 78 */	mr r3, r31
/* 807FFF8C  38 80 00 14 */	li r4, 0x14
/* 807FFF90  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 807FFF94  38 A0 00 02 */	li r5, 2
/* 807FFF98  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807FFF9C  4B FF D7 CD */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FFFA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807FFFA4  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807FFFA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FFFAC  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807FFFB0  38 81 00 0C */	addi r4, r1, 0xc
/* 807FFFB4  38 A0 00 00 */	li r5, 0
/* 807FFFB8  38 C0 FF FF */	li r6, -1
/* 807FFFBC  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 807FFFC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FFFC4  7D 89 03 A6 */	mtctr r12
/* 807FFFC8  4E 80 04 21 */	bctrl 
/* 807FFFCC  88 1F 08 54 */	lbz r0, 0x854(r31)
/* 807FFFD0  7C 00 07 75 */	extsb. r0, r0
/* 807FFFD4  41 82 00 28 */	beq lbl_807FFFFC
/* 807FFFD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FFFDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807FFFE0  80 63 00 00 */	lwz r3, 0(r3)
/* 807FFFE4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807FFFE8  3C 84 00 01 */	addis r4, r4, 1
/* 807FFFEC  38 04 80 00 */	addi r0, r4, -32768
/* 807FFFF0  7C 04 07 34 */	extsh r4, r0
/* 807FFFF4  4B 80 C3 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807FFFF8  48 00 00 18 */	b lbl_80800010
lbl_807FFFFC:
/* 807FFFFC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80800000  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80800004  80 63 00 00 */	lwz r3, 0(r3)
/* 80800008  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8080000C  4B 80 C3 D1 */	bl mDoMtx_YrotS__FPA4_fs
lbl_80800010:
/* 80800010  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80800014  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80800018  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8080001C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80800020  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80800024  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80800028  38 61 00 10 */	addi r3, r1, 0x10
/* 8080002C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80800030  4B A7 0E BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80800034  38 00 00 01 */	li r0, 1
/* 80800038  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8080003C  38 00 00 0A */	li r0, 0xa
/* 80800040  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 80800044  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070085@ha */
/* 80800048  38 03 00 85 */	addi r0, r3, 0x0085 /* 0x00070085@l */
/* 8080004C  90 01 00 08 */	stw r0, 8(r1)
/* 80800050  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80800054  38 81 00 08 */	addi r4, r1, 8
/* 80800058  38 A0 FF FF */	li r5, -1
/* 8080005C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 80800060  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80800064  7D 89 03 A6 */	mtctr r12
/* 80800068  4E 80 04 21 */	bctrl 
/* 8080006C  48 00 00 B8 */	b lbl_80800124
lbl_80800070:
/* 80800070  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80800074  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80800078  7C 65 1B 78 */	mr r5, r3
/* 8080007C  4B B4 70 15 */	bl PSVECAdd
/* 80800080  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80800084  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80800088  EC 41 00 28 */	fsubs f2, f1, f0
/* 8080008C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80800090  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80800094  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80800098  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080009C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 808000A0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 808000A4  EC 00 00 32 */	fmuls f0, f0, f0
/* 808000A8  EC 21 00 2A */	fadds f1, f1, f0
/* 808000AC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 808000B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808000B4  40 81 00 0C */	ble lbl_808000C0
/* 808000B8  FC 00 08 34 */	frsqrte f0, f1
/* 808000BC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_808000C0:
/* 808000C0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 808000C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808000C8  40 81 00 18 */	ble lbl_808000E0
/* 808000CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 808000D0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 808000D4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 808000D8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 808000DC  48 00 00 2C */	b lbl_80800108
lbl_808000E0:
/* 808000E0  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 808000E4  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 808000E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 808000EC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 808000F0  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 808000F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 808000F8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 808000FC  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80800100  EC 00 00 72 */	fmuls f0, f0, f1
/* 80800104  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_80800108:
/* 80800108  A8 1F 06 98 */	lha r0, 0x698(r31)
/* 8080010C  2C 00 00 00 */	cmpwi r0, 0
/* 80800110  40 82 00 14 */	bne lbl_80800124
/* 80800114  38 00 00 06 */	li r0, 6
/* 80800118  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8080011C  38 00 00 00 */	li r0, 0
/* 80800120  B0 1F 06 70 */	sth r0, 0x670(r31)
lbl_80800124:
/* 80800124  88 1F 08 54 */	lbz r0, 0x854(r31)
/* 80800128  7C 00 07 75 */	extsb. r0, r0
/* 8080012C  41 82 00 1C */	beq lbl_80800148
/* 80800130  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80800134  38 80 40 00 */	li r4, 0x4000
/* 80800138  38 A0 00 04 */	li r5, 4
/* 8080013C  38 C0 04 00 */	li r6, 0x400
/* 80800140  4B A7 04 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 80800144  48 00 00 18 */	b lbl_8080015C
lbl_80800148:
/* 80800148  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8080014C  38 80 C0 00 */	li r4, -16384
/* 80800150  38 A0 00 04 */	li r5, 4
/* 80800154  38 C0 04 00 */	li r6, 0x400
/* 80800158  4B A7 04 B1 */	bl cLib_addCalcAngleS2__FPssss
lbl_8080015C:
/* 8080015C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80800160  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80800164  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80800168  7C 08 03 A6 */	mtlr r0
/* 8080016C  38 21 00 30 */	addi r1, r1, 0x30
/* 80800170  4E 80 00 20 */	blr 
