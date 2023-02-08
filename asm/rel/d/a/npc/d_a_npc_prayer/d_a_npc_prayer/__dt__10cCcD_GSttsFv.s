lbl_80AB56C8:
/* 80AB56C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB56CC  7C 08 02 A6 */	mflr r0
/* 80AB56D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB56D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB56D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB56DC  41 82 00 1C */	beq lbl_80AB56F8
/* 80AB56E0  3C A0 80 AB */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AB5B40@ha */
/* 80AB56E4  38 05 5B 40 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AB5B40@l */
/* 80AB56E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB56EC  7C 80 07 35 */	extsh. r0, r4
/* 80AB56F0  40 81 00 08 */	ble lbl_80AB56F8
/* 80AB56F4  4B 81 96 49 */	bl __dl__FPv
lbl_80AB56F8:
/* 80AB56F8  7F E3 FB 78 */	mr r3, r31
/* 80AB56FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB5700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5704  7C 08 03 A6 */	mtlr r0
/* 80AB5708  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB570C  4E 80 00 20 */	blr 
