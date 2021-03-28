lbl_804DD574:
/* 804DD574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD578  7C 08 02 A6 */	mflr r0
/* 804DD57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DD584  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DD588  41 82 00 1C */	beq lbl_804DD5A4
/* 804DD58C  3C A0 80 4E */	lis r5, __vt__10cCcD_GStts@ha
/* 804DD590  38 05 D7 90 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 804DD594  90 1F 00 00 */	stw r0, 0(r31)
/* 804DD598  7C 80 07 35 */	extsh. r0, r4
/* 804DD59C  40 81 00 08 */	ble lbl_804DD5A4
/* 804DD5A0  4B DF 17 9C */	b __dl__FPv
lbl_804DD5A4:
/* 804DD5A4  7F E3 FB 78 */	mr r3, r31
/* 804DD5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DD5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD5B0  7C 08 03 A6 */	mtlr r0
/* 804DD5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD5B8  4E 80 00 20 */	blr 
