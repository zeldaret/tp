lbl_80C5B14C:
/* 80C5B14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B150  7C 08 02 A6 */	mflr r0
/* 80C5B154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5B15C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5B160  41 82 00 30 */	beq lbl_80C5B190
/* 80C5B164  3C 60 80 C6 */	lis r3, __vt__17daLv3Water2_HIO_c@ha /* 0x80C5B4B4@ha */
/* 80C5B168  38 03 B4 B4 */	addi r0, r3, __vt__17daLv3Water2_HIO_c@l /* 0x80C5B4B4@l */
/* 80C5B16C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5B170  41 82 00 10 */	beq lbl_80C5B180
/* 80C5B174  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C5B4C0@ha */
/* 80C5B178  38 03 B4 C0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C5B4C0@l */
/* 80C5B17C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C5B180:
/* 80C5B180  7C 80 07 35 */	extsh. r0, r4
/* 80C5B184  40 81 00 0C */	ble lbl_80C5B190
/* 80C5B188  7F E3 FB 78 */	mr r3, r31
/* 80C5B18C  4B 67 3B B1 */	bl __dl__FPv
lbl_80C5B190:
/* 80C5B190  7F E3 FB 78 */	mr r3, r31
/* 80C5B194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5B198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B19C  7C 08 03 A6 */	mtlr r0
/* 80C5B1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B1A4  4E 80 00 20 */	blr 
