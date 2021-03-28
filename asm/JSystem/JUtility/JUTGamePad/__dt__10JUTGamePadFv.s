lbl_802E07B0:
/* 802E07B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E07B4  7C 08 02 A6 */	mflr r0
/* 802E07B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E07BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E07C0  93 C1 00 08 */	stw r30, 8(r1)
/* 802E07C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E07C8  7C 9F 23 78 */	mr r31, r4
/* 802E07CC  41 82 00 74 */	beq lbl_802E0840
/* 802E07D0  3C 60 80 3D */	lis r3, __vt__10JUTGamePad@ha
/* 802E07D4  38 03 C6 10 */	addi r0, r3, __vt__10JUTGamePad@l
/* 802E07D8  90 1E 00 00 */	stw r0, 0(r30)
/* 802E07DC  A8 BE 00 7C */	lha r5, 0x7c(r30)
/* 802E07E0  7C A0 07 35 */	extsh. r0, r5
/* 802E07E4  41 80 00 1C */	blt lbl_802E0800
/* 802E07E8  38 8D 8F 54 */	la r4, mPadAssign__10JUTGamePad(r13) /* 804514D4-_SDA_BASE_ */
/* 802E07EC  7C 64 28 AE */	lbzx r3, r4, r5
/* 802E07F0  38 03 FF FF */	addi r0, r3, -1
/* 802E07F4  7C 04 29 AE */	stbx r0, r4, r5
/* 802E07F8  38 00 FF FF */	li r0, -1
/* 802E07FC  B0 1E 00 7C */	sth r0, 0x7c(r30)
lbl_802E0800:
/* 802E0800  3C 60 80 43 */	lis r3, mPadList__10JUTGamePad@ha
/* 802E0804  38 63 43 E4 */	addi r3, r3, mPadList__10JUTGamePad@l
/* 802E0808  38 9E 00 80 */	addi r4, r30, 0x80
/* 802E080C  4B FF B9 51 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802E0810  34 1E 00 80 */	addic. r0, r30, 0x80
/* 802E0814  41 82 00 10 */	beq lbl_802E0824
/* 802E0818  38 7E 00 80 */	addi r3, r30, 0x80
/* 802E081C  38 80 00 00 */	li r4, 0
/* 802E0820  4B FF B5 F5 */	bl __dt__10JSUPtrLinkFv
lbl_802E0824:
/* 802E0824  7F C3 F3 78 */	mr r3, r30
/* 802E0828  38 80 00 00 */	li r4, 0
/* 802E082C  4B FF 0C B9 */	bl __dt__11JKRDisposerFv
/* 802E0830  7F E0 07 35 */	extsh. r0, r31
/* 802E0834  40 81 00 0C */	ble lbl_802E0840
/* 802E0838  7F C3 F3 78 */	mr r3, r30
/* 802E083C  4B FE E5 01 */	bl __dl__FPv
lbl_802E0840:
/* 802E0840  7F C3 F3 78 */	mr r3, r30
/* 802E0844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E0848  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E084C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E0850  7C 08 03 A6 */	mtlr r0
/* 802E0854  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0858  4E 80 00 20 */	blr 
