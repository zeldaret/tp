lbl_80BC3F48:
/* 80BC3F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3F4C  7C 08 02 A6 */	mflr r0
/* 80BC3F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC3F58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC3F5C  41 82 00 1C */	beq lbl_80BC3F78
/* 80BC3F60  3C A0 80 BC */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BC41A0@ha */
/* 80BC3F64  38 05 41 A0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BC41A0@l */
/* 80BC3F68  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC3F6C  7C 80 07 35 */	extsh. r0, r4
/* 80BC3F70  40 81 00 08 */	ble lbl_80BC3F78
/* 80BC3F74  4B 70 AD C9 */	bl __dl__FPv
lbl_80BC3F78:
/* 80BC3F78  7F E3 FB 78 */	mr r3, r31
/* 80BC3F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3F84  7C 08 03 A6 */	mtlr r0
/* 80BC3F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3F8C  4E 80 00 20 */	blr 
