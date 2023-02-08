lbl_807408C0:
/* 807408C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807408C4  7C 08 02 A6 */	mflr r0
/* 807408C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807408CC  39 61 00 40 */	addi r11, r1, 0x40
/* 807408D0  4B C2 19 09 */	bl _savegpr_28
/* 807408D4  7C 7D 1B 78 */	mr r29, r3
/* 807408D8  3C 80 80 74 */	lis r4, lit_3767@ha /* 0x80741BF4@ha */
/* 807408DC  3B C4 1B F4 */	addi r30, r4, lit_3767@l /* 0x80741BF4@l */
/* 807408E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807408E4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807408E8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807408EC  4B 8D 9E F5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807408F0  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 807408F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807408F8  41 81 00 18 */	bgt lbl_80740910
/* 807408FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80740900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740904  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80740908  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8074090C  41 82 00 0C */	beq lbl_80740918
lbl_80740910:
/* 80740910  38 00 00 00 */	li r0, 0
/* 80740914  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80740918:
/* 80740918  38 7D 09 74 */	addi r3, r29, 0x974
/* 8074091C  4B 94 3B 45 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80740920  28 03 00 00 */	cmplwi r3, 0
/* 80740924  41 82 01 40 */	beq lbl_80740A64
/* 80740928  A8 1D 05 AE */	lha r0, 0x5ae(r29)
/* 8074092C  2C 00 00 00 */	cmpwi r0, 0
/* 80740930  40 82 01 34 */	bne lbl_80740A64
/* 80740934  38 7D 09 74 */	addi r3, r29, 0x974
/* 80740938  81 9D 09 B0 */	lwz r12, 0x9b0(r29)
/* 8074093C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80740940  7D 89 03 A6 */	mtctr r12
/* 80740944  4E 80 04 21 */	bctrl 
/* 80740948  38 00 00 14 */	li r0, 0x14
/* 8074094C  B0 1D 05 AE */	sth r0, 0x5ae(r29)
/* 80740950  38 00 01 2C */	li r0, 0x12c
/* 80740954  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80740958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074095C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740960  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80740964  38 80 00 00 */	li r4, 0
/* 80740968  90 81 00 08 */	stw r4, 8(r1)
/* 8074096C  38 00 FF FF */	li r0, -1
/* 80740970  90 01 00 0C */	stw r0, 0xc(r1)
/* 80740974  90 81 00 10 */	stw r4, 0x10(r1)
/* 80740978  90 81 00 14 */	stw r4, 0x14(r1)
/* 8074097C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80740980  38 80 00 00 */	li r4, 0
/* 80740984  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000878C@ha */
/* 80740988  38 A5 87 8C */	addi r5, r5, 0x878C /* 0x0000878C@l */
/* 8074098C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80740990  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80740994  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80740998  39 20 00 00 */	li r9, 0
/* 8074099C  39 40 00 FF */	li r10, 0xff
/* 807409A0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807409A4  4B 90 C0 ED */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807409A8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807409AC  38 80 00 00 */	li r4, 0
/* 807409B0  90 81 00 08 */	stw r4, 8(r1)
/* 807409B4  38 00 FF FF */	li r0, -1
/* 807409B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807409BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807409C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807409C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807409C8  38 80 00 00 */	li r4, 0
/* 807409CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000878D@ha */
/* 807409D0  38 A5 87 8D */	addi r5, r5, 0x878D /* 0x0000878D@l */
/* 807409D4  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 807409D8  38 FD 01 0C */	addi r7, r29, 0x10c
/* 807409DC  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 807409E0  39 20 00 00 */	li r9, 0
/* 807409E4  39 40 00 FF */	li r10, 0xff
/* 807409E8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807409EC  4B 90 C0 A5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807409F0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807409F4  38 80 00 00 */	li r4, 0
/* 807409F8  90 81 00 08 */	stw r4, 8(r1)
/* 807409FC  38 00 FF FF */	li r0, -1
/* 80740A00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80740A04  90 81 00 10 */	stw r4, 0x10(r1)
/* 80740A08  90 81 00 14 */	stw r4, 0x14(r1)
/* 80740A0C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80740A10  38 80 00 00 */	li r4, 0
/* 80740A14  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000878E@ha */
/* 80740A18  38 A5 87 8E */	addi r5, r5, 0x878E /* 0x0000878E@l */
/* 80740A1C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80740A20  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80740A24  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80740A28  39 20 00 00 */	li r9, 0
/* 80740A2C  39 40 00 FF */	li r10, 0xff
/* 80740A30  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80740A34  4B 90 C0 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80740A38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070461@ha */
/* 80740A3C  38 03 04 61 */	addi r0, r3, 0x0461 /* 0x00070461@l */
/* 80740A40  90 01 00 20 */	stw r0, 0x20(r1)
/* 80740A44  38 7D 06 74 */	addi r3, r29, 0x674
/* 80740A48  38 81 00 20 */	addi r4, r1, 0x20
/* 80740A4C  38 A0 00 00 */	li r5, 0
/* 80740A50  38 C0 FF FF */	li r6, -1
/* 80740A54  81 9D 06 74 */	lwz r12, 0x674(r29)
/* 80740A58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80740A5C  7D 89 03 A6 */	mtctr r12
/* 80740A60  4E 80 04 21 */	bctrl 
lbl_80740A64:
/* 80740A64  A8 7D 05 AE */	lha r3, 0x5ae(r29)
/* 80740A68  38 03 FF FF */	addi r0, r3, -1
/* 80740A6C  B0 1D 05 AE */	sth r0, 0x5ae(r29)
/* 80740A70  A8 1D 05 AE */	lha r0, 0x5ae(r29)
/* 80740A74  2C 00 00 00 */	cmpwi r0, 0
/* 80740A78  41 81 00 10 */	bgt lbl_80740A88
/* 80740A7C  38 00 00 00 */	li r0, 0
/* 80740A80  B0 1D 05 AE */	sth r0, 0x5ae(r29)
/* 80740A84  48 00 00 54 */	b lbl_80740AD8
lbl_80740A88:
/* 80740A88  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80740A8C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80740A90  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 80740A94  38 63 1D D0 */	addi r3, r3, l_HIO@l /* 0x80741DD0@l */
/* 80740A98  C0 23 00 08 */	lfs f1, 8(r3)
/* 80740A9C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80740AA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80740AA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80740AA8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80740AAC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80740AB0  28 1D 00 00 */	cmplwi r29, 0
/* 80740AB4  41 82 00 0C */	beq lbl_80740AC0
/* 80740AB8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80740ABC  48 00 00 08 */	b lbl_80740AC4
lbl_80740AC0:
/* 80740AC0  38 80 FF FF */	li r4, -1
lbl_80740AC4:
/* 80740AC4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80740AC8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80740ACC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80740AD0  7D 89 03 A6 */	mtctr r12
/* 80740AD4  4E 80 04 21 */	bctrl 
lbl_80740AD8:
/* 80740AD8  A8 7D 05 AC */	lha r3, 0x5ac(r29)
/* 80740ADC  38 03 FF FF */	addi r0, r3, -1
/* 80740AE0  B0 1D 05 AC */	sth r0, 0x5ac(r29)
/* 80740AE4  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80740AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80740AEC  41 81 00 0C */	bgt lbl_80740AF8
/* 80740AF0  38 00 00 00 */	li r0, 0
/* 80740AF4  B0 1D 05 AC */	sth r0, 0x5ac(r29)
lbl_80740AF8:
/* 80740AF8  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 80740AFC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80740B00  4B B2 EB 49 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80740B04  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 80740B08  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80740B0C  4B B2 EB FD */	bl SetR__8cM3dGSphFf
/* 80740B10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80740B14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740B18  38 63 23 3C */	addi r3, r3, 0x233c
/* 80740B1C  38 9D 09 74 */	addi r4, r29, 0x974
/* 80740B20  4B B2 40 89 */	bl Set__4cCcSFP8cCcD_Obj
/* 80740B24  39 61 00 40 */	addi r11, r1, 0x40
/* 80740B28  4B C2 16 FD */	bl _restgpr_28
/* 80740B2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80740B30  7C 08 03 A6 */	mtlr r0
/* 80740B34  38 21 00 40 */	addi r1, r1, 0x40
/* 80740B38  4E 80 00 20 */	blr 
