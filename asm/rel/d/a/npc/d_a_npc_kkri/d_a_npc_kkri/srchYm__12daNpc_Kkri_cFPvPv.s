lbl_8054FD78:
/* 8054FD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FD7C  7C 08 02 A6 */	mflr r0
/* 8054FD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054FD88  7C 7F 1B 78 */	mr r31, r3
/* 8054FD8C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 8054FD90  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 8054FD94  2C 00 00 32 */	cmpwi r0, 0x32
/* 8054FD98  40 80 00 70 */	bge lbl_8054FE08
/* 8054FD9C  28 1F 00 00 */	cmplwi r31, 0
/* 8054FDA0  41 82 00 68 */	beq lbl_8054FE08
/* 8054FDA4  7C 1F 20 40 */	cmplw r31, r4
/* 8054FDA8  41 82 00 60 */	beq lbl_8054FE08
/* 8054FDAC  28 1F 00 00 */	cmplwi r31, 0
/* 8054FDB0  41 82 00 0C */	beq lbl_8054FDBC
/* 8054FDB4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8054FDB8  48 00 00 08 */	b lbl_8054FDC0
lbl_8054FDBC:
/* 8054FDBC  38 60 FF FF */	li r3, -1
lbl_8054FDC0:
/* 8054FDC0  4B AD 15 DC */	b fpcEx_IsExist__FUi
/* 8054FDC4  2C 03 00 00 */	cmpwi r3, 0
/* 8054FDC8  41 82 00 40 */	beq lbl_8054FE08
/* 8054FDCC  A8 1F 00 08 */	lha r0, 8(r31)
/* 8054FDD0  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 8054FDD4  40 82 00 34 */	bne lbl_8054FE08
/* 8054FDD8  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 8054FDDC  28 00 00 00 */	cmplwi r0, 0
/* 8054FDE0  40 82 00 28 */	bne lbl_8054FE08
/* 8054FDE4  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 8054FDE8  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l
/* 8054FDEC  80 85 00 00 */	lwz r4, 0(r5)
/* 8054FDF0  54 80 10 3A */	slwi r0, r4, 2
/* 8054FDF4  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 8054FDF8  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l
/* 8054FDFC  7F E3 01 2E */	stwx r31, r3, r0
/* 8054FE00  38 04 00 01 */	addi r0, r4, 1
/* 8054FE04  90 05 00 00 */	stw r0, 0(r5)
lbl_8054FE08:
/* 8054FE08  38 60 00 00 */	li r3, 0
/* 8054FE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054FE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FE14  7C 08 03 A6 */	mtlr r0
/* 8054FE18  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FE1C  4E 80 00 20 */	blr 
