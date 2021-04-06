lbl_801C6AC8:
/* 801C6AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C6ACC  7C 08 02 A6 */	mflr r0
/* 801C6AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C6AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 801C6AD8  48 19 B6 FD */	bl _savegpr_27
/* 801C6ADC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801C6AE0  7C 9F 23 78 */	mr r31, r4
/* 801C6AE4  41 82 02 64 */	beq lbl_801C6D48
/* 801C6AE8  3C 60 80 3C */	lis r3, __vt__12dMenu_Fmap_c@ha /* 0x803BD664@ha */
/* 801C6AEC  38 03 D6 64 */	addi r0, r3, __vt__12dMenu_Fmap_c@l /* 0x803BD664@l */
/* 801C6AF0  90 1E 00 00 */	stw r0, 0(r30)
/* 801C6AF4  80 7E 00 04 */	lwz r3, 4(r30)
/* 801C6AF8  48 10 7C 8D */	bl getTotalFreeSize__7JKRHeapFv
/* 801C6AFC  80 9E 00 8C */	lwz r4, 0x8c(r30)
/* 801C6B00  28 04 00 00 */	cmplwi r4, 0
/* 801C6B04  41 82 00 14 */	beq lbl_801C6B18
/* 801C6B08  80 7E 00 04 */	lwz r3, 4(r30)
/* 801C6B0C  48 10 7A 3D */	bl free__7JKRHeapFPv
/* 801C6B10  38 00 00 00 */	li r0, 0
/* 801C6B14  90 1E 00 8C */	stw r0, 0x8c(r30)
lbl_801C6B18:
/* 801C6B18  80 9E 00 90 */	lwz r4, 0x90(r30)
/* 801C6B1C  28 04 00 00 */	cmplwi r4, 0
/* 801C6B20  41 82 00 14 */	beq lbl_801C6B34
/* 801C6B24  80 7E 00 04 */	lwz r3, 4(r30)
/* 801C6B28  48 10 7A 21 */	bl free__7JKRHeapFPv
/* 801C6B2C  38 00 00 00 */	li r0, 0
/* 801C6B30  90 1E 00 90 */	stw r0, 0x90(r30)
lbl_801C6B34:
/* 801C6B34  3B 60 00 00 */	li r27, 0
/* 801C6B38  3B A0 00 00 */	li r29, 0
lbl_801C6B3C:
/* 801C6B3C  2C 1B 00 07 */	cmpwi r27, 7
/* 801C6B40  40 82 00 34 */	bne lbl_801C6B74
/* 801C6B44  3B 9D 00 94 */	addi r28, r29, 0x94
/* 801C6B48  7C 9E E0 2E */	lwzx r4, r30, r28
/* 801C6B4C  28 04 00 00 */	cmplwi r4, 0
/* 801C6B50  41 82 00 18 */	beq lbl_801C6B68
/* 801C6B54  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 801C6B58  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6B5C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801C6B60  7D 89 03 A6 */	mtctr r12
/* 801C6B64  4E 80 04 21 */	bctrl 
lbl_801C6B68:
/* 801C6B68  38 00 00 00 */	li r0, 0
/* 801C6B6C  7C 1E E1 2E */	stwx r0, r30, r28
/* 801C6B70  48 00 00 34 */	b lbl_801C6BA4
lbl_801C6B74:
/* 801C6B74  3B 9D 00 94 */	addi r28, r29, 0x94
/* 801C6B78  7C 9E E0 2E */	lwzx r4, r30, r28
/* 801C6B7C  28 04 00 00 */	cmplwi r4, 0
/* 801C6B80  41 82 00 24 */	beq lbl_801C6BA4
/* 801C6B84  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801C6B88  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6B8C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801C6B90  7D 89 03 A6 */	mtctr r12
/* 801C6B94  4E 80 04 21 */	bctrl 
/* 801C6B98  38 00 00 00 */	li r0, 0
/* 801C6B9C  7C 1E E1 2E */	stwx r0, r30, r28
/* 801C6BA0  7C 1E E1 2E */	stwx r0, r30, r28
lbl_801C6BA4:
/* 801C6BA4  3B 7B 00 01 */	addi r27, r27, 1
/* 801C6BA8  2C 1B 00 08 */	cmpwi r27, 8
/* 801C6BAC  3B BD 00 04 */	addi r29, r29, 4
/* 801C6BB0  41 80 FF 8C */	blt lbl_801C6B3C
/* 801C6BB4  7F C3 F3 78 */	mr r3, r30
/* 801C6BB8  48 00 5A 65 */	bl removeAreaData__12dMenu_Fmap_cFv
/* 801C6BBC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C6BC0  28 03 00 00 */	cmplwi r3, 0
/* 801C6BC4  41 82 00 24 */	beq lbl_801C6BE8
/* 801C6BC8  41 82 00 18 */	beq lbl_801C6BE0
/* 801C6BCC  38 80 00 01 */	li r4, 1
/* 801C6BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6BD4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C6BD8  7D 89 03 A6 */	mtctr r12
/* 801C6BDC  4E 80 04 21 */	bctrl 
lbl_801C6BE0:
/* 801C6BE0  38 00 00 00 */	li r0, 0
/* 801C6BE4  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_801C6BE8:
/* 801C6BE8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C6BEC  28 03 00 00 */	cmplwi r3, 0
/* 801C6BF0  41 82 00 24 */	beq lbl_801C6C14
/* 801C6BF4  41 82 00 18 */	beq lbl_801C6C0C
/* 801C6BF8  38 80 00 01 */	li r4, 1
/* 801C6BFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6C00  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6C04  7D 89 03 A6 */	mtctr r12
/* 801C6C08  4E 80 04 21 */	bctrl 
lbl_801C6C0C:
/* 801C6C0C  38 00 00 00 */	li r0, 0
/* 801C6C10  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_801C6C14:
/* 801C6C14  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 801C6C18  28 03 00 00 */	cmplwi r3, 0
/* 801C6C1C  41 82 00 30 */	beq lbl_801C6C4C
/* 801C6C20  48 00 82 1D */	bl _delete__15dMenu_FmapMap_cFv
/* 801C6C24  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 801C6C28  28 03 00 00 */	cmplwi r3, 0
/* 801C6C2C  41 82 00 18 */	beq lbl_801C6C44
/* 801C6C30  38 80 00 01 */	li r4, 1
/* 801C6C34  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6C38  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6C3C  7D 89 03 A6 */	mtctr r12
/* 801C6C40  4E 80 04 21 */	bctrl 
lbl_801C6C44:
/* 801C6C44  38 00 00 00 */	li r0, 0
/* 801C6C48  90 1E 00 B8 */	stw r0, 0xb8(r30)
lbl_801C6C4C:
/* 801C6C4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C6C50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C6C54  80 63 5C BC */	lwz r3, 0x5cbc(r3)
/* 801C6C58  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6C5C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C6C60  7D 89 03 A6 */	mtctr r12
/* 801C6C64  4E 80 04 21 */	bctrl 
/* 801C6C68  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801C6C6C  28 03 00 00 */	cmplwi r3, 0
/* 801C6C70  41 82 00 14 */	beq lbl_801C6C84
/* 801C6C74  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6C78  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C6C7C  7D 89 03 A6 */	mtctr r12
/* 801C6C80  4E 80 04 21 */	bctrl 
lbl_801C6C84:
/* 801C6C84  38 00 00 00 */	li r0, 0
/* 801C6C88  90 0D 8B 2C */	stw r0, MyClass__12dMenu_Fmap_c(r13)
/* 801C6C8C  80 1E 00 08 */	lwz r0, 8(r30)
/* 801C6C90  28 00 00 00 */	cmplwi r0, 0
/* 801C6C94  41 82 00 2C */	beq lbl_801C6CC0
/* 801C6C98  48 07 0E BD */	bl getTalkHeap__12dMsgObject_cFv
/* 801C6C9C  80 1E 00 08 */	lwz r0, 8(r30)
/* 801C6CA0  7C 03 00 40 */	cmplw r3, r0
/* 801C6CA4  40 82 00 0C */	bne lbl_801C6CB0
/* 801C6CA8  38 60 00 00 */	li r3, 0
/* 801C6CAC  48 07 0E 35 */	bl setTalkHeap__12dMsgObject_cFPv
lbl_801C6CB0:
/* 801C6CB0  80 7E 00 08 */	lwz r3, 8(r30)
/* 801C6CB4  4B E4 84 F9 */	bl mDoExt_destroyExpHeap__FP10JKRExpHeap
/* 801C6CB8  38 00 00 00 */	li r0, 0
/* 801C6CBC  90 1E 00 08 */	stw r0, 8(r30)
lbl_801C6CC0:
/* 801C6CC0  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801C6CC4  28 03 00 00 */	cmplwi r3, 0
/* 801C6CC8  41 82 00 40 */	beq lbl_801C6D08
/* 801C6CCC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C6CD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6CD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6CD8  7D 89 03 A6 */	mtctr r12
/* 801C6CDC  4E 80 04 21 */	bctrl 
/* 801C6CE0  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801C6CE4  28 03 00 00 */	cmplwi r3, 0
/* 801C6CE8  41 82 00 18 */	beq lbl_801C6D00
/* 801C6CEC  38 80 00 01 */	li r4, 1
/* 801C6CF0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801C6CF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C6CF8  7D 89 03 A6 */	mtctr r12
/* 801C6CFC  4E 80 04 21 */	bctrl 
lbl_801C6D00:
/* 801C6D00  38 00 00 00 */	li r0, 0
/* 801C6D04  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_801C6D08:
/* 801C6D08  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 801C6D0C  28 03 00 00 */	cmplwi r3, 0
/* 801C6D10  41 82 00 1C */	beq lbl_801C6D2C
/* 801C6D14  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6D18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6D1C  7D 89 03 A6 */	mtctr r12
/* 801C6D20  4E 80 04 21 */	bctrl 
/* 801C6D24  38 00 00 00 */	li r0, 0
/* 801C6D28  90 1E 00 68 */	stw r0, 0x68(r30)
lbl_801C6D2C:
/* 801C6D2C  38 7E 00 C4 */	addi r3, r30, 0xc4
/* 801C6D30  38 80 FF FF */	li r4, -1
/* 801C6D34  48 08 32 15 */	bl __dt__10dMsgFlow_cFv
/* 801C6D38  7F E0 07 35 */	extsh. r0, r31
/* 801C6D3C  40 81 00 0C */	ble lbl_801C6D48
/* 801C6D40  7F C3 F3 78 */	mr r3, r30
/* 801C6D44  48 10 7F F9 */	bl __dl__FPv
lbl_801C6D48:
/* 801C6D48  7F C3 F3 78 */	mr r3, r30
/* 801C6D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 801C6D50  48 19 B4 D1 */	bl _restgpr_27
/* 801C6D54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C6D58  7C 08 03 A6 */	mtlr r0
/* 801C6D5C  38 21 00 20 */	addi r1, r1, 0x20
/* 801C6D60  4E 80 00 20 */	blr 
