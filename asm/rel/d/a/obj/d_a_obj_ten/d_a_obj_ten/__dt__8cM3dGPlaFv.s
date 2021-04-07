lbl_80D08FC0:
/* 80D08FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08FC4  7C 08 02 A6 */	mflr r0
/* 80D08FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D08FD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D08FD4  41 82 00 1C */	beq lbl_80D08FF0
/* 80D08FD8  3C A0 80 D1 */	lis r5, __vt__8cM3dGPla@ha /* 0x80D0BA8C@ha */
/* 80D08FDC  38 05 BA 8C */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80D0BA8C@l */
/* 80D08FE0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D08FE4  7C 80 07 35 */	extsh. r0, r4
/* 80D08FE8  40 81 00 08 */	ble lbl_80D08FF0
/* 80D08FEC  4B 5C 5D 51 */	bl __dl__FPv
lbl_80D08FF0:
/* 80D08FF0  7F E3 FB 78 */	mr r3, r31
/* 80D08FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D08FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D08FFC  7C 08 03 A6 */	mtlr r0
/* 80D09000  38 21 00 10 */	addi r1, r1, 0x10
/* 80D09004  4E 80 00 20 */	blr 
