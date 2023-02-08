lbl_8029CA10:
/* 8029CA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029CA14  7C 08 02 A6 */	mflr r0
/* 8029CA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029CA1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029CA20  48 0C 57 B9 */	bl _savegpr_28
/* 8029CA24  7C 7E 1B 78 */	mr r30, r3
/* 8029CA28  7C 9C 23 78 */	mr r28, r4
/* 8029CA2C  7C BD 2B 78 */	mr r29, r5
/* 8029CA30  38 60 00 05 */	li r3, 5
/* 8029CA34  3C 80 80 3A */	lis r4, JASAiCtrl__stringBase0@ha /* 0x8039B2F0@ha */
/* 8029CA38  38 84 B2 F0 */	addi r4, r4, JASAiCtrl__stringBase0@l /* 0x8039B2F0@l */
/* 8029CA3C  38 84 00 25 */	addi r4, r4, 0x25
/* 8029CA40  4B FF 44 A5 */	bl start__8JASProbeFlPCc
/* 8029CA44  7F 83 E3 78 */	mr r3, r28
/* 8029CA48  7F AC EB 78 */	mr r12, r29
/* 8029CA4C  7D 89 03 A6 */	mtctr r12
/* 8029CA50  4E 80 04 21 */	bctrl 
/* 8029CA54  7C 7F 1B 79 */	or. r31, r3, r3
/* 8029CA58  41 82 00 50 */	beq lbl_8029CAA8
/* 8029CA5C  38 60 00 05 */	li r3, 5
/* 8029CA60  4B FF 44 C5 */	bl stop__8JASProbeFl
/* 8029CA64  7F 9D E3 78 */	mr r29, r28
/* 8029CA68  48 00 00 38 */	b lbl_8029CAA0
lbl_8029CA6C:
/* 8029CA6C  A8 7E 00 00 */	lha r3, 0(r30)
/* 8029CA70  A8 1F 00 00 */	lha r0, 0(r31)
/* 8029CA74  7C 63 02 14 */	add r3, r3, r0
/* 8029CA78  4B FF 2C 25 */	bl func_8028F69C
/* 8029CA7C  B0 7E 00 00 */	sth r3, 0(r30)
/* 8029CA80  A8 7E 00 02 */	lha r3, 2(r30)
/* 8029CA84  A8 1F 00 00 */	lha r0, 0(r31)
/* 8029CA88  7C 63 02 14 */	add r3, r3, r0
/* 8029CA8C  4B FF 2C 11 */	bl func_8028F69C
/* 8029CA90  B0 7E 00 02 */	sth r3, 2(r30)
/* 8029CA94  3B DE 00 04 */	addi r30, r30, 4
/* 8029CA98  3B FF 00 02 */	addi r31, r31, 2
/* 8029CA9C  3B BD FF FF */	addi r29, r29, -1
lbl_8029CAA0:
/* 8029CAA0  28 1D 00 00 */	cmplwi r29, 0
/* 8029CAA4  40 82 FF C8 */	bne lbl_8029CA6C
lbl_8029CAA8:
/* 8029CAA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8029CAAC  48 0C 57 79 */	bl _restgpr_28
/* 8029CAB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029CAB4  7C 08 03 A6 */	mtlr r0
/* 8029CAB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029CABC  4E 80 00 20 */	blr 
