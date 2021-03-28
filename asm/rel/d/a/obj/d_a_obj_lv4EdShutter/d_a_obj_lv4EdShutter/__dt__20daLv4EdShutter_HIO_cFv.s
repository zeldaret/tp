lbl_80C5E72C:
/* 80C5E72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E730  7C 08 02 A6 */	mflr r0
/* 80C5E734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E73C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5E740  41 82 00 30 */	beq lbl_80C5E770
/* 80C5E744  3C 60 80 C6 */	lis r3, __vt__20daLv4EdShutter_HIO_c@ha
/* 80C5E748  38 03 EA 34 */	addi r0, r3, __vt__20daLv4EdShutter_HIO_c@l
/* 80C5E74C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5E750  41 82 00 10 */	beq lbl_80C5E760
/* 80C5E754  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C5E758  38 03 EA 40 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C5E75C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C5E760:
/* 80C5E760  7C 80 07 35 */	extsh. r0, r4
/* 80C5E764  40 81 00 0C */	ble lbl_80C5E770
/* 80C5E768  7F E3 FB 78 */	mr r3, r31
/* 80C5E76C  4B 67 05 D0 */	b __dl__FPv
lbl_80C5E770:
/* 80C5E770  7F E3 FB 78 */	mr r3, r31
/* 80C5E774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E77C  7C 08 03 A6 */	mtlr r0
/* 80C5E780  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E784  4E 80 00 20 */	blr 
