lbl_8060DAC0:
/* 8060DAC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060DAC4  7C 08 02 A6 */	mflr r0
/* 8060DAC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060DACC  39 61 00 40 */	addi r11, r1, 0x40
/* 8060DAD0  4B D5 47 0D */	bl _savegpr_29
/* 8060DAD4  7C 7E 1B 78 */	mr r30, r3
/* 8060DAD8  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060DADC  3B E3 FD E0 */	addi r31, r3, lit_3928@l /* 0x8060FDE0@l */
/* 8060DAE0  88 1E 0B 0B */	lbz r0, 0xb0b(r30)
/* 8060DAE4  28 00 00 02 */	cmplwi r0, 2
/* 8060DAE8  41 80 00 5C */	blt lbl_8060DB44
/* 8060DAEC  38 60 00 07 */	li r3, 7
/* 8060DAF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060DAF4  7C 04 07 74 */	extsb r4, r0
/* 8060DAF8  4B A2 00 6D */	bl dComIfGs_isOneZoneSwitch__Fii
/* 8060DAFC  2C 03 00 00 */	cmpwi r3, 0
/* 8060DB00  40 82 00 14 */	bne lbl_8060DB14
/* 8060DB04  38 60 00 07 */	li r3, 7
/* 8060DB08  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060DB0C  7C 04 07 74 */	extsb r4, r0
/* 8060DB10  4B A1 FF 8D */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_8060DB14:
/* 8060DB14  48 00 22 A1 */	bl checkNowWolf__9daPy_py_cFv
/* 8060DB18  28 03 00 00 */	cmplwi r3, 0
/* 8060DB1C  41 82 00 18 */	beq lbl_8060DB34
/* 8060DB20  38 60 00 08 */	li r3, 8
/* 8060DB24  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060DB28  7C 04 07 74 */	extsb r4, r0
/* 8060DB2C  4B A1 FF 71 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 8060DB30  48 00 00 14 */	b lbl_8060DB44
lbl_8060DB34:
/* 8060DB34  38 60 00 08 */	li r3, 8
/* 8060DB38  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8060DB3C  7C 04 07 74 */	extsb r4, r0
/* 8060DB40  4B A1 FF C1 */	bl dComIfGs_offOneZoneSwitch__Fii
lbl_8060DB44:
/* 8060DB44  88 1E 0A FF */	lbz r0, 0xaff(r30)
/* 8060DB48  28 00 00 04 */	cmplwi r0, 4
/* 8060DB4C  41 80 02 3C */	blt lbl_8060DD88
/* 8060DB50  88 1E 0A FD */	lbz r0, 0xafd(r30)
/* 8060DB54  28 00 00 00 */	cmplwi r0, 0
/* 8060DB58  40 82 02 30 */	bne lbl_8060DD88
/* 8060DB5C  80 1E 21 0C */	lwz r0, 0x210c(r30)
/* 8060DB60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060DB64  41 82 02 24 */	beq lbl_8060DD88
/* 8060DB68  88 1E 0A F9 */	lbz r0, 0xaf9(r30)
/* 8060DB6C  28 00 00 0A */	cmplwi r0, 0xa
/* 8060DB70  41 82 02 18 */	beq lbl_8060DD88
/* 8060DB74  3C 60 80 60 */	lis r3, s_obj_sub__FPvPv@ha /* 0x80605CAC@ha */
/* 8060DB78  38 63 5C AC */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x80605CAC@l */
/* 8060DB7C  7F C4 F3 78 */	mr r4, r30
/* 8060DB80  4B A1 37 B9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8060DB84  28 03 00 00 */	cmplwi r3, 0
/* 8060DB88  41 82 00 2C */	beq lbl_8060DBB4
/* 8060DB8C  88 7E 0B 0B */	lbz r3, 0xb0b(r30)
/* 8060DB90  28 03 00 02 */	cmplwi r3, 2
/* 8060DB94  40 80 00 0C */	bge lbl_8060DBA0
/* 8060DB98  38 03 00 01 */	addi r0, r3, 1
/* 8060DB9C  98 1E 0B 0B */	stb r0, 0xb0b(r30)
lbl_8060DBA0:
/* 8060DBA0  7F C3 F3 78 */	mr r3, r30
/* 8060DBA4  38 80 00 0A */	li r4, 0xa
/* 8060DBA8  38 A0 00 00 */	li r5, 0
/* 8060DBAC  4B FF 9E 81 */	bl setActionMode__9daB_MGN_cFii
/* 8060DBB0  48 00 01 D8 */	b lbl_8060DD88
lbl_8060DBB4:
/* 8060DBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060DBB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060DBBC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8060DBC0  7F A3 EB 78 */	mr r3, r29
/* 8060DBC4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8060DBC8  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 8060DBCC  7D 89 03 A6 */	mtctr r12
/* 8060DBD0  4E 80 04 21 */	bctrl 
/* 8060DBD4  28 03 00 00 */	cmplwi r3, 0
/* 8060DBD8  41 82 01 B0 */	beq lbl_8060DD88
/* 8060DBDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060DBE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060DBE4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8060DBE8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8060DBEC  40 82 01 9C */	bne lbl_8060DD88
/* 8060DBF0  7F A3 EB 78 */	mr r3, r29
/* 8060DBF4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8060DBF8  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 8060DBFC  7D 89 03 A6 */	mtctr r12
/* 8060DC00  4E 80 04 21 */	bctrl 
/* 8060DC04  C0 43 00 08 */	lfs f2, 8(r3)
/* 8060DC08  C0 03 00 00 */	lfs f0, 0(r3)
/* 8060DC0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8060DC10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060DC14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8060DC18  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8060DC1C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8060DC20  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8060DC24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060DC28  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8060DC2C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8060DC30  38 61 00 0C */	addi r3, r1, 0xc
/* 8060DC34  38 81 00 18 */	addi r4, r1, 0x18
/* 8060DC38  4B D3 97 65 */	bl PSVECSquareDistance
/* 8060DC3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060DC40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060DC44  40 81 00 58 */	ble lbl_8060DC9C
/* 8060DC48  FC 00 08 34 */	frsqrte f0, f1
/* 8060DC4C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8060DC50  FC 44 00 32 */	fmul f2, f4, f0
/* 8060DC54  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8060DC58  FC 00 00 32 */	fmul f0, f0, f0
/* 8060DC5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8060DC60  FC 03 00 28 */	fsub f0, f3, f0
/* 8060DC64  FC 02 00 32 */	fmul f0, f2, f0
/* 8060DC68  FC 44 00 32 */	fmul f2, f4, f0
/* 8060DC6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8060DC70  FC 01 00 32 */	fmul f0, f1, f0
/* 8060DC74  FC 03 00 28 */	fsub f0, f3, f0
/* 8060DC78  FC 02 00 32 */	fmul f0, f2, f0
/* 8060DC7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8060DC80  FC 00 00 32 */	fmul f0, f0, f0
/* 8060DC84  FC 01 00 32 */	fmul f0, f1, f0
/* 8060DC88  FC 03 00 28 */	fsub f0, f3, f0
/* 8060DC8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8060DC90  FC 21 00 32 */	fmul f1, f1, f0
/* 8060DC94  FC 20 08 18 */	frsp f1, f1
/* 8060DC98  48 00 00 88 */	b lbl_8060DD20
lbl_8060DC9C:
/* 8060DC9C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8060DCA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060DCA4  40 80 00 10 */	bge lbl_8060DCB4
/* 8060DCA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8060DCAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8060DCB0  48 00 00 70 */	b lbl_8060DD20
lbl_8060DCB4:
/* 8060DCB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8060DCB8  80 81 00 08 */	lwz r4, 8(r1)
/* 8060DCBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8060DCC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8060DCC4  7C 03 00 00 */	cmpw r3, r0
/* 8060DCC8  41 82 00 14 */	beq lbl_8060DCDC
/* 8060DCCC  40 80 00 40 */	bge lbl_8060DD0C
/* 8060DCD0  2C 03 00 00 */	cmpwi r3, 0
/* 8060DCD4  41 82 00 20 */	beq lbl_8060DCF4
/* 8060DCD8  48 00 00 34 */	b lbl_8060DD0C
lbl_8060DCDC:
/* 8060DCDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060DCE0  41 82 00 0C */	beq lbl_8060DCEC
/* 8060DCE4  38 00 00 01 */	li r0, 1
/* 8060DCE8  48 00 00 28 */	b lbl_8060DD10
lbl_8060DCEC:
/* 8060DCEC  38 00 00 02 */	li r0, 2
/* 8060DCF0  48 00 00 20 */	b lbl_8060DD10
lbl_8060DCF4:
/* 8060DCF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060DCF8  41 82 00 0C */	beq lbl_8060DD04
/* 8060DCFC  38 00 00 05 */	li r0, 5
/* 8060DD00  48 00 00 10 */	b lbl_8060DD10
lbl_8060DD04:
/* 8060DD04  38 00 00 03 */	li r0, 3
/* 8060DD08  48 00 00 08 */	b lbl_8060DD10
lbl_8060DD0C:
/* 8060DD0C  38 00 00 04 */	li r0, 4
lbl_8060DD10:
/* 8060DD10  2C 00 00 01 */	cmpwi r0, 1
/* 8060DD14  40 82 00 0C */	bne lbl_8060DD20
/* 8060DD18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8060DD1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8060DD20:
/* 8060DD20  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8060DD24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060DD28  40 80 00 60 */	bge lbl_8060DD88
/* 8060DD2C  7F A3 EB 78 */	mr r3, r29
/* 8060DD30  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8060DD34  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 8060DD38  7D 89 03 A6 */	mtctr r12
/* 8060DD3C  4E 80 04 21 */	bctrl 
/* 8060DD40  7C 64 1B 78 */	mr r4, r3
/* 8060DD44  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8060DD48  4B C6 2E BD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8060DD4C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8060DD50  7C 03 00 50 */	subf r0, r3, r0
/* 8060DD54  7C 03 07 34 */	extsh r3, r0
/* 8060DD58  4B D5 73 79 */	bl abs
/* 8060DD5C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8060DD60  40 80 00 28 */	bge lbl_8060DD88
/* 8060DD64  88 7E 0B 0B */	lbz r3, 0xb0b(r30)
/* 8060DD68  28 03 00 02 */	cmplwi r3, 2
/* 8060DD6C  40 80 00 0C */	bge lbl_8060DD78
/* 8060DD70  38 03 00 01 */	addi r0, r3, 1
/* 8060DD74  98 1E 0B 0B */	stb r0, 0xb0b(r30)
lbl_8060DD78:
/* 8060DD78  7F C3 F3 78 */	mr r3, r30
/* 8060DD7C  38 80 00 0A */	li r4, 0xa
/* 8060DD80  38 A0 00 00 */	li r5, 0
/* 8060DD84  4B FF 9C A9 */	bl setActionMode__9daB_MGN_cFii
lbl_8060DD88:
/* 8060DD88  39 61 00 40 */	addi r11, r1, 0x40
/* 8060DD8C  4B D5 44 9D */	bl _restgpr_29
/* 8060DD90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060DD94  7C 08 03 A6 */	mtlr r0
/* 8060DD98  38 21 00 40 */	addi r1, r1, 0x40
/* 8060DD9C  4E 80 00 20 */	blr 
