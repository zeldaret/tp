lbl_80123C8C:
/* 80123C8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80123C90  7C 08 02 A6 */	mflr r0
/* 80123C94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80123C98  39 61 00 30 */	addi r11, r1, 0x30
/* 80123C9C  48 23 E5 35 */	bl _savegpr_26
/* 80123CA0  7C 7A 1B 78 */	mr r26, r3
/* 80123CA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80123CA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80123CAC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80123CB0  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 80123CB4  41 82 00 0C */	beq lbl_80123CC0
/* 80123CB8  3B 80 00 FF */	li r28, 0xff
/* 80123CBC  48 00 00 3C */	b lbl_80123CF8
lbl_80123CC0:
/* 80123CC0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80123CC4  38 63 02 10 */	addi r3, r3, 0x210
/* 80123CC8  80 9A 31 B0 */	lwz r4, 0x31b0(r26)
/* 80123CCC  4B F2 7C 4D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80123CD0  28 03 00 00 */	cmplwi r3, 0
/* 80123CD4  41 82 00 20 */	beq lbl_80123CF4
/* 80123CD8  88 63 00 BB */	lbz r3, 0xbb(r3)
/* 80123CDC  28 03 00 33 */	cmplwi r3, 0x33
/* 80123CE0  41 80 00 0C */	blt lbl_80123CEC
/* 80123CE4  3B 83 FF CD */	addi r28, r3, -51
/* 80123CE8  48 00 00 10 */	b lbl_80123CF8
lbl_80123CEC:
/* 80123CEC  3B 80 00 00 */	li r28, 0
/* 80123CF0  48 00 00 08 */	b lbl_80123CF8
lbl_80123CF4:
/* 80123CF4  3B 80 00 00 */	li r28, 0
lbl_80123CF8:
/* 80123CF8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80123CFC  41 82 00 74 */	beq lbl_80123D70
/* 80123D00  80 7A 06 50 */	lwz r3, 0x650(r26)
/* 80123D04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80123D08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80123D0C  C0 03 06 FC */	lfs f0, 0x6fc(r3)
/* 80123D10  D0 01 00 08 */	stfs f0, 8(r1)
/* 80123D14  C0 03 07 0C */	lfs f0, 0x70c(r3)
/* 80123D18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80123D1C  C0 03 07 1C */	lfs f0, 0x71c(r3)
/* 80123D20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80123D24  3B 60 00 00 */	li r27, 0
/* 80123D28  3B E0 00 00 */	li r31, 0
/* 80123D2C  3B C0 00 00 */	li r30, 0
/* 80123D30  3B A2 96 E8 */	la r29, effID(r2) /* 804530E8-_SDA2_BASE_ */
lbl_80123D34:
/* 80123D34  7F 43 D3 78 */	mr r3, r26
/* 80123D38  38 9E 31 B0 */	addi r4, r30, 0x31b0
/* 80123D3C  7C 9A 22 14 */	add r4, r26, r4
/* 80123D40  7C BD FA 2E */	lhzx r5, r29, r31
/* 80123D44  38 C1 00 08 */	addi r6, r1, 8
/* 80123D48  38 FA 04 E4 */	addi r7, r26, 0x4e4
/* 80123D4C  4B FF C8 35 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80123D50  28 03 00 00 */	cmplwi r3, 0
/* 80123D54  41 82 00 08 */	beq lbl_80123D5C
/* 80123D58  9B 83 00 BB */	stb r28, 0xbb(r3)
lbl_80123D5C:
/* 80123D5C  3B 7B 00 01 */	addi r27, r27, 1
/* 80123D60  2C 1B 00 03 */	cmpwi r27, 3
/* 80123D64  3B FF 00 02 */	addi r31, r31, 2
/* 80123D68  3B DE 00 04 */	addi r30, r30, 4
/* 80123D6C  41 80 FF C8 */	blt lbl_80123D34
lbl_80123D70:
/* 80123D70  39 61 00 30 */	addi r11, r1, 0x30
/* 80123D74  48 23 E4 A9 */	bl _restgpr_26
/* 80123D78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80123D7C  7C 08 03 A6 */	mtlr r0
/* 80123D80  38 21 00 30 */	addi r1, r1, 0x30
/* 80123D84  4E 80 00 20 */	blr 
