lbl_809C91B0:
/* 809C91B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C91B4  7C 08 02 A6 */	mflr r0
/* 809C91B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C91BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C91C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C91C4  41 82 00 34 */	beq lbl_809C91F8
/* 809C91C8  3C 60 80 9D */	lis r3, __vt__13daNpcF_Path_c@ha
/* 809C91CC  38 03 B2 B4 */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 809C91D0  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 809C91D4  34 1F 00 20 */	addic. r0, r31, 0x20
/* 809C91D8  41 82 00 10 */	beq lbl_809C91E8
/* 809C91DC  3C 60 80 9D */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 809C91E0  38 03 B2 A8 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 809C91E4  90 1F 06 28 */	stw r0, 0x628(r31)
lbl_809C91E8:
/* 809C91E8  7C 80 07 35 */	extsh. r0, r4
/* 809C91EC  40 81 00 0C */	ble lbl_809C91F8
/* 809C91F0  7F E3 FB 78 */	mr r3, r31
/* 809C91F4  4B 90 5B 48 */	b __dl__FPv
lbl_809C91F8:
/* 809C91F8  7F E3 FB 78 */	mr r3, r31
/* 809C91FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9204  7C 08 03 A6 */	mtlr r0
/* 809C9208  38 21 00 10 */	addi r1, r1, 0x10
/* 809C920C  4E 80 00 20 */	blr 
