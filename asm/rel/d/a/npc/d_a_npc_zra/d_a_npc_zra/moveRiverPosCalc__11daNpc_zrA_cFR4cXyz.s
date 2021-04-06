lbl_80B86D9C:
/* 80B86D9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B86DA0  7C 08 02 A6 */	mflr r0
/* 80B86DA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B86DA8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B86DAC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B86DB0  7C 7E 1B 78 */	mr r30, r3
/* 80B86DB4  7C 9F 23 78 */	mr r31, r4
/* 80B86DB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B86DBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B86DC0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B86DC4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B86DC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B86DCC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B86DD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B86DD4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B86DD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B86DDC  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B86DE0  38 81 00 18 */	addi r4, r1, 0x18
/* 80B86DE4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B86DE8  4B 5C 9F F9 */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B86DEC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B86DF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B86DF4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B86DF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B86DFC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B86E00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B86E04  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B86E08  80 1E 15 98 */	lwz r0, 0x1598(r30)
/* 80B86E0C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80B86E10  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B86E14  7F E6 FB 78 */	mr r6, r31
/* 80B86E18  4B FF 1E E5 */	bl getDstPosChase__16daNpc_zrA_Path_cFUs4cXyzR4cXyz
/* 80B86E1C  90 7E 15 98 */	stw r3, 0x1598(r30)
/* 80B86E20  7F E3 FB 78 */	mr r3, r31
/* 80B86E24  38 81 00 08 */	addi r4, r1, 8
/* 80B86E28  4B 49 6A 69 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B86E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B86E30  41 82 00 1C */	beq lbl_80B86E4C
/* 80B86E34  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B86E38  3C 60 80 B9 */	lis r3, lit_9834@ha /* 0x80B8CCA4@ha */
/* 80B86E3C  C0 03 CC A4 */	lfs f0, lit_9834@l(r3)  /* 0x80B8CCA4@l */
/* 80B86E40  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B86E44  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80B86E48  48 00 00 18 */	b lbl_80B86E60
lbl_80B86E4C:
/* 80B86E4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80B86E50  3C 60 80 B9 */	lis r3, lit_9834@ha /* 0x80B8CCA4@ha */
/* 80B86E54  C0 03 CC A4 */	lfs f0, lit_9834@l(r3)  /* 0x80B8CCA4@l */
/* 80B86E58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B86E5C  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_80B86E60:
/* 80B86E60  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B86E64  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B86E68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B86E6C  7C 08 03 A6 */	mtlr r0
/* 80B86E70  38 21 00 40 */	addi r1, r1, 0x40
/* 80B86E74  4E 80 00 20 */	blr 
