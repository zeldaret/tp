lbl_80BA52C8:
/* 80BA52C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA52CC  7C 08 02 A6 */	mflr r0
/* 80BA52D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA52D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA52D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA52DC  41 82 00 1C */	beq lbl_80BA52F8
/* 80BA52E0  3C A0 80 BA */	lis r5, __vt__8cM3dGSph@ha /* 0x80BA5590@ha */
/* 80BA52E4  38 05 55 90 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BA5590@l */
/* 80BA52E8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BA52EC  7C 80 07 35 */	extsh. r0, r4
/* 80BA52F0  40 81 00 08 */	ble lbl_80BA52F8
/* 80BA52F4  4B 72 9A 49 */	bl __dl__FPv
lbl_80BA52F8:
/* 80BA52F8  7F E3 FB 78 */	mr r3, r31
/* 80BA52FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5304  7C 08 03 A6 */	mtlr r0
/* 80BA5308  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA530C  4E 80 00 20 */	blr 
