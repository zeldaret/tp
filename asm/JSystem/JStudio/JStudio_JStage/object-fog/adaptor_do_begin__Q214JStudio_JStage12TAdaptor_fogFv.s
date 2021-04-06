lbl_8028C6CC:
/* 8028C6CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8028C6D0  7C 08 02 A6 */	mflr r0
/* 8028C6D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028C6D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8028C6DC  48 0D 5A F9 */	bl _savegpr_27
/* 8028C6E0  7C 7B 1B 78 */	mr r27, r3
/* 8028C6E4  83 C3 00 8C */	lwz r30, 0x8c(r3)
/* 8028C6E8  7F C3 F3 78 */	mr r3, r30
/* 8028C6EC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028C6F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028C6F4  7D 89 03 A6 */	mtctr r12
/* 8028C6F8  4E 80 04 21 */	bctrl 
/* 8028C6FC  60 64 00 01 */	ori r4, r3, 1
/* 8028C700  7F C3 F3 78 */	mr r3, r30
/* 8028C704  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028C708  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028C70C  7D 89 03 A6 */	mtctr r12
/* 8028C710  4E 80 04 21 */	bctrl 
/* 8028C714  83 BB 00 8C */	lwz r29, 0x8c(r27)
/* 8028C718  7F A3 EB 78 */	mr r3, r29
/* 8028C71C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8028C720  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8028C724  7D 89 03 A6 */	mtctr r12
/* 8028C728  4E 80 04 21 */	bctrl 
/* 8028C72C  90 61 00 08 */	stw r3, 8(r1)
/* 8028C730  7F 63 DB 78 */	mr r3, r27
/* 8028C734  3C 80 80 3A */	lis r4, sauVariableValue_4_COLOR_RGBA__Q27JStudio12TAdaptor_fog@ha /* 0x8039AACC@ha */
/* 8028C738  38 84 AA CC */	addi r4, r4, sauVariableValue_4_COLOR_RGBA__Q27JStudio12TAdaptor_fog@l /* 0x8039AACC@l */
/* 8028C73C  38 A1 00 08 */	addi r5, r1, 8
/* 8028C740  4B FF 9B 6D */	bl adaptor_setVariableValue_GXColor__Q27JStudio8TAdaptorFPCUlRC8_GXColor
/* 8028C744  3C 60 80 43 */	lis r3, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@ha /* 0x8043139C@ha */
/* 8028C748  38 03 13 9C */	addi r0, r3, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@l /* 0x8043139C@l */
/* 8028C74C  7C 1C 03 78 */	mr r28, r0
/* 8028C750  3C 60 80 28 */	lis r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha /* 0x80285EB8@ha */
/* 8028C754  3B C3 5E B8 */	addi r30, r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l /* 0x80285EB8@l */
/* 8028C758  3B E0 00 00 */	li r31, 0
/* 8028C75C  48 00 00 34 */	b lbl_8028C790
lbl_8028C760:
/* 8028C760  7F A3 EB 78 */	mr r3, r29
/* 8028C764  39 9C 00 14 */	addi r12, r28, 0x14
/* 8028C768  48 0D 59 1D */	bl __ptmf_scall
/* 8028C76C  60 00 00 00 */	nop 
/* 8028C770  80 7B 00 08 */	lwz r3, 8(r27)
/* 8028C774  80 1C 00 04 */	lwz r0, 4(r28)
/* 8028C778  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028C77C  7C 63 02 14 */	add r3, r3, r0
/* 8028C780  93 C3 00 08 */	stw r30, 8(r3)
/* 8028C784  93 E3 00 04 */	stw r31, 4(r3)
/* 8028C788  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8028C78C  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_8028C790:
/* 8028C790  80 1C 00 04 */	lwz r0, 4(r28)
/* 8028C794  2C 00 FF FF */	cmpwi r0, -1
/* 8028C798  40 82 FF C8 */	bne lbl_8028C760
/* 8028C79C  39 61 00 30 */	addi r11, r1, 0x30
/* 8028C7A0  48 0D 5A 81 */	bl _restgpr_27
/* 8028C7A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8028C7A8  7C 08 03 A6 */	mtlr r0
/* 8028C7AC  38 21 00 30 */	addi r1, r1, 0x30
/* 8028C7B0  4E 80 00 20 */	blr 
