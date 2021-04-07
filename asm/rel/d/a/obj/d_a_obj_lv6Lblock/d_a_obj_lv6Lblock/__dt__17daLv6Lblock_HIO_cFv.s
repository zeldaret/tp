lbl_80C73C10:
/* 80C73C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73C14  7C 08 02 A6 */	mflr r0
/* 80C73C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73C20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C73C24  41 82 00 30 */	beq lbl_80C73C54
/* 80C73C28  3C 60 80 C7 */	lis r3, __vt__17daLv6Lblock_HIO_c@ha /* 0x80C73DCC@ha */
/* 80C73C2C  38 03 3D CC */	addi r0, r3, __vt__17daLv6Lblock_HIO_c@l /* 0x80C73DCC@l */
/* 80C73C30  90 1F 00 00 */	stw r0, 0(r31)
/* 80C73C34  41 82 00 10 */	beq lbl_80C73C44
/* 80C73C38  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C73DD8@ha */
/* 80C73C3C  38 03 3D D8 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C73DD8@l */
/* 80C73C40  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C73C44:
/* 80C73C44  7C 80 07 35 */	extsh. r0, r4
/* 80C73C48  40 81 00 0C */	ble lbl_80C73C54
/* 80C73C4C  7F E3 FB 78 */	mr r3, r31
/* 80C73C50  4B 65 B0 ED */	bl __dl__FPv
lbl_80C73C54:
/* 80C73C54  7F E3 FB 78 */	mr r3, r31
/* 80C73C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73C60  7C 08 03 A6 */	mtlr r0
/* 80C73C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73C68  4E 80 00 20 */	blr 
