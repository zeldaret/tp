lbl_80B7F594:
/* 80B7F594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F598  7C 08 02 A6 */	mflr r0
/* 80B7F59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F5A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F5A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7F5A8  41 82 00 30 */	beq lbl_80B7F5D8
/* 80B7F5AC  3C 60 80 B9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B7F5B0  38 03 D9 BC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B7F5B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B7F5B8  41 82 00 10 */	beq lbl_80B7F5C8
/* 80B7F5BC  3C 60 80 B9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B7F5C0  38 03 D9 B0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B7F5C4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B7F5C8:
/* 80B7F5C8  7C 80 07 35 */	extsh. r0, r4
/* 80B7F5CC  40 81 00 0C */	ble lbl_80B7F5D8
/* 80B7F5D0  7F E3 FB 78 */	mr r3, r31
/* 80B7F5D4  4B 74 F7 68 */	b __dl__FPv
lbl_80B7F5D8:
/* 80B7F5D8  7F E3 FB 78 */	mr r3, r31
/* 80B7F5DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F5E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F5E4  7C 08 03 A6 */	mtlr r0
/* 80B7F5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F5EC  4E 80 00 20 */	blr 
