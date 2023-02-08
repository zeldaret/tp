lbl_80541C90:
/* 80541C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80541C94  7C 08 02 A6 */	mflr r0
/* 80541C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80541C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80541CA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80541CA4  41 82 00 1C */	beq lbl_80541CC0
/* 80541CA8  3C A0 80 54 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80542004@ha */
/* 80541CAC  38 05 20 04 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80542004@l */
/* 80541CB0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80541CB4  7C 80 07 35 */	extsh. r0, r4
/* 80541CB8  40 81 00 08 */	ble lbl_80541CC0
/* 80541CBC  4B D8 D0 81 */	bl __dl__FPv
lbl_80541CC0:
/* 80541CC0  7F E3 FB 78 */	mr r3, r31
/* 80541CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80541CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80541CCC  7C 08 03 A6 */	mtlr r0
/* 80541CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80541CD4  4E 80 00 20 */	blr 
