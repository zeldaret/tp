lbl_80CE5DDC:
/* 80CE5DDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE5DE0  7C 08 02 A6 */	mflr r0
/* 80CE5DE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE5DE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE5DEC  4B 67 C3 F1 */	bl _savegpr_29
/* 80CE5DF0  7C 7D 1B 78 */	mr r29, r3
/* 80CE5DF4  7C 9E 23 78 */	mr r30, r4
/* 80CE5DF8  3B E0 00 00 */	li r31, 0
/* 80CE5DFC  80 84 00 00 */	lwz r4, 0(r4)
/* 80CE5E00  80 1E 00 04 */	lwz r0, 4(r30)
/* 80CE5E04  90 81 00 08 */	stw r4, 8(r1)
/* 80CE5E08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE5E0C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80CE5E10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE5E14  38 81 00 08 */	addi r4, r1, 8
/* 80CE5E18  4B FF FF 99 */	bl checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE5E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80CE5E20  41 82 00 0C */	beq lbl_80CE5E2C
/* 80CE5E24  38 60 00 00 */	li r3, 0
/* 80CE5E28  48 00 00 88 */	b lbl_80CE5EB0
lbl_80CE5E2C:
/* 80CE5E2C  38 00 00 02 */	li r0, 2
/* 80CE5E30  B0 1D 0B 08 */	sth r0, 0xb08(r29)
/* 80CE5E34  38 7D 0A F0 */	addi r3, r29, 0xaf0
/* 80CE5E38  4B 67 C1 E1 */	bl __ptmf_test
/* 80CE5E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80CE5E40  41 82 00 1C */	beq lbl_80CE5E5C
/* 80CE5E44  7F A3 EB 78 */	mr r3, r29
/* 80CE5E48  38 80 00 00 */	li r4, 0
/* 80CE5E4C  39 9D 0A F0 */	addi r12, r29, 0xaf0
/* 80CE5E50  4B 67 C2 35 */	bl __ptmf_scall
/* 80CE5E54  60 00 00 00 */	nop 
/* 80CE5E58  7C 7F 1B 78 */	mr r31, r3
lbl_80CE5E5C:
/* 80CE5E5C  38 00 00 00 */	li r0, 0
/* 80CE5E60  B0 1D 0B 08 */	sth r0, 0xb08(r29)
/* 80CE5E64  80 7E 00 00 */	lwz r3, 0(r30)
/* 80CE5E68  80 1E 00 04 */	lwz r0, 4(r30)
/* 80CE5E6C  90 7D 0A F0 */	stw r3, 0xaf0(r29)
/* 80CE5E70  90 1D 0A F4 */	stw r0, 0xaf4(r29)
/* 80CE5E74  80 1E 00 08 */	lwz r0, 8(r30)
/* 80CE5E78  90 1D 0A F8 */	stw r0, 0xaf8(r29)
/* 80CE5E7C  38 7D 0A F0 */	addi r3, r29, 0xaf0
/* 80CE5E80  4B 67 C1 99 */	bl __ptmf_test
/* 80CE5E84  2C 03 00 00 */	cmpwi r3, 0
/* 80CE5E88  41 82 00 1C */	beq lbl_80CE5EA4
/* 80CE5E8C  7F A3 EB 78 */	mr r3, r29
/* 80CE5E90  38 80 00 00 */	li r4, 0
/* 80CE5E94  39 9D 0A F0 */	addi r12, r29, 0xaf0
/* 80CE5E98  4B 67 C1 ED */	bl __ptmf_scall
/* 80CE5E9C  60 00 00 00 */	nop 
/* 80CE5EA0  7C 7F 1B 78 */	mr r31, r3
lbl_80CE5EA4:
/* 80CE5EA4  38 00 00 01 */	li r0, 1
/* 80CE5EA8  B0 1D 0B 08 */	sth r0, 0xb08(r29)
/* 80CE5EAC  7F E3 FB 78 */	mr r3, r31
lbl_80CE5EB0:
/* 80CE5EB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE5EB4  4B 67 C3 75 */	bl _restgpr_29
/* 80CE5EB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE5EBC  7C 08 03 A6 */	mtlr r0
/* 80CE5EC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE5EC4  4E 80 00 20 */	blr 
