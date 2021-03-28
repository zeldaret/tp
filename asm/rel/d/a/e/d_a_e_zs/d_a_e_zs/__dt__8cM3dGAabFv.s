lbl_80834BF0:
/* 80834BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80834BF4  7C 08 02 A6 */	mflr r0
/* 80834BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80834C00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80834C04  41 82 00 1C */	beq lbl_80834C20
/* 80834C08  3C A0 80 83 */	lis r5, __vt__8cM3dGAab@ha
/* 80834C0C  38 05 54 5C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80834C10  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80834C14  7C 80 07 35 */	extsh. r0, r4
/* 80834C18  40 81 00 08 */	ble lbl_80834C20
/* 80834C1C  4B A9 A1 20 */	b __dl__FPv
lbl_80834C20:
/* 80834C20  7F E3 FB 78 */	mr r3, r31
/* 80834C24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80834C2C  7C 08 03 A6 */	mtlr r0
/* 80834C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80834C34  4E 80 00 20 */	blr 
