lbl_80292F90:
/* 80292F90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80292F94  7C 08 02 A6 */	mflr r0
/* 80292F98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80292F9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80292FA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80292FA4  7C 7E 1B 78 */	mr r30, r3
/* 80292FA8  7C 9F 23 78 */	mr r31, r4
/* 80292FAC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80292FB0  28 00 00 00 */	cmplwi r0, 0
/* 80292FB4  40 82 00 24 */	bne lbl_80292FD8
/* 80292FB8  3C 60 80 29 */	lis r3, cbSeqMain__Q28JASTrack5TListFPv@ha /* 0x80292F6C@ha */
/* 80292FBC  38 63 2F 6C */	addi r3, r3, cbSeqMain__Q28JASTrack5TListFPv@l /* 0x80292F6C@l */
/* 80292FC0  7F C4 F3 78 */	mr r4, r30
/* 80292FC4  48 00 B2 B1 */	bl registerSubFrameCallback__9JASDriverFPFPv_lPv
/* 80292FC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80292FCC  41 82 00 38 */	beq lbl_80293004
/* 80292FD0  38 00 00 01 */	li r0, 1
/* 80292FD4  98 1E 00 0C */	stb r0, 0xc(r30)
lbl_80292FD8:
/* 80292FD8  38 1E 00 04 */	addi r0, r30, 4
/* 80292FDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80292FE0  90 01 00 08 */	stw r0, 8(r1)
/* 80292FE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80292FE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80292FEC  38 DF 02 40 */	addi r6, r31, 0x240
/* 80292FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292FF4  38 61 00 10 */	addi r3, r1, 0x10
/* 80292FF8  7F C4 F3 78 */	mr r4, r30
/* 80292FFC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80293000  48 04 9B A9 */	bl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
lbl_80293004:
/* 80293004  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80293008  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8029300C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80293010  7C 08 03 A6 */	mtlr r0
/* 80293014  38 21 00 30 */	addi r1, r1, 0x30
/* 80293018  4E 80 00 20 */	blr 
