lbl_805B3C5C:
/* 805B3C5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3C60  7C 08 02 A6 */	mflr r0
/* 805B3C64  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3C68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B3C6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B3C70  7C 7F 1B 78 */	mr r31, r3
/* 805B3C74  7C 9E 23 78 */	mr r30, r4
/* 805B3C78  4B A6 50 68 */	b fopAc_IsActor__FPv
/* 805B3C7C  2C 03 00 00 */	cmpwi r3, 0
/* 805B3C80  41 82 00 C4 */	beq lbl_805B3D44
/* 805B3C84  A8 1F 00 08 */	lha r0, 8(r31)
/* 805B3C88  2C 00 02 F0 */	cmpwi r0, 0x2f0
/* 805B3C8C  40 82 00 B8 */	bne lbl_805B3D44
/* 805B3C90  38 00 00 02 */	li r0, 2
/* 805B3C94  98 1F 05 67 */	stb r0, 0x567(r31)
/* 805B3C98  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805B3C9C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805B3CA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B3CA4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 805B3CA8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805B3CAC  EC 42 00 28 */	fsubs f2, f2, f0
/* 805B3CB0  4B CB 39 C4 */	b cM_atan2s__Fff
/* 805B3CB4  7C 64 1B 78 */	mr r4, r3
/* 805B3CB8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B3CBC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B3CC0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B3CC4  4B A5 87 18 */	b mDoMtx_YrotS__FPA4_fs
/* 805B3CC8  3C 60 80 5C */	lis r3, lit_3830@ha
/* 805B3CCC  C0 03 A5 8C */	lfs f0, lit_3830@l(r3)
/* 805B3CD0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805B3CD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805B3CD8  3C 60 80 5C */	lis r3, lit_4062@ha
/* 805B3CDC  C0 03 A5 A8 */	lfs f0, lit_4062@l(r3)
/* 805B3CE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805B3CE4  38 61 00 08 */	addi r3, r1, 8
/* 805B3CE8  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 805B3CEC  4B CB D2 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B3CF0  3C 60 80 5C */	lis r3, data_805BAD70@ha
/* 805B3CF4  38 63 AD 70 */	addi r3, r3, data_805BAD70@l
/* 805B3CF8  88 63 00 00 */	lbz r3, 0(r3)
/* 805B3CFC  7C 60 07 75 */	extsb. r0, r3
/* 805B3D00  40 82 00 10 */	bne lbl_805B3D10
/* 805B3D04  38 00 00 05 */	li r0, 5
/* 805B3D08  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 805B3D0C  48 00 00 24 */	b lbl_805B3D30
lbl_805B3D10:
/* 805B3D10  7C 60 07 74 */	extsb r0, r3
/* 805B3D14  2C 00 00 01 */	cmpwi r0, 1
/* 805B3D18  40 82 00 10 */	bne lbl_805B3D28
/* 805B3D1C  38 00 00 08 */	li r0, 8
/* 805B3D20  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 805B3D24  48 00 00 0C */	b lbl_805B3D30
lbl_805B3D28:
/* 805B3D28  38 00 00 0F */	li r0, 0xf
/* 805B3D2C  B0 1F 05 7E */	sth r0, 0x57e(r31)
lbl_805B3D30:
/* 805B3D30  3C 60 80 5C */	lis r3, data_805BAD70@ha
/* 805B3D34  38 83 AD 70 */	addi r4, r3, data_805BAD70@l
/* 805B3D38  88 64 00 00 */	lbz r3, 0(r4)
/* 805B3D3C  38 03 00 01 */	addi r0, r3, 1
/* 805B3D40  98 04 00 00 */	stb r0, 0(r4)
lbl_805B3D44:
/* 805B3D44  38 60 00 00 */	li r3, 0
/* 805B3D48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B3D4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B3D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B3D54  7C 08 03 A6 */	mtlr r0
/* 805B3D58  38 21 00 20 */	addi r1, r1, 0x20
/* 805B3D5C  4E 80 00 20 */	blr 
