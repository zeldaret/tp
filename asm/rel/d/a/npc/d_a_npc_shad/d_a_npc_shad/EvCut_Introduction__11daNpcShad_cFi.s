lbl_80ADC700:
/* 80ADC700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ADC704  7C 08 02 A6 */	mflr r0
/* 80ADC708  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADC70C  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADC710  4B 88 5A C9 */	bl _savegpr_28
/* 80ADC714  7C 7C 1B 78 */	mr r28, r3
/* 80ADC718  7C 9D 23 78 */	mr r29, r4
/* 80ADC71C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ADC720  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ADC724  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80ADC728  7F C3 F3 78 */	mr r3, r30
/* 80ADC72C  3C A0 80 AE */	lis r5, d_a_npc_shad__stringBase0@ha /* 0x80AE24C4@ha */
/* 80ADC730  38 A5 24 C4 */	addi r5, r5, d_a_npc_shad__stringBase0@l /* 0x80AE24C4@l */
/* 80ADC734  38 A5 01 4E */	addi r5, r5, 0x14e
/* 80ADC738  38 C0 00 03 */	li r6, 3
/* 80ADC73C  4B 56 B9 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADC740  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ADC744  40 82 00 0C */	bne lbl_80ADC750
/* 80ADC748  38 60 00 00 */	li r3, 0
/* 80ADC74C  48 00 00 9C */	b lbl_80ADC7E8
lbl_80ADC750:
/* 80ADC750  7F C3 F3 78 */	mr r3, r30
/* 80ADC754  7F A4 EB 78 */	mr r4, r29
/* 80ADC758  4B 56 B5 F5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80ADC75C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC760  41 82 00 84 */	beq lbl_80ADC7E4
/* 80ADC764  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ADC768  2C 00 00 01 */	cmpwi r0, 1
/* 80ADC76C  41 82 00 48 */	beq lbl_80ADC7B4
/* 80ADC770  40 80 00 10 */	bge lbl_80ADC780
/* 80ADC774  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC778  40 80 00 10 */	bge lbl_80ADC788
/* 80ADC77C  48 00 00 68 */	b lbl_80ADC7E4
lbl_80ADC780:
/* 80ADC780  2C 00 00 03 */	cmpwi r0, 3
/* 80ADC784  40 80 00 60 */	bge lbl_80ADC7E4
lbl_80ADC788:
/* 80ADC788  A8 1C 0E 18 */	lha r0, 0xe18(r28)
/* 80ADC78C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC790  40 82 00 10 */	bne lbl_80ADC7A0
/* 80ADC794  80 1C 0C A8 */	lwz r0, 0xca8(r28)
/* 80ADC798  28 00 00 00 */	cmplwi r0, 0
/* 80ADC79C  41 82 00 10 */	beq lbl_80ADC7AC
lbl_80ADC7A0:
/* 80ADC7A0  38 00 00 00 */	li r0, 0
/* 80ADC7A4  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80ADC7A8  90 1C 0C A8 */	stw r0, 0xca8(r28)
lbl_80ADC7AC:
/* 80ADC7AC  38 60 00 01 */	li r3, 1
/* 80ADC7B0  48 00 00 38 */	b lbl_80ADC7E8
lbl_80ADC7B4:
/* 80ADC7B4  A8 1C 0E 18 */	lha r0, 0xe18(r28)
/* 80ADC7B8  2C 00 00 02 */	cmpwi r0, 2
/* 80ADC7BC  40 82 00 10 */	bne lbl_80ADC7CC
/* 80ADC7C0  80 1C 0C A8 */	lwz r0, 0xca8(r28)
/* 80ADC7C4  28 00 00 00 */	cmplwi r0, 0
/* 80ADC7C8  41 82 00 14 */	beq lbl_80ADC7DC
lbl_80ADC7CC:
/* 80ADC7CC  38 00 00 02 */	li r0, 2
/* 80ADC7D0  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80ADC7D4  38 00 00 00 */	li r0, 0
/* 80ADC7D8  90 1C 0C A8 */	stw r0, 0xca8(r28)
lbl_80ADC7DC:
/* 80ADC7DC  38 60 00 01 */	li r3, 1
/* 80ADC7E0  48 00 00 08 */	b lbl_80ADC7E8
lbl_80ADC7E4:
/* 80ADC7E4  38 60 00 00 */	li r3, 0
lbl_80ADC7E8:
/* 80ADC7E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADC7EC  4B 88 5A 39 */	bl _restgpr_28
/* 80ADC7F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADC7F4  7C 08 03 A6 */	mtlr r0
/* 80ADC7F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80ADC7FC  4E 80 00 20 */	blr 
