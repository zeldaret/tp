lbl_801C4D98:
/* 801C4D98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C4D9C  7C 08 02 A6 */	mflr r0
/* 801C4DA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C4DA4  39 61 00 30 */	addi r11, r1, 0x30
/* 801C4DA8  48 19 D4 1D */	bl _savegpr_23
/* 801C4DAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801C4DB0  7C 9F 23 78 */	mr r31, r4
/* 801C4DB4  41 82 02 7C */	beq lbl_801C5030
/* 801C4DB8  3C 60 80 3C */	lis r3, __vt__15dMenu_Fishing_c@ha
/* 801C4DBC  38 03 D0 74 */	addi r0, r3, __vt__15dMenu_Fishing_c@l
/* 801C4DC0  90 1E 00 00 */	stw r0, 0(r30)
/* 801C4DC4  80 7E 01 F4 */	lwz r3, 0x1f4(r30)
/* 801C4DC8  38 80 00 01 */	li r4, 1
/* 801C4DCC  48 08 4F 5D */	bl __dt__12dMsgString_cFv
/* 801C4DD0  38 00 00 00 */	li r0, 0
/* 801C4DD4  90 1E 01 F4 */	stw r0, 0x1f4(r30)
/* 801C4DD8  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 801C4DDC  28 03 00 00 */	cmplwi r3, 0
/* 801C4DE0  41 82 00 18 */	beq lbl_801C4DF8
/* 801C4DE4  38 80 00 01 */	li r4, 1
/* 801C4DE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4DEC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4DF0  7D 89 03 A6 */	mtctr r12
/* 801C4DF4  4E 80 04 21 */	bctrl 
lbl_801C4DF8:
/* 801C4DF8  38 00 00 00 */	li r0, 0
/* 801C4DFC  90 1E 01 F0 */	stw r0, 0x1f0(r30)
/* 801C4E00  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C4E04  28 03 00 00 */	cmplwi r3, 0
/* 801C4E08  41 82 00 18 */	beq lbl_801C4E20
/* 801C4E0C  38 80 00 01 */	li r4, 1
/* 801C4E10  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4E14  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4E18  7D 89 03 A6 */	mtctr r12
/* 801C4E1C  4E 80 04 21 */	bctrl 
lbl_801C4E20:
/* 801C4E20  38 00 00 00 */	li r0, 0
/* 801C4E24  90 1E 00 18 */	stw r0, 0x18(r30)
/* 801C4E28  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 801C4E2C  28 03 00 00 */	cmplwi r3, 0
/* 801C4E30  41 82 00 18 */	beq lbl_801C4E48
/* 801C4E34  38 80 00 01 */	li r4, 1
/* 801C4E38  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4E3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4E40  7D 89 03 A6 */	mtctr r12
/* 801C4E44  4E 80 04 21 */	bctrl 
lbl_801C4E48:
/* 801C4E48  38 00 00 00 */	li r0, 0
/* 801C4E4C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 801C4E50  3B 00 00 00 */	li r24, 0
/* 801C4E54  3B A0 00 00 */	li r29, 0
lbl_801C4E58:
/* 801C4E58  7F 5E EA 14 */	add r26, r30, r29
/* 801C4E5C  80 7A 00 4C */	lwz r3, 0x4c(r26)
/* 801C4E60  28 03 00 00 */	cmplwi r3, 0
/* 801C4E64  41 82 00 18 */	beq lbl_801C4E7C
/* 801C4E68  38 80 00 01 */	li r4, 1
/* 801C4E6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4E70  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4E74  7D 89 03 A6 */	mtctr r12
/* 801C4E78  4E 80 04 21 */	bctrl 
lbl_801C4E7C:
/* 801C4E7C  3B 60 00 00 */	li r27, 0
/* 801C4E80  93 7A 00 4C */	stw r27, 0x4c(r26)
/* 801C4E84  3A E0 00 00 */	li r23, 0
/* 801C4E88  7F 7C DB 78 */	mr r28, r27
lbl_801C4E8C:
/* 801C4E8C  3B 3C 00 64 */	addi r25, r28, 0x64
/* 801C4E90  7C 7A C8 2E */	lwzx r3, r26, r25
/* 801C4E94  28 03 00 00 */	cmplwi r3, 0
/* 801C4E98  41 82 00 18 */	beq lbl_801C4EB0
/* 801C4E9C  38 80 00 01 */	li r4, 1
/* 801C4EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4EA4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4EA8  7D 89 03 A6 */	mtctr r12
/* 801C4EAC  4E 80 04 21 */	bctrl 
lbl_801C4EB0:
/* 801C4EB0  7F 7A C9 2E */	stwx r27, r26, r25
/* 801C4EB4  3A F7 00 01 */	addi r23, r23, 1
/* 801C4EB8  2C 17 00 06 */	cmpwi r23, 6
/* 801C4EBC  3B 9C 00 18 */	addi r28, r28, 0x18
/* 801C4EC0  41 80 FF CC */	blt lbl_801C4E8C
/* 801C4EC4  3B 18 00 01 */	addi r24, r24, 1
/* 801C4EC8  2C 18 00 06 */	cmpwi r24, 6
/* 801C4ECC  3B BD 00 04 */	addi r29, r29, 4
/* 801C4ED0  41 80 FF 88 */	blt lbl_801C4E58
/* 801C4ED4  3A E0 00 00 */	li r23, 0
/* 801C4ED8  3B A0 00 00 */	li r29, 0
/* 801C4EDC  3B 80 00 00 */	li r28, 0
lbl_801C4EE0:
/* 801C4EE0  3B 3D 00 F4 */	addi r25, r29, 0xf4
/* 801C4EE4  7C 7E C8 2E */	lwzx r3, r30, r25
/* 801C4EE8  28 03 00 00 */	cmplwi r3, 0
/* 801C4EEC  41 82 00 18 */	beq lbl_801C4F04
/* 801C4EF0  38 80 00 01 */	li r4, 1
/* 801C4EF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4EF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4EFC  7D 89 03 A6 */	mtctr r12
/* 801C4F00  4E 80 04 21 */	bctrl 
lbl_801C4F04:
/* 801C4F04  7F 9E C9 2E */	stwx r28, r30, r25
/* 801C4F08  3A F7 00 01 */	addi r23, r23, 1
/* 801C4F0C  2C 17 00 02 */	cmpwi r23, 2
/* 801C4F10  3B BD 00 04 */	addi r29, r29, 4
/* 801C4F14  41 80 FF CC */	blt lbl_801C4EE0
/* 801C4F18  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801C4F1C  28 03 00 00 */	cmplwi r3, 0
/* 801C4F20  41 82 00 18 */	beq lbl_801C4F38
/* 801C4F24  38 80 00 01 */	li r4, 1
/* 801C4F28  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4F2C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4F30  7D 89 03 A6 */	mtctr r12
/* 801C4F34  4E 80 04 21 */	bctrl 
lbl_801C4F38:
/* 801C4F38  38 00 00 00 */	li r0, 0
/* 801C4F3C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 801C4F40  3A E0 00 00 */	li r23, 0
/* 801C4F44  3B A0 00 00 */	li r29, 0
lbl_801C4F48:
/* 801C4F48  7F 3E EA 14 */	add r25, r30, r29
/* 801C4F4C  80 79 00 FC */	lwz r3, 0xfc(r25)
/* 801C4F50  28 03 00 00 */	cmplwi r3, 0
/* 801C4F54  41 82 00 24 */	beq lbl_801C4F78
/* 801C4F58  41 82 00 18 */	beq lbl_801C4F70
/* 801C4F5C  38 80 00 01 */	li r4, 1
/* 801C4F60  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4F64  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4F68  7D 89 03 A6 */	mtctr r12
/* 801C4F6C  4E 80 04 21 */	bctrl 
lbl_801C4F70:
/* 801C4F70  38 00 00 00 */	li r0, 0
/* 801C4F74  90 19 00 FC */	stw r0, 0xfc(r25)
lbl_801C4F78:
/* 801C4F78  80 79 01 04 */	lwz r3, 0x104(r25)
/* 801C4F7C  28 03 00 00 */	cmplwi r3, 0
/* 801C4F80  41 82 00 24 */	beq lbl_801C4FA4
/* 801C4F84  41 82 00 18 */	beq lbl_801C4F9C
/* 801C4F88  38 80 00 01 */	li r4, 1
/* 801C4F8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4F90  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4F94  7D 89 03 A6 */	mtctr r12
/* 801C4F98  4E 80 04 21 */	bctrl 
lbl_801C4F9C:
/* 801C4F9C  38 00 00 00 */	li r0, 0
/* 801C4FA0  90 19 01 04 */	stw r0, 0x104(r25)
lbl_801C4FA4:
/* 801C4FA4  3A F7 00 01 */	addi r23, r23, 1
/* 801C4FA8  2C 17 00 02 */	cmpwi r23, 2
/* 801C4FAC  3B BD 00 04 */	addi r29, r29, 4
/* 801C4FB0  41 80 FF 98 */	blt lbl_801C4F48
/* 801C4FB4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C4FB8  28 03 00 00 */	cmplwi r3, 0
/* 801C4FBC  41 82 00 40 */	beq lbl_801C4FFC
/* 801C4FC0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C4FC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4FC8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C4FCC  7D 89 03 A6 */	mtctr r12
/* 801C4FD0  4E 80 04 21 */	bctrl 
/* 801C4FD4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C4FD8  28 03 00 00 */	cmplwi r3, 0
/* 801C4FDC  41 82 00 18 */	beq lbl_801C4FF4
/* 801C4FE0  38 80 00 01 */	li r4, 1
/* 801C4FE4  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801C4FE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C4FEC  7D 89 03 A6 */	mtctr r12
/* 801C4FF0  4E 80 04 21 */	bctrl 
lbl_801C4FF4:
/* 801C4FF4  38 00 00 00 */	li r0, 0
/* 801C4FF8  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_801C4FFC:
/* 801C4FFC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C5000  28 03 00 00 */	cmplwi r3, 0
/* 801C5004  41 82 00 1C */	beq lbl_801C5020
/* 801C5008  81 83 00 00 */	lwz r12, 0(r3)
/* 801C500C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C5010  7D 89 03 A6 */	mtctr r12
/* 801C5014  4E 80 04 21 */	bctrl 
/* 801C5018  38 00 00 00 */	li r0, 0
/* 801C501C  90 1E 00 08 */	stw r0, 8(r30)
lbl_801C5020:
/* 801C5020  7F E0 07 35 */	extsh. r0, r31
/* 801C5024  40 81 00 0C */	ble lbl_801C5030
/* 801C5028  7F C3 F3 78 */	mr r3, r30
/* 801C502C  48 10 9D 11 */	bl __dl__FPv
lbl_801C5030:
/* 801C5030  7F C3 F3 78 */	mr r3, r30
/* 801C5034  39 61 00 30 */	addi r11, r1, 0x30
/* 801C5038  48 19 D1 D9 */	bl _restgpr_23
/* 801C503C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C5040  7C 08 03 A6 */	mtlr r0
/* 801C5044  38 21 00 30 */	addi r1, r1, 0x30
/* 801C5048  4E 80 00 20 */	blr 
