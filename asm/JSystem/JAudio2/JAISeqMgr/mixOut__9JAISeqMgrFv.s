lbl_802A1EFC:
/* 802A1EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A1F00  7C 08 02 A6 */	mflr r0
/* 802A1F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A1F08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A1F0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A1F10  7C 7E 1B 78 */	mr r30, r3
/* 802A1F14  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 802A1F18  48 00 00 20 */	b lbl_802A1F38
lbl_802A1F1C:
/* 802A1F1C  88 1E 00 04 */	lbz r0, 4(r30)
/* 802A1F20  98 01 00 08 */	stb r0, 8(r1)
/* 802A1F24  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A1F28  38 9E 00 14 */	addi r4, r30, 0x14
/* 802A1F2C  38 A1 00 08 */	addi r5, r1, 8
/* 802A1F30  4B FF F5 CD */	bl JAISeqMgr_mixOut___6JAISeqFRC14JASSoundParams16JAISoundActivity
/* 802A1F34  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A1F38:
/* 802A1F38  28 1F 00 00 */	cmplwi r31, 0
/* 802A1F3C  40 82 FF E0 */	bne lbl_802A1F1C
/* 802A1F40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A1F44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A1F48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A1F4C  7C 08 03 A6 */	mtlr r0
/* 802A1F50  38 21 00 20 */	addi r1, r1, 0x20
/* 802A1F54  4E 80 00 20 */	blr 
