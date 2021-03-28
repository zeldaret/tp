lbl_80B51428:
/* 80B51428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5142C  7C 08 02 A6 */	mflr r0
/* 80B51430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51438  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5143C  41 82 00 1C */	beq lbl_80B51458
/* 80B51440  3C A0 80 B5 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80B51444  38 05 33 0C */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80B51448  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B5144C  7C 80 07 35 */	extsh. r0, r4
/* 80B51450  40 81 00 08 */	ble lbl_80B51458
/* 80B51454  4B 77 D8 E8 */	b __dl__FPv
lbl_80B51458:
/* 80B51458  7F E3 FB 78 */	mr r3, r31
/* 80B5145C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51464  7C 08 03 A6 */	mtlr r0
/* 80B51468  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5146C  4E 80 00 20 */	blr 
