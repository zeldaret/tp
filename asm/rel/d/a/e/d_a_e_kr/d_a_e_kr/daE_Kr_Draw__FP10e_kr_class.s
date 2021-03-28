lbl_80700204:
/* 80700204  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80700208  7C 08 02 A6 */	mflr r0
/* 8070020C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80700210  39 61 00 30 */	addi r11, r1, 0x30
/* 80700214  4B C6 1F C4 */	b _savegpr_28
/* 80700218  7C 7F 1B 78 */	mr r31, r3
/* 8070021C  88 03 06 74 */	lbz r0, 0x674(r3)
/* 80700220  28 00 00 00 */	cmplwi r0, 0
/* 80700224  41 82 00 0C */	beq lbl_80700230
/* 80700228  38 60 00 01 */	li r3, 1
/* 8070022C  48 00 01 08 */	b lbl_80700334
lbl_80700230:
/* 80700230  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80700234  83 C3 00 04 */	lwz r30, 4(r3)
/* 80700238  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8070023C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80700240  38 80 00 00 */	li r4, 0
/* 80700244  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80700248  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8070024C  4B AA 35 78 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80700250  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80700254  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80700258  80 9E 00 04 */	lwz r4, 4(r30)
/* 8070025C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80700260  4B AA 4B 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80700264  88 1F 0E FC */	lbz r0, 0xefc(r31)
/* 80700268  7C 00 07 75 */	extsb. r0, r0
/* 8070026C  41 82 00 B4 */	beq lbl_80700320
/* 80700270  83 DE 00 04 */	lwz r30, 4(r30)
/* 80700274  3B 80 00 00 */	li r28, 0
/* 80700278  48 00 00 98 */	b lbl_80700310
lbl_8070027C:
/* 8070027C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80700280  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80700284  7F A3 00 2E */	lwzx r29, r3, r0
/* 80700288  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8070028C  38 80 00 00 */	li r4, 0
/* 80700290  81 83 00 00 */	lwz r12, 0(r3)
/* 80700294  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80700298  7D 89 03 A6 */	mtctr r12
/* 8070029C  4E 80 04 21 */	bctrl 
/* 807002A0  C0 1F 0E F8 */	lfs f0, 0xef8(r31)
/* 807002A4  FC 00 00 1E */	fctiwz f0, f0
/* 807002A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 807002AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807002B0  B0 03 00 00 */	sth r0, 0(r3)
/* 807002B4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 807002B8  38 80 00 00 */	li r4, 0
/* 807002BC  81 83 00 00 */	lwz r12, 0(r3)
/* 807002C0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807002C4  7D 89 03 A6 */	mtctr r12
/* 807002C8  4E 80 04 21 */	bctrl 
/* 807002CC  C0 1F 0E F8 */	lfs f0, 0xef8(r31)
/* 807002D0  FC 00 00 1E */	fctiwz f0, f0
/* 807002D4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807002D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807002DC  B0 03 00 02 */	sth r0, 2(r3)
/* 807002E0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 807002E4  38 80 00 00 */	li r4, 0
/* 807002E8  81 83 00 00 */	lwz r12, 0(r3)
/* 807002EC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807002F0  7D 89 03 A6 */	mtctr r12
/* 807002F4  4E 80 04 21 */	bctrl 
/* 807002F8  C0 1F 0E F8 */	lfs f0, 0xef8(r31)
/* 807002FC  FC 00 00 1E */	fctiwz f0, f0
/* 80700300  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80700304  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80700308  B0 03 00 04 */	sth r0, 4(r3)
/* 8070030C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80700310:
/* 80700310  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80700314  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 80700318  7C 03 00 40 */	cmplw r3, r0
/* 8070031C  41 80 FF 60 */	blt lbl_8070027C
lbl_80700320:
/* 80700320  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80700324  4B 91 0E 9C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80700328  7F E3 FB 78 */	mr r3, r31
/* 8070032C  4B FF FE 49 */	bl daE_Kr_shadowDraw__FP10e_kr_class
/* 80700330  38 60 00 01 */	li r3, 1
lbl_80700334:
/* 80700334  39 61 00 30 */	addi r11, r1, 0x30
/* 80700338  4B C6 1E EC */	b _restgpr_28
/* 8070033C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80700340  7C 08 03 A6 */	mtlr r0
/* 80700344  38 21 00 30 */	addi r1, r1, 0x30
/* 80700348  4E 80 00 20 */	blr 
