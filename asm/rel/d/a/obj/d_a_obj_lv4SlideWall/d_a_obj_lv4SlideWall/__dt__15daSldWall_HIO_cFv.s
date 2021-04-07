lbl_80C625FC:
/* 80C625FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62600  7C 08 02 A6 */	mflr r0
/* 80C62604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6260C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C62610  41 82 00 30 */	beq lbl_80C62640
/* 80C62614  3C 60 80 C6 */	lis r3, __vt__15daSldWall_HIO_c@ha /* 0x80C627B0@ha */
/* 80C62618  38 03 27 B0 */	addi r0, r3, __vt__15daSldWall_HIO_c@l /* 0x80C627B0@l */
/* 80C6261C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C62620  41 82 00 10 */	beq lbl_80C62630
/* 80C62624  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C627BC@ha */
/* 80C62628  38 03 27 BC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C627BC@l */
/* 80C6262C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C62630:
/* 80C62630  7C 80 07 35 */	extsh. r0, r4
/* 80C62634  40 81 00 0C */	ble lbl_80C62640
/* 80C62638  7F E3 FB 78 */	mr r3, r31
/* 80C6263C  4B 66 C7 01 */	bl __dl__FPv
lbl_80C62640:
/* 80C62640  7F E3 FB 78 */	mr r3, r31
/* 80C62644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6264C  7C 08 03 A6 */	mtlr r0
/* 80C62650  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62654  4E 80 00 20 */	blr 
