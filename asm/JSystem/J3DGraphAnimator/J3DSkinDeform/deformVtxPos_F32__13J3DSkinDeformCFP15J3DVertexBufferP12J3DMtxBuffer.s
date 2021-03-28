lbl_8032DB50:
/* 8032DB50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032DB54  7C 08 02 A6 */	mflr r0
/* 8032DB58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032DB5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032DB60  48 03 46 7D */	bl _savegpr_29
/* 8032DB64  7C 9E 23 78 */	mr r30, r4
/* 8032DB68  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8032DB6C  90 01 00 08 */	stw r0, 8(r1)
/* 8032DB70  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8032DB74  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032DB78  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 8032DB7C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8032DB80  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8032DB84  90 9E 00 20 */	stw r4, 0x20(r30)
/* 8032DB88  81 45 00 00 */	lwz r10, 0(r5)
/* 8032DB8C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8032DB90  80 04 00 00 */	lwz r0, 0(r4)
/* 8032DB94  83 BE 00 2C */	lwz r29, 0x2c(r30)
/* 8032DB98  83 FE 00 1C */	lwz r31, 0x1c(r30)
/* 8032DB9C  38 80 00 00 */	li r4, 0
/* 8032DBA0  38 A0 00 00 */	li r5, 0
/* 8032DBA4  80 E3 00 04 */	lwz r7, 4(r3)
/* 8032DBA8  38 C1 00 08 */	addi r6, r1, 8
/* 8032DBAC  7C 09 03 A6 */	mtctr r0
/* 8032DBB0  2C 00 00 00 */	cmpwi r0, 0
/* 8032DBB4  40 81 00 90 */	ble lbl_8032DC44
lbl_8032DBB8:
/* 8032DBB8  80 6A 00 38 */	lwz r3, 0x38(r10)
/* 8032DBBC  7C 07 2A 2E */	lhzx r0, r7, r5
/* 8032DBC0  7D 63 00 AE */	lbzx r11, r3, r0
/* 8032DBC4  7D 3F 22 14 */	add r9, r31, r4
/* 8032DBC8  7D 1D 22 14 */	add r8, r29, r4
/* 8032DBCC  80 6A 00 3C */	lwz r3, 0x3c(r10)
/* 8032DBD0  54 00 08 3C */	slwi r0, r0, 1
/* 8032DBD4  7D 83 02 2E */	lhzx r12, r3, r0
/* 8032DBD8  55 60 15 BA */	rlwinm r0, r11, 2, 0x16, 0x1d
/* 8032DBDC  7C 66 00 2E */	lwzx r3, r6, r0
/* 8032DBE0  1C 0C 00 30 */	mulli r0, r12, 0x30
/* 8032DBE4  7C 63 02 14 */	add r3, r3, r0
/* 8032DBE8  E0 08 00 00 */	psq_l f0, 0(r8), 0, 0 /* qr0 */
/* 8032DBEC  E0 43 00 00 */	psq_l f2, 0(r3), 0, 0 /* qr0 */
/* 8032DBF0  E0 28 80 08 */	psq_l f1, 8(r8), 1, 0 /* qr0 */
/* 8032DBF4  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DBF8  E0 63 00 08 */	psq_l f3, 8(r3), 0, 0 /* qr0 */
/* 8032DBFC  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DC00  E1 03 00 10 */	psq_l f8, 16(r3), 0, 0 /* qr0 */
/* 8032DC04  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DC08  E1 23 00 18 */	psq_l f9, 24(r3), 0, 0 /* qr0 */
/* 8032DC0C  11 48 00 32 */	ps_mul f10, f8, f0
/* 8032DC10  F0 C9 80 00 */	psq_st f6, 0(r9), 1, 0 /* qr0 */
/* 8032DC14  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8032DC18  E0 43 00 20 */	psq_l f2, 32(r3), 0, 0 /* qr0 */
/* 8032DC1C  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 8032DC20  E0 63 00 28 */	psq_l f3, 40(r3), 0, 0 /* qr0 */
/* 8032DC24  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DC28  F1 89 80 04 */	psq_st f12, 4(r9), 1, 0 /* qr0 */
/* 8032DC2C  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DC30  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DC34  F0 C9 80 08 */	psq_st f6, 8(r9), 1, 0 /* qr0 */
/* 8032DC38  38 84 00 0C */	addi r4, r4, 0xc
/* 8032DC3C  38 A5 00 02 */	addi r5, r5, 2
/* 8032DC40  42 00 FF 78 */	bdnz lbl_8032DBB8
lbl_8032DC44:
/* 8032DC44  80 7E 00 00 */	lwz r3, 0(r30)
/* 8032DC48  80 03 00 00 */	lwz r0, 0(r3)
/* 8032DC4C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8032DC50  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8032DC54  48 00 D9 89 */	bl DCStoreRange
/* 8032DC58  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 8032DC5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032DC60  48 03 45 C9 */	bl _restgpr_29
/* 8032DC64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032DC68  7C 08 03 A6 */	mtlr r0
/* 8032DC6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032DC70  4E 80 00 20 */	blr 
