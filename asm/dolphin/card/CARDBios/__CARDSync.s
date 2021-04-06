lbl_80353E20:
/* 80353E20  7C 08 02 A6 */	mflr r0
/* 80353E24  90 01 00 04 */	stw r0, 4(r1)
/* 80353E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80353E2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80353E30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80353E34  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80353E38  93 81 00 10 */	stw r28, 0x10(r1)
/* 80353E3C  3B 83 00 00 */	addi r28, r3, 0
/* 80353E40  1C 9C 01 10 */	mulli r4, r28, 0x110
/* 80353E44  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80353E48  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 80353E4C  7F E0 22 14 */	add r31, r0, r4
/* 80353E50  4B FE 98 A5 */	bl OSDisableInterrupts
/* 80353E54  7C 7D 1B 78 */	mr r29, r3
/* 80353E58  48 00 00 0C */	b lbl_80353E64
lbl_80353E5C:
/* 80353E5C  38 7F 00 8C */	addi r3, r31, 0x8c
/* 80353E60  4B FE DD 4D */	bl OSSleepThread
lbl_80353E64:
/* 80353E64  2C 1C 00 00 */	cmpwi r28, 0
/* 80353E68  41 80 00 0C */	blt lbl_80353E74
/* 80353E6C  2C 1C 00 02 */	cmpwi r28, 2
/* 80353E70  41 80 00 0C */	blt lbl_80353E7C
lbl_80353E74:
/* 80353E74  38 00 FF 80 */	li r0, -128
/* 80353E78  48 00 00 08 */	b lbl_80353E80
lbl_80353E7C:
/* 80353E7C  80 1F 00 04 */	lwz r0, 4(r31)
lbl_80353E80:
/* 80353E80  7C 1E 03 78 */	mr r30, r0
/* 80353E84  2C 1E FF FF */	cmpwi r30, -1
/* 80353E88  41 82 FF D4 */	beq lbl_80353E5C
/* 80353E8C  7F A3 EB 78 */	mr r3, r29
/* 80353E90  4B FE 98 8D */	bl OSRestoreInterrupts
/* 80353E94  7F C3 F3 78 */	mr r3, r30
/* 80353E98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80353E9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80353EA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80353EA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80353EA8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80353EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80353EB0  7C 08 03 A6 */	mtlr r0
/* 80353EB4  4E 80 00 20 */	blr 
