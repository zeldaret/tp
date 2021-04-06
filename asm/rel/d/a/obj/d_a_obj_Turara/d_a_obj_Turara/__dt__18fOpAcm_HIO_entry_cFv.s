lbl_80B9CBF8:
/* 80B9CBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9CBFC  7C 08 02 A6 */	mflr r0
/* 80B9CC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9CC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9CC08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9CC0C  41 82 00 30 */	beq lbl_80B9CC3C
/* 80B9CC10  3C 60 80 BA */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80B9EB74@ha */
/* 80B9CC14  38 03 EB 74 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80B9EB74@l */
/* 80B9CC18  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9CC1C  41 82 00 10 */	beq lbl_80B9CC2C
/* 80B9CC20  3C 60 80 BA */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80B9EB80@ha */
/* 80B9CC24  38 03 EB 80 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80B9EB80@l */
/* 80B9CC28  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B9CC2C:
/* 80B9CC2C  7C 80 07 35 */	extsh. r0, r4
/* 80B9CC30  40 81 00 0C */	ble lbl_80B9CC3C
/* 80B9CC34  7F E3 FB 78 */	mr r3, r31
/* 80B9CC38  4B 73 21 05 */	bl __dl__FPv
lbl_80B9CC3C:
/* 80B9CC3C  7F E3 FB 78 */	mr r3, r31
/* 80B9CC40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9CC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9CC48  7C 08 03 A6 */	mtlr r0
/* 80B9CC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9CC50  4E 80 00 20 */	blr 
