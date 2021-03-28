lbl_80CBF8F8:
/* 80CBF8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF8FC  7C 08 02 A6 */	mflr r0
/* 80CBF900  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBF908  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBF90C  41 82 00 1C */	beq lbl_80CBF928
/* 80CBF910  3C A0 80 CC */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80CBF914  38 05 0A A0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80CBF918  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBF91C  7C 80 07 35 */	extsh. r0, r4
/* 80CBF920  40 81 00 08 */	ble lbl_80CBF928
/* 80CBF924  4B 60 F4 18 */	b __dl__FPv
lbl_80CBF928:
/* 80CBF928  7F E3 FB 78 */	mr r3, r31
/* 80CBF92C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBF930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF934  7C 08 03 A6 */	mtlr r0
/* 80CBF938  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF93C  4E 80 00 20 */	blr 
