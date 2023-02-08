lbl_80AB1F94:
/* 80AB1F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB1F98  7C 08 02 A6 */	mflr r0
/* 80AB1F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB1FA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB1FA8  41 82 00 1C */	beq lbl_80AB1FC4
/* 80AB1FAC  3C A0 80 AB */	lis r5, __vt__19daNpc_Pouya_Param_c@ha /* 0x80AB2CD8@ha */
/* 80AB1FB0  38 05 2C D8 */	addi r0, r5, __vt__19daNpc_Pouya_Param_c@l /* 0x80AB2CD8@l */
/* 80AB1FB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB1FB8  7C 80 07 35 */	extsh. r0, r4
/* 80AB1FBC  40 81 00 08 */	ble lbl_80AB1FC4
/* 80AB1FC0  4B 81 CD 7D */	bl __dl__FPv
lbl_80AB1FC4:
/* 80AB1FC4  7F E3 FB 78 */	mr r3, r31
/* 80AB1FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB1FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB1FD0  7C 08 03 A6 */	mtlr r0
/* 80AB1FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1FD8  4E 80 00 20 */	blr 
