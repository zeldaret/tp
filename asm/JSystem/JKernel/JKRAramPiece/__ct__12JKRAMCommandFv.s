lbl_802D39EC:
/* 802D39EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D39F0  7C 08 02 A6 */	mflr r0
/* 802D39F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D39F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D39FC  7C 7F 1B 78 */	mr r31, r3
/* 802D3A00  7F E4 FB 78 */	mr r4, r31
/* 802D3A04  38 64 00 20 */	addi r3, r4, 0x20
/* 802D3A08  48 00 83 F5 */	bl __ct__10JSUPtrLinkFPv
/* 802D3A0C  38 7F 00 30 */	addi r3, r31, 0x30
/* 802D3A10  7F E4 FB 78 */	mr r4, r31
/* 802D3A14  48 00 83 E9 */	bl __ct__10JSUPtrLinkFPv
/* 802D3A18  38 7F 00 68 */	addi r3, r31, 0x68
/* 802D3A1C  38 9F 00 88 */	addi r4, r31, 0x88
/* 802D3A20  38 A0 00 01 */	li r5, 1
/* 802D3A24  48 06 AF 71 */	bl OSInitMessageQueue
/* 802D3A28  38 00 00 00 */	li r0, 0
/* 802D3A2C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 802D3A30  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 802D3A34  90 1F 00 60 */	stw r0, 0x60(r31)
/* 802D3A38  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 802D3A3C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802D3A40  90 1F 00 94 */	stw r0, 0x94(r31)
/* 802D3A44  7F E3 FB 78 */	mr r3, r31
/* 802D3A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3A50  7C 08 03 A6 */	mtlr r0
/* 802D3A54  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3A58  4E 80 00 20 */	blr 
