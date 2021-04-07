lbl_802E5840:
/* 802E5840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5844  7C 08 02 A6 */	mflr r0
/* 802E5848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E584C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E5850  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E5854  41 82 00 1C */	beq lbl_802E5870
/* 802E5858  3C A0 80 3D */	lis r5, __vt__8JUTFader@ha /* 0x803CC990@ha */
/* 802E585C  38 05 C9 90 */	addi r0, r5, __vt__8JUTFader@l /* 0x803CC990@l */
/* 802E5860  90 1F 00 00 */	stw r0, 0(r31)
/* 802E5864  7C 80 07 35 */	extsh. r0, r4
/* 802E5868  40 81 00 08 */	ble lbl_802E5870
/* 802E586C  4B FE 94 D1 */	bl __dl__FPv
lbl_802E5870:
/* 802E5870  7F E3 FB 78 */	mr r3, r31
/* 802E5874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E587C  7C 08 03 A6 */	mtlr r0
/* 802E5880  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5884  4E 80 00 20 */	blr 
