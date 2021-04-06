lbl_80474B8C:
/* 80474B8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80474B90  7C 08 02 A6 */	mflr r0
/* 80474B94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80474B98  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80474B9C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80474BA0  7C 7F 1B 78 */	mr r31, r3
/* 80474BA4  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 80474BA8  3B C3 99 0C */	addi r30, r3, l_cyl_info@l /* 0x8047990C@l */
/* 80474BAC  38 00 00 00 */	li r0, 0
/* 80474BB0  90 01 00 08 */	stw r0, 8(r1)
/* 80474BB4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80474BB8  38 9F 06 64 */	addi r4, r31, 0x664
/* 80474BBC  38 A1 00 24 */	addi r5, r1, 0x24
/* 80474BC0  38 C1 00 08 */	addi r6, r1, 8
/* 80474BC4  38 E0 00 00 */	li r7, 0
/* 80474BC8  4B BA 8D E1 */	bl fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 80474BCC  2C 03 00 00 */	cmpwi r3, 0
/* 80474BD0  41 82 00 B0 */	beq lbl_80474C80
/* 80474BD4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80474BD8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80474BDC  4B DF 2A 99 */	bl cM_atan2s__Fff
/* 80474BE0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80474BE4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80474BE8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80474BEC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80474BF0  7C 64 02 14 */	add r3, r4, r0
/* 80474BF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80474BF8  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 80474BFC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80474C00  7C 04 04 2E */	lfsx f0, r4, r0
/* 80474C04  EC 02 00 32 */	fmuls f0, f2, f0
/* 80474C08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80474C0C  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80474C10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80474C14  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80474C18  38 61 00 0C */	addi r3, r1, 0xc
/* 80474C1C  38 81 00 24 */	addi r4, r1, 0x24
/* 80474C20  4B DF 23 29 */	bl normalizeZP__4cXyzFv
/* 80474C24  38 61 00 18 */	addi r3, r1, 0x18
/* 80474C28  38 81 00 24 */	addi r4, r1, 0x24
/* 80474C2C  7C 65 1B 78 */	mr r5, r3
/* 80474C30  4B ED 24 61 */	bl PSVECAdd
/* 80474C34  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80474C38  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80474C3C  4B DF 2A 39 */	bl cM_atan2s__Fff
/* 80474C40  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 80474C44  C0 5E 0B 30 */	lfs f2, 0xb30(r30)
/* 80474C48  80 01 00 08 */	lwz r0, 8(r1)
/* 80474C4C  C8 3E 0A A0 */	lfd f1, 0xaa0(r30)
/* 80474C50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80474C54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80474C58  3C 00 43 30 */	lis r0, 0x4330
/* 80474C5C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80474C60  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80474C64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80474C68  EC 22 00 32 */	fmuls f1, f2, f0
/* 80474C6C  C0 1E 0B 08 */	lfs f0, 0xb08(r30)
/* 80474C70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80474C74  40 80 00 10 */	bge lbl_80474C84
/* 80474C78  FC 20 00 90 */	fmr f1, f0
/* 80474C7C  48 00 00 08 */	b lbl_80474C84
lbl_80474C80:
/* 80474C80  C0 3E 0A 48 */	lfs f1, 0xa48(r30)
lbl_80474C84:
/* 80474C84  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80474C88  C0 5E 0B 04 */	lfs f2, 0xb04(r30)
/* 80474C8C  C0 7E 0B 34 */	lfs f3, 0xb34(r30)
/* 80474C90  C0 9E 0B 58 */	lfs f4, 0xb58(r30)
/* 80474C94  4B DF AC E9 */	bl cLib_addCalc__FPfffff
/* 80474C98  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 80474C9C  C0 3E 0B 6C */	lfs f1, 0xb6c(r30)
/* 80474CA0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80474CA4  40 80 00 08 */	bge lbl_80474CAC
/* 80474CA8  48 00 00 18 */	b lbl_80474CC0
lbl_80474CAC:
/* 80474CAC  C0 3E 0B 70 */	lfs f1, 0xb70(r30)
/* 80474CB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80474CB4  40 81 00 08 */	ble lbl_80474CBC
/* 80474CB8  48 00 00 08 */	b lbl_80474CC0
lbl_80474CBC:
/* 80474CBC  FC 20 00 90 */	fmr f1, f0
lbl_80474CC0:
/* 80474CC0  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 80474CC4  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80474CC8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80474CCC  41 82 00 14 */	beq lbl_80474CE0
/* 80474CD0  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80474CD4  C0 1E 0B 38 */	lfs f0, 0xb38(r30)
/* 80474CD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80474CDC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80474CE0:
/* 80474CE0  7F E3 FB 78 */	mr r3, r31
/* 80474CE4  48 00 09 99 */	bl chkWaterLineIn__12daObjCarry_cFv
/* 80474CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80474CEC  41 82 00 10 */	beq lbl_80474CFC
/* 80474CF0  C0 1E 0B 74 */	lfs f0, 0xb74(r30)
/* 80474CF4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80474CF8  48 00 00 14 */	b lbl_80474D0C
lbl_80474CFC:
/* 80474CFC  7F E3 FB 78 */	mr r3, r31
/* 80474D00  4B FF A9 A5 */	bl data__12daObjCarry_cFv
/* 80474D04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80474D08  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_80474D0C:
/* 80474D0C  7F E3 FB 78 */	mr r3, r31
/* 80474D10  38 9F 07 8C */	addi r4, r31, 0x78c
/* 80474D14  4B BA 59 B9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80474D18  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80474D1C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80474D20  41 82 00 14 */	beq lbl_80474D34
/* 80474D24  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80474D28  60 00 00 10 */	ori r0, r0, 0x10
/* 80474D2C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80474D30  48 00 00 10 */	b lbl_80474D40
lbl_80474D34:
/* 80474D34  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80474D38  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80474D3C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80474D40:
/* 80474D40  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80474D44  D0 1F 0C EC */	stfs f0, 0xcec(r31)
/* 80474D48  38 60 00 01 */	li r3, 1
/* 80474D4C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80474D50  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80474D54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80474D58  7C 08 03 A6 */	mtlr r0
/* 80474D5C  38 21 00 40 */	addi r1, r1, 0x40
/* 80474D60  4E 80 00 20 */	blr 
