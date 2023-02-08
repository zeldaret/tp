lbl_80A9628C:
/* 80A9628C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A96290  7C 08 02 A6 */	mflr r0
/* 80A96294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A96298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9629C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A962A0  41 82 00 30 */	beq lbl_80A962D0
/* 80A962A4  3C 60 80 A9 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A979A4@ha */
/* 80A962A8  38 03 79 A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A979A4@l */
/* 80A962AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A962B0  41 82 00 10 */	beq lbl_80A962C0
/* 80A962B4  3C 60 80 A9 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A97998@ha */
/* 80A962B8  38 03 79 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A97998@l */
/* 80A962BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A962C0:
/* 80A962C0  7C 80 07 35 */	extsh. r0, r4
/* 80A962C4  40 81 00 0C */	ble lbl_80A962D0
/* 80A962C8  7F E3 FB 78 */	mr r3, r31
/* 80A962CC  4B 83 8A 71 */	bl __dl__FPv
lbl_80A962D0:
/* 80A962D0  7F E3 FB 78 */	mr r3, r31
/* 80A962D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A962D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A962DC  7C 08 03 A6 */	mtlr r0
/* 80A962E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A962E4  4E 80 00 20 */	blr 
