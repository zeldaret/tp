lbl_80D27C6C:
/* 80D27C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D27C70  7C 08 02 A6 */	mflr r0
/* 80D27C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D27C78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D27C7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D27C80  7C 7F 1B 78 */	mr r31, r3
/* 80D27C84  3C 80 80 D3 */	lis r4, l_bmd_idx@ha /* 0x80D295B4@ha */
/* 80D27C88  3B C4 95 B4 */	addi r30, r4, l_bmd_idx@l /* 0x80D295B4@l */
/* 80D27C8C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D27C90  38 84 10 18 */	addi r4, r4, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80D27C94  80 84 00 00 */	lwz r4, 0(r4)
/* 80D27C98  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80D27C9C  28 00 00 01 */	cmplwi r0, 1
/* 80D27CA0  40 82 01 4C */	bne lbl_80D27DEC
/* 80D27CA4  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80D27CA8  D0 04 09 AC */	stfs f0, 0x9ac(r4)
/* 80D27CAC  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80D27CB0  D0 04 09 B0 */	stfs f0, 0x9b0(r4)
/* 80D27CB4  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 80D27CB8  D0 04 09 B4 */	stfs f0, 0x9b4(r4)
/* 80D27CBC  80 04 08 90 */	lwz r0, 0x890(r4)
/* 80D27CC0  64 00 08 00 */	oris r0, r0, 0x800
/* 80D27CC4  60 00 04 00 */	ori r0, r0, 0x400
/* 80D27CC8  90 04 08 90 */	stw r0, 0x890(r4)
/* 80D27CCC  38 64 04 D0 */	addi r3, r4, 0x4d0
/* 80D27CD0  38 9F 06 28 */	addi r4, r31, 0x628
/* 80D27CD4  4B 61 F6 C9 */	bl PSVECSquareDistance
/* 80D27CD8  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80D27CDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D27CE0  40 81 00 58 */	ble lbl_80D27D38
/* 80D27CE4  FC 00 08 34 */	frsqrte f0, f1
/* 80D27CE8  C8 9E 00 88 */	lfd f4, 0x88(r30)
/* 80D27CEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D27CF0  C8 7E 00 90 */	lfd f3, 0x90(r30)
/* 80D27CF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D27CF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D27CFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D27D00  FC 02 00 32 */	fmul f0, f2, f0
/* 80D27D04  FC 44 00 32 */	fmul f2, f4, f0
/* 80D27D08  FC 00 00 32 */	fmul f0, f0, f0
/* 80D27D0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D27D10  FC 03 00 28 */	fsub f0, f3, f0
/* 80D27D14  FC 02 00 32 */	fmul f0, f2, f0
/* 80D27D18  FC 44 00 32 */	fmul f2, f4, f0
/* 80D27D1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D27D20  FC 01 00 32 */	fmul f0, f1, f0
/* 80D27D24  FC 03 00 28 */	fsub f0, f3, f0
/* 80D27D28  FC 02 00 32 */	fmul f0, f2, f0
/* 80D27D2C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D27D30  FC 20 08 18 */	frsp f1, f1
/* 80D27D34  48 00 00 88 */	b lbl_80D27DBC
lbl_80D27D38:
/* 80D27D38  C8 1E 00 98 */	lfd f0, 0x98(r30)
/* 80D27D3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D27D40  40 80 00 10 */	bge lbl_80D27D50
/* 80D27D44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D27D48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D27D4C  48 00 00 70 */	b lbl_80D27DBC
lbl_80D27D50:
/* 80D27D50  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D27D54  80 81 00 08 */	lwz r4, 8(r1)
/* 80D27D58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D27D5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D27D60  7C 03 00 00 */	cmpw r3, r0
/* 80D27D64  41 82 00 14 */	beq lbl_80D27D78
/* 80D27D68  40 80 00 40 */	bge lbl_80D27DA8
/* 80D27D6C  2C 03 00 00 */	cmpwi r3, 0
/* 80D27D70  41 82 00 20 */	beq lbl_80D27D90
/* 80D27D74  48 00 00 34 */	b lbl_80D27DA8
lbl_80D27D78:
/* 80D27D78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D27D7C  41 82 00 0C */	beq lbl_80D27D88
/* 80D27D80  38 00 00 01 */	li r0, 1
/* 80D27D84  48 00 00 28 */	b lbl_80D27DAC
lbl_80D27D88:
/* 80D27D88  38 00 00 02 */	li r0, 2
/* 80D27D8C  48 00 00 20 */	b lbl_80D27DAC
lbl_80D27D90:
/* 80D27D90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D27D94  41 82 00 0C */	beq lbl_80D27DA0
/* 80D27D98  38 00 00 05 */	li r0, 5
/* 80D27D9C  48 00 00 10 */	b lbl_80D27DAC
lbl_80D27DA0:
/* 80D27DA0  38 00 00 03 */	li r0, 3
/* 80D27DA4  48 00 00 08 */	b lbl_80D27DAC
lbl_80D27DA8:
/* 80D27DA8  38 00 00 04 */	li r0, 4
lbl_80D27DAC:
/* 80D27DAC  2C 00 00 01 */	cmpwi r0, 1
/* 80D27DB0  40 82 00 0C */	bne lbl_80D27DBC
/* 80D27DB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D27DB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D27DBC:
/* 80D27DBC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80D27DC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D27DC4  40 80 00 2C */	bge lbl_80D27DF0
/* 80D27DC8  38 00 00 02 */	li r0, 2
/* 80D27DCC  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D27DD0  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80D27DD4  7F E4 FB 78 */	mr r4, r31
/* 80D27DD8  A0 BF 05 CC */	lhz r5, 0x5cc(r31)
/* 80D27DDC  38 C0 00 00 */	li r6, 0
/* 80D27DE0  38 E0 00 00 */	li r7, 0
/* 80D27DE4  4B 52 21 AD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D27DE8  48 00 00 08 */	b lbl_80D27DF0
lbl_80D27DEC:
/* 80D27DEC  4B FF FC 4D */	bl orderZHintEvent__15daObjWarpKBrg_cFv
lbl_80D27DF0:
/* 80D27DF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D27DF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D27DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D27DFC  7C 08 03 A6 */	mtlr r0
/* 80D27E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80D27E04  4E 80 00 20 */	blr 
