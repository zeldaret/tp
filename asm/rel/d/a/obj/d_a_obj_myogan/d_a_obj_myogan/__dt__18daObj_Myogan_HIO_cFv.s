lbl_80C9F1F0:
/* 80C9F1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F1F4  7C 08 02 A6 */	mflr r0
/* 80C9F1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9F200  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9F204  41 82 00 1C */	beq lbl_80C9F220
/* 80C9F208  3C A0 80 CA */	lis r5, __vt__18daObj_Myogan_HIO_c@ha
/* 80C9F20C  38 05 F3 04 */	addi r0, r5, __vt__18daObj_Myogan_HIO_c@l
/* 80C9F210  90 1F 00 00 */	stw r0, 0(r31)
/* 80C9F214  7C 80 07 35 */	extsh. r0, r4
/* 80C9F218  40 81 00 08 */	ble lbl_80C9F220
/* 80C9F21C  4B 62 FB 20 */	b __dl__FPv
lbl_80C9F220:
/* 80C9F220  7F E3 FB 78 */	mr r3, r31
/* 80C9F224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9F228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F22C  7C 08 03 A6 */	mtlr r0
/* 80C9F230  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F234  4E 80 00 20 */	blr 
