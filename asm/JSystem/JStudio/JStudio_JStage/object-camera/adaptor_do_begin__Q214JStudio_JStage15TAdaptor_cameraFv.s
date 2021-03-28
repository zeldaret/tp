lbl_8028BA1C:
/* 8028BA1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028BA20  7C 08 02 A6 */	mflr r0
/* 8028BA24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028BA28  39 61 00 20 */	addi r11, r1, 0x20
/* 8028BA2C  48 0D 67 A9 */	bl _savegpr_27
/* 8028BA30  7C 7B 1B 78 */	mr r27, r3
/* 8028BA34  83 C3 01 04 */	lwz r30, 0x104(r3)
/* 8028BA38  7F C3 F3 78 */	mr r3, r30
/* 8028BA3C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028BA40  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028BA44  7D 89 03 A6 */	mtctr r12
/* 8028BA48  4E 80 04 21 */	bctrl 
/* 8028BA4C  60 64 00 01 */	ori r4, r3, 1
/* 8028BA50  7F C3 F3 78 */	mr r3, r30
/* 8028BA54  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028BA58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028BA5C  7D 89 03 A6 */	mtctr r12
/* 8028BA60  4E 80 04 21 */	bctrl 
/* 8028BA64  83 BB 01 04 */	lwz r29, 0x104(r27)
/* 8028BA68  80 7B 00 04 */	lwz r3, 4(r27)
/* 8028BA6C  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 8028BA70  7F 63 DB 78 */	mr r3, r27
/* 8028BA74  7F C4 F3 78 */	mr r4, r30
/* 8028BA78  48 00 04 41 */	bl getJSG_position___Q214JStudio_JStage15TAdaptor_cameraFPCQ27JStudio8TControl
/* 8028BA7C  7F 63 DB 78 */	mr r3, r27
/* 8028BA80  7F C4 F3 78 */	mr r4, r30
/* 8028BA84  48 00 06 19 */	bl getJSG_targetPosition___Q214JStudio_JStage15TAdaptor_cameraFPCQ27JStudio8TControl
/* 8028BA88  3C 60 80 43 */	lis r3, saoVVOutput___Q214JStudio_JStage15TAdaptor_camera@ha
/* 8028BA8C  38 03 12 D4 */	addi r0, r3, saoVVOutput___Q214JStudio_JStage15TAdaptor_camera@l
/* 8028BA90  7C 1C 03 78 */	mr r28, r0
/* 8028BA94  3C 60 80 28 */	lis r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha
/* 8028BA98  3B C3 5E B8 */	addi r30, r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l
/* 8028BA9C  3B E0 00 00 */	li r31, 0
/* 8028BAA0  48 00 00 34 */	b lbl_8028BAD4
lbl_8028BAA4:
/* 8028BAA4  7F A3 EB 78 */	mr r3, r29
/* 8028BAA8  39 9C 00 14 */	addi r12, r28, 0x14
/* 8028BAAC  48 0D 65 D9 */	bl __ptmf_scall
/* 8028BAB0  60 00 00 00 */	nop 
/* 8028BAB4  80 7B 00 08 */	lwz r3, 8(r27)
/* 8028BAB8  80 1C 00 04 */	lwz r0, 4(r28)
/* 8028BABC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028BAC0  7C 63 02 14 */	add r3, r3, r0
/* 8028BAC4  93 C3 00 08 */	stw r30, 8(r3)
/* 8028BAC8  93 E3 00 04 */	stw r31, 4(r3)
/* 8028BACC  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8028BAD0  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_8028BAD4:
/* 8028BAD4  80 1C 00 04 */	lwz r0, 4(r28)
/* 8028BAD8  2C 00 FF FF */	cmpwi r0, -1
/* 8028BADC  40 82 FF C8 */	bne lbl_8028BAA4
/* 8028BAE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8028BAE4  48 0D 67 3D */	bl _restgpr_27
/* 8028BAE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028BAEC  7C 08 03 A6 */	mtlr r0
/* 8028BAF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8028BAF4  4E 80 00 20 */	blr 
