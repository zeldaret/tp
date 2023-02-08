lbl_80A0C09C:
/* 80A0C09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C0A0  7C 08 02 A6 */	mflr r0
/* 80A0C0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C0A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0C0AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0C0B0  41 82 00 30 */	beq lbl_80A0C0E0
/* 80A0C0B4  3C 60 80 A1 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A0C898@ha */
/* 80A0C0B8  38 03 C8 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A0C898@l */
/* 80A0C0BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A0C0C0  41 82 00 10 */	beq lbl_80A0C0D0
/* 80A0C0C4  3C 60 80 A1 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A0C88C@ha */
/* 80A0C0C8  38 03 C8 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A0C88C@l */
/* 80A0C0CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A0C0D0:
/* 80A0C0D0  7C 80 07 35 */	extsh. r0, r4
/* 80A0C0D4  40 81 00 0C */	ble lbl_80A0C0E0
/* 80A0C0D8  7F E3 FB 78 */	mr r3, r31
/* 80A0C0DC  4B 8C 2C 61 */	bl __dl__FPv
lbl_80A0C0E0:
/* 80A0C0E0  7F E3 FB 78 */	mr r3, r31
/* 80A0C0E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0C0E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C0EC  7C 08 03 A6 */	mtlr r0
/* 80A0C0F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C0F4  4E 80 00 20 */	blr 
