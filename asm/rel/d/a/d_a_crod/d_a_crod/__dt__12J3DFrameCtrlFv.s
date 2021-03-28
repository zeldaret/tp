lbl_804A329C:
/* 804A329C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A32A0  7C 08 02 A6 */	mflr r0
/* 804A32A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A32A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A32AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A32B0  41 82 00 1C */	beq lbl_804A32CC
/* 804A32B4  3C A0 80 4A */	lis r5, __vt__12J3DFrameCtrl@ha
/* 804A32B8  38 05 42 08 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 804A32BC  90 1F 00 00 */	stw r0, 0(r31)
/* 804A32C0  7C 80 07 35 */	extsh. r0, r4
/* 804A32C4  40 81 00 08 */	ble lbl_804A32CC
/* 804A32C8  4B E2 BA 74 */	b __dl__FPv
lbl_804A32CC:
/* 804A32CC  7F E3 FB 78 */	mr r3, r31
/* 804A32D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A32D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A32D8  7C 08 03 A6 */	mtlr r0
/* 804A32DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A32E0  4E 80 00 20 */	blr 
