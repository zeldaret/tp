lbl_80B9A61C:
/* 80B9A61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A620  7C 08 02 A6 */	mflr r0
/* 80B9A624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9A62C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9A630  41 82 00 1C */	beq lbl_80B9A64C
/* 80B9A634  3C A0 80 BA */	lis r5, __vt__16daNpcF_SPCurve_c@ha /* 0x80B9B830@ha */
/* 80B9A638  38 05 B8 30 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l /* 0x80B9B830@l */
/* 80B9A63C  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80B9A640  7C 80 07 35 */	extsh. r0, r4
/* 80B9A644  40 81 00 08 */	ble lbl_80B9A64C
/* 80B9A648  4B 73 46 F5 */	bl __dl__FPv
lbl_80B9A64C:
/* 80B9A64C  7F E3 FB 78 */	mr r3, r31
/* 80B9A650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9A654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A658  7C 08 03 A6 */	mtlr r0
/* 80B9A65C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A660  4E 80 00 20 */	blr 
