lbl_806508E0:
/* 806508E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806508E4  7C 08 02 A6 */	mflr r0
/* 806508E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806508EC  39 61 00 60 */	addi r11, r1, 0x60
/* 806508F0  4B D1 18 E8 */	b _savegpr_28
/* 806508F4  7C 7E 1B 78 */	mr r30, r3
/* 806508F8  3C 60 80 65 */	lis r3, lit_3649@ha
/* 806508FC  3B E3 27 3C */	addi r31, r3, lit_3649@l
/* 80650900  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80650904  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80650908  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8065090C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80650910  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80650914  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80650918  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8065091C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80650920  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80650924  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80650928  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8065092C  38 61 00 40 */	addi r3, r1, 0x40
/* 80650930  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80650934  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80650938  38 C1 00 34 */	addi r6, r1, 0x34
/* 8065093C  4B C2 04 84 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80650940  38 80 00 00 */	li r4, 0
/* 80650944  B0 81 00 20 */	sth r4, 0x20(r1)
/* 80650948  B0 81 00 22 */	sth r4, 0x22(r1)
/* 8065094C  38 00 7C 00 */	li r0, 0x7c00
/* 80650950  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80650954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80650958  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8065095C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80650960  38 00 00 FF */	li r0, 0xff
/* 80650964  90 01 00 08 */	stw r0, 8(r1)
/* 80650968  90 81 00 0C */	stw r4, 0xc(r1)
/* 8065096C  38 00 FF FF */	li r0, -1
/* 80650970  90 01 00 10 */	stw r0, 0x10(r1)
/* 80650974  90 81 00 14 */	stw r4, 0x14(r1)
/* 80650978  90 81 00 18 */	stw r4, 0x18(r1)
/* 8065097C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80650980  80 9E 0D 04 */	lwz r4, 0xd04(r30)
/* 80650984  38 A0 00 00 */	li r5, 0
/* 80650988  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008908@ha */
/* 8065098C  38 C6 89 08 */	addi r6, r6, 0x8908 /* 0x00008908@l */
/* 80650990  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80650994  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80650998  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8065099C  39 40 00 00 */	li r10, 0
/* 806509A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806509A4  4B 9F CB 28 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806509A8  90 7E 0D 04 */	stw r3, 0xd04(r30)
/* 806509AC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806509B0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806509B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806509B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806509BC  38 7E 0B B0 */	addi r3, r30, 0xbb0
/* 806509C0  38 81 00 40 */	addi r4, r1, 0x40
/* 806509C4  4B C1 E8 18 */	b SetC__8cM3dGCylFRC4cXyz
/* 806509C8  38 7E 0B B0 */	addi r3, r30, 0xbb0
/* 806509CC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806509D0  4B C1 E8 30 */	b SetR__8cM3dGCylFf
/* 806509D4  38 7E 0B B0 */	addi r3, r30, 0xbb0
/* 806509D8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806509DC  4B C1 E8 1C */	b SetH__8cM3dGCylFf
/* 806509E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806509E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806509E8  3B 83 23 3C */	addi r28, r3, 0x233c
/* 806509EC  7F 83 E3 78 */	mr r3, r28
/* 806509F0  38 9E 0A 8C */	addi r4, r30, 0xa8c
/* 806509F4  4B C1 41 B4 */	b Set__4cCcSFP8cCcD_Obj
/* 806509F8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 806509FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80650A00  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80650A04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80650A08  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80650A0C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80650A10  38 61 00 40 */	addi r3, r1, 0x40
/* 80650A14  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80650A18  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80650A1C  38 C1 00 34 */	addi r6, r1, 0x34
/* 80650A20  4B C2 03 A0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80650A24  38 80 00 00 */	li r4, 0
/* 80650A28  B0 81 00 20 */	sth r4, 0x20(r1)
/* 80650A2C  B0 81 00 22 */	sth r4, 0x22(r1)
/* 80650A30  38 00 84 00 */	li r0, -31744
/* 80650A34  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80650A38  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80650A3C  38 00 00 FF */	li r0, 0xff
/* 80650A40  90 01 00 08 */	stw r0, 8(r1)
/* 80650A44  90 81 00 0C */	stw r4, 0xc(r1)
/* 80650A48  38 00 FF FF */	li r0, -1
/* 80650A4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80650A50  90 81 00 14 */	stw r4, 0x14(r1)
/* 80650A54  90 81 00 18 */	stw r4, 0x18(r1)
/* 80650A58  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80650A5C  80 9E 0D 08 */	lwz r4, 0xd08(r30)
/* 80650A60  38 A0 00 00 */	li r5, 0
/* 80650A64  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008909@ha */
/* 80650A68  38 C6 89 09 */	addi r6, r6, 0x8909 /* 0x00008909@l */
/* 80650A6C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80650A70  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80650A74  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80650A78  39 40 00 00 */	li r10, 0
/* 80650A7C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80650A80  4B 9F CA 4C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80650A84  90 7E 0D 08 */	stw r3, 0xd08(r30)
/* 80650A88  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80650A8C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80650A90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80650A94  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80650A98  38 7E 0C EC */	addi r3, r30, 0xcec
/* 80650A9C  38 81 00 40 */	addi r4, r1, 0x40
/* 80650AA0  4B C1 E7 3C */	b SetC__8cM3dGCylFRC4cXyz
/* 80650AA4  38 7E 0C EC */	addi r3, r30, 0xcec
/* 80650AA8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80650AAC  4B C1 E7 54 */	b SetR__8cM3dGCylFf
/* 80650AB0  38 7E 0C EC */	addi r3, r30, 0xcec
/* 80650AB4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80650AB8  4B C1 E7 40 */	b SetH__8cM3dGCylFf
/* 80650ABC  7F 83 E3 78 */	mr r3, r28
/* 80650AC0  38 9E 0B C8 */	addi r4, r30, 0xbc8
/* 80650AC4  4B C1 40 E4 */	b Set__4cCcSFP8cCcD_Obj
/* 80650AC8  3B 80 00 00 */	li r28, 0
/* 80650ACC  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80650AD0  4B A3 3B 88 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80650AD4  28 03 00 00 */	cmplwi r3, 0
/* 80650AD8  41 82 00 10 */	beq lbl_80650AE8
/* 80650ADC  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80650AE0  4B A3 3C 10 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80650AE4  7C 7C 1B 78 */	mr r28, r3
lbl_80650AE8:
/* 80650AE8  38 7E 0B C8 */	addi r3, r30, 0xbc8
/* 80650AEC  4B A3 3B 6C */	b ChkCoHit__12dCcD_GObjInfFv
/* 80650AF0  28 03 00 00 */	cmplwi r3, 0
/* 80650AF4  41 82 00 10 */	beq lbl_80650B04
/* 80650AF8  38 7E 0B C8 */	addi r3, r30, 0xbc8
/* 80650AFC  4B A3 3B F4 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80650B00  7C 7C 1B 78 */	mr r28, r3
lbl_80650B04:
/* 80650B04  28 1C 00 00 */	cmplwi r28, 0
/* 80650B08  41 82 00 5C */	beq lbl_80650B64
/* 80650B0C  7F 83 E3 78 */	mr r3, r28
/* 80650B10  4B C1 2F 38 */	b GetAc__8cCcD_ObjFv
/* 80650B14  A8 03 00 08 */	lha r0, 8(r3)
/* 80650B18  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80650B1C  40 82 00 48 */	bne lbl_80650B64
/* 80650B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80650B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80650B28  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80650B2C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80650B30  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80650B34  4B C2 00 D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80650B38  7C 64 1B 78 */	mr r4, r3
/* 80650B3C  7F A3 EB 78 */	mr r3, r29
/* 80650B40  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80650B44  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80650B48  38 A0 00 00 */	li r5, 0
/* 80650B4C  38 C0 00 00 */	li r6, 0
/* 80650B50  38 E0 00 02 */	li r7, 2
/* 80650B54  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80650B58  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80650B5C  7D 89 03 A6 */	mtctr r12
/* 80650B60  4E 80 04 21 */	bctrl 
lbl_80650B64:
/* 80650B64  39 61 00 60 */	addi r11, r1, 0x60
/* 80650B68  4B D1 16 BC */	b _restgpr_28
/* 80650B6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80650B70  7C 08 03 A6 */	mtlr r0
/* 80650B74  38 21 00 60 */	addi r1, r1, 0x60
/* 80650B78  4E 80 00 20 */	blr 
