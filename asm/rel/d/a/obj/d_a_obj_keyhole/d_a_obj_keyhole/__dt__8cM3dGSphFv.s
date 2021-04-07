lbl_80C435B4:
/* 80C435B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C435B8  7C 08 02 A6 */	mflr r0
/* 80C435BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C435C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C435C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C435C8  41 82 00 1C */	beq lbl_80C435E4
/* 80C435CC  3C A0 80 C4 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C43C7C@ha */
/* 80C435D0  38 05 3C 7C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C43C7C@l */
/* 80C435D4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C435D8  7C 80 07 35 */	extsh. r0, r4
/* 80C435DC  40 81 00 08 */	ble lbl_80C435E4
/* 80C435E0  4B 68 B7 5D */	bl __dl__FPv
lbl_80C435E4:
/* 80C435E4  7F E3 FB 78 */	mr r3, r31
/* 80C435E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C435EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C435F0  7C 08 03 A6 */	mtlr r0
/* 80C435F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C435F8  4E 80 00 20 */	blr 
