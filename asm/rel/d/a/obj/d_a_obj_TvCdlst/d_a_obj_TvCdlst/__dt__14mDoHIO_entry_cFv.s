lbl_80B9ECF8:
/* 80B9ECF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9ECFC  7C 08 02 A6 */	mflr r0
/* 80B9ED00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9ED04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9ED08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9ED0C  41 82 00 1C */	beq lbl_80B9ED28
/* 80B9ED10  3C A0 80 BA */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80B9F9B8@ha */
/* 80B9ED14  38 05 F9 B8 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80B9F9B8@l */
/* 80B9ED18  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9ED1C  7C 80 07 35 */	extsh. r0, r4
/* 80B9ED20  40 81 00 08 */	ble lbl_80B9ED28
/* 80B9ED24  4B 73 00 19 */	bl __dl__FPv
lbl_80B9ED28:
/* 80B9ED28  7F E3 FB 78 */	mr r3, r31
/* 80B9ED2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9ED30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9ED34  7C 08 03 A6 */	mtlr r0
/* 80B9ED38  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9ED3C  4E 80 00 20 */	blr 
