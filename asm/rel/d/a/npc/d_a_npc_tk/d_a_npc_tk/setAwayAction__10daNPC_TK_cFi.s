lbl_80B01E48:
/* 80B01E48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B01E4C  7C 08 02 A6 */	mflr r0
/* 80B01E50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B01E54  39 61 00 20 */	addi r11, r1, 0x20
/* 80B01E58  4B 86 03 85 */	bl _savegpr_29
/* 80B01E5C  7C 7D 1B 78 */	mr r29, r3
/* 80B01E60  7C 9E 23 78 */	mr r30, r4
/* 80B01E64  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B01E68  3B E3 C1 C4 */	addi r31, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B01E6C  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 80B01E70  2C 00 00 03 */	cmpwi r0, 3
/* 80B01E74  41 82 00 0C */	beq lbl_80B01E80
/* 80B01E78  2C 00 00 05 */	cmpwi r0, 5
/* 80B01E7C  40 82 00 60 */	bne lbl_80B01EDC
lbl_80B01E80:
/* 80B01E80  7F A3 EB 78 */	mr r3, r29
/* 80B01E84  38 80 00 07 */	li r4, 7
/* 80B01E88  38 A0 00 02 */	li r5, 2
/* 80B01E8C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B01E90  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80B01E94  4B FF F6 05 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B01E98  7F A3 EB 78 */	mr r3, r29
/* 80B01E9C  38 80 00 03 */	li r4, 3
/* 80B01EA0  4B FF F9 D9 */	bl setActionMode__10daNPC_TK_cFi
/* 80B01EA4  38 00 00 02 */	li r0, 2
/* 80B01EA8  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B01EAC  38 00 00 1E */	li r0, 0x1e
/* 80B01EB0  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B01EB4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80B01EB8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B01EBC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80B01EC0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B01EC4  93 DD 06 98 */	stw r30, 0x698(r29)
/* 80B01EC8  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80B01ECC  2C 00 00 00 */	cmpwi r0, 0
/* 80B01ED0  40 81 00 0C */	ble lbl_80B01EDC
/* 80B01ED4  38 00 00 00 */	li r0, 0
/* 80B01ED8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
lbl_80B01EDC:
/* 80B01EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B01EE0  4B 86 03 49 */	bl _restgpr_29
/* 80B01EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B01EE8  7C 08 03 A6 */	mtlr r0
/* 80B01EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B01EF0  4E 80 00 20 */	blr 
