lbl_80BBB6A4:
/* 80BBB6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBB6A8  7C 08 02 A6 */	mflr r0
/* 80BBB6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBB6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBB6B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BBB6B8  41 82 00 30 */	beq lbl_80BBB6E8
/* 80BBB6BC  3C 60 80 BC */	lis r3, __vt__10dCcD_GStts@ha
/* 80BBB6C0  38 03 C6 18 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BBB6C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BBB6C8  41 82 00 10 */	beq lbl_80BBB6D8
/* 80BBB6CC  3C 60 80 BC */	lis r3, __vt__10cCcD_GStts@ha
/* 80BBB6D0  38 03 C6 0C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BBB6D4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BBB6D8:
/* 80BBB6D8  7C 80 07 35 */	extsh. r0, r4
/* 80BBB6DC  40 81 00 0C */	ble lbl_80BBB6E8
/* 80BBB6E0  7F E3 FB 78 */	mr r3, r31
/* 80BBB6E4  4B 71 36 58 */	b __dl__FPv
lbl_80BBB6E8:
/* 80BBB6E8  7F E3 FB 78 */	mr r3, r31
/* 80BBB6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBB6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB6F4  7C 08 03 A6 */	mtlr r0
/* 80BBB6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB6FC  4E 80 00 20 */	blr 
