.include "macros.inc"

.section .text, "ax" # 802D45A0

.global __sinit_JKRFileLoader_cpp
__sinit_JKRFileLoader_cpp:
/* 802D45A0 002D14E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D45A4 002D14E4  7C 08 02 A6 */	mflr r0
/* 802D45A8 002D14E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D45AC 002D14EC  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D45B0 002D14F0  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D45B4 002D14F4  48 00 79 61 */	bl initiate__10JSUPtrListFv
/* 802D45B8 002D14F8  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D45BC 002D14FC  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
.global JSUList_NS_dtor_X6_
/* 802D45C0 002D1500  3C 80 80 2D */	lis r4, JSUList_NS_dtor_X6_@ha
.global JSUList_NS_dtor_X6_
/* 802D45C4 002D1504  38 84 45 E4 */	addi r4, r4, JSUList_NS_dtor_X6_@l
/* 802D45C8 002D1508  3C A0 80 43 */	lis r5, lbl_80434348@ha
/* 802D45CC 002D150C  38 A5 43 48 */	addi r5, r5, lbl_80434348@l
/* 802D45D0 002D1510  48 08 D6 55 */	bl func_80361C24
/* 802D45D4 002D1514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D45D8 002D1518  7C 08 03 A6 */	mtlr r0
/* 802D45DC 002D151C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D45E0 002D1520  4E 80 00 20 */	blr 

.global JSUList_NS_dtor_X6_
JSUList_NS_dtor_X6_:
/* 802D45E4 002D1524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D45E8 002D1528  7C 08 02 A6 */	mflr r0
/* 802D45EC 002D152C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D45F0 002D1530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D45F4 002D1534  93 C1 00 08 */	stw r30, 8(r1)
/* 802D45F8 002D1538  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D45FC 002D153C  7C 9F 23 78 */	mr r31, r4
/* 802D4600 002D1540  41 82 00 1C */	beq lbl_802D461C
/* 802D4604 002D1544  38 80 00 00 */	li r4, 0
/* 802D4608 002D1548  48 00 78 A5 */	bl __dt__10JSUPtrListFv
/* 802D460C 002D154C  7F E0 07 35 */	extsh. r0, r31
/* 802D4610 002D1550  40 81 00 0C */	ble lbl_802D461C
/* 802D4614 002D1554  7F C3 F3 78 */	mr r3, r30
/* 802D4618 002D1558  4B FF A7 25 */	bl __dl__FPv
lbl_802D461C:
/* 802D461C 002D155C  7F C3 F3 78 */	mr r3, r30
/* 802D4620 002D1560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4624 002D1564  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4628 002D1568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D462C 002D156C  7C 08 03 A6 */	mtlr r0
/* 802D4630 002D1570  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4634 002D1574  4E 80 00 20 */	blr 

