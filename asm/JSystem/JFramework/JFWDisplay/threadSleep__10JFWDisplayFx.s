lbl_80272E10:
/* 80272E10  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80272E14  7C 08 02 A6 */	mflr r0
/* 80272E18  90 01 00 64 */	stw r0, 0x64(r1)
/* 80272E1C  39 61 00 60 */	addi r11, r1, 0x60
/* 80272E20  48 0E F3 B9 */	bl _savegpr_28
/* 80272E24  7C BD 2B 78 */	mr r29, r5
/* 80272E28  7C DC 33 78 */	mr r28, r6
/* 80272E2C  3B E1 00 34 */	addi r31, r1, 0x34
/* 80272E30  7F E3 FB 78 */	mr r3, r31
/* 80272E34  38 81 00 08 */	addi r4, r1, 8
/* 80272E38  48 06 8F C5 */	bl __ct__10JSUPtrLinkFPv
/* 80272E3C  38 61 00 08 */	addi r3, r1, 8
/* 80272E40  48 0C 7A B9 */	bl OSCreateAlarm
/* 80272E44  48 0C DE 41 */	bl OSGetCurrentThread
/* 80272E48  90 61 00 30 */	stw r3, 0x30(r1)
/* 80272E4C  48 0C A8 A9 */	bl OSDisableInterrupts
/* 80272E50  7C 7E 1B 78 */	mr r30, r3
/* 80272E54  3C 60 80 43 */	lis r3, sList__8JFWAlarm@ha /* 0x80430FE4@ha */
/* 80272E58  38 63 0F E4 */	addi r3, r3, sList__8JFWAlarm@l /* 0x80430FE4@l */
/* 80272E5C  7F E4 FB 78 */	mr r4, r31
/* 80272E60  48 06 90 ED */	bl append__10JSUPtrListFP10JSUPtrLink
/* 80272E64  38 61 00 08 */	addi r3, r1, 8
/* 80272E68  7F 86 E3 78 */	mr r6, r28
/* 80272E6C  7F A5 EB 78 */	mr r5, r29
/* 80272E70  3C 80 80 27 */	lis r4, JFWThreadAlarmHandler__FP7OSAlarmP9OSContext@ha /* 0x80272DD0@ha */
/* 80272E74  38 E4 2D D0 */	addi r7, r4, JFWThreadAlarmHandler__FP7OSAlarmP9OSContext@l /* 0x80272DD0@l */
/* 80272E78  48 0C 7C E1 */	bl OSSetAlarm
/* 80272E7C  80 61 00 30 */	lwz r3, 0x30(r1)
/* 80272E80  48 0C EB BD */	bl OSSuspendThread
/* 80272E84  7F C3 F3 78 */	mr r3, r30
/* 80272E88  48 0C A8 95 */	bl OSRestoreInterrupts
/* 80272E8C  28 1F 00 00 */	cmplwi r31, 0
/* 80272E90  41 82 00 10 */	beq lbl_80272EA0
/* 80272E94  7F E3 FB 78 */	mr r3, r31
/* 80272E98  38 80 00 00 */	li r4, 0
/* 80272E9C  48 06 8F 79 */	bl __dt__10JSUPtrLinkFv
lbl_80272EA0:
/* 80272EA0  39 61 00 60 */	addi r11, r1, 0x60
/* 80272EA4  48 0E F3 81 */	bl _restgpr_28
/* 80272EA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80272EAC  7C 08 03 A6 */	mtlr r0
/* 80272EB0  38 21 00 60 */	addi r1, r1, 0x60
/* 80272EB4  4E 80 00 20 */	blr 
