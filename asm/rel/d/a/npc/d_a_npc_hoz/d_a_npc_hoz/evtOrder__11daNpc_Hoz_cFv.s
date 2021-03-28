lbl_80A02DD4:
/* 80A02DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A02DD8  7C 08 02 A6 */	mflr r0
/* 80A02DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A02DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A02DE4  7C 7F 1B 78 */	mr r31, r3
/* 80A02DE8  80 63 05 70 */	lwz r3, 0x570(r3)
/* 80A02DEC  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A02DF0  54 00 18 38 */	slwi r0, r0, 3
/* 80A02DF4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A02DF8  4B 96 5D EC */	b strlen
/* 80A02DFC  28 03 00 00 */	cmplwi r3, 0
/* 80A02E00  41 82 00 E8 */	beq lbl_80A02EE8
/* 80A02E04  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80A02E08  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80A02E0C  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A02E10  54 00 18 38 */	slwi r0, r0, 3
/* 80A02E14  7C 63 02 14 */	add r3, r3, r0
/* 80A02E18  80 03 00 04 */	lwz r0, 4(r3)
/* 80A02E1C  54 00 10 3A */	slwi r0, r0, 2
/* 80A02E20  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A02E24  4B 96 5D C0 */	b strlen
/* 80A02E28  28 03 00 00 */	cmplwi r3, 0
/* 80A02E2C  41 82 00 3C */	beq lbl_80A02E68
/* 80A02E30  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80A02E34  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80A02E38  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A02E3C  54 00 18 38 */	slwi r0, r0, 3
/* 80A02E40  7C 63 02 14 */	add r3, r3, r0
/* 80A02E44  80 03 00 04 */	lwz r0, 4(r3)
/* 80A02E48  54 00 10 3A */	slwi r0, r0, 2
/* 80A02E4C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A02E50  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80A02E54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A02E58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A02E5C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A02E60  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80A02E64  4B 64 39 9C */	b setObjectArchive__16dEvent_manager_cFPc
lbl_80A02E68:
/* 80A02E68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A02E6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A02E70  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A02E74  7F E4 FB 78 */	mr r4, r31
/* 80A02E78  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 80A02E7C  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A02E80  54 00 18 38 */	slwi r0, r0, 3
/* 80A02E84  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A02E88  38 C0 00 FF */	li r6, 0xff
/* 80A02E8C  4B 64 48 CC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A02E90  B0 7F 0E 1C */	sth r3, 0xe1c(r31)
/* 80A02E94  A0 1F 0E 30 */	lhz r0, 0xe30(r31)
/* 80A02E98  28 00 00 02 */	cmplwi r0, 2
/* 80A02E9C  40 82 00 28 */	bne lbl_80A02EC4
/* 80A02EA0  7F E3 FB 78 */	mr r3, r31
/* 80A02EA4  A8 9F 0E 1C */	lha r4, 0xe1c(r31)
/* 80A02EA8  38 A0 00 FF */	li r5, 0xff
/* 80A02EAC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A02EB0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A02EB4  38 E0 00 04 */	li r7, 4
/* 80A02EB8  39 00 00 03 */	li r8, 3
/* 80A02EBC  4B 61 87 C0 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80A02EC0  48 00 00 A4 */	b lbl_80A02F64
lbl_80A02EC4:
/* 80A02EC4  7F E3 FB 78 */	mr r3, r31
/* 80A02EC8  A8 9F 0E 1C */	lha r4, 0xe1c(r31)
/* 80A02ECC  38 A0 00 FF */	li r5, 0xff
/* 80A02ED0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A02ED4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A02ED8  38 E0 00 28 */	li r7, 0x28
/* 80A02EDC  39 00 00 01 */	li r8, 1
/* 80A02EE0  4B 61 87 9C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80A02EE4  48 00 00 80 */	b lbl_80A02F64
lbl_80A02EE8:
/* 80A02EE8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A02EEC  28 00 00 00 */	cmplwi r0, 0
/* 80A02EF0  41 82 00 10 */	beq lbl_80A02F00
/* 80A02EF4  4B 75 C5 30 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 80A02EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A02EFC  41 82 00 68 */	beq lbl_80A02F64
lbl_80A02F00:
/* 80A02F00  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 80A02F04  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80A02F08  40 82 00 0C */	bne lbl_80A02F14
/* 80A02F0C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80A02F10  41 82 00 54 */	beq lbl_80A02F64
lbl_80A02F14:
/* 80A02F14  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80A02F18  60 00 00 01 */	ori r0, r0, 1
/* 80A02F1C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80A02F20  7F E3 FB 78 */	mr r3, r31
/* 80A02F24  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A02F28  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80A02F2C  7D 89 03 A6 */	mtctr r12
/* 80A02F30  4E 80 04 21 */	bctrl 
/* 80A02F34  2C 03 00 00 */	cmpwi r3, 0
/* 80A02F38  41 82 00 10 */	beq lbl_80A02F48
/* 80A02F3C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80A02F40  60 00 00 20 */	ori r0, r0, 0x20
/* 80A02F44  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80A02F48:
/* 80A02F48  88 1F 0E 32 */	lbz r0, 0xe32(r31)
/* 80A02F4C  28 00 00 00 */	cmplwi r0, 0
/* 80A02F50  41 82 00 14 */	beq lbl_80A02F64
/* 80A02F54  7F E3 FB 78 */	mr r3, r31
/* 80A02F58  38 80 00 00 */	li r4, 0
/* 80A02F5C  38 A0 00 00 */	li r5, 0
/* 80A02F60  4B 61 82 3C */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_80A02F64:
/* 80A02F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A02F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A02F6C  7C 08 03 A6 */	mtlr r0
/* 80A02F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80A02F74  4E 80 00 20 */	blr 
