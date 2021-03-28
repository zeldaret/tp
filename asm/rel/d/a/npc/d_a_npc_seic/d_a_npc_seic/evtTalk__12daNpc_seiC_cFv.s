lbl_80AC7D4C:
/* 80AC7D4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC7D50  7C 08 02 A6 */	mflr r0
/* 80AC7D54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC7D58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AC7D5C  7C 7F 1B 78 */	mr r31, r3
/* 80AC7D60  3C 80 80 AD */	lis r4, lit_4342@ha
/* 80AC7D64  38 A4 93 AC */	addi r5, r4, lit_4342@l
/* 80AC7D68  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC7D6C  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC7D70  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AC7D74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AC7D78  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC7D7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AC7D80  38 81 00 14 */	addi r4, r1, 0x14
/* 80AC7D84  48 00 04 DD */	bl chkAction__12daNpc_seiC_cFM12daNpc_seiC_cFPCvPvPv_i
/* 80AC7D88  2C 03 00 00 */	cmpwi r3, 0
/* 80AC7D8C  41 82 00 1C */	beq lbl_80AC7DA8
/* 80AC7D90  7F E3 FB 78 */	mr r3, r31
/* 80AC7D94  38 80 00 00 */	li r4, 0
/* 80AC7D98  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80AC7D9C  4B 89 A2 E8 */	b __ptmf_scall
/* 80AC7DA0  60 00 00 00 */	nop 
/* 80AC7DA4  48 00 00 90 */	b lbl_80AC7E34
lbl_80AC7DA8:
/* 80AC7DA8  38 00 00 00 */	li r0, 0
/* 80AC7DAC  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AC7DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC7DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC7DB8  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AC7DBC  28 04 00 01 */	cmplwi r4, 1
/* 80AC7DC0  41 82 00 0C */	beq lbl_80AC7DCC
/* 80AC7DC4  28 04 00 02 */	cmplwi r4, 2
/* 80AC7DC8  40 82 00 08 */	bne lbl_80AC7DD0
lbl_80AC7DCC:
/* 80AC7DCC  38 00 00 01 */	li r0, 1
lbl_80AC7DD0:
/* 80AC7DD0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AC7DD4  41 82 00 34 */	beq lbl_80AC7E08
/* 80AC7DD8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AC7DDC  4B 58 0A 14 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AC7DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC7DE4  40 82 00 0C */	bne lbl_80AC7DF0
/* 80AC7DE8  38 60 00 01 */	li r3, 1
/* 80AC7DEC  48 00 00 4C */	b lbl_80AC7E38
lbl_80AC7DF0:
/* 80AC7DF0  38 00 00 02 */	li r0, 2
/* 80AC7DF4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AC7DF8  7F E3 FB 78 */	mr r3, r31
/* 80AC7DFC  4B 68 24 28 */	b evtChange__8daNpcT_cFv
/* 80AC7E00  38 60 00 01 */	li r3, 1
/* 80AC7E04  48 00 00 34 */	b lbl_80AC7E38
lbl_80AC7E08:
/* 80AC7E08  3C 60 80 AD */	lis r3, lit_4352@ha
/* 80AC7E0C  38 83 93 B8 */	addi r4, r3, lit_4352@l
/* 80AC7E10  80 64 00 00 */	lwz r3, 0(r4)
/* 80AC7E14  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC7E18  90 61 00 08 */	stw r3, 8(r1)
/* 80AC7E1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC7E20  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC7E24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC7E28  7F E3 FB 78 */	mr r3, r31
/* 80AC7E2C  38 81 00 08 */	addi r4, r1, 8
/* 80AC7E30  48 00 04 5D */	bl setAction__12daNpc_seiC_cFM12daNpc_seiC_cFPCvPvPv_i
lbl_80AC7E34:
/* 80AC7E34  38 60 00 01 */	li r3, 1
lbl_80AC7E38:
/* 80AC7E38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AC7E3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC7E40  7C 08 03 A6 */	mtlr r0
/* 80AC7E44  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC7E48  4E 80 00 20 */	blr 
