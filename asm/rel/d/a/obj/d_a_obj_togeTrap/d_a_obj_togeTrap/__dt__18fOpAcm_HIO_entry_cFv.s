lbl_80D17BD0:
/* 80D17BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17BD4  7C 08 02 A6 */	mflr r0
/* 80D17BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D17BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D17BE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D17BE4  41 82 00 30 */	beq lbl_80D17C14
/* 80D17BE8  3C 60 80 D2 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80D19088@ha */
/* 80D17BEC  38 03 90 88 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80D19088@l */
/* 80D17BF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D17BF4  41 82 00 10 */	beq lbl_80D17C04
/* 80D17BF8  3C 60 80 D2 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D19094@ha */
/* 80D17BFC  38 03 90 94 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D19094@l */
/* 80D17C00  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D17C04:
/* 80D17C04  7C 80 07 35 */	extsh. r0, r4
/* 80D17C08  40 81 00 0C */	ble lbl_80D17C14
/* 80D17C0C  7F E3 FB 78 */	mr r3, r31
/* 80D17C10  4B 5B 71 2D */	bl __dl__FPv
lbl_80D17C14:
/* 80D17C14  7F E3 FB 78 */	mr r3, r31
/* 80D17C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D17C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17C20  7C 08 03 A6 */	mtlr r0
/* 80D17C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17C28  4E 80 00 20 */	blr 
