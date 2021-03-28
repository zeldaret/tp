lbl_80CD4C90:
/* 80CD4C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4C94  7C 08 02 A6 */	mflr r0
/* 80CD4C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4CA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD4CA4  41 82 00 1C */	beq lbl_80CD4CC0
/* 80CD4CA8  3C A0 80 CD */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80CD4CAC  38 05 67 FC */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80CD4CB0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80CD4CB4  7C 80 07 35 */	extsh. r0, r4
/* 80CD4CB8  40 81 00 08 */	ble lbl_80CD4CC0
/* 80CD4CBC  4B 5F A0 80 */	b __dl__FPv
lbl_80CD4CC0:
/* 80CD4CC0  7F E3 FB 78 */	mr r3, r31
/* 80CD4CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4CCC  7C 08 03 A6 */	mtlr r0
/* 80CD4CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4CD4  4E 80 00 20 */	blr 
