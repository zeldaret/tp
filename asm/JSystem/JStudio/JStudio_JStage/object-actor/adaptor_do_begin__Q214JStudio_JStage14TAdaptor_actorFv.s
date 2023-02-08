lbl_8028A7B4:
/* 8028A7B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028A7B8  7C 08 02 A6 */	mflr r0
/* 8028A7BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028A7C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8028A7C4  48 0D 7A 11 */	bl _savegpr_27
/* 8028A7C8  7C 7E 1B 78 */	mr r30, r3
/* 8028A7CC  83 83 01 2C */	lwz r28, 0x12c(r3)
/* 8028A7D0  7F 83 E3 78 */	mr r3, r28
/* 8028A7D4  81 9C 00 00 */	lwz r12, 0(r28)
/* 8028A7D8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028A7DC  7D 89 03 A6 */	mtctr r12
/* 8028A7E0  4E 80 04 21 */	bctrl 
/* 8028A7E4  60 64 00 01 */	ori r4, r3, 1
/* 8028A7E8  7F 83 E3 78 */	mr r3, r28
/* 8028A7EC  81 9C 00 00 */	lwz r12, 0(r28)
/* 8028A7F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028A7F4  7D 89 03 A6 */	mtctr r12
/* 8028A7F8  4E 80 04 21 */	bctrl 
/* 8028A7FC  83 FE 01 2C */	lwz r31, 0x12c(r30)
/* 8028A800  7F C3 F3 78 */	mr r3, r30
/* 8028A804  80 9E 00 04 */	lwz r4, 4(r30)
/* 8028A808  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8028A80C  48 00 06 C1 */	bl getJSG_SRT___Q214JStudio_JStage14TAdaptor_actorFPCQ27JStudio8TControl
/* 8028A810  3C 60 80 43 */	lis r3, saoVVOutput___Q214JStudio_JStage14TAdaptor_actor@ha /* 0x804311A0@ha */
/* 8028A814  38 03 11 A0 */	addi r0, r3, saoVVOutput___Q214JStudio_JStage14TAdaptor_actor@l /* 0x804311A0@l */
/* 8028A818  7C 1B 03 78 */	mr r27, r0
/* 8028A81C  3C 60 80 28 */	lis r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha /* 0x80285EB8@ha */
/* 8028A820  3B A3 5E B8 */	addi r29, r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l /* 0x80285EB8@l */
/* 8028A824  3B 80 00 00 */	li r28, 0
/* 8028A828  48 00 00 34 */	b lbl_8028A85C
lbl_8028A82C:
/* 8028A82C  7F E3 FB 78 */	mr r3, r31
/* 8028A830  39 9B 00 14 */	addi r12, r27, 0x14
/* 8028A834  48 0D 78 51 */	bl __ptmf_scall
/* 8028A838  60 00 00 00 */	nop 
/* 8028A83C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028A840  80 1B 00 04 */	lwz r0, 4(r27)
/* 8028A844  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028A848  7C 63 02 14 */	add r3, r3, r0
/* 8028A84C  93 A3 00 08 */	stw r29, 8(r3)
/* 8028A850  93 83 00 04 */	stw r28, 4(r3)
/* 8028A854  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8028A858  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_8028A85C:
/* 8028A85C  80 1B 00 04 */	lwz r0, 4(r27)
/* 8028A860  2C 00 FF FF */	cmpwi r0, -1
/* 8028A864  40 82 FF C8 */	bne lbl_8028A82C
/* 8028A868  3C 60 80 43 */	lis r3, saoVVOutput_ANIMATION_FRAME___Q214JStudio_JStage14TAdaptor_actor@ha /* 0x80431204@ha */
/* 8028A86C  38 03 12 04 */	addi r0, r3, saoVVOutput_ANIMATION_FRAME___Q214JStudio_JStage14TAdaptor_actor@l /* 0x80431204@l */
/* 8028A870  7C 1B 03 78 */	mr r27, r0
/* 8028A874  3C 60 80 28 */	lis r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha /* 0x80285EB8@ha */
/* 8028A878  3B 83 5E B8 */	addi r28, r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l /* 0x80285EB8@l */
/* 8028A87C  3B A0 00 00 */	li r29, 0
/* 8028A880  48 00 00 34 */	b lbl_8028A8B4
lbl_8028A884:
/* 8028A884  7F E3 FB 78 */	mr r3, r31
/* 8028A888  39 9B 00 18 */	addi r12, r27, 0x18
/* 8028A88C  48 0D 77 F9 */	bl __ptmf_scall
/* 8028A890  60 00 00 00 */	nop 
/* 8028A894  80 7E 00 08 */	lwz r3, 8(r30)
/* 8028A898  80 1B 00 04 */	lwz r0, 4(r27)
/* 8028A89C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028A8A0  7C 63 02 14 */	add r3, r3, r0
/* 8028A8A4  93 83 00 08 */	stw r28, 8(r3)
/* 8028A8A8  93 A3 00 04 */	stw r29, 4(r3)
/* 8028A8AC  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8028A8B0  3B 7B 00 30 */	addi r27, r27, 0x30
lbl_8028A8B4:
/* 8028A8B4  80 1B 00 04 */	lwz r0, 4(r27)
/* 8028A8B8  2C 00 FF FF */	cmpwi r0, -1
/* 8028A8BC  40 82 FF C8 */	bne lbl_8028A884
/* 8028A8C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8028A8C4  48 0D 79 5D */	bl _restgpr_27
/* 8028A8C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028A8CC  7C 08 03 A6 */	mtlr r0
/* 8028A8D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8028A8D4  4E 80 00 20 */	blr 
