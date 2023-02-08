lbl_80CB5558:
/* 80CB5558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB555C  7C 08 02 A6 */	mflr r0
/* 80CB5560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5568  7C 7F 1B 78 */	mr r31, r3
/* 80CB556C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB5570  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB5574  40 82 00 1C */	bne lbl_80CB5590
/* 80CB5578  28 1F 00 00 */	cmplwi r31, 0
/* 80CB557C  41 82 00 08 */	beq lbl_80CB5584
/* 80CB5580  4B FF FC 79 */	bl __ct__11daObjProp_cFv
lbl_80CB5584:
/* 80CB5584  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CB5588  60 00 00 08 */	ori r0, r0, 8
/* 80CB558C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CB5590:
/* 80CB5590  7F E3 FB 78 */	mr r3, r31
/* 80CB5594  4B FF FD A1 */	bl create__11daObjProp_cFv
/* 80CB5598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB559C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB55A0  7C 08 03 A6 */	mtlr r0
/* 80CB55A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB55A8  4E 80 00 20 */	blr 
