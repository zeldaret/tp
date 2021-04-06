lbl_80AB5590:
/* 80AB5590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5594  7C 08 02 A6 */	mflr r0
/* 80AB5598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB559C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB55A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB55A4  41 82 00 30 */	beq lbl_80AB55D4
/* 80AB55A8  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AB5B4C@ha */
/* 80AB55AC  38 03 5B 4C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AB5B4C@l */
/* 80AB55B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB55B4  41 82 00 10 */	beq lbl_80AB55C4
/* 80AB55B8  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AB5B40@ha */
/* 80AB55BC  38 03 5B 40 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AB5B40@l */
/* 80AB55C0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AB55C4:
/* 80AB55C4  7C 80 07 35 */	extsh. r0, r4
/* 80AB55C8  40 81 00 0C */	ble lbl_80AB55D4
/* 80AB55CC  7F E3 FB 78 */	mr r3, r31
/* 80AB55D0  4B 81 97 6D */	bl __dl__FPv
lbl_80AB55D4:
/* 80AB55D4  7F E3 FB 78 */	mr r3, r31
/* 80AB55D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB55DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB55E0  7C 08 03 A6 */	mtlr r0
/* 80AB55E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB55E8  4E 80 00 20 */	blr 
