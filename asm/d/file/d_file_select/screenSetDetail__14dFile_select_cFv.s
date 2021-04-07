lbl_8018CCD0:
/* 8018CCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018CCD4  7C 08 02 A6 */	mflr r0
/* 8018CCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018CCDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018CCE0  7C 7F 1B 78 */	mr r31, r3
/* 8018CCE4  38 60 01 18 */	li r3, 0x118
/* 8018CCE8  48 14 1F 65 */	bl __nw__FUl
/* 8018CCEC  7C 60 1B 79 */	or. r0, r3, r3
/* 8018CCF0  41 82 00 0C */	beq lbl_8018CCFC
/* 8018CCF4  48 16 B7 A5 */	bl __ct__9J2DScreenFv
/* 8018CCF8  7C 60 1B 78 */	mr r0, r3
lbl_8018CCFC:
/* 8018CCFC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8018CD00  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018CD04  3C 80 80 39 */	lis r4, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018CD08  38 84 43 88 */	addi r4, r4, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018CD0C  38 84 02 F4 */	addi r4, r4, 0x2f4
/* 8018CD10  3C A0 01 10 */	lis r5, 0x110
/* 8018CD14  80 DF 00 08 */	lwz r6, 8(r31)
/* 8018CD18  48 16 B9 31 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8018CD1C  3C 60 80 39 */	lis r3, d_file_d_file_select__stringBase0@ha /* 0x80394388@ha */
/* 8018CD20  38 63 43 88 */	addi r3, r3, d_file_d_file_select__stringBase0@l /* 0x80394388@l */
/* 8018CD24  38 63 03 12 */	addi r3, r3, 0x312
/* 8018CD28  80 9F 00 08 */	lwz r4, 8(r31)
/* 8018CD2C  48 14 75 45 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8018CD30  48 17 BD 3D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8018CD34  90 7F 03 A0 */	stw r3, 0x3a0(r31)
/* 8018CD38  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018CD3C  80 9F 03 A0 */	lwz r4, 0x3a0(r31)
/* 8018CD40  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CD44  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8018CD48  7D 89 03 A6 */	mtctr r12
/* 8018CD4C  4E 80 04 21 */	bctrl 
/* 8018CD50  38 00 00 00 */	li r0, 0
/* 8018CD54  90 1F 03 A4 */	stw r0, 0x3a4(r31)
/* 8018CD58  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018CD5C  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 8018CD60  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 8018CD64  38 A0 00 6E */	li r5, 0x6e
/* 8018CD68  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CD6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018CD70  7D 89 03 A6 */	mtctr r12
/* 8018CD74  4E 80 04 21 */	bctrl 
/* 8018CD78  90 7F 00 30 */	stw r3, 0x30(r31)
/* 8018CD7C  38 60 00 6C */	li r3, 0x6c
/* 8018CD80  48 14 1E CD */	bl __nw__FUl
/* 8018CD84  7C 60 1B 79 */	or. r0, r3, r3
/* 8018CD88  41 82 00 28 */	beq lbl_8018CDB0
/* 8018CD8C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8018CD90  3C A0 5F 70 */	lis r5, 0x5F70 /* 0x5F705F6E@ha */
/* 8018CD94  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F705F6E@l */
/* 8018CD98  3C A0 6D 73 */	lis r5, 0x6D73 /* 0x6D736574@ha */
/* 8018CD9C  38 A5 65 74 */	addi r5, r5, 0x6574 /* 0x6D736574@l */
/* 8018CDA0  38 E0 00 00 */	li r7, 0
/* 8018CDA4  39 00 00 00 */	li r8, 0
/* 8018CDA8  48 0C 6B DD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8018CDAC  7C 60 1B 78 */	mr r0, r3
lbl_8018CDB0:
/* 8018CDB0  90 1F 03 A8 */	stw r0, 0x3a8(r31)
/* 8018CDB4  80 1F 03 A8 */	lwz r0, 0x3a8(r31)
/* 8018CDB8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8018CDBC  90 03 03 9C */	stw r0, 0x39c(r3)
/* 8018CDC0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8018CDC4  3C 80 75 62 */	lis r4, 0x7562 /* 0x75625F6E@ha */
/* 8018CDC8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x75625F6E@l */
/* 8018CDCC  3C 80 00 77 */	lis r4, 0x0077 /* 0x00775F73@ha */
/* 8018CDD0  38 A4 5F 73 */	addi r5, r4, 0x5F73 /* 0x00775F73@l */
/* 8018CDD4  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CDD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018CDDC  7D 89 03 A6 */	mtctr r12
/* 8018CDE0  4E 80 04 21 */	bctrl 
/* 8018CDE4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8018CDE8  90 64 03 A0 */	stw r3, 0x3a0(r4)
/* 8018CDEC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8018CDF0  3C 80 69 6E */	lis r4, 0x696E /* 0x696E5F6E@ha */
/* 8018CDF4  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x696E5F6E@l */
/* 8018CDF8  3C 80 00 64 */	lis r4, 0x0064 /* 0x00645F77@ha */
/* 8018CDFC  38 A4 5F 77 */	addi r5, r4, 0x5F77 /* 0x00645F77@l */
/* 8018CE00  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CE04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8018CE08  7D 89 03 A6 */	mtctr r12
/* 8018CE0C  4E 80 04 21 */	bctrl 
/* 8018CE10  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3433@ha */
/* 8018CE14  38 84 34 33 */	addi r4, r4, 0x3433 /* 0x6E5F3433@l */
/* 8018CE18  38 00 00 00 */	li r0, 0
/* 8018CE1C  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8018CE20  90 03 00 18 */	stw r0, 0x18(r3)
/* 8018CE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018CE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018CE2C  7C 08 03 A6 */	mtlr r0
/* 8018CE30  38 21 00 10 */	addi r1, r1, 0x10
/* 8018CE34  4E 80 00 20 */	blr 
