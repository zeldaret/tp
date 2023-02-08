lbl_80784BE8:
/* 80784BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80784BEC  7C 08 02 A6 */	mflr r0
/* 80784BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80784BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80784BF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80784BFC  41 82 00 1C */	beq lbl_80784C18
/* 80784C00  3C A0 80 78 */	lis r5, __vt__8cM3dGAab@ha /* 0x80784EF0@ha */
/* 80784C04  38 05 4E F0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80784EF0@l */
/* 80784C08  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80784C0C  7C 80 07 35 */	extsh. r0, r4
/* 80784C10  40 81 00 08 */	ble lbl_80784C18
/* 80784C14  4B B4 A1 29 */	bl __dl__FPv
lbl_80784C18:
/* 80784C18  7F E3 FB 78 */	mr r3, r31
/* 80784C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80784C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80784C24  7C 08 03 A6 */	mtlr r0
/* 80784C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80784C2C  4E 80 00 20 */	blr 
