.include "macros.inc"

.section .text, "ax" # 802D2DAC

.global __sinit_JKRAram_cpp
__sinit_JKRAram_cpp:
/* 802D2DAC 002CFCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2DB0 002CFCF0  7C 08 02 A6 */	mflr r0
/* 802D2DB4 002CFCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2DB8 002CFCF8  3C 60 80 43 */	lis r3, sAramCommandList__7JKRAram@ha
/* 802D2DBC 002CFCFC  38 63 42 DC */	addi r3, r3, sAramCommandList__7JKRAram@l
/* 802D2DC0 002CFD00  48 00 91 55 */	bl initiate__10JSUPtrListFv
/* 802D2DC4 002CFD04  3C 60 80 43 */	lis r3, sAramCommandList__7JKRAram@ha
/* 802D2DC8 002CFD08  38 63 42 DC */	addi r3, r3, sAramCommandList__7JKRAram@l
.global JSUList_NS_dtor_X4_
/* 802D2DCC 002CFD0C  3C 80 80 2D */	lis r4, JSUList_NS_dtor_X4_@ha
.global JSUList_NS_dtor_X4_
/* 802D2DD0 002CFD10  38 84 2D F0 */	addi r4, r4, JSUList_NS_dtor_X4_@l
/* 802D2DD4 002CFD14  3C A0 80 43 */	lis r5, lbl_804342D0@ha
/* 802D2DD8 002CFD18  38 A5 42 D0 */	addi r5, r5, lbl_804342D0@l
/* 802D2DDC 002CFD1C  48 08 EE 49 */	bl func_80361C24
/* 802D2DE0 002CFD20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2DE4 002CFD24  7C 08 03 A6 */	mtlr r0
/* 802D2DE8 002CFD28  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2DEC 002CFD2C  4E 80 00 20 */	blr 

.global JSUList_NS_dtor_X4_
JSUList_NS_dtor_X4_:
/* 802D2DF0 002CFD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2DF4 002CFD34  7C 08 02 A6 */	mflr r0
/* 802D2DF8 002CFD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2DFC 002CFD3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2E00 002CFD40  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2E04 002CFD44  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D2E08 002CFD48  7C 9F 23 78 */	mr r31, r4
/* 802D2E0C 002CFD4C  41 82 00 1C */	beq lbl_802D2E28
/* 802D2E10 002CFD50  38 80 00 00 */	li r4, 0
/* 802D2E14 002CFD54  48 00 90 99 */	bl __dt__10JSUPtrListFv
/* 802D2E18 002CFD58  7F E0 07 35 */	extsh. r0, r31
/* 802D2E1C 002CFD5C  40 81 00 0C */	ble lbl_802D2E28
/* 802D2E20 002CFD60  7F C3 F3 78 */	mr r3, r30
/* 802D2E24 002CFD64  4B FF BF 19 */	bl __dl__FPv
lbl_802D2E28:
/* 802D2E28 002CFD68  7F C3 F3 78 */	mr r3, r30
/* 802D2E2C 002CFD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D2E30 002CFD70  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D2E34 002CFD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2E38 002CFD78  7C 08 03 A6 */	mtlr r0
/* 802D2E3C 002CFD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2E40 002CFD80  4E 80 00 20 */	blr 

