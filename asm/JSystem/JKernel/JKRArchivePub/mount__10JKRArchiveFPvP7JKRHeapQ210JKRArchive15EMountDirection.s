lbl_802D5840:
/* 802D5840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5844  7C 08 02 A6 */	mflr r0
/* 802D5848  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D584C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5850  48 08 C9 8D */	bl _savegpr_29
/* 802D5854  7C 7D 1B 78 */	mr r29, r3
/* 802D5858  7C 9E 23 78 */	mr r30, r4
/* 802D585C  7C BF 2B 78 */	mr r31, r5
/* 802D5860  4B FF FF 19 */	bl check_mount_already__10JKRArchiveFlP7JKRHeap
/* 802D5864  28 03 00 00 */	cmplwi r3, 0
/* 802D5868  41 82 00 08 */	beq lbl_802D5870
/* 802D586C  48 00 00 44 */	b lbl_802D58B0
lbl_802D5870:
/* 802D5870  38 60 00 70 */	li r3, 0x70
/* 802D5874  7F C4 F3 78 */	mr r4, r30
/* 802D5878  2C 1F 00 01 */	cmpwi r31, 1
/* 802D587C  38 A0 FF FC */	li r5, -4
/* 802D5880  40 82 00 08 */	bne lbl_802D5888
/* 802D5884  38 A0 00 04 */	li r5, 4
lbl_802D5888:
/* 802D5888  4B FF 94 11 */	bl __nw__FUlP7JKRHeapi
/* 802D588C  7C 60 1B 79 */	or. r0, r3, r3
/* 802D5890  41 82 00 1C */	beq lbl_802D58AC
/* 802D5894  7F A4 EB 78 */	mr r4, r29
/* 802D5898  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 802D589C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 802D58A0  38 C0 00 00 */	li r6, 0
/* 802D58A4  48 00 11 C9 */	bl __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
/* 802D58A8  7C 60 1B 78 */	mr r0, r3
lbl_802D58AC:
/* 802D58AC  7C 03 03 78 */	mr r3, r0
lbl_802D58B0:
/* 802D58B0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D58B4  48 08 C9 75 */	bl _restgpr_29
/* 802D58B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D58BC  7C 08 03 A6 */	mtlr r0
/* 802D58C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D58C4  4E 80 00 20 */	blr 
