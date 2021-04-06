lbl_80877A08:
/* 80877A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80877A0C  7C 08 02 A6 */	mflr r0
/* 80877A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80877A14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80877A18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80877A1C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80877A20  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877A24  3B E3 9B D0 */	addi r31, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877A28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80877A2C  2C 00 00 00 */	cmpwi r0, 0
/* 80877A30  40 82 00 20 */	bne lbl_80877A50
/* 80877A34  3B A0 00 00 */	li r29, 0
lbl_80877A38:
/* 80877A38  38 7F 01 00 */	addi r3, r31, 0x100
/* 80877A3C  4B FF DE DD */	bl daMP_PushFreeReadBuffer__FPv
/* 80877A40  3B BD 00 01 */	addi r29, r29, 1
/* 80877A44  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80877A48  3B FF 00 0C */	addi r31, r31, 0xc
/* 80877A4C  41 80 FF EC */	blt lbl_80877A38
lbl_80877A50:
/* 80877A50  3B A0 00 00 */	li r29, 0
/* 80877A54  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877A58  3B C3 9B D0 */	addi r30, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877A5C  7F DF F3 78 */	mr r31, r30
lbl_80877A60:
/* 80877A60  38 7F 01 78 */	addi r3, r31, 0x178
/* 80877A64  4B FF E1 99 */	bl daMP_PushFreeTextureSet__FPv
/* 80877A68  3B BD 00 01 */	addi r29, r29, 1
/* 80877A6C  2C 1D 00 03 */	cmpwi r29, 3
/* 80877A70  3B FF 00 10 */	addi r31, r31, 0x10
/* 80877A74  41 80 FF EC */	blt lbl_80877A60
/* 80877A78  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877A7C  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877A80  88 03 00 A7 */	lbz r0, 0xa7(r3)
/* 80877A84  28 00 00 00 */	cmplwi r0, 0
/* 80877A88  41 82 00 20 */	beq lbl_80877AA8
/* 80877A8C  3B E0 00 00 */	li r31, 0
lbl_80877A90:
/* 80877A90  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 80877A94  4B FF E7 09 */	bl daMP_PushFreeAudioBuffer__FPv
/* 80877A98  3B FF 00 01 */	addi r31, r31, 1
/* 80877A9C  2C 1F 00 03 */	cmpwi r31, 3
/* 80877AA0  3B DE 00 0C */	addi r30, r30, 0xc
/* 80877AA4  41 80 FF EC */	blt lbl_80877A90
lbl_80877AA8:
/* 80877AA8  3C 60 80 94 */	lis r3, daMP_PrepareReadyQueue@ha /* 0x809448E0@ha */
/* 80877AAC  38 63 48 E0 */	addi r3, r3, daMP_PrepareReadyQueue@l /* 0x809448E0@l */
/* 80877AB0  3C 80 80 94 */	lis r4, daMP_PrepareReadyMessage@ha /* 0x80944920@ha */
/* 80877AB4  38 84 49 20 */	addi r4, r4, daMP_PrepareReadyMessage@l /* 0x80944920@l */
/* 80877AB8  38 A0 00 01 */	li r5, 1
/* 80877ABC  4B AC 6E D9 */	bl OSInitMessageQueue
/* 80877AC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80877AC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80877AC8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80877ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80877AD0  7C 08 03 A6 */	mtlr r0
/* 80877AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80877AD8  4E 80 00 20 */	blr 
