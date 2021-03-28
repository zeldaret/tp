lbl_80014C54:
/* 80014C54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80014C58  7C 08 02 A6 */	mflr r0
/* 80014C5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80014C60  39 61 00 20 */	addi r11, r1, 0x20
/* 80014C64  48 34 D5 75 */	bl _savegpr_28
/* 80014C68  7C 7C 1B 79 */	or. r28, r3, r3
/* 80014C6C  7C 9D 23 78 */	mr r29, r4
/* 80014C70  7C BE 2B 78 */	mr r30, r5
/* 80014C74  41 82 00 CC */	beq lbl_80014D40
/* 80014C78  38 60 00 DC */	li r3, 0xdc
/* 80014C7C  48 2B 9F D1 */	bl __nw__FUl
/* 80014C80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80014C84  41 82 00 20 */	beq lbl_80014CA4
/* 80014C88  3C 60 80 3D */	lis r3, __vt__8J3DModel@ha
/* 80014C8C  38 03 ED 20 */	addi r0, r3, __vt__8J3DModel@l
/* 80014C90  90 1F 00 00 */	stw r0, 0(r31)
/* 80014C94  38 7F 00 88 */	addi r3, r31, 0x88
/* 80014C98  48 2F C3 41 */	bl init__15J3DVertexBufferFv
/* 80014C9C  7F E3 FB 78 */	mr r3, r31
/* 80014CA0  48 31 24 61 */	bl initialize__8J3DModelFv
lbl_80014CA4:
/* 80014CA4  28 1F 00 00 */	cmplwi r31, 0
/* 80014CA8  41 82 00 98 */	beq lbl_80014D40
/* 80014CAC  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80014CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80014CB4  80 03 00 48 */	lwz r0, 0x48(r3)
/* 80014CB8  28 00 00 00 */	cmplwi r0, 0
/* 80014CBC  41 82 00 30 */	beq lbl_80014CEC
/* 80014CC0  A0 1C 00 74 */	lhz r0, 0x74(r28)
/* 80014CC4  28 00 00 01 */	cmplwi r0, 1
/* 80014CC8  40 82 00 0C */	bne lbl_80014CD4
/* 80014CCC  3F A0 00 02 */	lis r29, 2
/* 80014CD0  48 00 00 1C */	b lbl_80014CEC
lbl_80014CD4:
/* 80014CD4  3C 1D FF FE */	addis r0, r29, 0xfffe
/* 80014CD8  28 00 00 00 */	cmplwi r0, 0
/* 80014CDC  40 82 00 0C */	bne lbl_80014CE8
/* 80014CE0  67 BD 00 04 */	oris r29, r29, 4
/* 80014CE4  48 00 00 08 */	b lbl_80014CEC
lbl_80014CE8:
/* 80014CE8  3F A0 00 08 */	lis r29, 8
lbl_80014CEC:
/* 80014CEC  7F E3 FB 78 */	mr r3, r31
/* 80014CF0  7F 84 E3 78 */	mr r4, r28
/* 80014CF4  7F A5 EB 78 */	mr r5, r29
/* 80014CF8  38 C0 00 01 */	li r6, 1
/* 80014CFC  48 31 24 89 */	bl entryModelData__8J3DModelFP12J3DModelDataUlUl
/* 80014D00  2C 03 00 00 */	cmpwi r3, 0
/* 80014D04  40 82 00 3C */	bne lbl_80014D40
/* 80014D08  3C 1D FF F8 */	addis r0, r29, 0xfff8
/* 80014D0C  28 00 00 00 */	cmplwi r0, 0
/* 80014D10  40 82 00 20 */	bne lbl_80014D30
/* 80014D14  7F E3 FB 78 */	mr r3, r31
/* 80014D18  7F C4 F3 78 */	mr r4, r30
/* 80014D1C  48 31 28 E1 */	bl newDifferedDisplayList__8J3DModelFUl
/* 80014D20  2C 03 00 00 */	cmpwi r3, 0
/* 80014D24  41 82 00 0C */	beq lbl_80014D30
/* 80014D28  38 60 00 00 */	li r3, 0
/* 80014D2C  48 00 00 18 */	b lbl_80014D44
lbl_80014D30:
/* 80014D30  7F E3 FB 78 */	mr r3, r31
/* 80014D34  48 31 29 49 */	bl lock__8J3DModelFv
/* 80014D38  7F E3 FB 78 */	mr r3, r31
/* 80014D3C  48 00 00 08 */	b lbl_80014D44
lbl_80014D40:
/* 80014D40  38 60 00 00 */	li r3, 0
lbl_80014D44:
/* 80014D44  39 61 00 20 */	addi r11, r1, 0x20
/* 80014D48  48 34 D4 DD */	bl _restgpr_28
/* 80014D4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80014D50  7C 08 03 A6 */	mtlr r0
/* 80014D54  38 21 00 20 */	addi r1, r1, 0x20
/* 80014D58  4E 80 00 20 */	blr 
