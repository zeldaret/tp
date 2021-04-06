lbl_802EEE8C:
/* 802EEE8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EEE90  7C 08 02 A6 */	mflr r0
/* 802EEE94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EEE98  39 61 00 20 */	addi r11, r1, 0x20
/* 802EEE9C  48 07 33 39 */	bl _savegpr_27
/* 802EEEA0  7C 7B 1B 79 */	or. r27, r3, r3
/* 802EEEA4  7C 9C 23 78 */	mr r28, r4
/* 802EEEA8  41 82 00 A8 */	beq lbl_802EEF50
/* 802EEEAC  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock8@ha /* 0x803CCB84@ha */
/* 802EEEB0  38 03 CB 84 */	addi r0, r3, __vt__12J2DTevBlock8@l /* 0x803CCB84@l */
/* 802EEEB4  90 1B 00 00 */	stw r0, 0(r27)
/* 802EEEB8  3B A0 00 00 */	li r29, 0
/* 802EEEBC  3B E0 00 00 */	li r31, 0
/* 802EEEC0  3B C0 00 01 */	li r30, 1
lbl_802EEEC4:
/* 802EEEC4  88 7B 01 20 */	lbz r3, 0x120(r27)
/* 802EEEC8  7F C0 E8 30 */	slw r0, r30, r29
/* 802EEECC  7C 60 00 39 */	and. r0, r3, r0
/* 802EEED0  41 82 00 14 */	beq lbl_802EEEE4
/* 802EEED4  38 1F 00 DC */	addi r0, r31, 0xdc
/* 802EEED8  7C 7B 00 2E */	lwzx r3, r27, r0
/* 802EEEDC  38 80 00 01 */	li r4, 1
/* 802EEEE0  4B FE F3 55 */	bl __dt__10JUTTextureFv
lbl_802EEEE4:
/* 802EEEE4  38 1F 00 FC */	addi r0, r31, 0xfc
/* 802EEEE8  7C 7B 00 2E */	lwzx r3, r27, r0
/* 802EEEEC  4B FD FE 51 */	bl __dl__FPv
/* 802EEEF0  3B BD 00 01 */	addi r29, r29, 1
/* 802EEEF4  2C 1D 00 08 */	cmpwi r29, 8
/* 802EEEF8  3B FF 00 04 */	addi r31, r31, 4
/* 802EEEFC  41 80 FF C8 */	blt lbl_802EEEC4
/* 802EEF00  88 1B 01 21 */	lbz r0, 0x121(r27)
/* 802EEF04  28 00 00 00 */	cmplwi r0, 0
/* 802EEF08  41 82 00 24 */	beq lbl_802EEF2C
/* 802EEF0C  80 7B 01 1C */	lwz r3, 0x11c(r27)
/* 802EEF10  28 03 00 00 */	cmplwi r3, 0
/* 802EEF14  41 82 00 18 */	beq lbl_802EEF2C
/* 802EEF18  38 80 00 01 */	li r4, 1
/* 802EEF1C  81 83 00 00 */	lwz r12, 0(r3)
/* 802EEF20  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EEF24  7D 89 03 A6 */	mtctr r12
/* 802EEF28  4E 80 04 21 */	bctrl 
lbl_802EEF2C:
/* 802EEF2C  28 1B 00 00 */	cmplwi r27, 0
/* 802EEF30  41 82 00 10 */	beq lbl_802EEF40
/* 802EEF34  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha /* 0x803CCE74@ha */
/* 802EEF38  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l /* 0x803CCE74@l */
/* 802EEF3C  90 1B 00 00 */	stw r0, 0(r27)
lbl_802EEF40:
/* 802EEF40  7F 80 07 35 */	extsh. r0, r28
/* 802EEF44  40 81 00 0C */	ble lbl_802EEF50
/* 802EEF48  7F 63 DB 78 */	mr r3, r27
/* 802EEF4C  4B FD FD F1 */	bl __dl__FPv
lbl_802EEF50:
/* 802EEF50  7F 63 DB 78 */	mr r3, r27
/* 802EEF54  39 61 00 20 */	addi r11, r1, 0x20
/* 802EEF58  48 07 32 C9 */	bl _restgpr_27
/* 802EEF5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EEF60  7C 08 03 A6 */	mtlr r0
/* 802EEF64  38 21 00 20 */	addi r1, r1, 0x20
/* 802EEF68  4E 80 00 20 */	blr 
