lbl_80A47B5C:
/* 80A47B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47B60  7C 08 02 A6 */	mflr r0
/* 80A47B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A47B6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A47B70  41 82 00 1C */	beq lbl_80A47B8C
/* 80A47B74  3C A0 80 A5 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80A47B78  38 05 8D A4 */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80A47B7C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80A47B80  7C 80 07 35 */	extsh. r0, r4
/* 80A47B84  40 81 00 08 */	ble lbl_80A47B8C
/* 80A47B88  4B 88 71 B4 */	b __dl__FPv
lbl_80A47B8C:
/* 80A47B8C  7F E3 FB 78 */	mr r3, r31
/* 80A47B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A47B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A47B98  7C 08 03 A6 */	mtlr r0
/* 80A47B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A47BA0  4E 80 00 20 */	blr 
