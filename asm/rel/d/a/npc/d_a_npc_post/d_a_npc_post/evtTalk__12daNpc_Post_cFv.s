lbl_80AA9D98:
/* 80AA9D98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AA9D9C  7C 08 02 A6 */	mflr r0
/* 80AA9DA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AA9DA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AA9DA8  7C 7F 1B 78 */	mr r31, r3
/* 80AA9DAC  3C 80 80 AB */	lis r4, lit_4653@ha /* 0x80AAD928@ha */
/* 80AA9DB0  38 A4 D9 28 */	addi r5, r4, lit_4653@l /* 0x80AAD928@l */
/* 80AA9DB4  80 85 00 00 */	lwz r4, 0(r5)
/* 80AA9DB8  80 05 00 04 */	lwz r0, 4(r5)
/* 80AA9DBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AA9DC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AA9DC4  80 05 00 08 */	lwz r0, 8(r5)
/* 80AA9DC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AA9DCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80AA9DD0  48 00 0C 15 */	bl chkAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i
/* 80AA9DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80AA9DD8  41 82 00 1C */	beq lbl_80AA9DF4
/* 80AA9DDC  7F E3 FB 78 */	mr r3, r31
/* 80AA9DE0  38 80 00 00 */	li r4, 0
/* 80AA9DE4  39 9F 0F E4 */	addi r12, r31, 0xfe4
/* 80AA9DE8  4B 8B 82 9D */	bl __ptmf_scall
/* 80AA9DEC  60 00 00 00 */	nop 
/* 80AA9DF0  48 00 00 90 */	b lbl_80AA9E80
lbl_80AA9DF4:
/* 80AA9DF4  38 00 00 00 */	li r0, 0
/* 80AA9DF8  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AA9DFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA9E00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA9E04  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AA9E08  28 04 00 01 */	cmplwi r4, 1
/* 80AA9E0C  41 82 00 0C */	beq lbl_80AA9E18
/* 80AA9E10  28 04 00 02 */	cmplwi r4, 2
/* 80AA9E14  40 82 00 08 */	bne lbl_80AA9E1C
lbl_80AA9E18:
/* 80AA9E18  38 00 00 01 */	li r0, 1
lbl_80AA9E1C:
/* 80AA9E1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AA9E20  41 82 00 34 */	beq lbl_80AA9E54
/* 80AA9E24  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AA9E28  4B 59 E9 C9 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AA9E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80AA9E30  40 82 00 0C */	bne lbl_80AA9E3C
/* 80AA9E34  38 60 00 01 */	li r3, 1
/* 80AA9E38  48 00 00 4C */	b lbl_80AA9E84
lbl_80AA9E3C:
/* 80AA9E3C  38 00 00 01 */	li r0, 1
/* 80AA9E40  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AA9E44  7F E3 FB 78 */	mr r3, r31
/* 80AA9E48  4B 6A 03 DD */	bl evtChange__8daNpcT_cFv
/* 80AA9E4C  38 60 00 01 */	li r3, 1
/* 80AA9E50  48 00 00 34 */	b lbl_80AA9E84
lbl_80AA9E54:
/* 80AA9E54  3C 60 80 AB */	lis r3, lit_4663@ha /* 0x80AAD934@ha */
/* 80AA9E58  38 83 D9 34 */	addi r4, r3, lit_4663@l /* 0x80AAD934@l */
/* 80AA9E5C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AA9E60  80 04 00 04 */	lwz r0, 4(r4)
/* 80AA9E64  90 61 00 08 */	stw r3, 8(r1)
/* 80AA9E68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AA9E6C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AA9E70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AA9E74  7F E3 FB 78 */	mr r3, r31
/* 80AA9E78  38 81 00 08 */	addi r4, r1, 8
/* 80AA9E7C  48 00 0B 95 */	bl setAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i
lbl_80AA9E80:
/* 80AA9E80  38 60 00 01 */	li r3, 1
lbl_80AA9E84:
/* 80AA9E84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AA9E88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AA9E8C  7C 08 03 A6 */	mtlr r0
/* 80AA9E90  38 21 00 30 */	addi r1, r1, 0x30
/* 80AA9E94  4E 80 00 20 */	blr 
