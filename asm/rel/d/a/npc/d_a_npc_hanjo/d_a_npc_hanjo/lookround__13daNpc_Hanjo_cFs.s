lbl_809FC06C:
/* 809FC06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FC070  7C 08 02 A6 */	mflr r0
/* 809FC074  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FC078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FC07C  93 C1 00 08 */	stw r30, 8(r1)
/* 809FC080  7C 7F 1B 78 */	mr r31, r3
/* 809FC084  7C 9E 23 78 */	mr r30, r4
/* 809FC088  88 03 17 1E */	lbz r0, 0x171e(r3)
/* 809FC08C  28 00 00 00 */	cmplwi r0, 0
/* 809FC090  41 82 00 EC */	beq lbl_809FC17C
/* 809FC094  38 7F 04 DE */	addi r3, r31, 0x4de
/* 809FC098  38 A0 00 04 */	li r5, 4
/* 809FC09C  38 C0 08 00 */	li r6, 0x800
/* 809FC0A0  4B 87 45 69 */	bl cLib_addCalcAngleS2__FPssss
/* 809FC0A4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809FC0A8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809FC0AC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 809FC0B0  B0 1F 0D 7A */	sth r0, 0xd7a(r31)
/* 809FC0B4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809FC0B8  2C 00 00 0E */	cmpwi r0, 0xe
/* 809FC0BC  41 82 00 30 */	beq lbl_809FC0EC
/* 809FC0C0  41 82 00 E0 */	beq lbl_809FC1A0
/* 809FC0C4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809FC0C8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FC0CC  4B 74 97 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC0D0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809FC0D4  38 00 00 0E */	li r0, 0xe
/* 809FC0D8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809FC0DC  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FC0E0  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FC0E4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 809FC0E8  48 00 00 B8 */	b lbl_809FC1A0
lbl_809FC0EC:
/* 809FC0EC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FC0F0  4B 74 99 35 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 809FC0F4  2C 03 00 00 */	cmpwi r3, 0
/* 809FC0F8  41 82 00 A8 */	beq lbl_809FC1A0
/* 809FC0FC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809FC100  7C 00 F0 50 */	subf r0, r0, r30
/* 809FC104  7C 03 07 34 */	extsh r3, r0
/* 809FC108  4B 96 8F C9 */	bl abs
/* 809FC10C  7C 60 07 34 */	extsh r0, r3
/* 809FC110  2C 00 02 D8 */	cmpwi r0, 0x2d8
/* 809FC114  41 81 00 40 */	bgt lbl_809FC154
/* 809FC118  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809FC11C  2C 00 00 00 */	cmpwi r0, 0
/* 809FC120  41 82 00 28 */	beq lbl_809FC148
/* 809FC124  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809FC128  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FC12C  4B 74 97 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC130  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809FC134  38 00 00 00 */	li r0, 0
/* 809FC138  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809FC13C  3C 60 80 A0 */	lis r3, lit_4869@ha /* 0x80A00720@ha */
/* 809FC140  C0 03 07 20 */	lfs f0, lit_4869@l(r3)  /* 0x80A00720@l */
/* 809FC144  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809FC148:
/* 809FC148  38 00 00 00 */	li r0, 0
/* 809FC14C  98 1F 17 1E */	stb r0, 0x171e(r31)
/* 809FC150  48 00 00 50 */	b lbl_809FC1A0
lbl_809FC154:
/* 809FC154  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809FC158  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FC15C  4B 74 97 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC160  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809FC164  38 00 00 0E */	li r0, 0xe
/* 809FC168  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809FC16C  3C 60 80 A0 */	lis r3, lit_4141@ha /* 0x80A006FC@ha */
/* 809FC170  C0 03 06 FC */	lfs f0, lit_4141@l(r3)  /* 0x80A006FC@l */
/* 809FC174  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 809FC178  48 00 00 28 */	b lbl_809FC1A0
lbl_809FC17C:
/* 809FC17C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809FC180  7C 00 F0 50 */	subf r0, r0, r30
/* 809FC184  7C 03 07 34 */	extsh r3, r0
/* 809FC188  4B 96 8F 49 */	bl abs
/* 809FC18C  7C 60 07 34 */	extsh r0, r3
/* 809FC190  2C 00 40 00 */	cmpwi r0, 0x4000
/* 809FC194  40 81 00 0C */	ble lbl_809FC1A0
/* 809FC198  38 00 00 01 */	li r0, 1
/* 809FC19C  98 1F 17 1E */	stb r0, 0x171e(r31)
lbl_809FC1A0:
/* 809FC1A0  38 60 00 01 */	li r3, 1
/* 809FC1A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FC1A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809FC1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FC1B0  7C 08 03 A6 */	mtlr r0
/* 809FC1B4  38 21 00 10 */	addi r1, r1, 0x10
/* 809FC1B8  4E 80 00 20 */	blr 
