lbl_80AC5EDC:
/* 80AC5EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5EE0  7C 08 02 A6 */	mflr r0
/* 80AC5EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC5EEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC5EF0  7C 7F 1B 78 */	mr r31, r3
/* 80AC5EF4  80 03 0E 60 */	lwz r0, 0xe60(r3)
/* 80AC5EF8  2C 00 00 02 */	cmpwi r0, 2
/* 80AC5EFC  41 82 01 2C */	beq lbl_80AC6028
/* 80AC5F00  40 80 00 14 */	bge lbl_80AC5F14
/* 80AC5F04  2C 00 00 00 */	cmpwi r0, 0
/* 80AC5F08  41 82 00 18 */	beq lbl_80AC5F20
/* 80AC5F0C  40 80 00 94 */	bge lbl_80AC5FA0
/* 80AC5F10  48 00 02 18 */	b lbl_80AC6128
lbl_80AC5F14:
/* 80AC5F14  2C 00 00 04 */	cmpwi r0, 4
/* 80AC5F18  40 80 02 10 */	bge lbl_80AC6128
/* 80AC5F1C  48 00 01 8C */	b lbl_80AC60A8
lbl_80AC5F20:
/* 80AC5F20  80 7F 0B 7C */	lwz r3, 0xb7c(r31)
/* 80AC5F24  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5F28  40 82 00 4C */	bne lbl_80AC5F74
/* 80AC5F2C  A0 1F 0E 1E */	lhz r0, 0xe1e(r31)
/* 80AC5F30  28 00 00 03 */	cmplwi r0, 3
/* 80AC5F34  41 80 01 F4 */	blt lbl_80AC6128
/* 80AC5F38  2C 03 00 01 */	cmpwi r3, 1
/* 80AC5F3C  41 82 00 28 */	beq lbl_80AC5F64
/* 80AC5F40  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC5F44  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC5F48  4B 67 F9 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC5F4C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC5F50  38 00 00 01 */	li r0, 1
/* 80AC5F54  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC5F58  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC5F5C  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC5F60  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC5F64:
/* 80AC5F64  80 7F 0E 60 */	lwz r3, 0xe60(r31)
/* 80AC5F68  38 03 00 01 */	addi r0, r3, 1
/* 80AC5F6C  90 1F 0E 60 */	stw r0, 0xe60(r31)
/* 80AC5F70  48 00 01 B8 */	b lbl_80AC6128
lbl_80AC5F74:
/* 80AC5F74  41 82 01 B4 */	beq lbl_80AC6128
/* 80AC5F78  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC5F7C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC5F80  4B 67 F9 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC5F84  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC5F88  38 00 00 00 */	li r0, 0
/* 80AC5F8C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC5F90  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC5F94  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC5F98  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AC5F9C  48 00 01 8C */	b lbl_80AC6128
lbl_80AC5FA0:
/* 80AC5FA0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC5FA4  2C 00 00 01 */	cmpwi r0, 1
/* 80AC5FA8  40 82 00 54 */	bne lbl_80AC5FFC
/* 80AC5FAC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC5FB0  4B 67 FA 75 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AC5FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5FB8  41 82 01 70 */	beq lbl_80AC6128
/* 80AC5FBC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC5FC0  2C 00 00 02 */	cmpwi r0, 2
/* 80AC5FC4  41 82 00 28 */	beq lbl_80AC5FEC
/* 80AC5FC8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC5FCC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC5FD0  4B 67 F8 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC5FD4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC5FD8  38 00 00 02 */	li r0, 2
/* 80AC5FDC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC5FE0  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC5FE4  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC5FE8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC5FEC:
/* 80AC5FEC  80 7F 0E 60 */	lwz r3, 0xe60(r31)
/* 80AC5FF0  38 03 00 01 */	addi r0, r3, 1
/* 80AC5FF4  90 1F 0E 60 */	stw r0, 0xe60(r31)
/* 80AC5FF8  48 00 01 30 */	b lbl_80AC6128
lbl_80AC5FFC:
/* 80AC5FFC  41 82 01 2C */	beq lbl_80AC6128
/* 80AC6000  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC6004  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC6008  4B 67 F8 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC600C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC6010  38 00 00 01 */	li r0, 1
/* 80AC6014  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC6018  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC601C  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC6020  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AC6024  48 00 01 04 */	b lbl_80AC6128
lbl_80AC6028:
/* 80AC6028  80 7F 0B 7C */	lwz r3, 0xb7c(r31)
/* 80AC602C  2C 03 00 02 */	cmpwi r3, 2
/* 80AC6030  40 82 00 4C */	bne lbl_80AC607C
/* 80AC6034  A0 1F 0E 1E */	lhz r0, 0xe1e(r31)
/* 80AC6038  28 00 00 02 */	cmplwi r0, 2
/* 80AC603C  41 80 00 EC */	blt lbl_80AC6128
/* 80AC6040  2C 03 00 03 */	cmpwi r3, 3
/* 80AC6044  41 82 00 28 */	beq lbl_80AC606C
/* 80AC6048  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC604C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC6050  4B 67 F8 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC6054  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC6058  38 00 00 03 */	li r0, 3
/* 80AC605C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC6060  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC6064  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC6068  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC606C:
/* 80AC606C  80 7F 0E 60 */	lwz r3, 0xe60(r31)
/* 80AC6070  38 03 00 01 */	addi r0, r3, 1
/* 80AC6074  90 1F 0E 60 */	stw r0, 0xe60(r31)
/* 80AC6078  48 00 00 B0 */	b lbl_80AC6128
lbl_80AC607C:
/* 80AC607C  41 82 00 AC */	beq lbl_80AC6128
/* 80AC6080  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC6084  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC6088  4B 67 F8 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC608C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC6090  38 00 00 02 */	li r0, 2
/* 80AC6094  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC6098  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC609C  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC60A0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AC60A4  48 00 00 84 */	b lbl_80AC6128
lbl_80AC60A8:
/* 80AC60A8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC60AC  2C 00 00 03 */	cmpwi r0, 3
/* 80AC60B0  40 82 00 50 */	bne lbl_80AC6100
/* 80AC60B4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC60B8  4B 67 F9 6D */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AC60BC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC60C0  41 82 00 68 */	beq lbl_80AC6128
/* 80AC60C4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC60C8  2C 00 00 00 */	cmpwi r0, 0
/* 80AC60CC  41 82 00 28 */	beq lbl_80AC60F4
/* 80AC60D0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC60D4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC60D8  4B 67 F7 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC60DC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC60E0  38 00 00 00 */	li r0, 0
/* 80AC60E4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC60E8  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC60EC  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC60F0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC60F4:
/* 80AC60F4  38 00 00 00 */	li r0, 0
/* 80AC60F8  90 1F 0E 60 */	stw r0, 0xe60(r31)
/* 80AC60FC  48 00 00 2C */	b lbl_80AC6128
lbl_80AC6100:
/* 80AC6100  41 82 00 28 */	beq lbl_80AC6128
/* 80AC6104  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC6108  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC610C  4B 67 F7 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC6110  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC6114  38 00 00 03 */	li r0, 3
/* 80AC6118  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC611C  3C 60 80 AC */	lis r3, lit_4292@ha /* 0x80AC70CC@ha */
/* 80AC6120  C0 03 70 CC */	lfs f0, lit_4292@l(r3)  /* 0x80AC70CC@l */
/* 80AC6124  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC6128:
/* 80AC6128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC612C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC6130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6134  7C 08 03 A6 */	mtlr r0
/* 80AC6138  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC613C  4E 80 00 20 */	blr 
