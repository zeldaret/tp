lbl_8019C06C:
/* 8019C06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019C070  7C 08 02 A6 */	mflr r0
/* 8019C074  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019C078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019C07C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8019C080  41 82 00 30 */	beq lbl_8019C0B0
/* 8019C084  3C 60 80 3C */	lis r3, __vt__10dGov_HIO_c@ha /* 0x803BBD90@ha */
/* 8019C088  38 03 BD 90 */	addi r0, r3, __vt__10dGov_HIO_c@l /* 0x803BBD90@l */
/* 8019C08C  90 1F 00 00 */	stw r0, 0(r31)
/* 8019C090  41 82 00 10 */	beq lbl_8019C0A0
/* 8019C094  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x803B61B4@ha */
/* 8019C098  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x803B61B4@l */
/* 8019C09C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8019C0A0:
/* 8019C0A0  7C 80 07 35 */	extsh. r0, r4
/* 8019C0A4  40 81 00 0C */	ble lbl_8019C0B0
/* 8019C0A8  7F E3 FB 78 */	mr r3, r31
/* 8019C0AC  48 13 2C 91 */	bl __dl__FPv
lbl_8019C0B0:
/* 8019C0B0  7F E3 FB 78 */	mr r3, r31
/* 8019C0B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019C0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019C0BC  7C 08 03 A6 */	mtlr r0
/* 8019C0C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8019C0C4  4E 80 00 20 */	blr 
