lbl_80D1FAE0:
/* 80D1FAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1FAE4  7C 08 02 A6 */	mflr r0
/* 80D1FAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1FAEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1FAF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1FAF4  41 82 00 30 */	beq lbl_80D1FB24
/* 80D1FAF8  3C 60 80 D2 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80D1FAFC  38 03 06 80 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80D1FB00  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1FB04  41 82 00 10 */	beq lbl_80D1FB14
/* 80D1FB08  3C 60 80 D2 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80D1FB0C  38 03 06 8C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80D1FB10  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D1FB14:
/* 80D1FB14  7C 80 07 35 */	extsh. r0, r4
/* 80D1FB18  40 81 00 0C */	ble lbl_80D1FB24
/* 80D1FB1C  7F E3 FB 78 */	mr r3, r31
/* 80D1FB20  4B 5A F2 1C */	b __dl__FPv
lbl_80D1FB24:
/* 80D1FB24  7F E3 FB 78 */	mr r3, r31
/* 80D1FB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1FB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1FB30  7C 08 03 A6 */	mtlr r0
/* 80D1FB34  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1FB38  4E 80 00 20 */	blr 
