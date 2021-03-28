lbl_804A2800:
/* 804A2800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2804  7C 08 02 A6 */	mflr r0
/* 804A2808  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A280C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A2810  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A2814  41 82 00 1C */	beq lbl_804A2830
/* 804A2818  3C A0 80 4A */	lis r5, __vt__12J3DFrameCtrl@ha
/* 804A281C  38 05 2C 24 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 804A2820  90 1F 00 00 */	stw r0, 0(r31)
/* 804A2824  7C 80 07 35 */	extsh. r0, r4
/* 804A2828  40 81 00 08 */	ble lbl_804A2830
/* 804A282C  4B E2 C5 10 */	b __dl__FPv
lbl_804A2830:
/* 804A2830  7F E3 FB 78 */	mr r3, r31
/* 804A2834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A2838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A283C  7C 08 03 A6 */	mtlr r0
/* 804A2840  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2844  4E 80 00 20 */	blr 
