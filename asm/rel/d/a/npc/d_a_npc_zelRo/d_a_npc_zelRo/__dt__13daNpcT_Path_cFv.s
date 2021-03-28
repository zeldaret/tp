lbl_80B73E90:
/* 80B73E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73E94  7C 08 02 A6 */	mflr r0
/* 80B73E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B73E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B73EA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B73EA4  41 82 00 1C */	beq lbl_80B73EC0
/* 80B73EA8  3C A0 80 B7 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80B73EAC  38 05 4F 48 */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80B73EB0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B73EB4  7C 80 07 35 */	extsh. r0, r4
/* 80B73EB8  40 81 00 08 */	ble lbl_80B73EC0
/* 80B73EBC  4B 75 AE 80 */	b __dl__FPv
lbl_80B73EC0:
/* 80B73EC0  7F E3 FB 78 */	mr r3, r31
/* 80B73EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B73EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73ECC  7C 08 03 A6 */	mtlr r0
/* 80B73ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73ED4  4E 80 00 20 */	blr 
