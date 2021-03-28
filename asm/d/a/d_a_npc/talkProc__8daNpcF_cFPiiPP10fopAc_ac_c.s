lbl_80153D84:
/* 80153D84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80153D88  7C 08 02 A6 */	mflr r0
/* 80153D8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80153D90  39 61 00 30 */	addi r11, r1, 0x30
/* 80153D94  48 20 E4 41 */	bl _savegpr_27
/* 80153D98  7C 7B 1B 78 */	mr r27, r3
/* 80153D9C  7C 9C 23 78 */	mr r28, r4
/* 80153DA0  7C BD 2B 78 */	mr r29, r5
/* 80153DA4  7C DF 33 78 */	mr r31, r6
/* 80153DA8  3B C0 00 00 */	li r30, 0
/* 80153DAC  38 00 FF FF */	li r0, -1
/* 80153DB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80153DB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80153DB8  48 0E 45 3D */	bl isMsgSendControl__12dMsgObject_cFv
/* 80153DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80153DC0  41 82 00 14 */	beq lbl_80153DD4
/* 80153DC4  2C 1D 00 00 */	cmpwi r29, 0
/* 80153DC8  41 82 01 10 */	beq lbl_80153ED8
/* 80153DCC  48 0E 44 FD */	bl offMsgSendControl__12dMsgObject_cFv
/* 80153DD0  48 00 01 08 */	b lbl_80153ED8
lbl_80153DD4:
/* 80153DD4  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80153DD8  7F 64 DB 78 */	mr r4, r27
/* 80153DDC  7F E5 FB 78 */	mr r5, r31
/* 80153DE0  38 C0 00 00 */	li r6, 0
/* 80153DE4  48 0F 64 F5 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80153DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80153DEC  41 82 00 0C */	beq lbl_80153DF8
/* 80153DF0  3B C0 00 01 */	li r30, 1
/* 80153DF4  48 00 00 E4 */	b lbl_80153ED8
lbl_80153DF8:
/* 80153DF8  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80153DFC  48 0F 67 4D */	bl getMsg__10dMsgFlow_cFv
/* 80153E00  28 03 00 00 */	cmplwi r3, 0
/* 80153E04  41 82 00 68 */	beq lbl_80153E6C
/* 80153E08  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80153E0C  48 0F 67 3D */	bl getMsg__10dMsgFlow_cFv
/* 80153E10  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80153E14  28 00 00 02 */	cmplwi r0, 2
/* 80153E18  41 82 00 18 */	beq lbl_80153E30
/* 80153E1C  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80153E20  48 0F 67 29 */	bl getMsg__10dMsgFlow_cFv
/* 80153E24  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80153E28  28 00 00 06 */	cmplwi r0, 6
/* 80153E2C  40 82 00 40 */	bne lbl_80153E6C
lbl_80153E30:
/* 80153E30  28 1C 00 00 */	cmplwi r28, 0
/* 80153E34  41 82 00 38 */	beq lbl_80153E6C
/* 80153E38  3B E0 00 00 */	li r31, 0
/* 80153E3C  48 00 00 24 */	b lbl_80153E60
lbl_80153E40:
/* 80153E40  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80153E44  48 0F 66 F5 */	bl getMsgNo__10dMsgFlow_cFv
/* 80153E48  7C 1C F8 2E */	lwzx r0, r28, r31
/* 80153E4C  7C 00 18 40 */	cmplw r0, r3
/* 80153E50  40 82 00 0C */	bne lbl_80153E5C
/* 80153E54  3B C0 00 01 */	li r30, 1
/* 80153E58  48 00 00 14 */	b lbl_80153E6C
lbl_80153E5C:
/* 80153E5C  3B FF 00 04 */	addi r31, r31, 4
lbl_80153E60:
/* 80153E60  7C 1C F8 2E */	lwzx r0, r28, r31
/* 80153E64  2C 00 00 00 */	cmpwi r0, 0
/* 80153E68  41 81 FF D8 */	bgt lbl_80153E40
lbl_80153E6C:
/* 80153E6C  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80153E70  38 81 00 14 */	addi r4, r1, 0x14
/* 80153E74  38 A1 00 10 */	addi r5, r1, 0x10
/* 80153E78  38 C1 00 0C */	addi r6, r1, 0xc
/* 80153E7C  38 E1 00 08 */	addi r7, r1, 8
/* 80153E80  48 0F 65 A5 */	bl checkEventRender__10dMsgFlow_cFPiPiPiPi
/* 80153E84  2C 03 00 00 */	cmpwi r3, 0
/* 80153E88  41 82 00 50 */	beq lbl_80153ED8
/* 80153E8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80153E90  2C 04 FF FF */	cmpwi r4, -1
/* 80153E94  41 82 00 1C */	beq lbl_80153EB0
/* 80153E98  7F 63 DB 78 */	mr r3, r27
/* 80153E9C  C0 22 99 E8 */	lfs f1, lit_4148(r2)
/* 80153EA0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80153EA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80153EA8  7D 89 03 A6 */	mtctr r12
/* 80153EAC  4E 80 04 21 */	bctrl 
lbl_80153EB0:
/* 80153EB0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80153EB4  2C 04 FF FF */	cmpwi r4, -1
/* 80153EB8  41 82 00 20 */	beq lbl_80153ED8
/* 80153EBC  7F 63 DB 78 */	mr r3, r27
/* 80153EC0  C0 22 99 E8 */	lfs f1, lit_4148(r2)
/* 80153EC4  38 A0 00 00 */	li r5, 0
/* 80153EC8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80153ECC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80153ED0  7D 89 03 A6 */	mtctr r12
/* 80153ED4  4E 80 04 21 */	bctrl 
lbl_80153ED8:
/* 80153ED8  7F C3 F3 78 */	mr r3, r30
/* 80153EDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80153EE0  48 20 E3 41 */	bl _restgpr_27
/* 80153EE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80153EE8  7C 08 03 A6 */	mtlr r0
/* 80153EEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80153EF0  4E 80 00 20 */	blr 
