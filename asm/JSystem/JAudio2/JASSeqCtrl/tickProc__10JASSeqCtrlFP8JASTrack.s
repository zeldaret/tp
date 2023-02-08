lbl_802939C4:
/* 802939C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802939C8  7C 08 02 A6 */	mflr r0
/* 802939CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802939D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802939D4  93 C1 00 08 */	stw r30, 8(r1)
/* 802939D8  7C 7E 1B 78 */	mr r30, r3
/* 802939DC  7C 9F 23 78 */	mr r31, r4
/* 802939E0  80 03 00 00 */	lwz r0, 0(r3)
/* 802939E4  28 00 00 00 */	cmplwi r0, 0
/* 802939E8  40 82 00 0C */	bne lbl_802939F4
/* 802939EC  38 60 00 00 */	li r3, 0
/* 802939F0  48 00 00 B4 */	b lbl_80293AA4
lbl_802939F4:
/* 802939F4  38 80 00 06 */	li r4, 6
/* 802939F8  48 00 00 C5 */	bl interrupt__10JASSeqCtrlFQ210JASSeqCtrl8IntrType
/* 802939FC  7F C3 F3 78 */	mr r3, r30
/* 80293A00  48 00 01 E9 */	bl timerProcess__10JASSeqCtrlFv
/* 80293A04  88 1E 00 51 */	lbz r0, 0x51(r30)
/* 80293A08  28 00 00 00 */	cmplwi r0, 0
/* 80293A0C  41 82 00 28 */	beq lbl_80293A34
/* 80293A10  7F E3 FB 78 */	mr r3, r31
/* 80293A14  38 80 00 00 */	li r4, 0
/* 80293A18  4B FF E8 09 */	bl checkNoteStop__8JASTrackCFUl
/* 80293A1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80293A20  40 82 00 0C */	bne lbl_80293A2C
/* 80293A24  38 60 00 00 */	li r3, 0
/* 80293A28  48 00 00 7C */	b lbl_80293AA4
lbl_80293A2C:
/* 80293A2C  38 00 00 00 */	li r0, 0
/* 80293A30  98 1E 00 51 */	stb r0, 0x51(r30)
lbl_80293A34:
/* 80293A34  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80293A38  2C 03 00 00 */	cmpwi r3, 0
/* 80293A3C  40 81 00 0C */	ble lbl_80293A48
/* 80293A40  38 03 FF FF */	addi r0, r3, -1
/* 80293A44  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_80293A48:
/* 80293A48  7F C3 F3 78 */	mr r3, r30
/* 80293A4C  48 00 01 2D */	bl checkIntr__10JASSeqCtrlFv
/* 80293A50  48 00 00 2C */	b lbl_80293A7C
lbl_80293A54:
/* 80293A54  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80293A58  7F E4 FB 78 */	mr r4, r31
/* 80293A5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80293A60  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80293A64  7D 89 03 A6 */	mtctr r12
/* 80293A68  4E 80 04 21 */	bctrl 
/* 80293A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80293A70  40 80 00 0C */	bge lbl_80293A7C
/* 80293A74  38 60 FF FF */	li r3, -1
/* 80293A78  48 00 00 2C */	b lbl_80293AA4
lbl_80293A7C:
/* 80293A7C  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80293A80  2C 00 00 00 */	cmpwi r0, 0
/* 80293A84  41 82 00 10 */	beq lbl_80293A94
/* 80293A88  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80293A8C  28 00 00 00 */	cmplwi r0, 0
/* 80293A90  41 82 00 10 */	beq lbl_80293AA0
lbl_80293A94:
/* 80293A94  88 1E 00 51 */	lbz r0, 0x51(r30)
/* 80293A98  28 00 00 00 */	cmplwi r0, 0
/* 80293A9C  41 82 FF B8 */	beq lbl_80293A54
lbl_80293AA0:
/* 80293AA0  38 60 00 00 */	li r3, 0
lbl_80293AA4:
/* 80293AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80293AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293AB0  7C 08 03 A6 */	mtlr r0
/* 80293AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80293AB8  4E 80 00 20 */	blr 
