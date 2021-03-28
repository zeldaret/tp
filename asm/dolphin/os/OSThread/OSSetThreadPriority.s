lbl_80341D9C:
/* 80341D9C  7C 08 02 A6 */	mflr r0
/* 80341DA0  90 01 00 04 */	stw r0, 4(r1)
/* 80341DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80341DA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80341DAC  7C 9F 23 79 */	or. r31, r4, r4
/* 80341DB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80341DB4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80341DB8  3B A3 00 00 */	addi r29, r3, 0
/* 80341DBC  41 80 00 0C */	blt lbl_80341DC8
/* 80341DC0  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 80341DC4  40 81 00 0C */	ble lbl_80341DD0
lbl_80341DC8:
/* 80341DC8  38 60 00 00 */	li r3, 0
/* 80341DCC  48 00 00 74 */	b lbl_80341E40
lbl_80341DD0:
/* 80341DD0  4B FF B9 25 */	bl OSDisableInterrupts
/* 80341DD4  80 1D 02 D4 */	lwz r0, 0x2d4(r29)
/* 80341DD8  3B C3 00 00 */	addi r30, r3, 0
/* 80341DDC  7C 00 F8 00 */	cmpw r0, r31
/* 80341DE0  41 82 00 54 */	beq lbl_80341E34
/* 80341DE4  93 FD 02 D4 */	stw r31, 0x2d4(r29)
/* 80341DE8  7F BF EB 78 */	mr r31, r29
lbl_80341DEC:
/* 80341DEC  80 1F 02 CC */	lwz r0, 0x2cc(r31)
/* 80341DF0  2C 00 00 00 */	cmpwi r0, 0
/* 80341DF4  41 81 00 2C */	bgt lbl_80341E20
/* 80341DF8  7F E3 FB 78 */	mr r3, r31
/* 80341DFC  4B FF EF B1 */	bl __OSGetEffectivePriority
/* 80341E00  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 80341E04  38 83 00 00 */	addi r4, r3, 0
/* 80341E08  7C 00 20 00 */	cmpw r0, r4
/* 80341E0C  41 82 00 14 */	beq lbl_80341E20
/* 80341E10  7F E3 FB 78 */	mr r3, r31
/* 80341E14  4B FF EF D5 */	bl SetEffectivePriority
/* 80341E18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80341E1C  40 82 FF D0 */	bne lbl_80341DEC
lbl_80341E20:
/* 80341E20  80 0D 91 44 */	lwz r0, RunQueueHint(r13)
/* 80341E24  2C 00 00 00 */	cmpwi r0, 0
/* 80341E28  41 82 00 0C */	beq lbl_80341E34
/* 80341E2C  38 60 00 00 */	li r3, 0
/* 80341E30  4B FF F1 C9 */	bl SelectThread
lbl_80341E34:
/* 80341E34  7F C3 F3 78 */	mr r3, r30
/* 80341E38  4B FF B8 E5 */	bl OSRestoreInterrupts
/* 80341E3C  38 60 00 01 */	li r3, 1
lbl_80341E40:
/* 80341E40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80341E44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80341E48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80341E4C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80341E50  38 21 00 20 */	addi r1, r1, 0x20
/* 80341E54  7C 08 03 A6 */	mtlr r0
/* 80341E58  4E 80 00 20 */	blr 
