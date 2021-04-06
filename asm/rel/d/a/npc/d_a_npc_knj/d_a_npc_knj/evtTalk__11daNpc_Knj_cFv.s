lbl_80A43D5C:
/* 80A43D5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A43D60  7C 08 02 A6 */	mflr r0
/* 80A43D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A43D68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A43D6C  7C 7F 1B 78 */	mr r31, r3
/* 80A43D70  3C 80 80 A4 */	lis r4, lit_4329@ha /* 0x80A45694@ha */
/* 80A43D74  38 A4 56 94 */	addi r5, r4, lit_4329@l /* 0x80A45694@l */
/* 80A43D78  80 85 00 00 */	lwz r4, 0(r5)
/* 80A43D7C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A43D80  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A43D84  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A43D88  80 05 00 08 */	lwz r0, 8(r5)
/* 80A43D8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A43D90  38 81 00 14 */	addi r4, r1, 0x14
/* 80A43D94  48 00 05 85 */	bl chkAction__11daNpc_Knj_cFM11daNpc_Knj_cFPCvPvPv_i
/* 80A43D98  2C 03 00 00 */	cmpwi r3, 0
/* 80A43D9C  41 82 00 1C */	beq lbl_80A43DB8
/* 80A43DA0  7F E3 FB 78 */	mr r3, r31
/* 80A43DA4  38 80 00 00 */	li r4, 0
/* 80A43DA8  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80A43DAC  4B 91 E2 D9 */	bl __ptmf_scall
/* 80A43DB0  60 00 00 00 */	nop 
/* 80A43DB4  48 00 00 90 */	b lbl_80A43E44
lbl_80A43DB8:
/* 80A43DB8  38 00 00 00 */	li r0, 0
/* 80A43DBC  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A43DC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A43DC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A43DC8  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A43DCC  28 04 00 01 */	cmplwi r4, 1
/* 80A43DD0  41 82 00 0C */	beq lbl_80A43DDC
/* 80A43DD4  28 04 00 02 */	cmplwi r4, 2
/* 80A43DD8  40 82 00 08 */	bne lbl_80A43DE0
lbl_80A43DDC:
/* 80A43DDC  38 00 00 01 */	li r0, 1
lbl_80A43DE0:
/* 80A43DE0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A43DE4  41 82 00 34 */	beq lbl_80A43E18
/* 80A43DE8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A43DEC  4B 60 4A 05 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A43DF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A43DF4  40 82 00 0C */	bne lbl_80A43E00
/* 80A43DF8  38 60 00 01 */	li r3, 1
/* 80A43DFC  48 00 00 4C */	b lbl_80A43E48
lbl_80A43E00:
/* 80A43E00  38 00 00 01 */	li r0, 1
/* 80A43E04  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A43E08  7F E3 FB 78 */	mr r3, r31
/* 80A43E0C  4B 70 64 19 */	bl evtChange__8daNpcT_cFv
/* 80A43E10  38 60 00 01 */	li r3, 1
/* 80A43E14  48 00 00 34 */	b lbl_80A43E48
lbl_80A43E18:
/* 80A43E18  3C 60 80 A4 */	lis r3, lit_4339@ha /* 0x80A456A0@ha */
/* 80A43E1C  38 83 56 A0 */	addi r4, r3, lit_4339@l /* 0x80A456A0@l */
/* 80A43E20  80 64 00 00 */	lwz r3, 0(r4)
/* 80A43E24  80 04 00 04 */	lwz r0, 4(r4)
/* 80A43E28  90 61 00 08 */	stw r3, 8(r1)
/* 80A43E2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A43E30  80 04 00 08 */	lwz r0, 8(r4)
/* 80A43E34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A43E38  7F E3 FB 78 */	mr r3, r31
/* 80A43E3C  38 81 00 08 */	addi r4, r1, 8
/* 80A43E40  48 00 05 05 */	bl setAction__11daNpc_Knj_cFM11daNpc_Knj_cFPCvPvPv_i
lbl_80A43E44:
/* 80A43E44  38 60 00 01 */	li r3, 1
lbl_80A43E48:
/* 80A43E48  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A43E4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A43E50  7C 08 03 A6 */	mtlr r0
/* 80A43E54  38 21 00 30 */	addi r1, r1, 0x30
/* 80A43E58  4E 80 00 20 */	blr 
