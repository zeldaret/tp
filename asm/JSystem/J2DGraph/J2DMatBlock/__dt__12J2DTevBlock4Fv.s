lbl_802ED9E4:
/* 802ED9E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802ED9E8  7C 08 02 A6 */	mflr r0
/* 802ED9EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802ED9F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802ED9F4  48 07 47 E1 */	bl _savegpr_27
/* 802ED9F8  7C 7B 1B 79 */	or. r27, r3, r3
/* 802ED9FC  7C 9C 23 78 */	mr r28, r4
/* 802EDA00  41 82 00 A8 */	beq lbl_802EDAA8
/* 802EDA04  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock4@ha /* 0x803CCC40@ha */
/* 802EDA08  38 03 CC 40 */	addi r0, r3, __vt__12J2DTevBlock4@l /* 0x803CCC40@l */
/* 802EDA0C  90 1B 00 00 */	stw r0, 0(r27)
/* 802EDA10  3B A0 00 00 */	li r29, 0
/* 802EDA14  3B E0 00 00 */	li r31, 0
/* 802EDA18  3B C0 00 01 */	li r30, 1
lbl_802EDA1C:
/* 802EDA1C  88 7B 00 B0 */	lbz r3, 0xb0(r27)
/* 802EDA20  7F C0 E8 30 */	slw r0, r30, r29
/* 802EDA24  7C 60 00 39 */	and. r0, r3, r0
/* 802EDA28  41 82 00 14 */	beq lbl_802EDA3C
/* 802EDA2C  38 1F 00 8C */	addi r0, r31, 0x8c
/* 802EDA30  7C 7B 00 2E */	lwzx r3, r27, r0
/* 802EDA34  38 80 00 01 */	li r4, 1
/* 802EDA38  4B FF 07 FD */	bl __dt__10JUTTextureFv
lbl_802EDA3C:
/* 802EDA3C  38 1F 00 9C */	addi r0, r31, 0x9c
/* 802EDA40  7C 7B 00 2E */	lwzx r3, r27, r0
/* 802EDA44  4B FE 12 F9 */	bl __dl__FPv
/* 802EDA48  3B BD 00 01 */	addi r29, r29, 1
/* 802EDA4C  2C 1D 00 04 */	cmpwi r29, 4
/* 802EDA50  3B FF 00 04 */	addi r31, r31, 4
/* 802EDA54  41 80 FF C8 */	blt lbl_802EDA1C
/* 802EDA58  88 1B 00 B0 */	lbz r0, 0xb0(r27)
/* 802EDA5C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EDA60  41 82 00 24 */	beq lbl_802EDA84
/* 802EDA64  80 7B 00 AC */	lwz r3, 0xac(r27)
/* 802EDA68  28 03 00 00 */	cmplwi r3, 0
/* 802EDA6C  41 82 00 18 */	beq lbl_802EDA84
/* 802EDA70  38 80 00 01 */	li r4, 1
/* 802EDA74  81 83 00 00 */	lwz r12, 0(r3)
/* 802EDA78  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EDA7C  7D 89 03 A6 */	mtctr r12
/* 802EDA80  4E 80 04 21 */	bctrl 
lbl_802EDA84:
/* 802EDA84  28 1B 00 00 */	cmplwi r27, 0
/* 802EDA88  41 82 00 10 */	beq lbl_802EDA98
/* 802EDA8C  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha /* 0x803CCE74@ha */
/* 802EDA90  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l /* 0x803CCE74@l */
/* 802EDA94  90 1B 00 00 */	stw r0, 0(r27)
lbl_802EDA98:
/* 802EDA98  7F 80 07 35 */	extsh. r0, r28
/* 802EDA9C  40 81 00 0C */	ble lbl_802EDAA8
/* 802EDAA0  7F 63 DB 78 */	mr r3, r27
/* 802EDAA4  4B FE 12 99 */	bl __dl__FPv
lbl_802EDAA8:
/* 802EDAA8  7F 63 DB 78 */	mr r3, r27
/* 802EDAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 802EDAB0  48 07 47 71 */	bl _restgpr_27
/* 802EDAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EDAB8  7C 08 03 A6 */	mtlr r0
/* 802EDABC  38 21 00 20 */	addi r1, r1, 0x20
/* 802EDAC0  4E 80 00 20 */	blr 
