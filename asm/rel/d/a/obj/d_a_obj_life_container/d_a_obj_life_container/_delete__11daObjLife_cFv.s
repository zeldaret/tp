lbl_804CE214:
/* 804CE214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE218  7C 08 02 A6 */	mflr r0
/* 804CE21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CE224  7C 7F 1B 78 */	mr r31, r3
/* 804CE228  38 7F 09 B0 */	addi r3, r31, 0x9b0
/* 804CE22C  4B DE FD CC */	b deleteObject__14Z2SoundObjBaseFv
/* 804CE230  7F E3 FB 78 */	mr r3, r31
/* 804CE234  4B FF ED 29 */	bl endEffect00__11daObjLife_cFv
/* 804CE238  7F E3 FB 78 */	mr r3, r31
/* 804CE23C  4B FF ED 71 */	bl endEffect02__11daObjLife_cFv
/* 804CE240  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804CE244  54 00 20 36 */	slwi r0, r0, 4
/* 804CE248  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha
/* 804CE24C  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l
/* 804CE250  7C 83 00 2E */	lwzx r4, r3, r0
/* 804CE254  7F E3 FB 78 */	mr r3, r31
/* 804CE258  4B C7 64 CC */	b DeleteBase__12daItemBase_cFPCc
/* 804CE25C  38 60 00 01 */	li r3, 1
/* 804CE260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CE264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE268  7C 08 03 A6 */	mtlr r0
/* 804CE26C  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE270  4E 80 00 20 */	blr 
