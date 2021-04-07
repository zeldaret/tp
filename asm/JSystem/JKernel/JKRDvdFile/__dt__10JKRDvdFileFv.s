lbl_802D9748:
/* 802D9748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D974C  7C 08 02 A6 */	mflr r0
/* 802D9750  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9758  93 C1 00 08 */	stw r30, 8(r1)
/* 802D975C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D9760  7C 9F 23 78 */	mr r31, r4
/* 802D9764  41 82 00 64 */	beq lbl_802D97C8
/* 802D9768  3C 80 80 3D */	lis r4, __vt__10JKRDvdFile@ha /* 0x803CC438@ha */
/* 802D976C  38 04 C4 38 */	addi r0, r4, __vt__10JKRDvdFile@l /* 0x803CC438@l */
/* 802D9770  90 1E 00 00 */	stw r0, 0(r30)
/* 802D9774  81 83 00 00 */	lwz r12, 0(r3)
/* 802D9778  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D977C  7D 89 03 A6 */	mtctr r12
/* 802D9780  4E 80 04 21 */	bctrl 
/* 802D9784  34 1E 00 E4 */	addic. r0, r30, 0xe4
/* 802D9788  41 82 00 10 */	beq lbl_802D9798
/* 802D978C  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 802D9790  38 80 00 00 */	li r4, 0
/* 802D9794  48 00 26 81 */	bl __dt__10JSUPtrLinkFv
lbl_802D9798:
/* 802D9798  28 1E 00 00 */	cmplwi r30, 0
/* 802D979C  41 82 00 1C */	beq lbl_802D97B8
/* 802D97A0  3C 60 80 3D */	lis r3, __vt__7JKRFile@ha /* 0x803CC328@ha */
/* 802D97A4  38 03 C3 28 */	addi r0, r3, __vt__7JKRFile@l /* 0x803CC328@l */
/* 802D97A8  90 1E 00 00 */	stw r0, 0(r30)
/* 802D97AC  7F C3 F3 78 */	mr r3, r30
/* 802D97B0  38 80 00 00 */	li r4, 0
/* 802D97B4  4B FF 7D 31 */	bl __dt__11JKRDisposerFv
lbl_802D97B8:
/* 802D97B8  7F E0 07 35 */	extsh. r0, r31
/* 802D97BC  40 81 00 0C */	ble lbl_802D97C8
/* 802D97C0  7F C3 F3 78 */	mr r3, r30
/* 802D97C4  4B FF 55 79 */	bl __dl__FPv
lbl_802D97C8:
/* 802D97C8  7F C3 F3 78 */	mr r3, r30
/* 802D97CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D97D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D97D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D97D8  7C 08 03 A6 */	mtlr r0
/* 802D97DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D97E0  4E 80 00 20 */	blr 
