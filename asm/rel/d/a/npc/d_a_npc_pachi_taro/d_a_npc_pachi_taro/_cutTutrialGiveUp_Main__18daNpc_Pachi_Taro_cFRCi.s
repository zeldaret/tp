lbl_80A9FE34:
/* 80A9FE34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9FE38  7C 08 02 A6 */	mflr r0
/* 80A9FE3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9FE40  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9FE44  4B 8C 23 91 */	bl _savegpr_27
/* 80A9FE48  7C 7B 1B 78 */	mr r27, r3
/* 80A9FE4C  7C 9C 23 78 */	mr r28, r4
/* 80A9FE50  3C 60 80 AA */	lis r3, lit_5903@ha /* 0x80AA1808@ha */
/* 80A9FE54  38 83 18 08 */	addi r4, r3, lit_5903@l /* 0x80AA1808@l */
/* 80A9FE58  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9FE5C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9FE60  90 61 00 08 */	stw r3, 8(r1)
/* 80A9FE64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9FE68  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9FE6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9FE70  93 61 00 08 */	stw r27, 8(r1)
/* 80A9FE74  38 7B 0F 8C */	addi r3, r27, 0xf8c
/* 80A9FE78  4B 6A 58 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FE7C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9FE80  38 7B 0F 94 */	addi r3, r27, 0xf94
/* 80A9FE84  4B 6A 58 85 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FE88  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9FE8C  38 7B 0F 94 */	addi r3, r27, 0xf94
/* 80A9FE90  4B 6A 58 79 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FE94  7C 7E 1B 78 */	mr r30, r3
/* 80A9FE98  38 7B 0F 8C */	addi r3, r27, 0xf8c
/* 80A9FE9C  4B 6A 58 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FEA0  7C 7F 1B 78 */	mr r31, r3
/* 80A9FEA4  3B A0 00 00 */	li r29, 0
/* 80A9FEA8  80 1C 00 00 */	lwz r0, 0(r28)
/* 80A9FEAC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9FEB0  41 82 00 28 */	beq lbl_80A9FED8
/* 80A9FEB4  40 80 00 10 */	bge lbl_80A9FEC4
/* 80A9FEB8  2C 00 00 05 */	cmpwi r0, 5
/* 80A9FEBC  41 82 00 14 */	beq lbl_80A9FED0
/* 80A9FEC0  48 00 00 D0 */	b lbl_80A9FF90
lbl_80A9FEC4:
/* 80A9FEC4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9FEC8  41 82 00 18 */	beq lbl_80A9FEE0
/* 80A9FECC  48 00 00 C4 */	b lbl_80A9FF90
lbl_80A9FED0:
/* 80A9FED0  3B A0 00 01 */	li r29, 1
/* 80A9FED4  48 00 00 BC */	b lbl_80A9FF90
lbl_80A9FED8:
/* 80A9FED8  3B A0 00 01 */	li r29, 1
/* 80A9FEDC  48 00 00 B4 */	b lbl_80A9FF90
lbl_80A9FEE0:
/* 80A9FEE0  7F 63 DB 78 */	mr r3, r27
/* 80A9FEE4  38 80 00 00 */	li r4, 0
/* 80A9FEE8  38 A0 00 00 */	li r5, 0
/* 80A9FEEC  38 C1 00 08 */	addi r6, r1, 8
/* 80A9FEF0  38 E0 00 00 */	li r7, 0
/* 80A9FEF4  4B 6A BD 85 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9FEF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9FEFC  41 82 00 0C */	beq lbl_80A9FF08
/* 80A9FF00  3B A0 00 01 */	li r29, 1
/* 80A9FF04  48 00 00 8C */	b lbl_80A9FF90
lbl_80A9FF08:
/* 80A9FF08  38 7B 09 74 */	addi r3, r27, 0x974
/* 80A9FF0C  4B 7A A6 35 */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80A9FF10  28 03 16 9A */	cmplwi r3, 0x169a
/* 80A9FF14  40 82 00 48 */	bne lbl_80A9FF5C
/* 80A9FF18  A8 7B 0F DA */	lha r3, 0xfda(r27)
/* 80A9FF1C  7C 60 07 35 */	extsh. r0, r3
/* 80A9FF20  40 80 00 10 */	bge lbl_80A9FF30
/* 80A9FF24  38 00 00 04 */	li r0, 4
/* 80A9FF28  B0 1B 0F DA */	sth r0, 0xfda(r27)
/* 80A9FF2C  48 00 00 64 */	b lbl_80A9FF90
lbl_80A9FF30:
/* 80A9FF30  7C 60 07 35 */	extsh. r0, r3
/* 80A9FF34  40 81 00 5C */	ble lbl_80A9FF90
/* 80A9FF38  38 03 FF FF */	addi r0, r3, -1
/* 80A9FF3C  B0 1B 0F DA */	sth r0, 0xfda(r27)
/* 80A9FF40  7C 00 07 35 */	extsh. r0, r0
/* 80A9FF44  40 82 00 4C */	bne lbl_80A9FF90
/* 80A9FF48  28 1E 00 00 */	cmplwi r30, 0
/* 80A9FF4C  41 82 00 44 */	beq lbl_80A9FF90
/* 80A9FF50  38 00 00 03 */	li r0, 3
/* 80A9FF54  98 1E 0F 9E */	stb r0, 0xf9e(r30)
/* 80A9FF58  48 00 00 38 */	b lbl_80A9FF90
lbl_80A9FF5C:
/* 80A9FF5C  28 03 16 9B */	cmplwi r3, 0x169b
/* 80A9FF60  40 82 00 18 */	bne lbl_80A9FF78
/* 80A9FF64  28 1E 00 00 */	cmplwi r30, 0
/* 80A9FF68  41 82 00 28 */	beq lbl_80A9FF90
/* 80A9FF6C  38 00 00 04 */	li r0, 4
/* 80A9FF70  98 1E 0F 9E */	stb r0, 0xf9e(r30)
/* 80A9FF74  48 00 00 1C */	b lbl_80A9FF90
lbl_80A9FF78:
/* 80A9FF78  28 03 16 85 */	cmplwi r3, 0x1685
/* 80A9FF7C  40 82 00 14 */	bne lbl_80A9FF90
/* 80A9FF80  28 1F 00 00 */	cmplwi r31, 0
/* 80A9FF84  41 82 00 0C */	beq lbl_80A9FF90
/* 80A9FF88  38 00 00 01 */	li r0, 1
/* 80A9FF8C  98 1F 0F 86 */	stb r0, 0xf86(r31)
lbl_80A9FF90:
/* 80A9FF90  7F A3 EB 78 */	mr r3, r29
/* 80A9FF94  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9FF98  4B 8C 22 89 */	bl _restgpr_27
/* 80A9FF9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9FFA0  7C 08 03 A6 */	mtlr r0
/* 80A9FFA4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9FFA8  4E 80 00 20 */	blr 
