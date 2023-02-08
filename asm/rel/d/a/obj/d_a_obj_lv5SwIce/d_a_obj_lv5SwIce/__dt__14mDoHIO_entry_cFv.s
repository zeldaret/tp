lbl_80C6C9D8:
/* 80C6C9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C9DC  7C 08 02 A6 */	mflr r0
/* 80C6C9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6C9E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6C9EC  41 82 00 1C */	beq lbl_80C6CA08
/* 80C6C9F0  3C A0 80 C7 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C6D6B4@ha */
/* 80C6C9F4  38 05 D6 B4 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C6D6B4@l */
/* 80C6C9F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6C9FC  7C 80 07 35 */	extsh. r0, r4
/* 80C6CA00  40 81 00 08 */	ble lbl_80C6CA08
/* 80C6CA04  4B 66 23 39 */	bl __dl__FPv
lbl_80C6CA08:
/* 80C6CA08  7F E3 FB 78 */	mr r3, r31
/* 80C6CA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CA14  7C 08 03 A6 */	mtlr r0
/* 80C6CA18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CA1C  4E 80 00 20 */	blr 
