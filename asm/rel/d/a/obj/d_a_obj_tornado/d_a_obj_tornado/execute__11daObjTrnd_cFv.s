lbl_80D1C0F0:
/* 80D1C0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C0F4  7C 08 02 A6 */	mflr r0
/* 80D1C0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C0FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1C100  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1C104  7C 7F 1B 78 */	mr r31, r3
/* 80D1C108  3C 60 80 D2 */	lis r3, lit_3628@ha /* 0x80D1C354@ha */
/* 80D1C10C  3B C3 C3 54 */	addi r30, r3, lit_3628@l /* 0x80D1C354@l */
/* 80D1C110  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D1C114  54 04 46 3E */	srwi r4, r0, 0x18
/* 80D1C118  28 04 00 FF */	cmplwi r4, 0xff
/* 80D1C11C  41 82 00 58 */	beq lbl_80D1C174
/* 80D1C120  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1C124  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1C128  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D1C12C  7C 05 07 74 */	extsb r5, r0
/* 80D1C130  4B 31 92 31 */	bl isSwitch__10dSv_info_cCFii
/* 80D1C134  2C 03 00 00 */	cmpwi r3, 0
/* 80D1C138  40 82 00 3C */	bne lbl_80D1C174
/* 80D1C13C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1C140  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 80D1C144  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1C148  41 82 00 10 */	beq lbl_80D1C158
/* 80D1C14C  D0 3F 07 3C */	stfs f1, 0x73c(r31)
/* 80D1C150  7F E3 FB 78 */	mr r3, r31
/* 80D1C154  4B FF F8 B9 */	bl cutPntWind__11daObjTrnd_cFv
lbl_80D1C158:
/* 80D1C158  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80D1C15C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D1C160  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80D1C164  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80D1C168  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80D1C16C  4B 55 38 11 */	bl cLib_addCalc__FPfffff
/* 80D1C170  48 00 00 B0 */	b lbl_80D1C220
lbl_80D1C174:
/* 80D1C174  A8 7F 07 38 */	lha r3, 0x738(r31)
/* 80D1C178  7C 60 07 35 */	extsh. r0, r3
/* 80D1C17C  40 81 00 54 */	ble lbl_80D1C1D0
/* 80D1C180  38 03 FF FF */	addi r0, r3, -1
/* 80D1C184  B0 1F 07 38 */	sth r0, 0x738(r31)
/* 80D1C188  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1C18C  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 80D1C190  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1C194  40 82 00 20 */	bne lbl_80D1C1B4
/* 80D1C198  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80D1C19C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D1C1A0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80D1C1A4  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80D1C1A8  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80D1C1AC  4B 55 37 D1 */	bl cLib_addCalc__FPfffff
/* 80D1C1B0  48 00 00 70 */	b lbl_80D1C220
lbl_80D1C1B4:
/* 80D1C1B4  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80D1C1B8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80D1C1BC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80D1C1C0  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80D1C1C4  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80D1C1C8  4B 55 37 B5 */	bl cLib_addCalc__FPfffff
/* 80D1C1CC  48 00 00 54 */	b lbl_80D1C220
lbl_80D1C1D0:
/* 80D1C1D0  7C 60 07 35 */	extsh. r0, r3
/* 80D1C1D4  40 82 00 4C */	bne lbl_80D1C220
/* 80D1C1D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D1C1DC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D1C1E0  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80D1C1E4  B0 1F 07 38 */	sth r0, 0x738(r31)
/* 80D1C1E8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1C1EC  C0 1F 07 3C */	lfs f0, 0x73c(r31)
/* 80D1C1F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1C1F4  40 82 00 20 */	bne lbl_80D1C214
/* 80D1C1F8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80D1C1FC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D1C200  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1C204  D0 1F 07 3C */	stfs f0, 0x73c(r31)
/* 80D1C208  7F E3 FB 78 */	mr r3, r31
/* 80D1C20C  4B FF F7 8D */	bl setPntWind__11daObjTrnd_cFv
/* 80D1C210  48 00 00 10 */	b lbl_80D1C220
lbl_80D1C214:
/* 80D1C214  D0 3F 07 3C */	stfs f1, 0x73c(r31)
/* 80D1C218  7F E3 FB 78 */	mr r3, r31
/* 80D1C21C  4B FF F7 F1 */	bl cutPntWind__11daObjTrnd_cFv
lbl_80D1C220:
/* 80D1C220  38 60 00 00 */	li r3, 0
/* 80D1C224  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80D1C228  4B 33 F3 F5 */	bl dKyw_evt_wind_set__Fss
/* 80D1C22C  C0 3F 07 6C */	lfs f1, 0x76c(r31)
/* 80D1C230  4B 33 F3 DD */	bl dKyw_custom_windpower__Ff
/* 80D1C234  7F E3 FB 78 */	mr r3, r31
/* 80D1C238  4B FF FA 09 */	bl setCpsInfo__11daObjTrnd_cFv
/* 80D1C23C  7F E3 FB 78 */	mr r3, r31
/* 80D1C240  4B FF FB E5 */	bl setBaseMtx__11daObjTrnd_cFv
/* 80D1C244  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1C248  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 80D1C24C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1C250  41 82 00 24 */	beq lbl_80D1C274
/* 80D1C254  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 80D1C258  38 9F 06 E8 */	addi r4, r31, 0x6e8
/* 80D1C25C  4B 55 2D E1 */	bl Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80D1C260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1C264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1C268  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D1C26C  38 9F 05 A4 */	addi r4, r31, 0x5a4
/* 80D1C270  4B 54 89 39 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80D1C274:
/* 80D1C274  38 60 00 01 */	li r3, 1
/* 80D1C278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1C27C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1C280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C284  7C 08 03 A6 */	mtlr r0
/* 80D1C288  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C28C  4E 80 00 20 */	blr 
