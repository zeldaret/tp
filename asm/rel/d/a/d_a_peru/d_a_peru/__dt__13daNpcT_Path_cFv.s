lbl_80D4B11C:
/* 80D4B11C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B120  7C 08 02 A6 */	mflr r0
/* 80D4B124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B12C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B130  41 82 00 1C */	beq lbl_80D4B14C
/* 80D4B134  3C A0 80 D5 */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80D4C708@ha */
/* 80D4B138  38 05 C7 08 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80D4C708@l */
/* 80D4B13C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80D4B140  7C 80 07 35 */	extsh. r0, r4
/* 80D4B144  40 81 00 08 */	ble lbl_80D4B14C
/* 80D4B148  4B 58 3B F5 */	bl __dl__FPv
lbl_80D4B14C:
/* 80D4B14C  7F E3 FB 78 */	mr r3, r31
/* 80D4B150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B158  7C 08 03 A6 */	mtlr r0
/* 80D4B15C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B160  4E 80 00 20 */	blr 
