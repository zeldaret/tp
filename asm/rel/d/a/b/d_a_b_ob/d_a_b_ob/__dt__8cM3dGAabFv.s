lbl_8061A5AC:
/* 8061A5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A5B0  7C 08 02 A6 */	mflr r0
/* 8061A5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A5BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061A5C0  41 82 00 1C */	beq lbl_8061A5DC
/* 8061A5C4  3C A0 80 62 */	lis r5, __vt__8cM3dGAab@ha /* 0x8061B494@ha */
/* 8061A5C8  38 05 B4 94 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8061B494@l */
/* 8061A5CC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8061A5D0  7C 80 07 35 */	extsh. r0, r4
/* 8061A5D4  40 81 00 08 */	ble lbl_8061A5DC
/* 8061A5D8  4B CB 47 65 */	bl __dl__FPv
lbl_8061A5DC:
/* 8061A5DC  7F E3 FB 78 */	mr r3, r31
/* 8061A5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A5E8  7C 08 03 A6 */	mtlr r0
/* 8061A5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A5F0  4E 80 00 20 */	blr 
