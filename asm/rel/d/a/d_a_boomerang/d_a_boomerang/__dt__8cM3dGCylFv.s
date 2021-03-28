lbl_804A259C:
/* 804A259C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A25A0  7C 08 02 A6 */	mflr r0
/* 804A25A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A25A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A25AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A25B0  41 82 00 1C */	beq lbl_804A25CC
/* 804A25B4  3C A0 80 4A */	lis r5, __vt__8cM3dGCyl@ha
/* 804A25B8  38 05 2C 78 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 804A25BC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804A25C0  7C 80 07 35 */	extsh. r0, r4
/* 804A25C4  40 81 00 08 */	ble lbl_804A25CC
/* 804A25C8  4B E2 C7 74 */	b __dl__FPv
lbl_804A25CC:
/* 804A25CC  7F E3 FB 78 */	mr r3, r31
/* 804A25D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A25D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A25D8  7C 08 03 A6 */	mtlr r0
/* 804A25DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A25E0  4E 80 00 20 */	blr 
