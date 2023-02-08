lbl_801D7A08:
/* 801D7A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7A0C  7C 08 02 A6 */	mflr r0
/* 801D7A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7A14  39 61 00 20 */	addi r11, r1, 0x20
/* 801D7A18  48 18 A7 BD */	bl _savegpr_27
/* 801D7A1C  3C A0 80 43 */	lis r5, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D7A20  38 A5 FC 60 */	addi r5, r5, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D7A24  88 05 02 FC */	lbz r0, 0x2fc(r5)
/* 801D7A28  28 00 00 00 */	cmplwi r0, 0
/* 801D7A2C  41 82 00 0C */	beq lbl_801D7A38
/* 801D7A30  38 60 00 01 */	li r3, 1
/* 801D7A34  48 00 00 68 */	b lbl_801D7A9C
lbl_801D7A38:
/* 801D7A38  83 A3 00 70 */	lwz r29, 0x70(r3)
/* 801D7A3C  28 1D 00 00 */	cmplwi r29, 0
/* 801D7A40  41 82 00 58 */	beq lbl_801D7A98
/* 801D7A44  3B 9D 00 0C */	addi r28, r29, 0xc
/* 801D7A48  3B 60 00 00 */	li r27, 0
/* 801D7A4C  3B E0 00 00 */	li r31, 0
/* 801D7A50  3B C4 00 01 */	addi r30, r4, 1
/* 801D7A54  48 00 00 38 */	b lbl_801D7A8C
lbl_801D7A58:
/* 801D7A58  7C 9C FA 14 */	add r4, r28, r31
/* 801D7A5C  88 04 00 01 */	lbz r0, 1(r4)
/* 801D7A60  7C 1E 00 00 */	cmpw r30, r0
/* 801D7A64  40 82 00 20 */	bne lbl_801D7A84
/* 801D7A68  88 64 00 0E */	lbz r3, 0xe(r4)
/* 801D7A6C  88 84 00 0F */	lbz r4, 0xf(r4)
/* 801D7A70  4B E5 5C D1 */	bl dComIfGs_isStageSwitch__Fii
/* 801D7A74  2C 03 00 00 */	cmpwi r3, 0
/* 801D7A78  41 82 00 0C */	beq lbl_801D7A84
/* 801D7A7C  38 60 00 01 */	li r3, 1
/* 801D7A80  48 00 00 1C */	b lbl_801D7A9C
lbl_801D7A84:
/* 801D7A84  3B 7B 00 01 */	addi r27, r27, 1
/* 801D7A88  3B FF 00 1C */	addi r31, r31, 0x1c
lbl_801D7A8C:
/* 801D7A8C  88 1D 00 08 */	lbz r0, 8(r29)
/* 801D7A90  7C 1B 00 00 */	cmpw r27, r0
/* 801D7A94  41 80 FF C4 */	blt lbl_801D7A58
lbl_801D7A98:
/* 801D7A98  38 60 00 00 */	li r3, 0
lbl_801D7A9C:
/* 801D7A9C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D7AA0  48 18 A7 81 */	bl _restgpr_27
/* 801D7AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7AA8  7C 08 03 A6 */	mtlr r0
/* 801D7AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7AB0  4E 80 00 20 */	blr 
