lbl_802A3C3C:
/* 802A3C3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802A3C40  7C 08 02 A6 */	mflr r0
/* 802A3C44  90 01 00 44 */	stw r0, 0x44(r1)
/* 802A3C48  39 61 00 40 */	addi r11, r1, 0x40
/* 802A3C4C  48 0B E5 81 */	bl _savegpr_25
/* 802A3C50  7C 79 1B 78 */	mr r25, r3
/* 802A3C54  7C 9A 23 78 */	mr r26, r4
/* 802A3C58  7C BB 2B 79 */	or. r27, r5, r5
/* 802A3C5C  7C DC 33 78 */	mr r28, r6
/* 802A3C60  41 82 00 14 */	beq lbl_802A3C74
/* 802A3C64  80 7B 00 00 */	lwz r3, 0(r27)
/* 802A3C68  28 03 00 00 */	cmplwi r3, 0
/* 802A3C6C  41 82 00 08 */	beq lbl_802A3C74
/* 802A3C70  4B FF E9 29 */	bl stop__8JAISoundFv
lbl_802A3C74:
/* 802A3C74  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A3C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3C7C  80 79 00 64 */	lwz r3, 0x64(r25)
/* 802A3C80  38 81 00 14 */	addi r4, r1, 0x14
/* 802A3C84  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3C88  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A3C8C  7D 89 03 A6 */	mtctr r12
/* 802A3C90  4E 80 04 21 */	bctrl 
/* 802A3C94  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A3C98  40 80 00 0C */	bge lbl_802A3CA4
/* 802A3C9C  38 60 00 00 */	li r3, 0
/* 802A3CA0  48 00 00 B8 */	b lbl_802A3D58
lbl_802A3CA4:
/* 802A3CA4  7F 23 CB 78 */	mr r3, r25
/* 802A3CA8  48 00 04 CD */	bl newStream___12JAIStreamMgrFv
/* 802A3CAC  7C 7D 1B 78 */	mr r29, r3
/* 802A3CB0  83 ED 85 DC */	lwz r31, __OSReport_disable-0x3C(r13)
/* 802A3CB4  39 00 FF FF */	li r8, -1
/* 802A3CB8  28 1F 00 00 */	cmplwi r31, 0
/* 802A3CBC  41 82 00 28 */	beq lbl_802A3CE4
/* 802A3CC0  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A3CC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A3CC8  7F E3 FB 78 */	mr r3, r31
/* 802A3CCC  38 81 00 10 */	addi r4, r1, 0x10
/* 802A3CD0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A3CD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A3CD8  7D 89 03 A6 */	mtctr r12
/* 802A3CDC  4E 80 04 21 */	bctrl 
/* 802A3CE0  7C 68 1B 78 */	mr r8, r3
lbl_802A3CE4:
/* 802A3CE4  28 1D 00 00 */	cmplwi r29, 0
/* 802A3CE8  40 82 00 0C */	bne lbl_802A3CF4
/* 802A3CEC  38 60 00 00 */	li r3, 0
/* 802A3CF0  48 00 00 68 */	b lbl_802A3D58
lbl_802A3CF4:
/* 802A3CF4  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A3CF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A3CFC  7F A3 EB 78 */	mr r3, r29
/* 802A3D00  38 81 00 0C */	addi r4, r1, 0xc
/* 802A3D04  7F C5 F3 78 */	mr r5, r30
/* 802A3D08  7F 86 E3 78 */	mr r6, r28
/* 802A3D0C  80 F9 00 54 */	lwz r7, 0x54(r25)
/* 802A3D10  4B FF F4 8D */	bl func_802A319C
/* 802A3D14  28 1F 00 00 */	cmplwi r31, 0
/* 802A3D18  41 82 00 28 */	beq lbl_802A3D40
/* 802A3D1C  80 1A 00 00 */	lwz r0, 0(r26)
/* 802A3D20  90 01 00 08 */	stw r0, 8(r1)
/* 802A3D24  7F E3 FB 78 */	mr r3, r31
/* 802A3D28  38 81 00 08 */	addi r4, r1, 8
/* 802A3D2C  7F A5 EB 78 */	mr r5, r29
/* 802A3D30  81 9F 00 00 */	lwz r12, 0(r31)
/* 802A3D34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A3D38  7D 89 03 A6 */	mtctr r12
/* 802A3D3C  4E 80 04 21 */	bctrl 
lbl_802A3D40:
/* 802A3D40  28 1B 00 00 */	cmplwi r27, 0
/* 802A3D44  41 82 00 10 */	beq lbl_802A3D54
/* 802A3D48  7F A3 EB 78 */	mr r3, r29
/* 802A3D4C  7F 64 DB 78 */	mr r4, r27
/* 802A3D50  4B FF E4 6D */	bl attachHandle__8JAISoundFP14JAISoundHandle
lbl_802A3D54:
/* 802A3D54  38 60 00 00 */	li r3, 0
lbl_802A3D58:
/* 802A3D58  39 61 00 40 */	addi r11, r1, 0x40
/* 802A3D5C  48 0B E4 BD */	bl _restgpr_25
/* 802A3D60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802A3D64  7C 08 03 A6 */	mtlr r0
/* 802A3D68  38 21 00 40 */	addi r1, r1, 0x40
/* 802A3D6C  4E 80 00 20 */	blr 
