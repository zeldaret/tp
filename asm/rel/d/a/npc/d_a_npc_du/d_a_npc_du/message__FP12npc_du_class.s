lbl_809B0CBC:
/* 809B0CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B0CC0  7C 08 02 A6 */	mflr r0
/* 809B0CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B0CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B0CCC  7C 7F 1B 78 */	mr r31, r3
/* 809B0CD0  A8 03 09 82 */	lha r0, 0x982(r3)
/* 809B0CD4  2C 00 00 00 */	cmpwi r0, 0
/* 809B0CD8  41 82 00 48 */	beq lbl_809B0D20
/* 809B0CDC  38 00 00 0A */	li r0, 0xa
/* 809B0CE0  B0 1F 05 E0 */	sth r0, 0x5e0(r31)
/* 809B0CE4  38 7F 09 88 */	addi r3, r31, 0x988
/* 809B0CE8  7F E4 FB 78 */	mr r4, r31
/* 809B0CEC  38 A0 00 00 */	li r5, 0
/* 809B0CF0  38 C0 00 00 */	li r6, 0
/* 809B0CF4  4B 89 95 E5 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 809B0CF8  2C 03 00 00 */	cmpwi r3, 0
/* 809B0CFC  41 82 00 1C */	beq lbl_809B0D18
/* 809B0D00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B0D04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B0D08  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809B0D0C  4B 69 17 5D */	bl reset__14dEvt_control_cFv
/* 809B0D10  38 00 00 00 */	li r0, 0
/* 809B0D14  B0 1F 09 82 */	sth r0, 0x982(r31)
lbl_809B0D18:
/* 809B0D18  38 60 00 01 */	li r3, 1
/* 809B0D1C  48 00 00 B0 */	b lbl_809B0DCC
lbl_809B0D20:
/* 809B0D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B0D24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B0D28  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809B0D2C  28 00 00 00 */	cmplwi r0, 0
/* 809B0D30  41 82 00 30 */	beq lbl_809B0D60
/* 809B0D34  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 809B0D38  28 00 00 01 */	cmplwi r0, 1
/* 809B0D3C  40 82 00 24 */	bne lbl_809B0D60
/* 809B0D40  38 7F 09 88 */	addi r3, r31, 0x988
/* 809B0D44  7F E4 FB 78 */	mr r4, r31
/* 809B0D48  A8 BF 09 84 */	lha r5, 0x984(r31)
/* 809B0D4C  38 C0 00 00 */	li r6, 0
/* 809B0D50  38 E0 00 00 */	li r7, 0
/* 809B0D54  4B 89 92 3D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 809B0D58  38 00 00 01 */	li r0, 1
/* 809B0D5C  B0 1F 09 82 */	sth r0, 0x982(r31)
lbl_809B0D60:
/* 809B0D60  88 1F 09 80 */	lbz r0, 0x980(r31)
/* 809B0D64  2C 00 00 02 */	cmpwi r0, 2
/* 809B0D68  40 82 00 44 */	bne lbl_809B0DAC
/* 809B0D6C  A8 1F 09 84 */	lha r0, 0x984(r31)
/* 809B0D70  2C 00 FF FF */	cmpwi r0, -1
/* 809B0D74  41 82 00 38 */	beq lbl_809B0DAC
/* 809B0D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B0D7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B0D80  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809B0D84  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809B0D88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809B0D8C  41 82 00 20 */	beq lbl_809B0DAC
/* 809B0D90  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 809B0D94  60 00 00 0A */	ori r0, r0, 0xa
/* 809B0D98  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809B0D9C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 809B0DA0  60 00 00 01 */	ori r0, r0, 1
/* 809B0DA4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 809B0DA8  48 00 00 20 */	b lbl_809B0DC8
lbl_809B0DAC:
/* 809B0DAC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 809B0DB0  54 00 00 3E */	slwi r0, r0, 0
/* 809B0DB4  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 809B0DB8  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 809B0DBC  38 00 FF F5 */	li r0, -11
/* 809B0DC0  7C 60 00 38 */	and r0, r3, r0
/* 809B0DC4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809B0DC8:
/* 809B0DC8  38 60 00 00 */	li r3, 0
lbl_809B0DCC:
/* 809B0DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B0DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B0DD4  7C 08 03 A6 */	mtlr r0
/* 809B0DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 809B0DDC  4E 80 00 20 */	blr 
