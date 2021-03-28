lbl_80D350E4:
/* 80D350E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D350E8  7C 08 02 A6 */	mflr r0
/* 80D350EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D350F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D350F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D350F8  41 82 00 1C */	beq lbl_80D35114
/* 80D350FC  3C A0 80 D3 */	lis r5, __vt__16daObj_Web0_HIO_c@ha
/* 80D35100  38 05 52 7C */	addi r0, r5, __vt__16daObj_Web0_HIO_c@l
/* 80D35104  90 1F 00 00 */	stw r0, 0(r31)
/* 80D35108  7C 80 07 35 */	extsh. r0, r4
/* 80D3510C  40 81 00 08 */	ble lbl_80D35114
/* 80D35110  4B 59 9C 2C */	b __dl__FPv
lbl_80D35114:
/* 80D35114  7F E3 FB 78 */	mr r3, r31
/* 80D35118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3511C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D35120  7C 08 03 A6 */	mtlr r0
/* 80D35124  38 21 00 10 */	addi r1, r1, 0x10
/* 80D35128  4E 80 00 20 */	blr 
