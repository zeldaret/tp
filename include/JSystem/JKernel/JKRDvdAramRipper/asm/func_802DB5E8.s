/* __sinit_JKRDvdAramRipper_cpp __sinit_JKRDvdAramRipper_cpp */
/* missing reference */
/* 802DB5E8 002D8528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB5EC 002D852C  7C 08 02 A6 */	mflr r0
/* 802DB5F0 002D8530  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB5F4 002D8534  3C 60 80 43 */	lis r3, lbl_804343B4@ha
/* 802DB5F8 002D8538  38 63 43 B4 */	addi r3, r3, lbl_804343B4@l
/* 802DB5FC 002D853C  48 00 09 19 */	bl initiate__10JSUPtrListFv
/* 802DB600 002D8540  3C 60 80 43 */	lis r3, lbl_804343B4@ha
/* 802DB604 002D8544  38 63 43 B4 */	addi r3, r3, lbl_804343B4@l
/* 802DB608 002D8548  3C 80 80 2E */	lis r4, JSUList_NS_dtor_X9_@ha
/* 802DB60C 002D854C  38 84 B6 2C */	addi r4, r4, JSUList_NS_dtor_X9_@l
/* 802DB610 002D8550  3C A0 80 43 */	lis r5, lbl_804343A8@ha
/* 802DB614 002D8554  38 A5 43 A8 */	addi r5, r5, lbl_804343A8@l
/* 802DB618 002D8558  48 08 66 0D */	bl func_80361C24
/* 802DB61C 002D855C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB620 002D8560  7C 08 03 A6 */	mtlr r0
/* 802DB624 002D8564  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB628 002D8568  4E 80 00 20 */	blr
