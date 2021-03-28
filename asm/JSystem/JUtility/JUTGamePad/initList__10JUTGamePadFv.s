lbl_802E085C:
/* 802E085C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0860  7C 08 02 A6 */	mflr r0
/* 802E0864  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E0868  88 0D 8F 50 */	lbz r0, data_804514D0(r13)
/* 802E086C  28 00 00 00 */	cmplwi r0, 0
/* 802E0870  40 82 00 18 */	bne lbl_802E0888
/* 802E0874  3C 60 80 43 */	lis r3, mPadList__10JUTGamePad@ha
/* 802E0878  38 63 43 E4 */	addi r3, r3, mPadList__10JUTGamePad@l
/* 802E087C  4B FF B6 99 */	bl initiate__10JSUPtrListFv
/* 802E0880  38 00 00 01 */	li r0, 1
/* 802E0884  98 0D 8F 50 */	stb r0, data_804514D0(r13)
lbl_802E0888:
/* 802E0888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E088C  7C 08 03 A6 */	mtlr r0
/* 802E0890  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0894  4E 80 00 20 */	blr 
