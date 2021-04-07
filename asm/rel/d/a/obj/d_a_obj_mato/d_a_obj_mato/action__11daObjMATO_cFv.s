lbl_80C91D48:
/* 80C91D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C91D4C  7C 08 02 A6 */	mflr r0
/* 80C91D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C91D54  39 61 00 20 */	addi r11, r1, 0x20
/* 80C91D58  4B 6D 04 81 */	bl _savegpr_28
/* 80C91D5C  7C 7C 1B 78 */	mr r28, r3
/* 80C91D60  3B A0 00 00 */	li r29, 0
/* 80C91D64  3B E0 00 00 */	li r31, 0
/* 80C91D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C91D6C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C91D70  48 00 00 4C */	b lbl_80C91DBC
lbl_80C91D74:
/* 80C91D74  88 1C 39 F6 */	lbz r0, 0x39f6(r28)
/* 80C91D78  28 00 00 00 */	cmplwi r0, 0
/* 80C91D7C  41 82 00 20 */	beq lbl_80C91D9C
/* 80C91D80  7C 9C FA 14 */	add r4, r28, r31
/* 80C91D84  88 04 07 2F */	lbz r0, 0x72f(r4)
/* 80C91D88  28 00 00 00 */	cmplwi r0, 0
/* 80C91D8C  40 82 00 10 */	bne lbl_80C91D9C
/* 80C91D90  80 7E 5D 74 */	lwz r3, 0x5d74(r30)
/* 80C91D94  A8 03 02 32 */	lha r0, 0x232(r3)
/* 80C91D98  B0 04 07 0A */	sth r0, 0x70a(r4)
lbl_80C91D9C:
/* 80C91D9C  7F 83 E3 78 */	mr r3, r28
/* 80C91DA0  7F A4 EB 78 */	mr r4, r29
/* 80C91DA4  39 9F 07 10 */	addi r12, r31, 0x710
/* 80C91DA8  7D 9C 62 14 */	add r12, r28, r12
/* 80C91DAC  4B 6D 02 D9 */	bl __ptmf_scall
/* 80C91DB0  60 00 00 00 */	nop 
/* 80C91DB4  3B BD 00 01 */	addi r29, r29, 1
/* 80C91DB8  3B FF 01 C0 */	addi r31, r31, 0x1c0
lbl_80C91DBC:
/* 80C91DBC  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80C91DC0  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C91DC4  7C 1D 00 00 */	cmpw r29, r0
/* 80C91DC8  41 80 FF AC */	blt lbl_80C91D74
/* 80C91DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C91DD0  4B 6D 04 55 */	bl _restgpr_28
/* 80C91DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C91DD8  7C 08 03 A6 */	mtlr r0
/* 80C91DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C91DE0  4E 80 00 20 */	blr 
