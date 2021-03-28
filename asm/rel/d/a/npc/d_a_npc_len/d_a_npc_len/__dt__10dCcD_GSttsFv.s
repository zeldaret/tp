lbl_80A686BC:
/* 80A686BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A686C0  7C 08 02 A6 */	mflr r0
/* 80A686C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A686C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A686CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A686D0  41 82 00 30 */	beq lbl_80A68700
/* 80A686D4  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A686D8  38 03 99 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A686DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A686E0  41 82 00 10 */	beq lbl_80A686F0
/* 80A686E4  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A686E8  38 03 99 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A686EC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A686F0:
/* 80A686F0  7C 80 07 35 */	extsh. r0, r4
/* 80A686F4  40 81 00 0C */	ble lbl_80A68700
/* 80A686F8  7F E3 FB 78 */	mr r3, r31
/* 80A686FC  4B 86 66 40 */	b __dl__FPv
lbl_80A68700:
/* 80A68700  7F E3 FB 78 */	mr r3, r31
/* 80A68704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A68708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6870C  7C 08 03 A6 */	mtlr r0
/* 80A68710  38 21 00 10 */	addi r1, r1, 0x10
/* 80A68714  4E 80 00 20 */	blr 
