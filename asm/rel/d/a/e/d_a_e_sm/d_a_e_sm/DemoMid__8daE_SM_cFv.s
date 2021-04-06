lbl_80796628:
/* 80796628  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079662C  7C 08 02 A6 */	mflr r0
/* 80796630  90 01 00 44 */	stw r0, 0x44(r1)
/* 80796634  39 61 00 40 */	addi r11, r1, 0x40
/* 80796638  4B BC BB A5 */	bl _savegpr_29
/* 8079663C  7C 7F 1B 78 */	mr r31, r3
/* 80796640  3C 80 80 7A */	lis r4, lit_3920@ha /* 0x807985E0@ha */
/* 80796644  3B C4 85 E0 */	addi r30, r4, lit_3920@l /* 0x807985E0@l */
/* 80796648  3B A0 00 01 */	li r29, 1
/* 8079664C  A8 03 0A 0C */	lha r0, 0xa0c(r3)
/* 80796650  2C 00 00 01 */	cmpwi r0, 1
/* 80796654  41 82 00 A0 */	beq lbl_807966F4
/* 80796658  40 80 02 14 */	bge lbl_8079686C
/* 8079665C  2C 00 00 00 */	cmpwi r0, 0
/* 80796660  40 80 00 08 */	bge lbl_80796668
/* 80796664  48 00 02 08 */	b lbl_8079686C
lbl_80796668:
/* 80796668  C0 1F 09 90 */	lfs f0, 0x990(r31)
/* 8079666C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80796670  C0 1F 09 94 */	lfs f0, 0x994(r31)
/* 80796674  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80796678  C0 1F 09 98 */	lfs f0, 0x998(r31)
/* 8079667C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80796680  38 81 00 18 */	addi r4, r1, 0x18
/* 80796684  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80796688  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8079668C  3C A0 80 7A */	lis r5, data_807989E4@ha /* 0x807989E4@ha */
/* 80796690  38 A5 89 E4 */	addi r5, r5, data_807989E4@l /* 0x807989E4@l */
/* 80796694  A8 A5 00 00 */	lha r5, 0(r5)
/* 80796698  4B FF FB 6D */	bl SetStopCam__8daE_SM_cF4cXyzffs
/* 8079669C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807966A0  D0 1F 09 D4 */	stfs f0, 0x9d4(r31)
/* 807966A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807966A8  D0 1F 09 D8 */	stfs f0, 0x9d8(r31)
/* 807966AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807966B0  D0 1F 09 DC */	stfs f0, 0x9dc(r31)
/* 807966B4  C0 3F 09 D8 */	lfs f1, 0x9d8(r31)
/* 807966B8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 807966BC  EC 01 00 2A */	fadds f0, f1, f0
/* 807966C0  D0 1F 09 D8 */	stfs f0, 0x9d8(r31)
/* 807966C4  C0 1F 09 D4 */	lfs f0, 0x9d4(r31)
/* 807966C8  D0 1F 09 E0 */	stfs f0, 0x9e0(r31)
/* 807966CC  C0 1F 09 D8 */	lfs f0, 0x9d8(r31)
/* 807966D0  D0 1F 09 E4 */	stfs f0, 0x9e4(r31)
/* 807966D4  C0 1F 09 DC */	lfs f0, 0x9dc(r31)
/* 807966D8  D0 1F 09 E8 */	stfs f0, 0x9e8(r31)
/* 807966DC  7F E3 FB 78 */	mr r3, r31
/* 807966E0  4B FF FC 89 */	bl SetStopingCam__8daE_SM_cFv
/* 807966E4  A8 7F 0A 0C */	lha r3, 0xa0c(r31)
/* 807966E8  38 03 00 01 */	addi r0, r3, 1
/* 807966EC  B0 1F 0A 0C */	sth r0, 0xa0c(r31)
/* 807966F0  48 00 01 7C */	b lbl_8079686C
lbl_807966F4:
/* 807966F4  C0 7F 04 D0 */	lfs f3, 0x4d0(r31)
/* 807966F8  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 807966FC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80796700  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80796704  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80796708  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8079670C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80796710  EC 02 00 2A */	fadds f0, f2, f0
/* 80796714  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80796718  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8079671C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80796720  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80796724  38 81 00 0C */	addi r4, r1, 0xc
/* 80796728  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8079672C  C0 5E 01 68 */	lfs f2, 0x168(r30)
/* 80796730  4B FF FB F5 */	bl SetCMoveCam__8daE_SM_cF4cXyzff
/* 80796734  7F E3 FB 78 */	mr r3, r31
/* 80796738  4B FF FC 31 */	bl SetStopingCam__8daE_SM_cFv
/* 8079673C  88 1F 09 C4 */	lbz r0, 0x9c4(r31)
/* 80796740  7C 00 07 75 */	extsb. r0, r0
/* 80796744  40 82 01 28 */	bne lbl_8079686C
/* 80796748  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 8079674C  2C 00 00 15 */	cmpwi r0, 0x15
/* 80796750  41 82 00 58 */	beq lbl_807967A8
/* 80796754  2C 00 00 14 */	cmpwi r0, 0x14
/* 80796758  41 82 00 50 */	beq lbl_807967A8
/* 8079675C  38 00 00 03 */	li r0, 3
/* 80796760  B0 1F 09 8A */	sth r0, 0x98a(r31)
/* 80796764  7F E3 FB 78 */	mr r3, r31
/* 80796768  38 80 00 15 */	li r4, 0x15
/* 8079676C  38 A0 00 00 */	li r5, 0
/* 80796770  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80796774  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80796778  4B FF BA E9 */	bl SetAnm__8daE_SM_cFiiff
/* 8079677C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CC@ha */
/* 80796780  38 03 02 CC */	addi r0, r3, 0x02CC /* 0x000702CC@l */
/* 80796784  90 01 00 08 */	stw r0, 8(r1)
/* 80796788  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8079678C  38 81 00 08 */	addi r4, r1, 8
/* 80796790  38 A0 FF FF */	li r5, -1
/* 80796794  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 80796798  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8079679C  7D 89 03 A6 */	mtctr r12
/* 807967A0  4E 80 04 21 */	bctrl 
/* 807967A4  48 00 00 A4 */	b lbl_80796848
lbl_807967A8:
/* 807967A8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807967AC  38 80 00 01 */	li r4, 1
/* 807967B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807967B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807967B8  40 82 00 18 */	bne lbl_807967D0
/* 807967BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807967C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807967C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807967C8  41 82 00 08 */	beq lbl_807967D0
/* 807967CC  38 80 00 00 */	li r4, 0
lbl_807967D0:
/* 807967D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807967D4  41 82 00 74 */	beq lbl_80796848
/* 807967D8  38 00 00 00 */	li r0, 0
/* 807967DC  B0 1F 09 88 */	sth r0, 0x988(r31)
/* 807967E0  B0 1F 09 8A */	sth r0, 0x98a(r31)
/* 807967E4  B0 1F 09 8C */	sth r0, 0x98c(r31)
/* 807967E8  B0 1F 06 B0 */	sth r0, 0x6b0(r31)
/* 807967EC  B0 1F 06 B2 */	sth r0, 0x6b2(r31)
/* 807967F0  B0 1F 06 B4 */	sth r0, 0x6b4(r31)
/* 807967F4  B0 1F 06 B6 */	sth r0, 0x6b6(r31)
/* 807967F8  7F E3 FB 78 */	mr r3, r31
/* 807967FC  4B FF FB F1 */	bl SetReleaseCam__8daE_SM_cFv
/* 80796800  38 00 00 00 */	li r0, 0
/* 80796804  98 1F 0A 08 */	stb r0, 0xa08(r31)
/* 80796808  88 9F 06 81 */	lbz r4, 0x681(r31)
/* 8079680C  28 04 00 FF */	cmplwi r4, 0xff
/* 80796810  41 82 00 38 */	beq lbl_80796848
/* 80796814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80796818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079681C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80796820  7C 05 07 74 */	extsb r5, r0
/* 80796824  4B 89 EB 3D */	bl isSwitch__10dSv_info_cCFii
/* 80796828  2C 03 00 00 */	cmpwi r3, 0
/* 8079682C  40 82 00 1C */	bne lbl_80796848
/* 80796830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80796834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80796838  88 9F 06 81 */	lbz r4, 0x681(r31)
/* 8079683C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80796840  7C 05 07 74 */	extsb r5, r0
/* 80796844  4B 89 E9 BD */	bl onSwitch__10dSv_info_cFii
lbl_80796848:
/* 80796848  3B A0 00 00 */	li r29, 0
/* 8079684C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80796850  38 9F 09 EC */	addi r4, r31, 0x9ec
/* 80796854  4B AD A3 B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80796858  B0 7F 06 D8 */	sth r3, 0x6d8(r31)
/* 8079685C  A8 1F 06 D8 */	lha r0, 0x6d8(r31)
/* 80796860  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80796864  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80796868  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_8079686C:
/* 8079686C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80796870  41 82 00 0C */	beq lbl_8079687C
/* 80796874  7F E3 FB 78 */	mr r3, r31
/* 80796878  4B FF E9 CD */	bl E_SM_C_Free__8daE_SM_cFv
lbl_8079687C:
/* 8079687C  3C 60 80 7A */	lis r3, data_807989E4@ha /* 0x807989E4@ha */
/* 80796880  A8 03 89 E4 */	lha r0, data_807989E4@l(r3)  /* 0x807989E4@l */
/* 80796884  B0 1F 09 B2 */	sth r0, 0x9b2(r31)
/* 80796888  39 61 00 40 */	addi r11, r1, 0x40
/* 8079688C  4B BC B9 9D */	bl _restgpr_29
/* 80796890  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80796894  7C 08 03 A6 */	mtlr r0
/* 80796898  38 21 00 40 */	addi r1, r1, 0x40
/* 8079689C  4E 80 00 20 */	blr 
