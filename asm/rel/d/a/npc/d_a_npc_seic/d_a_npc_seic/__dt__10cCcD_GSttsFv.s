lbl_80AC848C:
/* 80AC848C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC8490  7C 08 02 A6 */	mflr r0
/* 80AC8494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC8498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC849C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC84A0  41 82 00 1C */	beq lbl_80AC84BC
/* 80AC84A4  3C A0 80 AD */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AC946C@ha */
/* 80AC84A8  38 05 94 6C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AC946C@l */
/* 80AC84AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC84B0  7C 80 07 35 */	extsh. r0, r4
/* 80AC84B4  40 81 00 08 */	ble lbl_80AC84BC
/* 80AC84B8  4B 80 68 85 */	bl __dl__FPv
lbl_80AC84BC:
/* 80AC84BC  7F E3 FB 78 */	mr r3, r31
/* 80AC84C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC84C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC84C8  7C 08 03 A6 */	mtlr r0
/* 80AC84CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC84D0  4E 80 00 20 */	blr 
