lbl_802860CC:
/* 802860CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802860D0  7C 08 02 A6 */	mflr r0
/* 802860D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802860D8  39 61 00 30 */	addi r11, r1, 0x30
/* 802860DC  48 0D C0 F1 */	bl _savegpr_25
/* 802860E0  7C 79 1B 78 */	mr r25, r3
/* 802860E4  7C 9A 23 78 */	mr r26, r4
/* 802860E8  7D 1B 43 78 */	mr r27, r8
/* 802860EC  2C 07 00 03 */	cmpwi r7, 3
/* 802860F0  41 82 00 4C */	beq lbl_8028613C
/* 802860F4  40 80 00 14 */	bge lbl_80286108
/* 802860F8  2C 07 00 01 */	cmpwi r7, 1
/* 802860FC  41 82 00 18 */	beq lbl_80286114
/* 80286100  40 80 00 28 */	bge lbl_80286128
/* 80286104  48 00 00 A4 */	b lbl_802861A8
lbl_80286108:
/* 80286108  2C 07 00 12 */	cmpwi r7, 0x12
/* 8028610C  41 82 00 44 */	beq lbl_80286150
/* 80286110  48 00 00 98 */	b lbl_802861A8
lbl_80286114:
/* 80286114  3B 80 00 00 */	li r28, 0
/* 80286118  3C 60 80 28 */	lis r3, adaptor_setVariableValue_VOID___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 8028611C  38 03 65 6C */	addi r0, r3, adaptor_setVariableValue_VOID___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 80286120  7C 1D 03 78 */	mr r29, r0
/* 80286124  48 00 00 44 */	b lbl_80286168
lbl_80286128:
/* 80286128  3B 80 00 04 */	li r28, 4
/* 8028612C  3C 60 80 28 */	lis r3, adaptor_setVariableValue_IMMEDIATE___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 80286130  38 03 65 84 */	addi r0, r3, adaptor_setVariableValue_IMMEDIATE___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 80286134  7C 1D 03 78 */	mr r29, r0
/* 80286138  48 00 00 30 */	b lbl_80286168
lbl_8028613C:
/* 8028613C  3B 80 00 04 */	li r28, 4
/* 80286140  3C 60 80 28 */	lis r3, adaptor_setVariableValue_TIME___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 80286144  38 03 65 B0 */	addi r0, r3, adaptor_setVariableValue_TIME___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 80286148  7C 1D 03 78 */	mr r29, r0
/* 8028614C  48 00 00 1C */	b lbl_80286168
lbl_80286150:
/* 80286150  3B 80 00 04 */	li r28, 4
/* 80286154  3C 60 80 28 */	lis r3, adaptor_setVariableValue_FVR_INDEX___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 80286158  38 03 66 48 */	addi r0, r3, adaptor_setVariableValue_FVR_INDEX___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 8028615C  7C 1D 03 78 */	mr r29, r0
/* 80286160  48 00 00 08 */	b lbl_80286168
/* 80286164  48 00 00 44 */	b lbl_802861A8
lbl_80286168:
/* 80286168  7C BF 2B 78 */	mr r31, r5
/* 8028616C  54 C0 10 3A */	slwi r0, r6, 2
/* 80286170  7F C5 02 14 */	add r30, r5, r0
/* 80286174  48 00 00 2C */	b lbl_802861A0
lbl_80286178:
/* 80286178  7F 23 CB 78 */	mr r3, r25
/* 8028617C  7F 44 D3 78 */	mr r4, r26
/* 80286180  80 BF 00 00 */	lwz r5, 0(r31)
/* 80286184  7F 66 DB 78 */	mr r6, r27
/* 80286188  7F 87 E3 78 */	mr r7, r28
/* 8028618C  7F AC EB 78 */	mr r12, r29
/* 80286190  7D 89 03 A6 */	mtctr r12
/* 80286194  3B FF 00 04 */	addi r31, r31, 4
/* 80286198  4E 80 04 21 */	bctrl 
/* 8028619C  7F 7B E2 14 */	add r27, r27, r28
lbl_802861A0:
/* 802861A0  7C 1F F0 40 */	cmplw r31, r30
/* 802861A4  40 82 FF D4 */	bne lbl_80286178
lbl_802861A8:
/* 802861A8  39 61 00 30 */	addi r11, r1, 0x30
/* 802861AC  48 0D C0 6D */	bl _restgpr_25
/* 802861B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802861B4  7C 08 03 A6 */	mtlr r0
/* 802861B8  38 21 00 30 */	addi r1, r1, 0x30
/* 802861BC  4E 80 00 20 */	blr 
