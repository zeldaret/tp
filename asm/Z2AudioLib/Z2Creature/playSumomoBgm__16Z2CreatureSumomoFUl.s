lbl_802C1C24:
/* 802C1C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C1C28  7C 08 02 A6 */	mflr r0
/* 802C1C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C1C30  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1C34  80 A3 00 04 */	lwz r5, 4(r3)
/* 802C1C38  28 05 00 00 */	cmplwi r5, 0
/* 802C1C3C  41 82 00 10 */	beq lbl_802C1C4C
/* 802C1C40  80 A5 00 18 */	lwz r5, 0x18(r5)
/* 802C1C44  90 A1 00 08 */	stw r5, 8(r1)
/* 802C1C48  48 00 00 08 */	b lbl_802C1C50
lbl_802C1C4C:
/* 802C1C4C  38 A0 FF FF */	li r5, -1
lbl_802C1C50:
/* 802C1C50  3C 05 FF 00 */	addis r0, r5, 0xff00
/* 802C1C54  28 00 00 64 */	cmplwi r0, 0x64
/* 802C1C58  41 82 00 1C */	beq lbl_802C1C74
/* 802C1C5C  28 04 02 BC */	cmplwi r4, 0x2bc
/* 802C1C60  40 80 00 30 */	bge lbl_802C1C90
/* 802C1C64  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000064@ha */
/* 802C1C68  38 84 00 64 */	addi r4, r4, 0x0064 /* 0x01000064@l */
/* 802C1C6C  4B FE D8 31 */	bl subBgmStart__8Z2SeqMgrFUl
/* 802C1C70  48 00 00 20 */	b lbl_802C1C90
lbl_802C1C74:
/* 802C1C74  28 04 03 E8 */	cmplwi r4, 0x3e8
/* 802C1C78  41 80 00 18 */	blt lbl_802C1C90
/* 802C1C7C  80 8D 85 FC */	lwz r4, data_80450B7C(r13)
/* 802C1C80  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 802C1C84  28 00 00 06 */	cmplwi r0, 6
/* 802C1C88  41 82 00 08 */	beq lbl_802C1C90
/* 802C1C8C  4B FE DB F9 */	bl subBgmStop__8Z2SeqMgrFv
lbl_802C1C90:
/* 802C1C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C1C94  7C 08 03 A6 */	mtlr r0
/* 802C1C98  38 21 00 10 */	addi r1, r1, 0x10
/* 802C1C9C  4E 80 00 20 */	blr 
