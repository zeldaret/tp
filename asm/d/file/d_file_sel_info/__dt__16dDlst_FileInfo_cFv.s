lbl_80192EC8:
/* 80192EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192ECC  7C 08 02 A6 */	mflr r0
/* 80192ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192ED8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80192EDC  41 82 00 1C */	beq lbl_80192EF8
/* 80192EE0  3C A0 80 3C */	lis r5, __vt__16dDlst_FileInfo_c@ha
/* 80192EE4  38 05 B5 88 */	addi r0, r5, __vt__16dDlst_FileInfo_c@l
/* 80192EE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80192EEC  7C 80 07 35 */	extsh. r0, r4
/* 80192EF0  40 81 00 08 */	ble lbl_80192EF8
/* 80192EF4  48 13 BE 49 */	bl __dl__FPv
lbl_80192EF8:
/* 80192EF8  7F E3 FB 78 */	mr r3, r31
/* 80192EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80192F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80192F04  7C 08 03 A6 */	mtlr r0
/* 80192F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80192F0C  4E 80 00 20 */	blr 
