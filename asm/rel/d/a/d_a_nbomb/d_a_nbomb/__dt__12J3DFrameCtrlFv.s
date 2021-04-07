lbl_804C72BC:
/* 804C72BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C72C0  7C 08 02 A6 */	mflr r0
/* 804C72C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C72C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C72CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C72D0  41 82 00 1C */	beq lbl_804C72EC
/* 804C72D4  3C A0 80 4D */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x804CC674@ha */
/* 804C72D8  38 05 C6 74 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x804CC674@l */
/* 804C72DC  90 1F 00 00 */	stw r0, 0(r31)
/* 804C72E0  7C 80 07 35 */	extsh. r0, r4
/* 804C72E4  40 81 00 08 */	ble lbl_804C72EC
/* 804C72E8  4B E0 7A 55 */	bl __dl__FPv
lbl_804C72EC:
/* 804C72EC  7F E3 FB 78 */	mr r3, r31
/* 804C72F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C72F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C72F8  7C 08 03 A6 */	mtlr r0
/* 804C72FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7300  4E 80 00 20 */	blr 
