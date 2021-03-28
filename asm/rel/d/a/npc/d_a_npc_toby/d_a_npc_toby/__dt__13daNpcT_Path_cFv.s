lbl_80B23B70:
/* 80B23B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B23B74  7C 08 02 A6 */	mflr r0
/* 80B23B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23B80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B23B84  41 82 00 1C */	beq lbl_80B23BA0
/* 80B23B88  3C A0 80 B2 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80B23B8C  38 05 57 5C */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80B23B90  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B23B94  7C 80 07 35 */	extsh. r0, r4
/* 80B23B98  40 81 00 08 */	ble lbl_80B23BA0
/* 80B23B9C  4B 7A B1 A0 */	b __dl__FPv
lbl_80B23BA0:
/* 80B23BA0  7F E3 FB 78 */	mr r3, r31
/* 80B23BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23BAC  7C 08 03 A6 */	mtlr r0
/* 80B23BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23BB4  4E 80 00 20 */	blr 
