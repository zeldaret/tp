lbl_80247D34:
/* 80247D34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80247D38  7C 08 02 A6 */	mflr r0
/* 80247D3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80247D40  39 61 00 30 */	addi r11, r1, 0x30
/* 80247D44  48 11 A4 91 */	bl _savegpr_27
/* 80247D48  7C 7F 1B 78 */	mr r31, r3
/* 80247D4C  4B FF 48 29 */	bl isTalkNow__14dMsgScrnBase_cFv
/* 80247D50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80247D54  41 82 00 1C */	beq lbl_80247D70
/* 80247D58  7F E3 FB 78 */	mr r3, r31
/* 80247D5C  C0 22 B3 10 */	lfs f1, lit_4197(r2)
/* 80247D60  81 9F 00 00 */	lwz r12, 0(r31)
/* 80247D64  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80247D68  7D 89 03 A6 */	mtctr r12
/* 80247D6C  4E 80 04 21 */	bctrl 
lbl_80247D70:
/* 80247D70  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80247D74  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80247D78  C0 24 00 9C */	lfs f1, 0x9c(r4)
/* 80247D7C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80247D80  80 63 00 04 */	lwz r3, 4(r3)
/* 80247D84  C0 04 00 70 */	lfs f0, 0x70(r4)
/* 80247D88  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80247D8C  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 80247D90  81 83 00 00 */	lwz r12, 0(r3)
/* 80247D94  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80247D98  7D 89 03 A6 */	mtctr r12
/* 80247D9C  4E 80 04 21 */	bctrl 
/* 80247DA0  3B 60 00 00 */	li r27, 0
/* 80247DA4  3B C0 00 00 */	li r30, 0
/* 80247DA8  3B A0 00 00 */	li r29, 0
lbl_80247DAC:
/* 80247DAC  7F 9F EA 14 */	add r28, r31, r29
/* 80247DB0  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80247DB4  28 00 00 00 */	cmplwi r0, 0
/* 80247DB8  41 82 00 30 */	beq lbl_80247DE8
/* 80247DBC  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80247DC0  38 03 02 8C */	addi r0, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80247DC4  7C 60 F2 14 */	add r3, r0, r30
/* 80247DC8  80 03 01 38 */	lwz r0, 0x138(r3)
/* 80247DCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80247DD0  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 80247DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80247DD8  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80247DDC  38 81 00 14 */	addi r4, r1, 0x14
/* 80247DE0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80247DE4  48 00 C6 75 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_80247DE8:
/* 80247DE8  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 80247DEC  28 00 00 00 */	cmplwi r0, 0
/* 80247DF0  41 82 00 30 */	beq lbl_80247E20
/* 80247DF4  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80247DF8  38 03 02 8C */	addi r0, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80247DFC  7C 60 F2 14 */	add r3, r0, r30
/* 80247E00  80 03 01 38 */	lwz r0, 0x138(r3)
/* 80247E04  90 01 00 08 */	stw r0, 8(r1)
/* 80247E08  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 80247E0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80247E10  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80247E14  38 81 00 0C */	addi r4, r1, 0xc
/* 80247E18  38 A1 00 08 */	addi r5, r1, 8
/* 80247E1C  48 00 C6 3D */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_80247E20:
/* 80247E20  3B 7B 00 01 */	addi r27, r27, 1
/* 80247E24  2C 1B 00 02 */	cmpwi r27, 2
/* 80247E28  3B DE 00 28 */	addi r30, r30, 0x28
/* 80247E2C  3B BD 00 04 */	addi r29, r29, 4
/* 80247E30  41 80 FF 7C */	blt lbl_80247DAC
/* 80247E34  39 61 00 30 */	addi r11, r1, 0x30
/* 80247E38  48 11 A3 E9 */	bl _restgpr_27
/* 80247E3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80247E40  7C 08 03 A6 */	mtlr r0
/* 80247E44  38 21 00 30 */	addi r1, r1, 0x30
/* 80247E48  4E 80 00 20 */	blr 
