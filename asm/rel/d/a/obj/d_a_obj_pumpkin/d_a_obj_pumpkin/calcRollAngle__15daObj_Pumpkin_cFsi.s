lbl_80CB7AE4:
/* 80CB7AE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB7AE8  7C 08 02 A6 */	mflr r0
/* 80CB7AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB7AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB7AF4  4B 6A A6 E8 */	b _savegpr_29
/* 80CB7AF8  7C BD 2B 78 */	mr r29, r5
/* 80CB7AFC  7C 80 07 35 */	extsh. r0, r4
/* 80CB7B00  41 82 00 68 */	beq lbl_80CB7B68
/* 80CB7B04  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 80CB7B08  7F DF E8 50 */	subf r30, r31, r29
/* 80CB7B0C  7F C3 F3 78 */	mr r3, r30
/* 80CB7B10  4B 6A D5 C0 */	b abs
/* 80CB7B14  2C 03 00 04 */	cmpwi r3, 4
/* 80CB7B18  40 81 00 44 */	ble lbl_80CB7B5C
/* 80CB7B1C  7F C0 16 70 */	srawi r0, r30, 2
/* 80CB7B20  7C 00 01 94 */	addze r0, r0
/* 80CB7B24  2C 00 08 00 */	cmpwi r0, 0x800
/* 80CB7B28  40 81 00 0C */	ble lbl_80CB7B34
/* 80CB7B2C  38 1F 08 00 */	addi r0, r31, 0x800
/* 80CB7B30  48 00 00 30 */	b lbl_80CB7B60
lbl_80CB7B34:
/* 80CB7B34  7F C0 16 70 */	srawi r0, r30, 2
/* 80CB7B38  7C 00 01 94 */	addze r0, r0
/* 80CB7B3C  2C 00 F8 00 */	cmpwi r0, -2048
/* 80CB7B40  40 80 00 0C */	bge lbl_80CB7B4C
/* 80CB7B44  38 1F F8 00 */	addi r0, r31, -2048
/* 80CB7B48  48 00 00 18 */	b lbl_80CB7B60
lbl_80CB7B4C:
/* 80CB7B4C  7F C0 16 70 */	srawi r0, r30, 2
/* 80CB7B50  7C 00 01 94 */	addze r0, r0
/* 80CB7B54  7C 1F 02 14 */	add r0, r31, r0
/* 80CB7B58  48 00 00 08 */	b lbl_80CB7B60
lbl_80CB7B5C:
/* 80CB7B5C  7F A0 EB 78 */	mr r0, r29
lbl_80CB7B60:
/* 80CB7B60  7C 03 07 34 */	extsh r3, r0
/* 80CB7B64  48 00 00 08 */	b lbl_80CB7B6C
lbl_80CB7B68:
/* 80CB7B68  38 60 00 00 */	li r3, 0
lbl_80CB7B6C:
/* 80CB7B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB7B70  4B 6A A6 B8 */	b _restgpr_29
/* 80CB7B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB7B78  7C 08 03 A6 */	mtlr r0
/* 80CB7B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB7B80  4E 80 00 20 */	blr 
