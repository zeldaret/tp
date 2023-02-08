lbl_80811838:
/* 80811838  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8081183C  7C 08 02 A6 */	mflr r0
/* 80811840  90 01 00 64 */	stw r0, 0x64(r1)
/* 80811844  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80811848  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8081184C  7C 7E 1B 78 */	mr r30, r3
/* 80811850  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 80811854  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 80811858  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8081185C  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80811860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811864  4C 41 13 82 */	cror 2, 1, 2
/* 80811868  40 82 00 14 */	bne lbl_8081187C
/* 8081186C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80811870  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 80811874  60 00 02 00 */	ori r0, r0, 0x200
/* 80811878  90 1E 07 8C */	stw r0, 0x78c(r30)
lbl_8081187C:
/* 8081187C  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80811880  2C 00 00 02 */	cmpwi r0, 2
/* 80811884  41 82 03 7C */	beq lbl_80811C00
/* 80811888  40 80 00 14 */	bge lbl_8081189C
/* 8081188C  2C 00 00 00 */	cmpwi r0, 0
/* 80811890  41 82 00 18 */	beq lbl_808118A8
/* 80811894  40 80 02 9C */	bge lbl_80811B30
/* 80811898  48 00 07 94 */	b lbl_8081202C
lbl_8081189C:
/* 8081189C  2C 00 00 04 */	cmpwi r0, 4
/* 808118A0  40 80 07 8C */	bge lbl_8081202C
/* 808118A4  48 00 05 8C */	b lbl_80811E30
lbl_808118A8:
/* 808118A8  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 808118AC  2C 00 00 00 */	cmpwi r0, 0
/* 808118B0  41 82 00 3C */	beq lbl_808118EC
/* 808118B4  7F C3 F3 78 */	mr r3, r30
/* 808118B8  4B FF 71 25 */	bl setElecEffect2__8daE_YM_cFv
/* 808118BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 808118C0  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 808118C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 808118C8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 808118CC  38 81 00 1C */	addi r4, r1, 0x1c
/* 808118D0  38 A0 00 00 */	li r5, 0
/* 808118D4  38 C0 FF FF */	li r6, -1
/* 808118D8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 808118DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 808118E0  7D 89 03 A6 */	mtctr r12
/* 808118E4  4E 80 04 21 */	bctrl 
/* 808118E8  48 00 01 50 */	b lbl_80811A38
lbl_808118EC:
/* 808118EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808118F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808118F4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 808118F8  80 04 05 80 */	lwz r0, 0x580(r4)
/* 808118FC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80811900  40 82 00 10 */	bne lbl_80811910
/* 80811904  80 04 05 84 */	lwz r0, 0x584(r4)
/* 80811908  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081190C  41 82 01 2C */	beq lbl_80811A38
lbl_80811910:
/* 80811910  38 61 00 2C */	addi r3, r1, 0x2c
/* 80811914  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80811918  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8081191C  4B A5 52 19 */	bl __mi__4cXyzCFRC3Vec
/* 80811920  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80811924  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80811928  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8081192C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80811930  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80811934  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80811938  38 61 00 38 */	addi r3, r1, 0x38
/* 8081193C  4B B3 57 FD */	bl PSVECSquareMag
/* 80811940  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80811944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811948  40 81 00 58 */	ble lbl_808119A0
/* 8081194C  FC 00 08 34 */	frsqrte f0, f1
/* 80811950  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80811954  FC 44 00 32 */	fmul f2, f4, f0
/* 80811958  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8081195C  FC 00 00 32 */	fmul f0, f0, f0
/* 80811960  FC 01 00 32 */	fmul f0, f1, f0
/* 80811964  FC 03 00 28 */	fsub f0, f3, f0
/* 80811968  FC 02 00 32 */	fmul f0, f2, f0
/* 8081196C  FC 44 00 32 */	fmul f2, f4, f0
/* 80811970  FC 00 00 32 */	fmul f0, f0, f0
/* 80811974  FC 01 00 32 */	fmul f0, f1, f0
/* 80811978  FC 03 00 28 */	fsub f0, f3, f0
/* 8081197C  FC 02 00 32 */	fmul f0, f2, f0
/* 80811980  FC 44 00 32 */	fmul f2, f4, f0
/* 80811984  FC 00 00 32 */	fmul f0, f0, f0
/* 80811988  FC 01 00 32 */	fmul f0, f1, f0
/* 8081198C  FC 03 00 28 */	fsub f0, f3, f0
/* 80811990  FC 02 00 32 */	fmul f0, f2, f0
/* 80811994  FC 21 00 32 */	fmul f1, f1, f0
/* 80811998  FC 20 08 18 */	frsp f1, f1
/* 8081199C  48 00 00 88 */	b lbl_80811A24
lbl_808119A0:
/* 808119A0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 808119A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808119A8  40 80 00 10 */	bge lbl_808119B8
/* 808119AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 808119B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 808119B4  48 00 00 70 */	b lbl_80811A24
lbl_808119B8:
/* 808119B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 808119BC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 808119C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 808119C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 808119C8  7C 03 00 00 */	cmpw r3, r0
/* 808119CC  41 82 00 14 */	beq lbl_808119E0
/* 808119D0  40 80 00 40 */	bge lbl_80811A10
/* 808119D4  2C 03 00 00 */	cmpwi r3, 0
/* 808119D8  41 82 00 20 */	beq lbl_808119F8
/* 808119DC  48 00 00 34 */	b lbl_80811A10
lbl_808119E0:
/* 808119E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808119E4  41 82 00 0C */	beq lbl_808119F0
/* 808119E8  38 00 00 01 */	li r0, 1
/* 808119EC  48 00 00 28 */	b lbl_80811A14
lbl_808119F0:
/* 808119F0  38 00 00 02 */	li r0, 2
/* 808119F4  48 00 00 20 */	b lbl_80811A14
lbl_808119F8:
/* 808119F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808119FC  41 82 00 0C */	beq lbl_80811A08
/* 80811A00  38 00 00 05 */	li r0, 5
/* 80811A04  48 00 00 10 */	b lbl_80811A14
lbl_80811A08:
/* 80811A08  38 00 00 03 */	li r0, 3
/* 80811A0C  48 00 00 08 */	b lbl_80811A14
lbl_80811A10:
/* 80811A10  38 00 00 04 */	li r0, 4
lbl_80811A14:
/* 80811A14  2C 00 00 01 */	cmpwi r0, 1
/* 80811A18  40 82 00 0C */	bne lbl_80811A24
/* 80811A1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80811A20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80811A24:
/* 80811A24  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80811A28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811A2C  40 80 00 0C */	bge lbl_80811A38
/* 80811A30  38 00 00 0A */	li r0, 0xa
/* 80811A34  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
lbl_80811A38:
/* 80811A38  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 80811A3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80811A40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80811A44  41 82 00 10 */	beq lbl_80811A54
/* 80811A48  38 00 00 04 */	li r0, 4
/* 80811A4C  90 1E 07 14 */	stw r0, 0x714(r30)
/* 80811A50  48 00 00 0C */	b lbl_80811A5C
lbl_80811A54:
/* 80811A54  38 00 00 00 */	li r0, 0
/* 80811A58  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_80811A5C:
/* 80811A5C  38 00 01 45 */	li r0, 0x145
/* 80811A60  90 1E 09 A0 */	stw r0, 0x9a0(r30)
/* 80811A64  38 00 00 00 */	li r0, 0
/* 80811A68  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80811A6C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80811A70  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80811A74  38 00 00 01 */	li r0, 1
/* 80811A78  98 1E 06 A4 */	stb r0, 0x6a4(r30)
/* 80811A7C  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 80811A80  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80811A84  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80811A88  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80811A8C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80811A90  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80811A94  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80811A98  88 9E 06 A3 */	lbz r4, 0x6a3(r30)
/* 80811A9C  28 04 00 FF */	cmplwi r4, 0xff
/* 80811AA0  41 82 00 20 */	beq lbl_80811AC0
/* 80811AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80811AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80811AAC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80811AB0  7C 05 07 74 */	extsb r5, r0
/* 80811AB4  4B 82 38 AD */	bl isSwitch__10dSv_info_cCFii
/* 80811AB8  2C 03 00 00 */	cmpwi r3, 0
/* 80811ABC  41 82 05 70 */	beq lbl_8081202C
lbl_80811AC0:
/* 80811AC0  38 00 00 00 */	li r0, 0
/* 80811AC4  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 80811AC8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80811ACC  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 80811AD0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80811AD4  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 80811AD8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80811ADC  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80811AE0  B0 1E 06 E4 */	sth r0, 0x6e4(r30)
/* 80811AE4  7F C3 F3 78 */	mr r3, r30
/* 80811AE8  4B FF 82 9D */	bl setAppear__8daE_YM_cFv
/* 80811AEC  7F C3 F3 78 */	mr r3, r30
/* 80811AF0  4B FF 82 7D */	bl setNormalCc__8daE_YM_cFv
/* 80811AF4  38 00 00 00 */	li r0, 0
/* 80811AF8  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80811AFC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80811B00  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80811B04  38 00 00 01 */	li r0, 1
/* 80811B08  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80811B0C  7F C3 F3 78 */	mr r3, r30
/* 80811B10  38 80 00 0D */	li r4, 0xd
/* 80811B14  38 A0 00 00 */	li r5, 0
/* 80811B18  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80811B1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80811B20  4B FF 68 09 */	bl bckSetFly__8daE_YM_cFiUcff
/* 80811B24  38 00 00 00 */	li r0, 0
/* 80811B28  98 1E 06 A5 */	stb r0, 0x6a5(r30)
/* 80811B2C  48 00 05 00 */	b lbl_8081202C
lbl_80811B30:
/* 80811B30  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80811B34  38 63 00 0C */	addi r3, r3, 0xc
/* 80811B38  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80811B3C  4B B1 68 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 80811B40  2C 03 00 00 */	cmpwi r3, 0
/* 80811B44  41 82 00 0C */	beq lbl_80811B50
/* 80811B48  38 00 00 01 */	li r0, 1
/* 80811B4C  98 1E 06 CC */	stb r0, 0x6cc(r30)
lbl_80811B50:
/* 80811B50  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80811B54  38 63 00 0C */	addi r3, r3, 0xc
/* 80811B58  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80811B5C  4B B1 68 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 80811B60  2C 03 00 00 */	cmpwi r3, 0
/* 80811B64  41 82 00 9C */	beq lbl_80811C00
/* 80811B68  38 00 00 2E */	li r0, 0x2e
/* 80811B6C  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80811B70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80811B74  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80811B78  38 60 01 F7 */	li r3, 0x1f7
/* 80811B7C  38 9E 06 60 */	addi r4, r30, 0x660
/* 80811B80  4B 80 7E AD */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80811B84  80 9E 06 60 */	lwz r4, 0x660(r30)
/* 80811B88  28 04 00 00 */	cmplwi r4, 0
/* 80811B8C  41 82 00 60 */	beq lbl_80811BEC
/* 80811B90  38 C0 00 00 */	li r6, 0
/* 80811B94  38 00 00 14 */	li r0, 0x14
/* 80811B98  7C 09 03 A6 */	mtctr r0
lbl_80811B9C:
/* 80811B9C  54 C5 06 3E */	clrlwi r5, r6, 0x18
/* 80811BA0  38 05 06 5C */	addi r0, r5, 0x65c
/* 80811BA4  7C 64 00 AE */	lbzx r3, r4, r0
/* 80811BA8  88 1E 06 C8 */	lbz r0, 0x6c8(r30)
/* 80811BAC  7C 03 00 40 */	cmplw r3, r0
/* 80811BB0  40 82 00 28 */	bne lbl_80811BD8
/* 80811BB4  38 61 00 20 */	addi r3, r1, 0x20
/* 80811BB8  48 00 3D A1 */	bl getPos__13daTag_FWall_cFUc
/* 80811BBC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80811BC0  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80811BC4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80811BC8  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 80811BCC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80811BD0  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 80811BD4  48 00 00 0C */	b lbl_80811BE0
lbl_80811BD8:
/* 80811BD8  38 C6 00 01 */	addi r6, r6, 1
/* 80811BDC  42 00 FF C0 */	bdnz lbl_80811B9C
lbl_80811BE0:
/* 80811BE0  38 00 00 02 */	li r0, 2
/* 80811BE4  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80811BE8  48 00 00 18 */	b lbl_80811C00
lbl_80811BEC:
/* 80811BEC  7F C3 F3 78 */	mr r3, r30
/* 80811BF0  38 80 00 00 */	li r4, 0
/* 80811BF4  4B FF FB 4D */	bl initFireFly__8daE_YM_cFi
/* 80811BF8  38 00 00 03 */	li r0, 3
/* 80811BFC  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_80811C00:
/* 80811C00  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80811C04  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80811C08  40 82 00 14 */	bne lbl_80811C1C
/* 80811C0C  7F C3 F3 78 */	mr r3, r30
/* 80811C10  4B FF 6F 2D */	bl setFireEffect__8daE_YM_cFv
/* 80811C14  7F C3 F3 78 */	mr r3, r30
/* 80811C18  4B FF 6D C5 */	bl setElecEffect2__8daE_YM_cFv
lbl_80811C1C:
/* 80811C1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 80811C20  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 80811C24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80811C28  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80811C2C  38 81 00 18 */	addi r4, r1, 0x18
/* 80811C30  38 A0 00 00 */	li r5, 0
/* 80811C34  38 C0 FF FF */	li r6, -1
/* 80811C38  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80811C3C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80811C40  7D 89 03 A6 */	mtctr r12
/* 80811C44  4E 80 04 21 */	bctrl 
/* 80811C48  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 80811C4C  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 80811C50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80811C54  FC 00 00 1E */	fctiwz f0, f0
/* 80811C58  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80811C5C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80811C60  B0 1E 07 00 */	sth r0, 0x700(r30)
/* 80811C64  80 1E 09 74 */	lwz r0, 0x974(r30)
/* 80811C68  60 00 00 01 */	ori r0, r0, 1
/* 80811C6C  90 1E 09 74 */	stw r0, 0x974(r30)
/* 80811C70  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80811C74  38 9E 06 7C */	addi r4, r30, 0x67c
/* 80811C78  4B A5 EF 8D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80811C7C  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80811C80  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80811C84  38 9E 06 7C */	addi r4, r30, 0x67c
/* 80811C88  4B A5 EF ED */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80811C8C  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80811C90  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80811C94  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80811C98  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80811C9C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80811CA0  7C 64 02 14 */	add r3, r4, r0
/* 80811CA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80811CA8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80811CAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80811CB0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80811CB4  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80811CB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80811CBC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80811CC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80811CC4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80811CC8  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80811CCC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80811CD0  4B B3 56 CD */	bl PSVECSquareDistance
/* 80811CD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80811CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811CDC  40 81 00 58 */	ble lbl_80811D34
/* 80811CE0  FC 00 08 34 */	frsqrte f0, f1
/* 80811CE4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80811CE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80811CEC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80811CF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80811CF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80811CF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80811CFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80811D00  FC 44 00 32 */	fmul f2, f4, f0
/* 80811D04  FC 00 00 32 */	fmul f0, f0, f0
/* 80811D08  FC 01 00 32 */	fmul f0, f1, f0
/* 80811D0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80811D10  FC 02 00 32 */	fmul f0, f2, f0
/* 80811D14  FC 44 00 32 */	fmul f2, f4, f0
/* 80811D18  FC 00 00 32 */	fmul f0, f0, f0
/* 80811D1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80811D20  FC 03 00 28 */	fsub f0, f3, f0
/* 80811D24  FC 02 00 32 */	fmul f0, f2, f0
/* 80811D28  FC 21 00 32 */	fmul f1, f1, f0
/* 80811D2C  FC 20 08 18 */	frsp f1, f1
/* 80811D30  48 00 00 88 */	b lbl_80811DB8
lbl_80811D34:
/* 80811D34  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80811D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811D3C  40 80 00 10 */	bge lbl_80811D4C
/* 80811D40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80811D44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80811D48  48 00 00 70 */	b lbl_80811DB8
lbl_80811D4C:
/* 80811D4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80811D50  80 81 00 08 */	lwz r4, 8(r1)
/* 80811D54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80811D58  3C 00 7F 80 */	lis r0, 0x7f80
/* 80811D5C  7C 03 00 00 */	cmpw r3, r0
/* 80811D60  41 82 00 14 */	beq lbl_80811D74
/* 80811D64  40 80 00 40 */	bge lbl_80811DA4
/* 80811D68  2C 03 00 00 */	cmpwi r3, 0
/* 80811D6C  41 82 00 20 */	beq lbl_80811D8C
/* 80811D70  48 00 00 34 */	b lbl_80811DA4
lbl_80811D74:
/* 80811D74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80811D78  41 82 00 0C */	beq lbl_80811D84
/* 80811D7C  38 00 00 01 */	li r0, 1
/* 80811D80  48 00 00 28 */	b lbl_80811DA8
lbl_80811D84:
/* 80811D84  38 00 00 02 */	li r0, 2
/* 80811D88  48 00 00 20 */	b lbl_80811DA8
lbl_80811D8C:
/* 80811D8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80811D90  41 82 00 0C */	beq lbl_80811D9C
/* 80811D94  38 00 00 05 */	li r0, 5
/* 80811D98  48 00 00 10 */	b lbl_80811DA8
lbl_80811D9C:
/* 80811D9C  38 00 00 03 */	li r0, 3
/* 80811DA0  48 00 00 08 */	b lbl_80811DA8
lbl_80811DA4:
/* 80811DA4  38 00 00 04 */	li r0, 4
lbl_80811DA8:
/* 80811DA8  2C 00 00 01 */	cmpwi r0, 1
/* 80811DAC  40 82 00 0C */	bne lbl_80811DB8
/* 80811DB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80811DB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80811DB8:
/* 80811DB8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80811DBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811DC0  40 80 00 64 */	bge lbl_80811E24
/* 80811DC4  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 80811DC8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80811DCC  41 82 00 58 */	beq lbl_80811E24
/* 80811DD0  38 00 00 03 */	li r0, 3
/* 80811DD4  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80811DD8  7F C3 F3 78 */	mr r3, r30
/* 80811DDC  38 80 00 01 */	li r4, 1
/* 80811DE0  4B FF F9 61 */	bl initFireFly__8daE_YM_cFi
/* 80811DE4  38 E0 00 00 */	li r7, 0
/* 80811DE8  38 80 00 02 */	li r4, 2
/* 80811DEC  38 00 00 14 */	li r0, 0x14
/* 80811DF0  7C 09 03 A6 */	mtctr r0
lbl_80811DF4:
/* 80811DF4  80 DE 06 60 */	lwz r6, 0x660(r30)
/* 80811DF8  54 E3 06 3E */	clrlwi r3, r7, 0x18
/* 80811DFC  38 03 06 5C */	addi r0, r3, 0x65c
/* 80811E00  7C A6 00 AE */	lbzx r5, r6, r0
/* 80811E04  88 1E 06 C8 */	lbz r0, 0x6c8(r30)
/* 80811E08  7C 05 00 40 */	cmplw r5, r0
/* 80811E0C  40 82 00 10 */	bne lbl_80811E1C
/* 80811E10  54 63 10 3A */	slwi r3, r3, 2
/* 80811E14  38 03 06 0C */	addi r0, r3, 0x60c
/* 80811E18  7C 86 01 2E */	stwx r4, r6, r0
lbl_80811E1C:
/* 80811E1C  38 E7 00 01 */	addi r7, r7, 1
/* 80811E20  42 00 FF D4 */	bdnz lbl_80811DF4
lbl_80811E24:
/* 80811E24  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80811E28  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80811E2C  48 00 02 00 */	b lbl_8081202C
lbl_80811E30:
/* 80811E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80811E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80811E38  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80811E3C  28 00 00 00 */	cmplwi r0, 0
/* 80811E40  40 82 00 14 */	bne lbl_80811E54
/* 80811E44  80 1E 09 A0 */	lwz r0, 0x9a0(r30)
/* 80811E48  60 00 00 01 */	ori r0, r0, 1
/* 80811E4C  90 1E 09 A0 */	stw r0, 0x9a0(r30)
/* 80811E50  48 00 00 10 */	b lbl_80811E60
lbl_80811E54:
/* 80811E54  80 1E 09 A0 */	lwz r0, 0x9a0(r30)
/* 80811E58  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80811E5C  90 1E 09 A0 */	stw r0, 0x9a0(r30)
lbl_80811E60:
/* 80811E60  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 80811E64  28 00 00 00 */	cmplwi r0, 0
/* 80811E68  40 82 00 58 */	bne lbl_80811EC0
/* 80811E6C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80811E70  38 80 00 01 */	li r4, 1
/* 80811E74  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80811E78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80811E7C  40 82 00 18 */	bne lbl_80811E94
/* 80811E80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80811E84  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80811E88  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80811E8C  41 82 00 08 */	beq lbl_80811E94
/* 80811E90  38 80 00 00 */	li r4, 0
lbl_80811E94:
/* 80811E94  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80811E98  41 82 00 28 */	beq lbl_80811EC0
/* 80811E9C  7F C3 F3 78 */	mr r3, r30
/* 80811EA0  38 80 00 0C */	li r4, 0xc
/* 80811EA4  38 A0 00 02 */	li r5, 2
/* 80811EA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80811EAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80811EB0  4B FF 64 79 */	bl bckSetFly__8daE_YM_cFiUcff
/* 80811EB4  88 7E 06 A5 */	lbz r3, 0x6a5(r30)
/* 80811EB8  38 03 00 01 */	addi r0, r3, 1
/* 80811EBC  98 1E 06 A5 */	stb r0, 0x6a5(r30)
lbl_80811EC0:
/* 80811EC0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80811EC4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80811EC8  40 82 00 0C */	bne lbl_80811ED4
/* 80811ECC  7F C3 F3 78 */	mr r3, r30
/* 80811ED0  4B FF 6C 6D */	bl setFireEffect__8daE_YM_cFv
lbl_80811ED4:
/* 80811ED4  A8 1E 07 0E */	lha r0, 0x70e(r30)
/* 80811ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80811EDC  41 82 00 6C */	beq lbl_80811F48
/* 80811EE0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80811EE4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80811EE8  40 82 00 0C */	bne lbl_80811EF4
/* 80811EEC  7F C3 F3 78 */	mr r3, r30
/* 80811EF0  4B FF 6A ED */	bl setElecEffect2__8daE_YM_cFv
lbl_80811EF4:
/* 80811EF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 80811EF8  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 80811EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80811F00  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80811F04  38 81 00 14 */	addi r4, r1, 0x14
/* 80811F08  38 A0 00 00 */	li r5, 0
/* 80811F0C  38 C0 FF FF */	li r6, -1
/* 80811F10  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80811F14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80811F18  7D 89 03 A6 */	mtctr r12
/* 80811F1C  4E 80 04 21 */	bctrl 
/* 80811F20  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 80811F24  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 80811F28  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80811F2C  FC 00 00 1E */	fctiwz f0, f0
/* 80811F30  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80811F34  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80811F38  B0 1E 07 00 */	sth r0, 0x700(r30)
/* 80811F3C  80 1E 09 74 */	lwz r0, 0x974(r30)
/* 80811F40  60 00 00 01 */	ori r0, r0, 1
/* 80811F44  90 1E 09 74 */	stw r0, 0x974(r30)
lbl_80811F48:
/* 80811F48  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80811F4C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80811F50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811F54  40 81 00 2C */	ble lbl_80811F80
/* 80811F58  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80811F5C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80811F60  EC 01 00 28 */	fsubs f0, f1, f0
/* 80811F64  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80811F68  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80811F6C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80811F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811F74  40 80 00 54 */	bge lbl_80811FC8
/* 80811F78  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80811F7C  48 00 00 4C */	b lbl_80811FC8
lbl_80811F80:
/* 80811F80  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80811F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811F88  40 80 00 1C */	bge lbl_80811FA4
/* 80811F8C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80811F90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80811F94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811F98  40 80 00 30 */	bge lbl_80811FC8
/* 80811F9C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80811FA0  48 00 00 28 */	b lbl_80811FC8
lbl_80811FA4:
/* 80811FA4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80811FA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80811FAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80811FB0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80811FB4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80811FB8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80811FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80811FC0  40 81 00 08 */	ble lbl_80811FC8
/* 80811FC4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80811FC8:
/* 80811FC8  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80811FCC  FC 00 02 10 */	fabs f0, f0
/* 80811FD0  FC 20 00 18 */	frsp f1, f0
/* 80811FD4  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80811FD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80811FDC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80811FE0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80811FE4  A8 1E 06 E6 */	lha r0, 0x6e6(r30)
/* 80811FE8  7C 03 02 14 */	add r0, r3, r0
/* 80811FEC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80811FF0  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 80811FF4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80811FF8  41 82 00 14 */	beq lbl_8081200C
/* 80811FFC  7F C3 F3 78 */	mr r3, r30
/* 80812000  38 80 00 01 */	li r4, 1
/* 80812004  4B FF F7 3D */	bl initFireFly__8daE_YM_cFi
/* 80812008  48 00 00 1C */	b lbl_80812024
lbl_8081200C:
/* 8081200C  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 80812010  2C 00 00 00 */	cmpwi r0, 0
/* 80812014  40 82 00 10 */	bne lbl_80812024
/* 80812018  7F C3 F3 78 */	mr r3, r30
/* 8081201C  38 80 00 00 */	li r4, 0
/* 80812020  4B FF F7 21 */	bl initFireFly__8daE_YM_cFi
lbl_80812024:
/* 80812024  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80812028  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8081202C:
/* 8081202C  A8 7E 06 E4 */	lha r3, 0x6e4(r30)
/* 80812030  38 03 20 00 */	addi r0, r3, 0x2000
/* 80812034  B0 1E 06 E4 */	sth r0, 0x6e4(r30)
/* 80812038  A8 1E 06 E4 */	lha r0, 0x6e4(r30)
/* 8081203C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80812040  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80812044  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80812048  7C 43 04 2E */	lfsx f2, r3, r0
/* 8081204C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80812050  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80812054  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80812058  EC 01 00 2A */	fadds f0, f1, f0
/* 8081205C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80812060  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80812064  2C 00 00 00 */	cmpwi r0, 0
/* 80812068  41 82 00 30 */	beq lbl_80812098
/* 8081206C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070199@ha */
/* 80812070  38 03 01 99 */	addi r0, r3, 0x0199 /* 0x00070199@l */
/* 80812074  90 01 00 10 */	stw r0, 0x10(r1)
/* 80812078  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8081207C  38 81 00 10 */	addi r4, r1, 0x10
/* 80812080  38 A0 00 00 */	li r5, 0
/* 80812084  38 C0 FF FF */	li r6, -1
/* 80812088  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8081208C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80812090  7D 89 03 A6 */	mtctr r12
/* 80812094  4E 80 04 21 */	bctrl 
lbl_80812098:
/* 80812098  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8081209C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 808120A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 808120A4  7C 08 03 A6 */	mtlr r0
/* 808120A8  38 21 00 60 */	addi r1, r1, 0x60
/* 808120AC  4E 80 00 20 */	blr 
