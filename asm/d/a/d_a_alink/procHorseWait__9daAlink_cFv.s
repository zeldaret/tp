lbl_800F0AA4:
/* 800F0AA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F0AA8  7C 08 02 A6 */	mflr r0
/* 800F0AAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F0AB0  39 61 00 30 */	addi r11, r1, 0x30
/* 800F0AB4  48 27 17 29 */	bl _savegpr_29
/* 800F0AB8  7C 7F 1B 78 */	mr r31, r3
/* 800F0ABC  4B FF EB F5 */	bl checkHorseGetOffAndSetDoStatus__9daAlink_cFv
/* 800F0AC0  7C 7D 1B 78 */	mr r29, r3
/* 800F0AC4  7F E3 FB 78 */	mr r3, r31
/* 800F0AC8  38 80 00 01 */	li r4, 1
/* 800F0ACC  4B FF DE 4D */	bl setSyncRide__9daAlink_cFi
/* 800F0AD0  2C 03 00 00 */	cmpwi r3, 0
/* 800F0AD4  40 82 00 0C */	bne lbl_800F0AE0
/* 800F0AD8  38 60 00 01 */	li r3, 1
/* 800F0ADC  48 00 01 78 */	b lbl_800F0C54
lbl_800F0AE0:
/* 800F0AE0  83 DF 28 18 */	lwz r30, 0x2818(r31)
/* 800F0AE4  7F E3 FB 78 */	mr r3, r31
/* 800F0AE8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F0AEC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F0AF0  7D 89 03 A6 */	mtctr r12
/* 800F0AF4  4E 80 04 21 */	bctrl 
/* 800F0AF8  28 03 00 00 */	cmplwi r3, 0
/* 800F0AFC  41 82 00 2C */	beq lbl_800F0B28
/* 800F0B00  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 800F0B04  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800F0B08  41 82 00 20 */	beq lbl_800F0B28
/* 800F0B0C  7F E3 FB 78 */	mr r3, r31
/* 800F0B10  48 02 51 11 */	bl checkEventRun__9daAlink_cCFv
/* 800F0B14  2C 03 00 00 */	cmpwi r3, 0
/* 800F0B18  40 82 00 10 */	bne lbl_800F0B28
/* 800F0B1C  7F E3 FB 78 */	mr r3, r31
/* 800F0B20  48 00 23 C1 */	bl procHorseRunInit__9daAlink_cFv
/* 800F0B24  48 00 01 30 */	b lbl_800F0C54
lbl_800F0B28:
/* 800F0B28  7F E3 FB 78 */	mr r3, r31
/* 800F0B2C  38 80 00 01 */	li r4, 1
/* 800F0B30  4B FC 70 C9 */	bl orderTalk__9daAlink_cFi
/* 800F0B34  2C 03 00 00 */	cmpwi r3, 0
/* 800F0B38  41 82 00 0C */	beq lbl_800F0B44
/* 800F0B3C  38 60 00 01 */	li r3, 1
/* 800F0B40  48 00 01 14 */	b lbl_800F0C54
lbl_800F0B44:
/* 800F0B44  7F E3 FB 78 */	mr r3, r31
/* 800F0B48  4B FF E9 09 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F0B4C  2C 03 00 00 */	cmpwi r3, 0
/* 800F0B50  40 82 01 00 */	bne lbl_800F0C50
/* 800F0B54  7F E3 FB 78 */	mr r3, r31
/* 800F0B58  7F A4 EB 78 */	mr r4, r29
/* 800F0B5C  4B FF ED 29 */	bl setHorseGetOff__9daAlink_cFi
/* 800F0B60  2C 03 00 00 */	cmpwi r3, 0
/* 800F0B64  41 82 00 0C */	beq lbl_800F0B70
/* 800F0B68  38 60 00 01 */	li r3, 1
/* 800F0B6C  48 00 00 E8 */	b lbl_800F0C54
lbl_800F0B70:
/* 800F0B70  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800F0B74  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800F0B78  41 82 00 D8 */	beq lbl_800F0C50
/* 800F0B7C  3C 60 80 0F */	lis r3, daAlink_searchBoar__FP10fopAc_ac_cPv@ha /* 0x800EC724@ha */
/* 800F0B80  38 63 C7 24 */	addi r3, r3, daAlink_searchBoar__FP10fopAc_ac_cPv@l /* 0x800EC724@l */
/* 800F0B84  38 80 00 00 */	li r4, 0
/* 800F0B88  4B F2 8C 71 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800F0B8C  7C 7D 1B 79 */	or. r29, r3, r3
/* 800F0B90  41 82 00 C0 */	beq lbl_800F0C50
/* 800F0B94  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 800F0B98  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800F0B9C  48 18 00 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800F0BA0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800F0BA4  7C 00 18 50 */	subf r0, r0, r3
/* 800F0BA8  7C 03 07 34 */	extsh r3, r0
/* 800F0BAC  48 27 45 25 */	bl abs
/* 800F0BB0  7C 7E 1B 78 */	mr r30, r3
/* 800F0BB4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 800F0BB8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800F0BBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 800F0BC0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F0BC4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800F0BC8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800F0BCC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800F0BD0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800F0BD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800F0BD8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800F0BDC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800F0BE0  38 61 00 08 */	addi r3, r1, 8
/* 800F0BE4  38 81 00 14 */	addi r4, r1, 0x14
/* 800F0BE8  48 25 67 B5 */	bl PSVECSquareDistance
/* 800F0BEC  2C 1E 08 00 */	cmpwi r30, 0x800
/* 800F0BF0  40 81 00 28 */	ble lbl_800F0C18
/* 800F0BF4  2C 1E 50 00 */	cmpwi r30, 0x5000
/* 800F0BF8  40 80 00 20 */	bge lbl_800F0C18
/* 800F0BFC  C0 02 94 F4 */	lfs f0, lit_19580(r2)
/* 800F0C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0C04  40 80 00 14 */	bge lbl_800F0C18
/* 800F0C08  7F E3 FB 78 */	mr r3, r31
/* 800F0C0C  38 80 00 2E */	li r4, 0x2e
/* 800F0C10  4B FC 26 89 */	bl setBStatus__9daAlink_cFUc
/* 800F0C14  48 00 00 3C */	b lbl_800F0C50
lbl_800F0C18:
/* 800F0C18  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800F0C1C  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800F0C20  41 82 00 30 */	beq lbl_800F0C50
/* 800F0C24  38 00 00 2D */	li r0, 0x2d
/* 800F0C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F0C2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F0C30  98 03 5E 26 */	stb r0, 0x5e26(r3)
/* 800F0C34  38 00 00 05 */	li r0, 5
/* 800F0C38  98 03 5E 2D */	stb r0, 0x5e2d(r3)
/* 800F0C3C  38 00 00 00 */	li r0, 0
/* 800F0C40  98 03 5E 4B */	stb r0, 0x5e4b(r3)
/* 800F0C44  7F E3 FB 78 */	mr r3, r31
/* 800F0C48  38 80 00 2E */	li r4, 0x2e
/* 800F0C4C  4B FC 26 4D */	bl setBStatus__9daAlink_cFUc
lbl_800F0C50:
/* 800F0C50  38 60 00 01 */	li r3, 1
lbl_800F0C54:
/* 800F0C54  39 61 00 30 */	addi r11, r1, 0x30
/* 800F0C58  48 27 15 D1 */	bl _restgpr_29
/* 800F0C5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F0C60  7C 08 03 A6 */	mtlr r0
/* 800F0C64  38 21 00 30 */	addi r1, r1, 0x30
/* 800F0C68  4E 80 00 20 */	blr 
