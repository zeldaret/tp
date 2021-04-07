lbl_80348E44:
/* 80348E44  7C 08 02 A6 */	mflr r0
/* 80348E48  90 01 00 04 */	stw r0, 4(r1)
/* 80348E4C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80348E50  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 80348E54  7C DD 33 79 */	or. r29, r6, r6
/* 80348E58  3B E3 00 00 */	addi r31, r3, 0
/* 80348E5C  3B 64 00 00 */	addi r27, r4, 0
/* 80348E60  3B 85 00 00 */	addi r28, r5, 0
/* 80348E64  3B C7 00 00 */	addi r30, r7, 0
/* 80348E68  41 80 00 10 */	blt lbl_80348E78
/* 80348E6C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80348E70  7C 1D 00 40 */	cmplw r29, r0
/* 80348E74  40 81 00 1C */	ble lbl_80348E90
lbl_80348E78:
/* 80348E78  3C 60 80 3D */	lis r3, lit_265@ha /* 0x803D14B4@ha */
/* 80348E7C  4C C6 31 82 */	crclr 6
/* 80348E80  38 A3 14 B4 */	addi r5, r3, lit_265@l /* 0x803D14B4@l */
/* 80348E84  38 6D 84 60 */	la r3, lit_118(r13) /* 804509E0-_SDA_BASE_ */
/* 80348E88  38 80 03 34 */	li r4, 0x334
/* 80348E8C  4B CB DF F1 */	bl OSPanic
lbl_80348E90:
/* 80348E90  7C 9D E2 15 */	add. r4, r29, r28
/* 80348E94  41 80 00 14 */	blt lbl_80348EA8
/* 80348E98  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80348E9C  38 03 00 20 */	addi r0, r3, 0x20
/* 80348EA0  7C 04 00 40 */	cmplw r4, r0
/* 80348EA4  41 80 00 1C */	blt lbl_80348EC0
lbl_80348EA8:
/* 80348EA8  3C 60 80 3D */	lis r3, lit_265@ha /* 0x803D14B4@ha */
/* 80348EAC  4C C6 31 82 */	crclr 6
/* 80348EB0  38 A3 14 B4 */	addi r5, r3, lit_265@l /* 0x803D14B4@l */
/* 80348EB4  38 6D 84 60 */	la r3, lit_118(r13) /* 804509E0-_SDA_BASE_ */
/* 80348EB8  38 80 03 3A */	li r4, 0x33a
/* 80348EBC  4B CB DF C1 */	bl OSPanic
lbl_80348EC0:
/* 80348EC0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80348EC4  3C 80 80 35 */	lis r4, cbForReadSync@ha /* 0x80348F5C@ha */
/* 80348EC8  38 E4 8F 5C */	addi r7, r4, cbForReadSync@l /* 0x80348F5C@l */
/* 80348ECC  38 7F 00 00 */	addi r3, r31, 0
/* 80348ED0  38 9B 00 00 */	addi r4, r27, 0
/* 80348ED4  38 BC 00 00 */	addi r5, r28, 0
/* 80348ED8  39 1E 00 00 */	addi r8, r30, 0
/* 80348EDC  7C C0 EA 14 */	add r6, r0, r29
/* 80348EE0  48 00 1E 4D */	bl DVDReadAbsAsyncPrio
/* 80348EE4  2C 03 00 00 */	cmpwi r3, 0
/* 80348EE8  40 82 00 0C */	bne lbl_80348EF4
/* 80348EEC  38 60 FF FF */	li r3, -1
/* 80348EF0  48 00 00 58 */	b lbl_80348F48
lbl_80348EF4:
/* 80348EF4  4B FF 48 01 */	bl OSDisableInterrupts
/* 80348EF8  7C 7E 1B 78 */	mr r30, r3
lbl_80348EFC:
/* 80348EFC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80348F00  2C 00 00 00 */	cmpwi r0, 0
/* 80348F04  40 82 00 0C */	bne lbl_80348F10
/* 80348F08  83 FF 00 20 */	lwz r31, 0x20(r31)
/* 80348F0C  48 00 00 30 */	b lbl_80348F3C
lbl_80348F10:
/* 80348F10  2C 00 FF FF */	cmpwi r0, -1
/* 80348F14  40 82 00 0C */	bne lbl_80348F20
/* 80348F18  3B E0 FF FF */	li r31, -1
/* 80348F1C  48 00 00 20 */	b lbl_80348F3C
lbl_80348F20:
/* 80348F20  2C 00 00 0A */	cmpwi r0, 0xa
/* 80348F24  40 82 00 0C */	bne lbl_80348F30
/* 80348F28  3B E0 FF FD */	li r31, -3
/* 80348F2C  48 00 00 10 */	b lbl_80348F3C
lbl_80348F30:
/* 80348F30  38 6D 91 F0 */	la r3, __DVDThreadQueue(r13) /* 80451770-_SDA_BASE_ */
/* 80348F34  4B FF 8C 79 */	bl OSSleepThread
/* 80348F38  4B FF FF C4 */	b lbl_80348EFC
lbl_80348F3C:
/* 80348F3C  7F C3 F3 78 */	mr r3, r30
/* 80348F40  4B FF 47 DD */	bl OSRestoreInterrupts
/* 80348F44  7F E3 FB 78 */	mr r3, r31
lbl_80348F48:
/* 80348F48  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 80348F4C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80348F50  38 21 00 38 */	addi r1, r1, 0x38
/* 80348F54  7C 08 03 A6 */	mtlr r0
/* 80348F58  4E 80 00 20 */	blr 
