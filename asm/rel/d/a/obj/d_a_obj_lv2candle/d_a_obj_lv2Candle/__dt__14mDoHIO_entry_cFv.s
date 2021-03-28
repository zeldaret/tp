lbl_8058E0F4:
/* 8058E0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E0F8  7C 08 02 A6 */	mflr r0
/* 8058E0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E104  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058E108  41 82 00 1C */	beq lbl_8058E124
/* 8058E10C  3C A0 80 59 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 8058E110  38 05 F2 8C */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 8058E114  90 1F 00 00 */	stw r0, 0(r31)
/* 8058E118  7C 80 07 35 */	extsh. r0, r4
/* 8058E11C  40 81 00 08 */	ble lbl_8058E124
/* 8058E120  4B D4 0C 1C */	b __dl__FPv
lbl_8058E124:
/* 8058E124  7F E3 FB 78 */	mr r3, r31
/* 8058E128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E130  7C 08 03 A6 */	mtlr r0
/* 8058E134  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E138  4E 80 00 20 */	blr 
