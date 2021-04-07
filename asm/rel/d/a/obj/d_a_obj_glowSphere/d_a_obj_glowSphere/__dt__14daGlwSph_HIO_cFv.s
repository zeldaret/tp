lbl_80BFA76C:
/* 80BFA76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA770  7C 08 02 A6 */	mflr r0
/* 80BFA774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFA77C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFA780  41 82 00 40 */	beq lbl_80BFA7C0
/* 80BFA784  3C 60 80 C0 */	lis r3, __vt__14daGlwSph_HIO_c@ha /* 0x80BFAB7C@ha */
/* 80BFA788  38 03 AB 7C */	addi r0, r3, __vt__14daGlwSph_HIO_c@l /* 0x80BFAB7C@l */
/* 80BFA78C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFA790  41 82 00 20 */	beq lbl_80BFA7B0
/* 80BFA794  3C 60 80 C0 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80BFAB88@ha */
/* 80BFA798  38 03 AB 88 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80BFAB88@l */
/* 80BFA79C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFA7A0  41 82 00 10 */	beq lbl_80BFA7B0
/* 80BFA7A4  3C 60 80 C0 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80BFAB94@ha */
/* 80BFA7A8  38 03 AB 94 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80BFAB94@l */
/* 80BFA7AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BFA7B0:
/* 80BFA7B0  7C 80 07 35 */	extsh. r0, r4
/* 80BFA7B4  40 81 00 0C */	ble lbl_80BFA7C0
/* 80BFA7B8  7F E3 FB 78 */	mr r3, r31
/* 80BFA7BC  4B 6D 45 81 */	bl __dl__FPv
lbl_80BFA7C0:
/* 80BFA7C0  7F E3 FB 78 */	mr r3, r31
/* 80BFA7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFA7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA7CC  7C 08 03 A6 */	mtlr r0
/* 80BFA7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA7D4  4E 80 00 20 */	blr 
