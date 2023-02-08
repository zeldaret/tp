lbl_8011DB9C:
/* 8011DB9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011DBA0  7C 08 02 A6 */	mflr r0
/* 8011DBA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011DBA8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011DBAC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8011DBB0  7C 7E 1B 78 */	mr r30, r3
/* 8011DBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011DBB8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011DBBC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8011DBC0  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011DBC4  4B F2 A5 B9 */	bl cutEnd__16dEvent_manager_cFi
/* 8011DBC8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8011DBCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011DBD0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011DBD4  80 84 4F 8C */	lwz r4, 0x4f8c(r4)
/* 8011DBD8  4B F2 57 15 */	bl convPId__14dEvt_control_cFUi
/* 8011DBDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8011DBE0  38 00 00 60 */	li r0, 0x60
/* 8011DBE4  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8011DBE8  41 82 01 D0 */	beq lbl_8011DDB8
/* 8011DBEC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8011DBF0  80 63 00 04 */	lwz r3, 4(r3)
/* 8011DBF4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8011DBF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8011DBFC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8011DC00  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8011DC04  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8011DC08  48 22 88 A9 */	bl PSMTXCopy
/* 8011DC0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8011DC10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8011DC14  38 80 C0 00 */	li r4, -16384
/* 8011DC18  4B EE E8 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 8011DC1C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011DC20  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 8011DC24  C0 62 96 80 */	lfs f3, lit_38624(r2)
/* 8011DC28  4B EE F1 75 */	bl transM__14mDoMtx_stack_cFfff
/* 8011DC2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8011DC30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8011DC34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8011DC38  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8011DC3C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8011DC40  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8011DC44  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8011DC48  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8011DC4C  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 8011DC50  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 8011DC54  38 A1 00 24 */	addi r5, r1, 0x24
/* 8011DC58  48 22 91 F5 */	bl PSMTXMultVecSR
/* 8011DC5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8011DC60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8011DC64  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 8011DC68  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 8011DC6C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8011DC70  48 22 91 DD */	bl PSMTXMultVecSR
/* 8011DC74  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011DC78  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8011DC7C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8011DC80  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011DC84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8011DC88  40 80 01 24 */	bge lbl_8011DDAC
/* 8011DC8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8011DC90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8011DC94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8011DC98  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8011DC9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8011DCA0  38 61 00 0C */	addi r3, r1, 0xc
/* 8011DCA4  48 22 94 95 */	bl PSVECSquareMag
/* 8011DCA8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011DCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011DCB0  40 81 00 58 */	ble lbl_8011DD08
/* 8011DCB4  FC 00 08 34 */	frsqrte f0, f1
/* 8011DCB8  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8011DCBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8011DCC0  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8011DCC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8011DCC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8011DCCC  FC 03 00 28 */	fsub f0, f3, f0
/* 8011DCD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8011DCD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8011DCD8  FC 00 00 32 */	fmul f0, f0, f0
/* 8011DCDC  FC 01 00 32 */	fmul f0, f1, f0
/* 8011DCE0  FC 03 00 28 */	fsub f0, f3, f0
/* 8011DCE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8011DCE8  FC 44 00 32 */	fmul f2, f4, f0
/* 8011DCEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8011DCF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8011DCF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8011DCF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8011DCFC  FC 41 00 32 */	fmul f2, f1, f0
/* 8011DD00  FC 40 10 18 */	frsp f2, f2
/* 8011DD04  48 00 00 90 */	b lbl_8011DD94
lbl_8011DD08:
/* 8011DD08  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8011DD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011DD10  40 80 00 10 */	bge lbl_8011DD20
/* 8011DD14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8011DD18  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8011DD1C  48 00 00 78 */	b lbl_8011DD94
lbl_8011DD20:
/* 8011DD20  D0 21 00 08 */	stfs f1, 8(r1)
/* 8011DD24  80 81 00 08 */	lwz r4, 8(r1)
/* 8011DD28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8011DD2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8011DD30  7C 03 00 00 */	cmpw r3, r0
/* 8011DD34  41 82 00 14 */	beq lbl_8011DD48
/* 8011DD38  40 80 00 40 */	bge lbl_8011DD78
/* 8011DD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8011DD40  41 82 00 20 */	beq lbl_8011DD60
/* 8011DD44  48 00 00 34 */	b lbl_8011DD78
lbl_8011DD48:
/* 8011DD48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011DD4C  41 82 00 0C */	beq lbl_8011DD58
/* 8011DD50  38 00 00 01 */	li r0, 1
/* 8011DD54  48 00 00 28 */	b lbl_8011DD7C
lbl_8011DD58:
/* 8011DD58  38 00 00 02 */	li r0, 2
/* 8011DD5C  48 00 00 20 */	b lbl_8011DD7C
lbl_8011DD60:
/* 8011DD60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011DD64  41 82 00 0C */	beq lbl_8011DD70
/* 8011DD68  38 00 00 05 */	li r0, 5
/* 8011DD6C  48 00 00 10 */	b lbl_8011DD7C
lbl_8011DD70:
/* 8011DD70  38 00 00 03 */	li r0, 3
/* 8011DD74  48 00 00 08 */	b lbl_8011DD7C
lbl_8011DD78:
/* 8011DD78  38 00 00 04 */	li r0, 4
lbl_8011DD7C:
/* 8011DD7C  2C 00 00 01 */	cmpwi r0, 1
/* 8011DD80  40 82 00 10 */	bne lbl_8011DD90
/* 8011DD84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8011DD88  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8011DD8C  48 00 00 08 */	b lbl_8011DD94
lbl_8011DD90:
/* 8011DD90  FC 40 08 90 */	fmr f2, f1
lbl_8011DD94:
/* 8011DD94  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8011DD98  FC 20 00 50 */	fneg f1, f0
/* 8011DD9C  FC 40 10 50 */	fneg f2, f2
/* 8011DDA0  48 14 98 D5 */	bl cM_atan2s__Fff
/* 8011DDA4  B0 7E 04 E4 */	sth r3, 0x4e4(r30)
/* 8011DDA8  48 00 00 10 */	b lbl_8011DDB8
lbl_8011DDAC:
/* 8011DDAC  38 61 00 24 */	addi r3, r1, 0x24
/* 8011DDB0  48 14 93 A1 */	bl atan2sY_XZ__4cXyzCFv
/* 8011DDB4  B0 7E 04 E4 */	sth r3, 0x4e4(r30)
lbl_8011DDB8:
/* 8011DDB8  38 60 00 01 */	li r3, 1
/* 8011DDBC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011DDC0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8011DDC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011DDC8  7C 08 03 A6 */	mtlr r0
/* 8011DDCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8011DDD0  4E 80 00 20 */	blr 
