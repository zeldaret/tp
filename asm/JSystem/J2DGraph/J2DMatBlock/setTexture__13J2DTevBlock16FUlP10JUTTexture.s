lbl_802F0F18:
/* 802F0F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0F1C  7C 08 02 A6 */	mflr r0
/* 802F0F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0F24  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0F28  48 07 12 AD */	bl _savegpr_27
/* 802F0F2C  7C 7B 1B 78 */	mr r27, r3
/* 802F0F30  7C 9C 23 78 */	mr r28, r4
/* 802F0F34  7C BD 2B 78 */	mr r29, r5
/* 802F0F38  28 1C 00 08 */	cmplwi r28, 8
/* 802F0F3C  41 80 00 0C */	blt lbl_802F0F48
/* 802F0F40  38 60 00 00 */	li r3, 0
/* 802F0F44  48 00 00 6C */	b lbl_802F0FB0
lbl_802F0F48:
/* 802F0F48  88 7B 01 B0 */	lbz r3, 0x1b0(r27)
/* 802F0F4C  38 00 00 01 */	li r0, 1
/* 802F0F50  7C 1E E0 30 */	slw r30, r0, r28
/* 802F0F54  7C 60 F0 39 */	and. r0, r3, r30
/* 802F0F58  41 82 00 18 */	beq lbl_802F0F70
/* 802F0F5C  57 80 10 3A */	slwi r0, r28, 2
/* 802F0F60  7C 7B 02 14 */	add r3, r27, r0
/* 802F0F64  80 63 01 6C */	lwz r3, 0x16c(r3)
/* 802F0F68  38 80 00 01 */	li r4, 1
/* 802F0F6C  4B FE D2 C9 */	bl __dt__10JUTTextureFv
lbl_802F0F70:
/* 802F0F70  57 80 10 3A */	slwi r0, r28, 2
/* 802F0F74  7F FB 02 14 */	add r31, r27, r0
/* 802F0F78  93 BF 01 6C */	stw r29, 0x16c(r31)
/* 802F0F7C  88 1B 01 B0 */	lbz r0, 0x1b0(r27)
/* 802F0F80  7C 00 F0 78 */	andc r0, r0, r30
/* 802F0F84  98 1B 01 B0 */	stb r0, 0x1b0(r27)
/* 802F0F88  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 802F0F8C  4B FD DD B1 */	bl __dl__FPv
/* 802F0F90  38 00 00 00 */	li r0, 0
/* 802F0F94  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 802F0F98  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F0F9C  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F0FA0  57 80 08 3C */	slwi r0, r28, 1
/* 802F0FA4  7C 7B 02 14 */	add r3, r27, r0
/* 802F0FA8  B0 83 00 04 */	sth r4, 4(r3)
/* 802F0FAC  38 60 00 01 */	li r3, 1
lbl_802F0FB0:
/* 802F0FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 802F0FB4  48 07 12 6D */	bl _restgpr_27
/* 802F0FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F0FBC  7C 08 03 A6 */	mtlr r0
/* 802F0FC0  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0FC4  4E 80 00 20 */	blr 
