lbl_80663AA4:
/* 80663AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80663AA8  7C 08 02 A6 */	mflr r0
/* 80663AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80663AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80663AB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80663AB8  41 82 00 1C */	beq lbl_80663AD4
/* 80663ABC  3C A0 80 66 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80667B5C@ha */
/* 80663AC0  38 05 7B 5C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80667B5C@l */
/* 80663AC4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80663AC8  7C 80 07 35 */	extsh. r0, r4
/* 80663ACC  40 81 00 08 */	ble lbl_80663AD4
/* 80663AD0  4B C6 B2 6D */	bl __dl__FPv
lbl_80663AD4:
/* 80663AD4  7F E3 FB 78 */	mr r3, r31
/* 80663AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80663ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80663AE0  7C 08 03 A6 */	mtlr r0
/* 80663AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80663AE8  4E 80 00 20 */	blr 
