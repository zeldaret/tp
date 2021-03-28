lbl_802D4148:
/* 802D4148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D414C  7C 08 02 A6 */	mflr r0
/* 802D4150  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4158  93 C1 00 08 */	stw r30, 8(r1)
/* 802D415C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D4160  7C 9F 23 78 */	mr r31, r4
/* 802D4164  41 82 00 54 */	beq lbl_802D41B8
/* 802D4168  3C 60 80 3D */	lis r3, __vt__13JKRFileLoader@ha
/* 802D416C  38 03 C1 C8 */	addi r0, r3, __vt__13JKRFileLoader@l
/* 802D4170  90 1E 00 00 */	stw r0, 0(r30)
/* 802D4174  80 0D 8E 98 */	lwz r0, sCurrentVolume__13JKRFileLoader(r13)
/* 802D4178  7C 00 F0 40 */	cmplw r0, r30
/* 802D417C  40 82 00 0C */	bne lbl_802D4188
/* 802D4180  38 00 00 00 */	li r0, 0
/* 802D4184  90 0D 8E 98 */	stw r0, sCurrentVolume__13JKRFileLoader(r13)
lbl_802D4188:
/* 802D4188  34 1E 00 18 */	addic. r0, r30, 0x18
/* 802D418C  41 82 00 10 */	beq lbl_802D419C
/* 802D4190  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D4194  38 80 00 00 */	li r4, 0
/* 802D4198  48 00 7C 7D */	bl __dt__10JSUPtrLinkFv
lbl_802D419C:
/* 802D419C  7F C3 F3 78 */	mr r3, r30
/* 802D41A0  38 80 00 00 */	li r4, 0
/* 802D41A4  4B FF D3 41 */	bl __dt__11JKRDisposerFv
/* 802D41A8  7F E0 07 35 */	extsh. r0, r31
/* 802D41AC  40 81 00 0C */	ble lbl_802D41B8
/* 802D41B0  7F C3 F3 78 */	mr r3, r30
/* 802D41B4  4B FF AB 89 */	bl __dl__FPv
lbl_802D41B8:
/* 802D41B8  7F C3 F3 78 */	mr r3, r30
/* 802D41BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D41C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D41C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D41C8  7C 08 03 A6 */	mtlr r0
/* 802D41CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D41D0  4E 80 00 20 */	blr 
