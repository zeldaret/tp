lbl_8029CAC0:
/* 8029CAC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029CAC4  7C 08 02 A6 */	mflr r0
/* 8029CAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029CACC  39 61 00 20 */	addi r11, r1, 0x20
/* 8029CAD0  48 0C 57 09 */	bl _savegpr_28
/* 8029CAD4  7C 7E 1B 78 */	mr r30, r3
/* 8029CAD8  7C 9C 23 78 */	mr r28, r4
/* 8029CADC  7C BD 2B 78 */	mr r29, r5
/* 8029CAE0  38 60 00 05 */	li r3, 5
/* 8029CAE4  3C 80 80 3A */	lis r4, JASAiCtrl__stringBase0@ha
/* 8029CAE8  38 84 B2 F0 */	addi r4, r4, JASAiCtrl__stringBase0@l
/* 8029CAEC  38 84 00 2E */	addi r4, r4, 0x2e
/* 8029CAF0  4B FF 43 F5 */	bl start__8JASProbeFlPCc
/* 8029CAF4  7F 83 E3 78 */	mr r3, r28
/* 8029CAF8  7F AC EB 78 */	mr r12, r29
/* 8029CAFC  7D 89 03 A6 */	mtctr r12
/* 8029CB00  4E 80 04 21 */	bctrl 
/* 8029CB04  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029CB08  41 82 00 50 */	beq lbl_8029CB58
/* 8029CB0C  38 60 00 05 */	li r3, 5
/* 8029CB10  4B FF 44 15 */	bl stop__8JASProbeFl
/* 8029CB14  7F 9D E3 78 */	mr r29, r28
/* 8029CB18  48 00 00 38 */	b lbl_8029CB50
lbl_8029CB1C:
/* 8029CB1C  A8 7E 00 00 */	lha r3, 0(r30)
/* 8029CB20  A8 1F 00 00 */	lha r0, 0(r31)
/* 8029CB24  7C 63 02 14 */	add r3, r3, r0
/* 8029CB28  4B FF 2B 75 */	bl func_8028F69C
/* 8029CB2C  B0 7E 00 00 */	sth r3, 0(r30)
/* 8029CB30  A8 7E 00 02 */	lha r3, 2(r30)
/* 8029CB34  A8 1F 00 00 */	lha r0, 0(r31)
/* 8029CB38  7C 60 18 50 */	subf r3, r0, r3
/* 8029CB3C  4B FF 2B 61 */	bl func_8028F69C
/* 8029CB40  B0 7E 00 02 */	sth r3, 2(r30)
/* 8029CB44  3B DE 00 04 */	addi r30, r30, 4
/* 8029CB48  3B FF 00 02 */	addi r31, r31, 2
/* 8029CB4C  3B BD FF FF */	addi r29, r29, -1
lbl_8029CB50:
/* 8029CB50  28 1D 00 00 */	cmplwi r29, 0
/* 8029CB54  40 82 FF C8 */	bne lbl_8029CB1C
lbl_8029CB58:
/* 8029CB58  39 61 00 20 */	addi r11, r1, 0x20
/* 8029CB5C  48 0C 56 C9 */	bl _restgpr_28
/* 8029CB60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029CB64  7C 08 03 A6 */	mtlr r0
/* 8029CB68  38 21 00 20 */	addi r1, r1, 0x20
/* 8029CB6C  4E 80 00 20 */	blr 
