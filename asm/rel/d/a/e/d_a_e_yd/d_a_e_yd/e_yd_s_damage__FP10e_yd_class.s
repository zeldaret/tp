lbl_807F4EB8:
/* 807F4EB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F4EBC  7C 08 02 A6 */	mflr r0
/* 807F4EC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F4EC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807F4EC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807F4ECC  7C 7E 1B 78 */	mr r30, r3
/* 807F4ED0  3C 80 80 7F */	lis r4, lit_3788@ha /* 0x807F7A00@ha */
/* 807F4ED4  3B E4 7A 00 */	addi r31, r4, lit_3788@l /* 0x807F7A00@l */
/* 807F4ED8  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807F4EDC  2C 00 00 01 */	cmpwi r0, 1
/* 807F4EE0  41 82 01 08 */	beq lbl_807F4FE8
/* 807F4EE4  40 80 01 DC */	bge lbl_807F50C0
/* 807F4EE8  2C 00 00 00 */	cmpwi r0, 0
/* 807F4EEC  40 80 00 08 */	bge lbl_807F4EF4
/* 807F4EF0  48 00 01 D0 */	b lbl_807F50C0
lbl_807F4EF4:
/* 807F4EF4  38 80 00 0C */	li r4, 0xc
/* 807F4EF8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807F4EFC  38 A0 00 00 */	li r5, 0
/* 807F4F00  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F4F04  4B FF DF 1D */	bl anm_init__FP10e_yd_classifUcf
/* 807F4F08  7F C3 F3 78 */	mr r3, r30
/* 807F4F0C  38 80 00 14 */	li r4, 0x14
/* 807F4F10  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807F4F14  38 A0 00 02 */	li r5, 2
/* 807F4F18  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807F4F1C  4B FF DF B1 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F4F20  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807F4F24  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807F4F28  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F4F2C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F4F30  38 81 00 0C */	addi r4, r1, 0xc
/* 807F4F34  38 A0 00 00 */	li r5, 0
/* 807F4F38  38 C0 FF FF */	li r6, -1
/* 807F4F3C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F4F40  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F4F44  7D 89 03 A6 */	mtctr r12
/* 807F4F48  4E 80 04 21 */	bctrl 
/* 807F4F4C  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F4F50  7C 00 07 75 */	extsb. r0, r0
/* 807F4F54  41 82 00 28 */	beq lbl_807F4F7C
/* 807F4F58  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4F5C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F4F60  80 63 00 00 */	lwz r3, 0(r3)
/* 807F4F64  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807F4F68  3C 84 00 01 */	addis r4, r4, 1
/* 807F4F6C  38 04 80 00 */	addi r0, r4, -32768
/* 807F4F70  7C 04 07 34 */	extsh r4, r0
/* 807F4F74  4B 81 74 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 807F4F78  48 00 00 18 */	b lbl_807F4F90
lbl_807F4F7C:
/* 807F4F7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807F4F80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807F4F84  80 63 00 00 */	lwz r3, 0(r3)
/* 807F4F88  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807F4F8C  4B 81 74 51 */	bl mDoMtx_YrotS__FPA4_fs
lbl_807F4F90:
/* 807F4F90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F4F94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807F4F98  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807F4F9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807F4FA0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807F4FA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F4FA8  38 61 00 10 */	addi r3, r1, 0x10
/* 807F4FAC  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807F4FB0  4B A7 BF 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F4FB4  38 00 00 01 */	li r0, 1
/* 807F4FB8  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F4FBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070085@ha */
/* 807F4FC0  38 03 00 85 */	addi r0, r3, 0x0085 /* 0x00070085@l */
/* 807F4FC4  90 01 00 08 */	stw r0, 8(r1)
/* 807F4FC8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F4FCC  38 81 00 08 */	addi r4, r1, 8
/* 807F4FD0  38 A0 FF FF */	li r5, -1
/* 807F4FD4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F4FD8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F4FDC  7D 89 03 A6 */	mtctr r12
/* 807F4FE0  4E 80 04 21 */	bctrl 
/* 807F4FE4  48 00 00 DC */	b lbl_807F50C0
lbl_807F4FE8:
/* 807F4FE8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807F4FEC  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807F4FF0  7C 65 1B 78 */	mr r5, r3
/* 807F4FF4  4B B5 20 9D */	bl PSVECAdd
/* 807F4FF8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807F4FFC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807F5000  EC 41 00 28 */	fsubs f2, f1, f0
/* 807F5004  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807F5008  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 807F500C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807F5010  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F5014  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F5018  EC 22 00 B2 */	fmuls f1, f2, f2
/* 807F501C  EC 00 00 32 */	fmuls f0, f0, f0
/* 807F5020  EC 21 00 2A */	fadds f1, f1, f0
/* 807F5024  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F5028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F502C  40 81 00 0C */	ble lbl_807F5038
/* 807F5030  FC 00 08 34 */	frsqrte f0, f1
/* 807F5034  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807F5038:
/* 807F5038  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807F503C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F5040  40 81 00 18 */	ble lbl_807F5058
/* 807F5044  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F5048  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807F504C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807F5050  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 807F5054  48 00 00 2C */	b lbl_807F5080
lbl_807F5058:
/* 807F5058  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 807F505C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 807F5060  EC 00 00 72 */	fmuls f0, f0, f1
/* 807F5064  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807F5068  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 807F506C  EC 00 00 72 */	fmuls f0, f0, f1
/* 807F5070  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807F5074  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807F5078  EC 00 00 72 */	fmuls f0, f0, f1
/* 807F507C  D0 1E 05 00 */	stfs f0, 0x500(r30)
lbl_807F5080:
/* 807F5080  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807F5084  2C 00 00 00 */	cmpwi r0, 0
/* 807F5088  40 82 00 14 */	bne lbl_807F509C
/* 807F508C  38 00 00 06 */	li r0, 6
/* 807F5090  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F5094  38 00 00 00 */	li r0, 0
/* 807F5098  B0 1E 06 70 */	sth r0, 0x670(r30)
lbl_807F509C:
/* 807F509C  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 807F50A0  2C 00 00 00 */	cmpwi r0, 0
/* 807F50A4  40 82 00 1C */	bne lbl_807F50C0
/* 807F50A8  38 00 00 03 */	li r0, 3
/* 807F50AC  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F50B0  38 00 00 00 */	li r0, 0
/* 807F50B4  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F50B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F50BC  D0 1E 08 50 */	stfs f0, 0x850(r30)
lbl_807F50C0:
/* 807F50C0  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F50C4  7C 00 07 75 */	extsb. r0, r0
/* 807F50C8  41 82 00 1C */	beq lbl_807F50E4
/* 807F50CC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F50D0  38 80 40 00 */	li r4, 0x4000
/* 807F50D4  38 A0 00 04 */	li r5, 4
/* 807F50D8  38 C0 04 00 */	li r6, 0x400
/* 807F50DC  4B A7 B5 2D */	bl cLib_addCalcAngleS2__FPssss
/* 807F50E0  48 00 00 18 */	b lbl_807F50F8
lbl_807F50E4:
/* 807F50E4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F50E8  38 80 C0 00 */	li r4, -16384
/* 807F50EC  38 A0 00 04 */	li r5, 4
/* 807F50F0  38 C0 04 00 */	li r6, 0x400
/* 807F50F4  4B A7 B5 15 */	bl cLib_addCalcAngleS2__FPssss
lbl_807F50F8:
/* 807F50F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807F50FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807F5100  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F5104  7C 08 03 A6 */	mtlr r0
/* 807F5108  38 21 00 30 */	addi r1, r1, 0x30
/* 807F510C  4E 80 00 20 */	blr 
