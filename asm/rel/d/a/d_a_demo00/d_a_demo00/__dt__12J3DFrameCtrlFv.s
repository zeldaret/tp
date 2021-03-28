lbl_804A5750:
/* 804A5750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A5754  7C 08 02 A6 */	mflr r0
/* 804A5758  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A575C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A5760  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A5764  41 82 00 1C */	beq lbl_804A5780
/* 804A5768  3C A0 80 4B */	lis r5, __vt__12J3DFrameCtrl@ha
/* 804A576C  38 05 8B F8 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 804A5770  90 1F 00 00 */	stw r0, 0(r31)
/* 804A5774  7C 80 07 35 */	extsh. r0, r4
/* 804A5778  40 81 00 08 */	ble lbl_804A5780
/* 804A577C  4B E2 95 C0 */	b __dl__FPv
lbl_804A5780:
/* 804A5780  7F E3 FB 78 */	mr r3, r31
/* 804A5784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A5788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A578C  7C 08 03 A6 */	mtlr r0
/* 804A5790  38 21 00 10 */	addi r1, r1, 0x10
/* 804A5794  4E 80 00 20 */	blr 
