lbl_804A449C:
/* 804A449C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A44A0  7C 08 02 A6 */	mflr r0
/* 804A44A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A44A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A44AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A44B0  41 82 00 10 */	beq lbl_804A44C0
/* 804A44B4  7C 80 07 35 */	extsh. r0, r4
/* 804A44B8  40 81 00 08 */	ble lbl_804A44C0
/* 804A44BC  4B E2 A8 81 */	bl __dl__FPv
lbl_804A44C0:
/* 804A44C0  7F E3 FB 78 */	mr r3, r31
/* 804A44C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A44C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A44CC  7C 08 03 A6 */	mtlr r0
/* 804A44D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A44D4  4E 80 00 20 */	blr 
