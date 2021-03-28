lbl_80230AC0:
/* 80230AC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80230AC4  7C 08 02 A6 */	mflr r0
/* 80230AC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80230ACC  39 61 00 20 */	addi r11, r1, 0x20
/* 80230AD0  48 13 17 0D */	bl _savegpr_29
/* 80230AD4  7C 7D 1B 78 */	mr r29, r3
/* 80230AD8  7C 9E 23 78 */	mr r30, r4
/* 80230ADC  7C BF 2B 78 */	mr r31, r5
/* 80230AE0  80 03 00 04 */	lwz r0, 4(r3)
/* 80230AE4  90 03 00 88 */	stw r0, 0x88(r3)
/* 80230AE8  80 03 00 08 */	lwz r0, 8(r3)
/* 80230AEC  90 03 00 54 */	stw r0, 0x54(r3)
/* 80230AF0  93 E3 00 58 */	stw r31, 0x58(r3)
/* 80230AF4  38 00 00 00 */	li r0, 0
/* 80230AF8  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80230AFC  3C 60 80 2B */	lis r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha
/* 80230B00  38 03 82 8C */	addi r0, r3, process_onCharacterEnd_normal___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l
/* 80230B04  90 1D 00 70 */	stw r0, 0x70(r29)
/* 80230B08  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80230B0C  7F E4 FB 78 */	mr r4, r31
/* 80230B10  81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 80230B14  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80230B18  7D 89 03 A6 */	mtctr r12
/* 80230B1C  4E 80 04 21 */	bctrl 
/* 80230B20  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80230B24  7F C4 F3 78 */	mr r4, r30
/* 80230B28  7F E5 FB 78 */	mr r5, r31
/* 80230B2C  81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 80230B30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80230B34  7D 89 03 A6 */	mtctr r12
/* 80230B38  4E 80 04 21 */	bctrl 
/* 80230B3C  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80230B40  7F C4 F3 78 */	mr r4, r30
/* 80230B44  7F E5 FB 78 */	mr r5, r31
/* 80230B48  81 9D 00 4C */	lwz r12, 0x4c(r29)
/* 80230B4C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80230B50  7D 89 03 A6 */	mtctr r12
/* 80230B54  4E 80 04 21 */	bctrl 
/* 80230B58  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80230B5C  38 80 00 00 */	li r4, 0
/* 80230B60  48 07 7F C1 */	bl process__Q28JMessage19TRenderingProcessorFPCc
/* 80230B64  39 61 00 20 */	addi r11, r1, 0x20
/* 80230B68  48 13 16 C1 */	bl _restgpr_29
/* 80230B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80230B70  7C 08 03 A6 */	mtlr r0
/* 80230B74  38 21 00 20 */	addi r1, r1, 0x20
/* 80230B78  4E 80 00 20 */	blr 
