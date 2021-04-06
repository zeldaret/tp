lbl_80BA0F44:
/* 80BA0F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0F48  7C 08 02 A6 */	mflr r0
/* 80BA0F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0F54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA0F58  41 82 00 1C */	beq lbl_80BA0F74
/* 80BA0F5C  3C A0 80 BA */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80BA12B0@ha */
/* 80BA0F60  38 05 12 B0 */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80BA12B0@l */
/* 80BA0F64  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA0F68  7C 80 07 35 */	extsh. r0, r4
/* 80BA0F6C  40 81 00 08 */	ble lbl_80BA0F74
/* 80BA0F70  4B 72 DD CD */	bl __dl__FPv
lbl_80BA0F74:
/* 80BA0F74  7F E3 FB 78 */	mr r3, r31
/* 80BA0F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA0F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0F80  7C 08 03 A6 */	mtlr r0
/* 80BA0F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0F88  4E 80 00 20 */	blr 
