lbl_80B4C6A4:
/* 80B4C6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C6A8  7C 08 02 A6 */	mflr r0
/* 80B4C6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C6B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4C6B8  41 82 00 30 */	beq lbl_80B4C6E8
/* 80B4C6BC  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B4D0C8@ha */
/* 80B4C6C0  38 03 D0 C8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B4D0C8@l */
/* 80B4C6C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B4C6C8  41 82 00 10 */	beq lbl_80B4C6D8
/* 80B4C6CC  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B4D0BC@ha */
/* 80B4C6D0  38 03 D0 BC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B4D0BC@l */
/* 80B4C6D4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B4C6D8:
/* 80B4C6D8  7C 80 07 35 */	extsh. r0, r4
/* 80B4C6DC  40 81 00 0C */	ble lbl_80B4C6E8
/* 80B4C6E0  7F E3 FB 78 */	mr r3, r31
/* 80B4C6E4  4B 78 26 59 */	bl __dl__FPv
lbl_80B4C6E8:
/* 80B4C6E8  7F E3 FB 78 */	mr r3, r31
/* 80B4C6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C6F4  7C 08 03 A6 */	mtlr r0
/* 80B4C6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C6FC  4E 80 00 20 */	blr 
