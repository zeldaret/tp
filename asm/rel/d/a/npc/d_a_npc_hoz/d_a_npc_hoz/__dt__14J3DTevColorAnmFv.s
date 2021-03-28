lbl_80A01BEC:
/* 80A01BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01BF0  7C 08 02 A6 */	mflr r0
/* 80A01BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A01BFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A01C00  41 82 00 10 */	beq lbl_80A01C10
/* 80A01C04  7C 80 07 35 */	extsh. r0, r4
/* 80A01C08  40 81 00 08 */	ble lbl_80A01C10
/* 80A01C0C  4B 8C D1 30 */	b __dl__FPv
lbl_80A01C10:
/* 80A01C10  7F E3 FB 78 */	mr r3, r31
/* 80A01C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A01C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01C1C  7C 08 03 A6 */	mtlr r0
/* 80A01C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01C24  4E 80 00 20 */	blr 
