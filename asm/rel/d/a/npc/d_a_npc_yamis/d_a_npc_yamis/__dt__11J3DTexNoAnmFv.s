lbl_80B46C94:
/* 80B46C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46C98  7C 08 02 A6 */	mflr r0
/* 80B46C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B46CA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B46CA8  41 82 00 1C */	beq lbl_80B46CC4
/* 80B46CAC  3C A0 80 B5 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80B46CB0  38 05 99 54 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80B46CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B46CB8  7C 80 07 35 */	extsh. r0, r4
/* 80B46CBC  40 81 00 08 */	ble lbl_80B46CC4
/* 80B46CC0  4B 78 80 7C */	b __dl__FPv
lbl_80B46CC4:
/* 80B46CC4  7F E3 FB 78 */	mr r3, r31
/* 80B46CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B46CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46CD0  7C 08 03 A6 */	mtlr r0
/* 80B46CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46CD8  4E 80 00 20 */	blr 
