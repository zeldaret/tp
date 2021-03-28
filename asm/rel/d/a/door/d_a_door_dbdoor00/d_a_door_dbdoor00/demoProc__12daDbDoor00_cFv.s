lbl_8045DAB0:
/* 8045DAB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045DAB4  7C 08 02 A6 */	mflr r0
/* 8045DAB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045DABC  39 61 00 40 */	addi r11, r1, 0x40
/* 8045DAC0  4B F0 47 10 */	b _savegpr_26
/* 8045DAC4  7C 7A 1B 78 */	mr r26, r3
/* 8045DAC8  3C 80 80 46 */	lis r4, lit_3806@ha
/* 8045DACC  3B A4 E5 34 */	addi r29, r4, lit_3806@l
/* 8045DAD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8045DAD4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8045DAD8  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 8045DADC  4B FF FF 8D */	bl getDemoAction__12daDbDoor00_cFv
/* 8045DAE0  7C 7F 1B 78 */	mr r31, r3
/* 8045DAE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045DAE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045DAEC  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8045DAF0  7F 83 E3 78 */	mr r3, r28
/* 8045DAF4  80 9A 05 98 */	lwz r4, 0x598(r26)
/* 8045DAF8  4B BE A2 54 */	b getIsAddvance__16dEvent_manager_cFi
/* 8045DAFC  2C 03 00 00 */	cmpwi r3, 0
/* 8045DB00  41 82 01 54 */	beq lbl_8045DC54
/* 8045DB04  28 1F 00 08 */	cmplwi r31, 8
/* 8045DB08  41 81 01 4C */	bgt lbl_8045DC54
/* 8045DB0C  3C 60 80 46 */	lis r3, lit_3957@ha
/* 8045DB10  38 63 E6 AC */	addi r3, r3, lit_3957@l
/* 8045DB14  57 E0 10 3A */	slwi r0, r31, 2
/* 8045DB18  7C 03 00 2E */	lwzx r0, r3, r0
/* 8045DB1C  7C 09 03 A6 */	mtctr r0
/* 8045DB20  4E 80 04 20 */	bctr 
lbl_8045DB24:
/* 8045DB24  7F 43 D3 78 */	mr r3, r26
/* 8045DB28  4B FF FC 1D */	bl calcMtx__12daDbDoor00_cFv
/* 8045DB2C  C0 1A 05 9C */	lfs f0, 0x59c(r26)
/* 8045DB30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045DB34  C0 1A 05 A0 */	lfs f0, 0x5a0(r26)
/* 8045DB38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045DB3C  C0 1A 05 A4 */	lfs f0, 0x5a4(r26)
/* 8045DB40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045DB44  7F 83 E3 78 */	mr r3, r28
/* 8045DB48  38 81 00 10 */	addi r4, r1, 0x10
/* 8045DB4C  4B BE A8 78 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8045DB50  48 00 01 04 */	b lbl_8045DC54
lbl_8045DB54:
/* 8045DB54  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 8045DB58  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045DB5C  B0 01 00 08 */	sth r0, 8(r1)
/* 8045DB60  B0 1B 06 06 */	sth r0, 0x606(r27)
/* 8045DB64  48 00 00 F0 */	b lbl_8045DC54
lbl_8045DB68:
/* 8045DB68  38 00 00 00 */	li r0, 0
/* 8045DB6C  B0 1A 05 8C */	sth r0, 0x58c(r26)
/* 8045DB70  38 00 00 1E */	li r0, 0x1e
/* 8045DB74  B0 1A 05 C2 */	sth r0, 0x5c2(r26)
/* 8045DB78  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8045DB7C  7C 03 07 74 */	extsb r3, r0
/* 8045DB80  4B BC F4 EC */	b dComIfGp_getReverb__Fi
/* 8045DB84  7C 67 1B 78 */	mr r7, r3
/* 8045DB88  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008009C@ha */
/* 8045DB8C  38 03 00 9C */	addi r0, r3, 0x009C /* 0x0008009C@l */
/* 8045DB90  90 01 00 0C */	stw r0, 0xc(r1)
/* 8045DB94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8045DB98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8045DB9C  80 63 00 00 */	lwz r3, 0(r3)
/* 8045DBA0  38 81 00 0C */	addi r4, r1, 0xc
/* 8045DBA4  38 BA 05 38 */	addi r5, r26, 0x538
/* 8045DBA8  38 C0 00 00 */	li r6, 0
/* 8045DBAC  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8045DBB0  FC 40 08 90 */	fmr f2, f1
/* 8045DBB4  C0 7D 00 20 */	lfs f3, 0x20(r29)
/* 8045DBB8  FC 80 18 90 */	fmr f4, f3
/* 8045DBBC  39 00 00 00 */	li r8, 0
/* 8045DBC0  4B E4 DD C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8045DBC4  48 00 00 90 */	b lbl_8045DC54
lbl_8045DBC8:
/* 8045DBC8  C0 1A 05 A8 */	lfs f0, 0x5a8(r26)
/* 8045DBCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045DBD0  C0 1A 05 AC */	lfs f0, 0x5ac(r26)
/* 8045DBD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045DBD8  C0 1A 05 B0 */	lfs f0, 0x5b0(r26)
/* 8045DBDC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045DBE0  7F 83 E3 78 */	mr r3, r28
/* 8045DBE4  38 81 00 10 */	addi r4, r1, 0x10
/* 8045DBE8  4B BE A7 DC */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8045DBEC  48 00 00 68 */	b lbl_8045DC54
lbl_8045DBF0:
/* 8045DBF0  C0 1A 05 B4 */	lfs f0, 0x5b4(r26)
/* 8045DBF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045DBF8  C0 1A 05 B8 */	lfs f0, 0x5b8(r26)
/* 8045DBFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045DC00  C0 1A 05 BC */	lfs f0, 0x5bc(r26)
/* 8045DC04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045DC08  7F 83 E3 78 */	mr r3, r28
/* 8045DC0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8045DC10  4B BE A7 B4 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8045DC14  48 00 00 40 */	b lbl_8045DC54
lbl_8045DC18:
/* 8045DC18  7F 43 D3 78 */	mr r3, r26
/* 8045DC1C  4B FF FB 29 */	bl calcMtx__12daDbDoor00_cFv
/* 8045DC20  38 00 00 00 */	li r0, 0
/* 8045DC24  B0 1A 05 90 */	sth r0, 0x590(r26)
/* 8045DC28  7F 83 E3 78 */	mr r3, r28
/* 8045DC2C  80 9A 05 98 */	lwz r4, 0x598(r26)
/* 8045DC30  3C A0 80 46 */	lis r5, struct_8045E56C+0x0@ha
/* 8045DC34  38 A5 E5 6C */	addi r5, r5, struct_8045E56C+0x0@l
/* 8045DC38  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 8045DC3C  38 C0 00 03 */	li r6, 3
/* 8045DC40  4B BE A4 AC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8045DC44  28 03 00 00 */	cmplwi r3, 0
/* 8045DC48  41 82 00 0C */	beq lbl_8045DC54
/* 8045DC4C  80 03 00 00 */	lwz r0, 0(r3)
/* 8045DC50  B0 1A 05 90 */	sth r0, 0x590(r26)
lbl_8045DC54:
/* 8045DC54  2C 1F 00 05 */	cmpwi r31, 5
/* 8045DC58  41 82 01 D4 */	beq lbl_8045DE2C
/* 8045DC5C  40 80 00 14 */	bge lbl_8045DC70
/* 8045DC60  2C 1F 00 03 */	cmpwi r31, 3
/* 8045DC64  41 82 01 C8 */	beq lbl_8045DE2C
/* 8045DC68  40 80 00 14 */	bge lbl_8045DC7C
/* 8045DC6C  48 00 01 B4 */	b lbl_8045DE20
lbl_8045DC70:
/* 8045DC70  2C 1F 00 08 */	cmpwi r31, 8
/* 8045DC74  41 82 00 F8 */	beq lbl_8045DD6C
/* 8045DC78  48 00 01 A8 */	b lbl_8045DE20
lbl_8045DC7C:
/* 8045DC7C  A8 7A 05 8C */	lha r3, 0x58c(r26)
/* 8045DC80  2C 03 00 FA */	cmpwi r3, 0xfa
/* 8045DC84  40 80 00 0C */	bge lbl_8045DC90
/* 8045DC88  38 03 00 32 */	addi r0, r3, 0x32
/* 8045DC8C  B0 1A 05 8C */	sth r0, 0x58c(r26)
lbl_8045DC90:
/* 8045DC90  A8 7A 05 8C */	lha r3, 0x58c(r26)
/* 8045DC94  A8 1A 05 8A */	lha r0, 0x58a(r26)
/* 8045DC98  7C 03 00 50 */	subf r0, r3, r0
/* 8045DC9C  2C 00 E3 8F */	cmpwi r0, -7281
/* 8045DCA0  40 80 00 1C */	bge lbl_8045DCBC
/* 8045DCA4  38 00 E3 8F */	li r0, -7281
/* 8045DCA8  B0 1A 05 8A */	sth r0, 0x58a(r26)
/* 8045DCAC  7F 83 E3 78 */	mr r3, r28
/* 8045DCB0  80 9A 05 98 */	lwz r4, 0x598(r26)
/* 8045DCB4  4B BE A4 C8 */	b cutEnd__16dEvent_manager_cFi
/* 8045DCB8  48 00 00 08 */	b lbl_8045DCC0
lbl_8045DCBC:
/* 8045DCBC  B0 1A 05 8A */	sth r0, 0x58a(r26)
lbl_8045DCC0:
/* 8045DCC0  7F 43 D3 78 */	mr r3, r26
/* 8045DCC4  4B FF FA 81 */	bl calcMtx__12daDbDoor00_cFv
/* 8045DCC8  88 1A 05 85 */	lbz r0, 0x585(r26)
/* 8045DCCC  28 00 00 00 */	cmplwi r0, 0
/* 8045DCD0  41 82 00 1C */	beq lbl_8045DCEC
/* 8045DCD4  A8 9A 05 8A */	lha r4, 0x58a(r26)
/* 8045DCD8  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 8045DCDC  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045DCE0  7C 04 00 50 */	subf r0, r4, r0
/* 8045DCE4  7C 00 07 34 */	extsh r0, r0
/* 8045DCE8  48 00 00 18 */	b lbl_8045DD00
lbl_8045DCEC:
/* 8045DCEC  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 8045DCF0  A8 1A 05 8A */	lha r0, 0x58a(r26)
/* 8045DCF4  7C 63 02 14 */	add r3, r3, r0
/* 8045DCF8  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045DCFC  7C 00 07 34 */	extsh r0, r0
lbl_8045DD00:
/* 8045DD00  B0 01 00 08 */	sth r0, 8(r1)
/* 8045DD04  7F 63 DB 78 */	mr r3, r27
/* 8045DD08  38 9A 05 9C */	addi r4, r26, 0x59c
/* 8045DD0C  7C 05 07 34 */	extsh r5, r0
/* 8045DD10  38 C0 00 00 */	li r6, 0
/* 8045DD14  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8045DD18  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8045DD1C  7D 89 03 A6 */	mtctr r12
/* 8045DD20  4E 80 04 21 */	bctrl 
/* 8045DD24  A8 1A 05 C2 */	lha r0, 0x5c2(r26)
/* 8045DD28  2C 00 00 00 */	cmpwi r0, 0
/* 8045DD2C  40 82 00 30 */	bne lbl_8045DD5C
/* 8045DD30  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 8045DD34  7F 43 D3 78 */	mr r3, r26
/* 8045DD38  4B BD C4 EC */	b getExitNo__13door_param2_cFP10fopAc_ac_c
/* 8045DD3C  7C 64 1B 78 */	mr r4, r3
/* 8045DD40  7F 63 DB 78 */	mr r3, r27
/* 8045DD44  38 A0 00 FF */	li r5, 0xff
/* 8045DD48  38 C0 00 00 */	li r6, 0
/* 8045DD4C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8045DD50  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8045DD54  7D 89 03 A6 */	mtctr r12
/* 8045DD58  4E 80 04 21 */	bctrl 
lbl_8045DD5C:
/* 8045DD5C  A8 7A 05 C2 */	lha r3, 0x5c2(r26)
/* 8045DD60  38 03 FF FF */	addi r0, r3, -1
/* 8045DD64  B0 1A 05 C2 */	sth r0, 0x5c2(r26)
/* 8045DD68  48 00 00 C4 */	b lbl_8045DE2C
lbl_8045DD6C:
/* 8045DD6C  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8045DD70  B0 01 00 08 */	sth r0, 8(r1)
/* 8045DD74  38 61 00 08 */	addi r3, r1, 8
/* 8045DD78  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 8045DD7C  38 04 7F FF */	addi r0, r4, 0x7fff
/* 8045DD80  7C 04 07 34 */	extsh r4, r0
/* 8045DD84  38 A0 00 0A */	li r5, 0xa
/* 8045DD88  38 C0 08 00 */	li r6, 0x800
/* 8045DD8C  4B E1 28 7C */	b cLib_addCalcAngleS2__FPssss
/* 8045DD90  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 8045DD94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8045DD98  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8045DD9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045DDA0  C0 9B 04 D8 */	lfs f4, 0x4d8(r27)
/* 8045DDA4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8045DDA8  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 8045DDAC  EC 23 00 72 */	fmuls f1, f3, f1
/* 8045DDB0  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 8045DDB4  C0 1A 05 9C */	lfs f0, 0x59c(r26)
/* 8045DDB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8045DDBC  EC 01 00 2A */	fadds f0, f1, f0
/* 8045DDC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045DDC4  EC 23 01 32 */	fmuls f1, f3, f4
/* 8045DDC8  C0 1A 05 A4 */	lfs f0, 0x5a4(r26)
/* 8045DDCC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8045DDD0  EC 01 00 2A */	fadds f0, f1, f0
/* 8045DDD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045DDD8  7F 63 DB 78 */	mr r3, r27
/* 8045DDDC  38 81 00 10 */	addi r4, r1, 0x10
/* 8045DDE0  A8 A1 00 08 */	lha r5, 8(r1)
/* 8045DDE4  38 C0 00 00 */	li r6, 0
/* 8045DDE8  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8045DDEC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8045DDF0  7D 89 03 A6 */	mtctr r12
/* 8045DDF4  4E 80 04 21 */	bctrl 
/* 8045DDF8  A8 7A 05 90 */	lha r3, 0x590(r26)
/* 8045DDFC  2C 03 00 00 */	cmpwi r3, 0
/* 8045DE00  40 81 00 10 */	ble lbl_8045DE10
/* 8045DE04  38 03 FF FF */	addi r0, r3, -1
/* 8045DE08  B0 1A 05 90 */	sth r0, 0x590(r26)
/* 8045DE0C  48 00 00 20 */	b lbl_8045DE2C
lbl_8045DE10:
/* 8045DE10  7F 83 E3 78 */	mr r3, r28
/* 8045DE14  80 9A 05 98 */	lwz r4, 0x598(r26)
/* 8045DE18  4B BE A3 64 */	b cutEnd__16dEvent_manager_cFi
/* 8045DE1C  48 00 00 10 */	b lbl_8045DE2C
lbl_8045DE20:
/* 8045DE20  7F 83 E3 78 */	mr r3, r28
/* 8045DE24  80 9A 05 98 */	lwz r4, 0x598(r26)
/* 8045DE28  4B BE A3 54 */	b cutEnd__16dEvent_manager_cFi
lbl_8045DE2C:
/* 8045DE2C  39 61 00 40 */	addi r11, r1, 0x40
/* 8045DE30  4B F0 43 EC */	b _restgpr_26
/* 8045DE34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045DE38  7C 08 03 A6 */	mtlr r0
/* 8045DE3C  38 21 00 40 */	addi r1, r1, 0x40
/* 8045DE40  4E 80 00 20 */	blr 
