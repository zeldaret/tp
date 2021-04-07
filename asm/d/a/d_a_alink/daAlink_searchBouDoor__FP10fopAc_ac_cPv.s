lbl_800B7D4C:
/* 800B7D4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B7D50  7C 08 02 A6 */	mflr r0
/* 800B7D54  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B7D58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800B7D5C  7C 7F 1B 78 */	mr r31, r3
/* 800B7D60  A8 03 00 08 */	lha r0, 8(r3)
/* 800B7D64  2C 00 02 46 */	cmpwi r0, 0x246
/* 800B7D68  40 82 02 04 */	bne lbl_800B7F6C
/* 800B7D6C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 800B7D70  28 00 00 04 */	cmplwi r0, 4
/* 800B7D74  40 82 01 E4 */	bne lbl_800B7F58
/* 800B7D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B7D7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B7D80  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 800B7D84  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800B7D88  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800B7D8C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800B7D90  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B7D94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800B7D98  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800B7D9C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 800B7DA0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800B7DA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800B7DA8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800B7DAC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800B7DB0  38 61 00 0C */	addi r3, r1, 0xc
/* 800B7DB4  38 81 00 18 */	addi r4, r1, 0x18
/* 800B7DB8  48 28 F5 E5 */	bl PSVECSquareDistance
/* 800B7DBC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B7DC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B7DC4  40 81 00 58 */	ble lbl_800B7E1C
/* 800B7DC8  FC 00 08 34 */	frsqrte f0, f1
/* 800B7DCC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800B7DD0  FC 44 00 32 */	fmul f2, f4, f0
/* 800B7DD4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800B7DD8  FC 00 00 32 */	fmul f0, f0, f0
/* 800B7DDC  FC 01 00 32 */	fmul f0, f1, f0
/* 800B7DE0  FC 03 00 28 */	fsub f0, f3, f0
/* 800B7DE4  FC 02 00 32 */	fmul f0, f2, f0
/* 800B7DE8  FC 44 00 32 */	fmul f2, f4, f0
/* 800B7DEC  FC 00 00 32 */	fmul f0, f0, f0
/* 800B7DF0  FC 01 00 32 */	fmul f0, f1, f0
/* 800B7DF4  FC 03 00 28 */	fsub f0, f3, f0
/* 800B7DF8  FC 02 00 32 */	fmul f0, f2, f0
/* 800B7DFC  FC 44 00 32 */	fmul f2, f4, f0
/* 800B7E00  FC 00 00 32 */	fmul f0, f0, f0
/* 800B7E04  FC 01 00 32 */	fmul f0, f1, f0
/* 800B7E08  FC 03 00 28 */	fsub f0, f3, f0
/* 800B7E0C  FC 02 00 32 */	fmul f0, f2, f0
/* 800B7E10  FC 21 00 32 */	fmul f1, f1, f0
/* 800B7E14  FC 20 08 18 */	frsp f1, f1
/* 800B7E18  48 00 00 88 */	b lbl_800B7EA0
lbl_800B7E1C:
/* 800B7E1C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800B7E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B7E24  40 80 00 10 */	bge lbl_800B7E34
/* 800B7E28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800B7E2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800B7E30  48 00 00 70 */	b lbl_800B7EA0
lbl_800B7E34:
/* 800B7E34  D0 21 00 08 */	stfs f1, 8(r1)
/* 800B7E38  80 81 00 08 */	lwz r4, 8(r1)
/* 800B7E3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800B7E40  3C 00 7F 80 */	lis r0, 0x7f80
/* 800B7E44  7C 03 00 00 */	cmpw r3, r0
/* 800B7E48  41 82 00 14 */	beq lbl_800B7E5C
/* 800B7E4C  40 80 00 40 */	bge lbl_800B7E8C
/* 800B7E50  2C 03 00 00 */	cmpwi r3, 0
/* 800B7E54  41 82 00 20 */	beq lbl_800B7E74
/* 800B7E58  48 00 00 34 */	b lbl_800B7E8C
lbl_800B7E5C:
/* 800B7E5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800B7E60  41 82 00 0C */	beq lbl_800B7E6C
/* 800B7E64  38 00 00 01 */	li r0, 1
/* 800B7E68  48 00 00 28 */	b lbl_800B7E90
lbl_800B7E6C:
/* 800B7E6C  38 00 00 02 */	li r0, 2
/* 800B7E70  48 00 00 20 */	b lbl_800B7E90
lbl_800B7E74:
/* 800B7E74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800B7E78  41 82 00 0C */	beq lbl_800B7E84
/* 800B7E7C  38 00 00 05 */	li r0, 5
/* 800B7E80  48 00 00 10 */	b lbl_800B7E90
lbl_800B7E84:
/* 800B7E84  38 00 00 03 */	li r0, 3
/* 800B7E88  48 00 00 08 */	b lbl_800B7E90
lbl_800B7E8C:
/* 800B7E8C  38 00 00 04 */	li r0, 4
lbl_800B7E90:
/* 800B7E90  2C 00 00 01 */	cmpwi r0, 1
/* 800B7E94  40 82 00 0C */	bne lbl_800B7EA0
/* 800B7E98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800B7E9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800B7EA0:
/* 800B7EA0  C0 02 98 B4 */	lfs f0, lit_67554(r2)
/* 800B7EA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B7EA8  40 80 00 B0 */	bge lbl_800B7F58
/* 800B7EAC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800B7EB0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800B7EB4  48 2B 0D 31 */	bl strlen
/* 800B7EB8  28 03 00 00 */	cmplwi r3, 0
/* 800B7EBC  41 82 00 9C */	beq lbl_800B7F58
/* 800B7EC0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 800B7EC4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800B7EC8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800B7ECC  54 00 10 3A */	slwi r0, r0, 2
/* 800B7ED0  7C 64 00 2E */	lwzx r3, r4, r0
/* 800B7ED4  48 2B 0D 11 */	bl strlen
/* 800B7ED8  28 03 00 00 */	cmplwi r3, 0
/* 800B7EDC  41 82 00 30 */	beq lbl_800B7F0C
/* 800B7EE0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 800B7EE4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800B7EE8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800B7EEC  54 00 10 3A */	slwi r0, r0, 2
/* 800B7EF0  7C 04 00 2E */	lwzx r0, r4, r0
/* 800B7EF4  90 1F 01 00 */	stw r0, 0x100(r31)
/* 800B7EF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B7EFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B7F00  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800B7F04  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 800B7F08  4B F8 E8 F9 */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_800B7F0C:
/* 800B7F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B7F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B7F14  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800B7F18  7F E4 FB 78 */	mr r4, r31
/* 800B7F1C  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 800B7F20  80 A5 00 28 */	lwz r5, 0x28(r5)
/* 800B7F24  38 C0 00 FF */	li r6, 0xff
/* 800B7F28  4B F8 F8 31 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 800B7F2C  B0 7F 0E 1C */	sth r3, 0xe1c(r31)
/* 800B7F30  7F E3 FB 78 */	mr r3, r31
/* 800B7F34  A8 9F 0E 1C */	lha r4, 0xe1c(r31)
/* 800B7F38  38 A0 00 FF */	li r5, 0xff
/* 800B7F3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800B7F40  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800B7F44  38 E0 00 04 */	li r7, 4
/* 800B7F48  39 00 00 01 */	li r8, 1
/* 800B7F4C  4B F6 37 31 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 800B7F50  38 00 00 01 */	li r0, 1
/* 800B7F54  48 00 00 08 */	b lbl_800B7F5C
lbl_800B7F58:
/* 800B7F58  38 00 00 00 */	li r0, 0
lbl_800B7F5C:
/* 800B7F5C  2C 00 00 00 */	cmpwi r0, 0
/* 800B7F60  41 82 00 0C */	beq lbl_800B7F6C
/* 800B7F64  7F E3 FB 78 */	mr r3, r31
/* 800B7F68  48 00 00 08 */	b lbl_800B7F70
lbl_800B7F6C:
/* 800B7F6C  38 60 00 00 */	li r3, 0
lbl_800B7F70:
/* 800B7F70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800B7F74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B7F78  7C 08 03 A6 */	mtlr r0
/* 800B7F7C  38 21 00 30 */	addi r1, r1, 0x30
/* 800B7F80  4E 80 00 20 */	blr 
