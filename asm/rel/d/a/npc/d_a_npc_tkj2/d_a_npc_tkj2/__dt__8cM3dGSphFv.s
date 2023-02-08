lbl_80B1411C:
/* 80B1411C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B14120  7C 08 02 A6 */	mflr r0
/* 80B14124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B14128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1412C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B14130  41 82 00 1C */	beq lbl_80B1414C
/* 80B14134  3C A0 80 B1 */	lis r5, __vt__8cM3dGSph@ha /* 0x80B14464@ha */
/* 80B14138  38 05 44 64 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80B14464@l */
/* 80B1413C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80B14140  7C 80 07 35 */	extsh. r0, r4
/* 80B14144  40 81 00 08 */	ble lbl_80B1414C
/* 80B14148  4B 7B AB F5 */	bl __dl__FPv
lbl_80B1414C:
/* 80B1414C  7F E3 FB 78 */	mr r3, r31
/* 80B14150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B14154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B14158  7C 08 03 A6 */	mtlr r0
/* 80B1415C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B14160  4E 80 00 20 */	blr 
