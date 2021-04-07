lbl_8048DA2C:
/* 8048DA2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048DA30  7C 08 02 A6 */	mflr r0
/* 8048DA34  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048DA38  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8048DA3C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8048DA40  7C 7F 1B 78 */	mr r31, r3
/* 8048DA44  3C 80 80 49 */	lis r4, lit_3739@ha /* 0x8048DD64@ha */
/* 8048DA48  3B C4 DD 64 */	addi r30, r4, lit_3739@l /* 0x8048DD64@l */
/* 8048DA4C  48 00 02 1D */	bl getSwitchBit__12daTag_Howl_cFv
/* 8048DA50  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048DA54  28 00 00 FF */	cmplwi r0, 0xff
/* 8048DA58  41 82 00 30 */	beq lbl_8048DA88
/* 8048DA5C  7F E3 FB 78 */	mr r3, r31
/* 8048DA60  48 00 02 09 */	bl getSwitchBit__12daTag_Howl_cFv
/* 8048DA64  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8048DA68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048DA6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048DA70  38 63 09 58 */	addi r3, r3, 0x958
/* 8048DA74  4B BA 6D ED */	bl isSwitch__12dSv_memBit_cCFi
/* 8048DA78  2C 03 00 00 */	cmpwi r3, 0
/* 8048DA7C  41 82 00 0C */	beq lbl_8048DA88
/* 8048DA80  38 60 00 00 */	li r3, 0
/* 8048DA84  48 00 01 80 */	b lbl_8048DC04
lbl_8048DA88:
/* 8048DA88  38 61 00 18 */	addi r3, r1, 0x18
/* 8048DA8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048DA90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048DA94  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8048DA98  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8048DA9C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8048DAA0  4B DD 90 95 */	bl __mi__4cXyzCFRC3Vec
/* 8048DAA4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8048DAA8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8048DAAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8048DAB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8048DAB4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8048DAB8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8048DABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048DAC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048DAC4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8048DAC8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8048DACC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8048DAD0  41 82 01 30 */	beq lbl_8048DC00
/* 8048DAD4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8048DAD8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8048DADC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048DAE0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8048DAE4  38 61 00 0C */	addi r3, r1, 0xc
/* 8048DAE8  4B EB 96 51 */	bl PSVECSquareMag
/* 8048DAEC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8048DAF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048DAF4  40 81 00 58 */	ble lbl_8048DB4C
/* 8048DAF8  FC 00 08 34 */	frsqrte f0, f1
/* 8048DAFC  C8 9E 00 08 */	lfd f4, 8(r30)
/* 8048DB00  FC 44 00 32 */	fmul f2, f4, f0
/* 8048DB04  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 8048DB08  FC 00 00 32 */	fmul f0, f0, f0
/* 8048DB0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8048DB10  FC 03 00 28 */	fsub f0, f3, f0
/* 8048DB14  FC 02 00 32 */	fmul f0, f2, f0
/* 8048DB18  FC 44 00 32 */	fmul f2, f4, f0
/* 8048DB1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8048DB20  FC 01 00 32 */	fmul f0, f1, f0
/* 8048DB24  FC 03 00 28 */	fsub f0, f3, f0
/* 8048DB28  FC 02 00 32 */	fmul f0, f2, f0
/* 8048DB2C  FC 44 00 32 */	fmul f2, f4, f0
/* 8048DB30  FC 00 00 32 */	fmul f0, f0, f0
/* 8048DB34  FC 01 00 32 */	fmul f0, f1, f0
/* 8048DB38  FC 03 00 28 */	fsub f0, f3, f0
/* 8048DB3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8048DB40  FC 21 00 32 */	fmul f1, f1, f0
/* 8048DB44  FC 20 08 18 */	frsp f1, f1
/* 8048DB48  48 00 00 88 */	b lbl_8048DBD0
lbl_8048DB4C:
/* 8048DB4C  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 8048DB50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048DB54  40 80 00 10 */	bge lbl_8048DB64
/* 8048DB58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8048DB5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8048DB60  48 00 00 70 */	b lbl_8048DBD0
lbl_8048DB64:
/* 8048DB64  D0 21 00 08 */	stfs f1, 8(r1)
/* 8048DB68  80 81 00 08 */	lwz r4, 8(r1)
/* 8048DB6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8048DB70  3C 00 7F 80 */	lis r0, 0x7f80
/* 8048DB74  7C 03 00 00 */	cmpw r3, r0
/* 8048DB78  41 82 00 14 */	beq lbl_8048DB8C
/* 8048DB7C  40 80 00 40 */	bge lbl_8048DBBC
/* 8048DB80  2C 03 00 00 */	cmpwi r3, 0
/* 8048DB84  41 82 00 20 */	beq lbl_8048DBA4
/* 8048DB88  48 00 00 34 */	b lbl_8048DBBC
lbl_8048DB8C:
/* 8048DB8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048DB90  41 82 00 0C */	beq lbl_8048DB9C
/* 8048DB94  38 00 00 01 */	li r0, 1
/* 8048DB98  48 00 00 28 */	b lbl_8048DBC0
lbl_8048DB9C:
/* 8048DB9C  38 00 00 02 */	li r0, 2
/* 8048DBA0  48 00 00 20 */	b lbl_8048DBC0
lbl_8048DBA4:
/* 8048DBA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8048DBA8  41 82 00 0C */	beq lbl_8048DBB4
/* 8048DBAC  38 00 00 05 */	li r0, 5
/* 8048DBB0  48 00 00 10 */	b lbl_8048DBC0
lbl_8048DBB4:
/* 8048DBB4  38 00 00 03 */	li r0, 3
/* 8048DBB8  48 00 00 08 */	b lbl_8048DBC0
lbl_8048DBBC:
/* 8048DBBC  38 00 00 04 */	li r0, 4
lbl_8048DBC0:
/* 8048DBC0  2C 00 00 01 */	cmpwi r0, 1
/* 8048DBC4  40 82 00 0C */	bne lbl_8048DBD0
/* 8048DBC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8048DBCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8048DBD0:
/* 8048DBD0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048DBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048DBD8  40 80 00 28 */	bge lbl_8048DC00
/* 8048DBDC  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 8048DBE0  FC 00 08 50 */	fneg f0, f1
/* 8048DBE4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8048DBE8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8048DBEC  40 80 00 14 */	bge lbl_8048DC00
/* 8048DBF0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8048DBF4  40 80 00 0C */	bge lbl_8048DC00
/* 8048DBF8  38 60 00 01 */	li r3, 1
/* 8048DBFC  48 00 00 08 */	b lbl_8048DC04
lbl_8048DC00:
/* 8048DC00  38 60 00 00 */	li r3, 0
lbl_8048DC04:
/* 8048DC04  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8048DC08  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8048DC0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048DC10  7C 08 03 A6 */	mtlr r0
/* 8048DC14  38 21 00 40 */	addi r1, r1, 0x40
/* 8048DC18  4E 80 00 20 */	blr 
