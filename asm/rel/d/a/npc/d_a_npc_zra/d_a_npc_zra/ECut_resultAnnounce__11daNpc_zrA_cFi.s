lbl_80B88B04:
/* 80B88B04  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 80B88B08  7C 08 02 A6 */	mflr r0
/* 80B88B0C  90 01 02 44 */	stw r0, 0x244(r1)
/* 80B88B10  DB E1 02 30 */	stfd f31, 0x230(r1)
/* 80B88B14  F3 E1 02 38 */	psq_st f31, 568(r1), 0, 0 /* qr0 */
/* 80B88B18  DB C1 02 20 */	stfd f30, 0x220(r1)
/* 80B88B1C  F3 C1 02 28 */	psq_st f30, 552(r1), 0, 0 /* qr0 */
/* 80B88B20  39 61 02 20 */	addi r11, r1, 0x220
/* 80B88B24  4B 7D 96 9C */	b _savegpr_22
/* 80B88B28  7C 78 1B 78 */	mr r24, r3
/* 80B88B2C  7C 96 23 78 */	mr r22, r4
/* 80B88B30  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B88B34  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l
/* 80B88B38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B88B3C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B88B40  3A FF 4F F8 */	addi r23, r31, 0x4ff8
/* 80B88B44  3B 60 00 00 */	li r27, 0
/* 80B88B48  3B 40 FF FF */	li r26, -1
/* 80B88B4C  3B 9E 00 00 */	addi r28, r30, 0
/* 80B88B50  AB 3C 00 74 */	lha r25, 0x74(r28)
/* 80B88B54  C3 D8 07 9C */	lfs f30, 0x79c(r24)
/* 80B88B58  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B88B5C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B88B60  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 80B88B64  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B88B68  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 80B88B6C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B88B70  D0 01 01 E8 */	stfs f0, 0x1e8(r1)
/* 80B88B74  7E E3 BB 78 */	mr r3, r23
/* 80B88B78  3C A0 80 B9 */	lis r5, struct_80B8CD30+0x0@ha
/* 80B88B7C  38 A5 CD 30 */	addi r5, r5, struct_80B8CD30+0x0@l
/* 80B88B80  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B88B84  38 C0 00 03 */	li r6, 3
/* 80B88B88  4B 4B F5 64 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B88B8C  28 03 00 00 */	cmplwi r3, 0
/* 80B88B90  41 82 00 08 */	beq lbl_80B88B98
/* 80B88B94  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B88B98:
/* 80B88B98  7E E3 BB 78 */	mr r3, r23
/* 80B88B9C  7E C4 B3 78 */	mr r4, r22
/* 80B88BA0  4B 4B F1 AC */	b getIsAddvance__16dEvent_manager_cFi
/* 80B88BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B88BA8  41 82 03 E4 */	beq lbl_80B88F8C
/* 80B88BAC  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B88BB0  41 82 01 5C */	beq lbl_80B88D0C
/* 80B88BB4  40 80 00 28 */	bge lbl_80B88BDC
/* 80B88BB8  2C 1A 00 01 */	cmpwi r26, 1
/* 80B88BBC  41 82 00 B0 */	beq lbl_80B88C6C
/* 80B88BC0  40 80 00 10 */	bge lbl_80B88BD0
/* 80B88BC4  2C 1A 00 00 */	cmpwi r26, 0
/* 80B88BC8  40 80 00 38 */	bge lbl_80B88C00
/* 80B88BCC  48 00 03 C0 */	b lbl_80B88F8C
lbl_80B88BD0:
/* 80B88BD0  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B88BD4  41 82 01 24 */	beq lbl_80B88CF8
/* 80B88BD8  48 00 03 B4 */	b lbl_80B88F8C
lbl_80B88BDC:
/* 80B88BDC  2C 1A 00 28 */	cmpwi r26, 0x28
/* 80B88BE0  41 82 03 30 */	beq lbl_80B88F10
/* 80B88BE4  40 80 00 10 */	bge lbl_80B88BF4
/* 80B88BE8  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B88BEC  41 82 03 10 */	beq lbl_80B88EFC
/* 80B88BF0  48 00 03 9C */	b lbl_80B88F8C
lbl_80B88BF4:
/* 80B88BF4  2C 1A 00 32 */	cmpwi r26, 0x32
/* 80B88BF8  41 82 03 6C */	beq lbl_80B88F64
/* 80B88BFC  48 00 03 90 */	b lbl_80B88F8C
lbl_80B88C00:
/* 80B88C00  38 60 00 0B */	li r3, 0xb
/* 80B88C04  4B 5C CB 30 */	b daNpcF_offTmpBit__FUl
/* 80B88C08  38 60 00 0C */	li r3, 0xc
/* 80B88C0C  4B 5C CB 28 */	b daNpcF_offTmpBit__FUl
/* 80B88C10  88 18 15 76 */	lbz r0, 0x1576(r24)
/* 80B88C14  28 00 00 00 */	cmplwi r0, 0
/* 80B88C18  40 82 00 28 */	bne lbl_80B88C40
/* 80B88C1C  7F 03 C3 78 */	mr r3, r24
/* 80B88C20  38 80 00 17 */	li r4, 0x17
/* 80B88C24  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B88C28  38 A0 00 00 */	li r5, 0
/* 80B88C2C  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B88C30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B88C34  7D 89 03 A6 */	mtctr r12
/* 80B88C38  4E 80 04 21 */	bctrl 
/* 80B88C3C  48 00 00 24 */	b lbl_80B88C60
lbl_80B88C40:
/* 80B88C40  7F 03 C3 78 */	mr r3, r24
/* 80B88C44  38 80 00 16 */	li r4, 0x16
/* 80B88C48  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B88C4C  38 A0 00 00 */	li r5, 0
/* 80B88C50  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B88C54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B88C58  7D 89 03 A6 */	mtctr r12
/* 80B88C5C  4E 80 04 21 */	bctrl 
lbl_80B88C60:
/* 80B88C60  38 00 00 00 */	li r0, 0
/* 80B88C64  90 18 09 6C */	stw r0, 0x96c(r24)
/* 80B88C68  48 00 03 24 */	b lbl_80B88F8C
lbl_80B88C6C:
/* 80B88C6C  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B88C70  4B 5C 7A 7C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B88C74  28 03 00 00 */	cmplwi r3, 0
/* 80B88C78  41 82 00 4C */	beq lbl_80B88CC4
/* 80B88C7C  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B88C80  4B 5C 7A 6C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B88C84  A8 03 00 08 */	lha r0, 8(r3)
/* 80B88C88  2C 00 00 ED */	cmpwi r0, 0xed
/* 80B88C8C  40 82 00 38 */	bne lbl_80B88CC4
/* 80B88C90  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B88C94  4B 5C 7A 58 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B88C98  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002009F@ha */
/* 80B88C9C  38 04 00 9F */	addi r0, r4, 0x009F /* 0x0002009F@l */
/* 80B88CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B88CA4  38 81 00 24 */	addi r4, r1, 0x24
/* 80B88CA8  38 A0 00 00 */	li r5, 0
/* 80B88CAC  38 C0 FF FF */	li r6, -1
/* 80B88CB0  81 83 14 2C */	lwz r12, 0x142c(r3)
/* 80B88CB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80B88CB8  7D 89 03 A6 */	mtctr r12
/* 80B88CBC  38 63 14 1C */	addi r3, r3, 0x141c
/* 80B88CC0  4E 80 04 21 */	bctrl 
lbl_80B88CC4:
/* 80B88CC4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B88CC8  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B88CCC  28 00 00 2D */	cmplwi r0, 0x2d
/* 80B88CD0  40 82 00 0C */	bne lbl_80B88CDC
/* 80B88CD4  38 00 00 00 */	li r0, 0
/* 80B88CD8  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_80B88CDC:
/* 80B88CDC  38 60 00 04 */	li r3, 4
/* 80B88CE0  4B 4A 6A BC */	b dComIfG_TimerDeleteRequest__Fi
/* 80B88CE4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B88CE8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B88CEC  38 80 00 00 */	li r4, 0
/* 80B88CF0  4B 69 53 D4 */	b resetMiniGameItem__13dMeter2Info_cFb
/* 80B88CF4  48 00 02 98 */	b lbl_80B88F8C
lbl_80B88CF8:
/* 80B88CF8  7F 03 C3 78 */	mr r3, r24
/* 80B88CFC  80 98 14 E0 */	lwz r4, 0x14e0(r24)
/* 80B88D00  38 A0 00 00 */	li r5, 0
/* 80B88D04  4B 5C B0 18 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B88D08  48 00 02 84 */	b lbl_80B88F8C
lbl_80B88D0C:
/* 80B88D0C  38 00 00 01 */	li r0, 1
/* 80B88D10  98 18 0C 1A */	stb r0, 0xc1a(r24)
/* 80B88D14  80 78 0C 1C */	lwz r3, 0xc1c(r24)
/* 80B88D18  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B88D1C  38 03 FF FE */	addi r0, r3, -2
/* 80B88D20  B0 18 0C 18 */	sth r0, 0xc18(r24)
/* 80B88D24  C0 5E 08 7C */	lfs f2, 0x87c(r30)
/* 80B88D28  D0 41 01 D4 */	stfs f2, 0x1d4(r1)
/* 80B88D2C  C0 3E 08 80 */	lfs f1, 0x880(r30)
/* 80B88D30  38 7E 00 00 */	addi r3, r30, 0
/* 80B88D34  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B88D38  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B88D3C  C0 1E 07 C0 */	lfs f0, 0x7c0(r30)
/* 80B88D40  EC 61 00 28 */	fsubs f3, f1, f0
/* 80B88D44  D0 61 01 D8 */	stfs f3, 0x1d8(r1)
/* 80B88D48  C0 3E 08 84 */	lfs f1, 0x884(r30)
/* 80B88D4C  D0 21 01 DC */	stfs f1, 0x1dc(r1)
/* 80B88D50  C0 1E 08 88 */	lfs f0, 0x888(r30)
/* 80B88D54  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80B88D58  D0 61 01 CC */	stfs f3, 0x1cc(r1)
/* 80B88D5C  D0 21 01 D0 */	stfs f1, 0x1d0(r1)
/* 80B88D60  D0 58 04 D0 */	stfs f2, 0x4d0(r24)
/* 80B88D64  C0 01 01 D8 */	lfs f0, 0x1d8(r1)
/* 80B88D68  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
/* 80B88D6C  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 80B88D70  D0 18 04 D8 */	stfs f0, 0x4d8(r24)
/* 80B88D74  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 80B88D78  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 80B88D7C  4B 6E 7E 88 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B88D80  B0 78 04 DE */	sth r3, 0x4de(r24)
/* 80B88D84  7F 03 C3 78 */	mr r3, r24
/* 80B88D88  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 80B88D8C  4B 5C B4 C4 */	b setAngle__8daNpcF_cFs
/* 80B88D90  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B88D94  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80B88D98  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B88D9C  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80B88DA0  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B88DA4  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80B88DA8  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80B88DAC  38 81 00 30 */	addi r4, r1, 0x30
/* 80B88DB0  4B 49 4A E0 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B88DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B88DB8  41 82 00 0C */	beq lbl_80B88DC4
/* 80B88DBC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B88DC0  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
lbl_80B88DC4:
/* 80B88DC4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B88DC8  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80B88DCC  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80B88DD0  38 7E 00 00 */	addi r3, r30, 0
/* 80B88DD4  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B88DD8  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80B88DDC  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 80B88DE0  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 80B88DE4  4B 6E 7E 20 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B88DE8  7C 65 1B 78 */	mr r5, r3
/* 80B88DEC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B88DF0  38 80 00 00 */	li r4, 0
/* 80B88DF4  38 C0 00 00 */	li r6, 0
/* 80B88DF8  4B 6D E5 FC */	b __ct__5csXyzFsss
/* 80B88DFC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B88E00  4B 48 41 0C */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B88E04  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 80B88E08  4B 48 3F CC */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80B88E0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B88E10  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l
/* 80B88E14  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 80B88E18  D0 18 15 9C */	stfs f0, 0x159c(r24)
/* 80B88E1C  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 80B88E20  D0 18 15 A0 */	stfs f0, 0x15a0(r24)
/* 80B88E24  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 80B88E28  D0 18 15 A4 */	stfs f0, 0x15a4(r24)
/* 80B88E2C  38 78 15 9C */	addi r3, r24, 0x159c
/* 80B88E30  38 81 01 BC */	addi r4, r1, 0x1bc
/* 80B88E34  7C 65 1B 78 */	mr r5, r3
/* 80B88E38  4B 7B E2 58 */	b PSVECAdd
/* 80B88E3C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B88E40  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 80B88E44  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80B88E48  38 7E 00 00 */	addi r3, r30, 0
/* 80B88E4C  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80B88E50  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80B88E54  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B88E58  4B 48 40 B4 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B88E5C  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 80B88E60  4B 48 3F 74 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80B88E64  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 80B88E68  D0 18 15 A8 */	stfs f0, 0x15a8(r24)
/* 80B88E6C  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 80B88E70  D0 18 15 AC */	stfs f0, 0x15ac(r24)
/* 80B88E74  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 80B88E78  D0 18 15 B0 */	stfs f0, 0x15b0(r24)
/* 80B88E7C  38 78 15 A8 */	addi r3, r24, 0x15a8
/* 80B88E80  38 98 15 9C */	addi r4, r24, 0x159c
/* 80B88E84  7C 65 1B 78 */	mr r5, r3
/* 80B88E88  4B 7B E2 08 */	b PSVECAdd
/* 80B88E8C  C0 18 15 A8 */	lfs f0, 0x15a8(r24)
/* 80B88E90  D0 18 15 B4 */	stfs f0, 0x15b4(r24)
/* 80B88E94  C0 18 15 AC */	lfs f0, 0x15ac(r24)
/* 80B88E98  D0 18 15 B8 */	stfs f0, 0x15b8(r24)
/* 80B88E9C  C0 18 15 B0 */	lfs f0, 0x15b0(r24)
/* 80B88EA0  D0 18 15 BC */	stfs f0, 0x15bc(r24)
/* 80B88EA4  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 80B88EA8  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 80B88EAC  4B 6E 7D 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B88EB0  A8 61 00 4E */	lha r3, 0x4e(r1)
/* 80B88EB4  3C 63 00 01 */	addis r3, r3, 1
/* 80B88EB8  38 03 80 00 */	addi r0, r3, -32768
/* 80B88EBC  7C 17 07 34 */	extsh r23, r0
/* 80B88EC0  38 78 13 2C */	addi r3, r24, 0x132c
/* 80B88EC4  4B 5C 78 28 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B88EC8  C0 18 15 A8 */	lfs f0, 0x15a8(r24)
/* 80B88ECC  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80B88ED0  C0 18 15 AC */	lfs f0, 0x15ac(r24)
/* 80B88ED4  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80B88ED8  C0 18 15 B0 */	lfs f0, 0x15b0(r24)
/* 80B88EDC  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80B88EE0  B2 E3 14 4A */	sth r23, 0x144a(r3)
/* 80B88EE4  38 00 00 01 */	li r0, 1
/* 80B88EE8  98 03 14 46 */	stb r0, 0x1446(r3)
/* 80B88EEC  A0 1F 4F A4 */	lhz r0, 0x4fa4(r31)
/* 80B88EF0  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80B88EF4  B0 1F 4F A4 */	sth r0, 0x4fa4(r31)
/* 80B88EF8  48 00 00 94 */	b lbl_80B88F8C
lbl_80B88EFC:
/* 80B88EFC  7F 03 C3 78 */	mr r3, r24
/* 80B88F00  80 98 14 E0 */	lwz r4, 0x14e0(r24)
/* 80B88F04  38 A0 00 00 */	li r5, 0
/* 80B88F08  4B 5C AE 14 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B88F0C  48 00 00 80 */	b lbl_80B88F8C
lbl_80B88F10:
/* 80B88F10  88 18 15 76 */	lbz r0, 0x1576(r24)
/* 80B88F14  28 00 00 00 */	cmplwi r0, 0
/* 80B88F18  40 82 00 28 */	bne lbl_80B88F40
/* 80B88F1C  7F 03 C3 78 */	mr r3, r24
/* 80B88F20  38 80 00 1B */	li r4, 0x1b
/* 80B88F24  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B88F28  38 A0 00 00 */	li r5, 0
/* 80B88F2C  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B88F30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B88F34  7D 89 03 A6 */	mtctr r12
/* 80B88F38  4E 80 04 21 */	bctrl 
/* 80B88F3C  48 00 00 50 */	b lbl_80B88F8C
lbl_80B88F40:
/* 80B88F40  7F 03 C3 78 */	mr r3, r24
/* 80B88F44  38 80 00 19 */	li r4, 0x19
/* 80B88F48  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B88F4C  38 A0 00 00 */	li r5, 0
/* 80B88F50  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B88F54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B88F58  7D 89 03 A6 */	mtctr r12
/* 80B88F5C  4E 80 04 21 */	bctrl 
/* 80B88F60  48 00 00 2C */	b lbl_80B88F8C
lbl_80B88F64:
/* 80B88F64  7F 03 C3 78 */	mr r3, r24
/* 80B88F68  4B FF 92 D1 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B88F6C  38 00 00 78 */	li r0, 0x78
/* 80B88F70  90 18 09 60 */	stw r0, 0x960(r24)
/* 80B88F74  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B88F78  B0 18 15 36 */	sth r0, 0x1536(r24)
/* 80B88F7C  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B88F80  B0 18 15 38 */	sth r0, 0x1538(r24)
/* 80B88F84  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B88F88  B0 18 15 3A */	sth r0, 0x153a(r24)
lbl_80B88F8C:
/* 80B88F8C  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B88F90  41 82 0B FC */	beq lbl_80B89B8C
/* 80B88F94  40 80 00 28 */	bge lbl_80B88FBC
/* 80B88F98  2C 1A 00 01 */	cmpwi r26, 1
/* 80B88F9C  41 82 00 58 */	beq lbl_80B88FF4
/* 80B88FA0  40 80 00 10 */	bge lbl_80B88FB0
/* 80B88FA4  2C 1A 00 00 */	cmpwi r26, 0
/* 80B88FA8  40 80 00 38 */	bge lbl_80B88FE0
/* 80B88FAC  48 00 10 88 */	b lbl_80B8A034
lbl_80B88FB0:
/* 80B88FB0  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B88FB4  41 82 0B A8 */	beq lbl_80B89B5C
/* 80B88FB8  48 00 10 7C */	b lbl_80B8A034
lbl_80B88FBC:
/* 80B88FBC  2C 1A 00 28 */	cmpwi r26, 0x28
/* 80B88FC0  41 82 0C C4 */	beq lbl_80B89C84
/* 80B88FC4  40 80 00 10 */	bge lbl_80B88FD4
/* 80B88FC8  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B88FCC  41 82 0B FC */	beq lbl_80B89BC8
/* 80B88FD0  48 00 10 64 */	b lbl_80B8A034
lbl_80B88FD4:
/* 80B88FD4  2C 1A 00 32 */	cmpwi r26, 0x32
/* 80B88FD8  41 82 0E FC */	beq lbl_80B89ED4
/* 80B88FDC  48 00 10 58 */	b lbl_80B8A034
lbl_80B88FE0:
/* 80B88FE0  C0 21 01 E4 */	lfs f1, 0x1e4(r1)
/* 80B88FE4  C0 1E 08 8C */	lfs f0, 0x88c(r30)
/* 80B88FE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B88FEC  40 80 00 08 */	bge lbl_80B88FF4
/* 80B88FF0  3B 60 00 01 */	li r27, 1
lbl_80B88FF4:
/* 80B88FF4  A8 18 09 E0 */	lha r0, 0x9e0(r24)
/* 80B88FF8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B88FFC  41 82 00 0C */	beq lbl_80B89008
/* 80B89000  2C 00 00 17 */	cmpwi r0, 0x17
/* 80B89004  40 82 0A E0 */	bne lbl_80B89AE4
lbl_80B89008:
/* 80B89008  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B8900C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B89010  41 82 00 0C */	beq lbl_80B8901C
/* 80B89014  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80B89018  40 82 10 20 */	bne lbl_80B8A038
lbl_80B8901C:
/* 80B8901C  A2 F8 0C 18 */	lhz r23, 0xc18(r24)
/* 80B89020  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B89024  4B 5C 7B F4 */	b getNextIdx__13daNpcF_Path_cFv
/* 80B89028  7C 17 18 00 */	cmpw r23, r3
/* 80B8902C  41 82 01 60 */	beq lbl_80B8918C
/* 80B89030  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B89034  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80B89038  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B8903C  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80B89040  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B89044  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80B89048  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B8904C  38 81 01 20 */	addi r4, r1, 0x120
/* 80B89050  38 A1 01 A4 */	addi r5, r1, 0x1a4
/* 80B89054  4B 5C 7D 8C */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B89058  38 61 01 14 */	addi r3, r1, 0x114
/* 80B8905C  38 98 15 00 */	addi r4, r24, 0x1500
/* 80B89060  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B89064  4B 6D DA D0 */	b __mi__4cXyzCFRC3Vec
/* 80B89068  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80B8906C  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80B89070  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80B89074  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80B89078  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 80B8907C  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80B89080  38 61 01 98 */	addi r3, r1, 0x198
/* 80B89084  4B 7B E0 B4 */	b PSVECSquareMag
/* 80B89088  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8908C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89090  40 81 00 58 */	ble lbl_80B890E8
/* 80B89094  FC 00 08 34 */	frsqrte f0, f1
/* 80B89098  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B8909C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B890A0  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B890A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B890A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B890AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B890B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B890B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B890B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B890BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B890C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B890C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B890C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B890CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B890D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B890D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B890D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B890DC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B890E0  FC 20 08 18 */	frsp f1, f1
/* 80B890E4  48 00 00 88 */	b lbl_80B8916C
lbl_80B890E8:
/* 80B890E8  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B890EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B890F0  40 80 00 10 */	bge lbl_80B89100
/* 80B890F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B890F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B890FC  48 00 00 70 */	b lbl_80B8916C
lbl_80B89100:
/* 80B89100  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B89104  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80B89108  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8910C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B89110  7C 03 00 00 */	cmpw r3, r0
/* 80B89114  41 82 00 14 */	beq lbl_80B89128
/* 80B89118  40 80 00 40 */	bge lbl_80B89158
/* 80B8911C  2C 03 00 00 */	cmpwi r3, 0
/* 80B89120  41 82 00 20 */	beq lbl_80B89140
/* 80B89124  48 00 00 34 */	b lbl_80B89158
lbl_80B89128:
/* 80B89128  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8912C  41 82 00 0C */	beq lbl_80B89138
/* 80B89130  38 00 00 01 */	li r0, 1
/* 80B89134  48 00 00 28 */	b lbl_80B8915C
lbl_80B89138:
/* 80B89138  38 00 00 02 */	li r0, 2
/* 80B8913C  48 00 00 20 */	b lbl_80B8915C
lbl_80B89140:
/* 80B89140  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89144  41 82 00 0C */	beq lbl_80B89150
/* 80B89148  38 00 00 05 */	li r0, 5
/* 80B8914C  48 00 00 10 */	b lbl_80B8915C
lbl_80B89150:
/* 80B89150  38 00 00 03 */	li r0, 3
/* 80B89154  48 00 00 08 */	b lbl_80B8915C
lbl_80B89158:
/* 80B89158  38 00 00 04 */	li r0, 4
lbl_80B8915C:
/* 80B8915C  2C 00 00 01 */	cmpwi r0, 1
/* 80B89160  40 82 00 0C */	bne lbl_80B8916C
/* 80B89164  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89168  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B8916C:
/* 80B8916C  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80B89170  EF E0 00 72 */	fmuls f31, f0, f1
/* 80B89174  38 7E 00 00 */	addi r3, r30, 0
/* 80B89178  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B8917C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B89180  40 80 05 B8 */	bge lbl_80B89738
/* 80B89184  FF E0 00 90 */	fmr f31, f0
/* 80B89188  48 00 05 B0 */	b lbl_80B89738
lbl_80B8918C:
/* 80B8918C  38 61 01 08 */	addi r3, r1, 0x108
/* 80B89190  38 98 15 00 */	addi r4, r24, 0x1500
/* 80B89194  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B89198  4B 6D D9 9C */	b __mi__4cXyzCFRC3Vec
/* 80B8919C  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 80B891A0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B891A4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B891A8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B891AC  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80B891B0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B891B4  38 61 00 90 */	addi r3, r1, 0x90
/* 80B891B8  4B 7B DF 80 */	b PSVECSquareMag
/* 80B891BC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B891C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B891C4  40 81 00 58 */	ble lbl_80B8921C
/* 80B891C8  FC 00 08 34 */	frsqrte f0, f1
/* 80B891CC  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B891D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B891D4  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B891D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B891DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B891E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B891E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B891E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B891EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B891F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B891F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B891F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B891FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B89200  FC 00 00 32 */	fmul f0, f0, f0
/* 80B89204  FC 01 00 32 */	fmul f0, f1, f0
/* 80B89208  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8920C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B89210  FC 21 00 32 */	fmul f1, f1, f0
/* 80B89214  FC 20 08 18 */	frsp f1, f1
/* 80B89218  48 00 00 88 */	b lbl_80B892A0
lbl_80B8921C:
/* 80B8921C  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B89220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89224  40 80 00 10 */	bge lbl_80B89234
/* 80B89228  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B8922C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B89230  48 00 00 70 */	b lbl_80B892A0
lbl_80B89234:
/* 80B89234  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B89238  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80B8923C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B89240  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B89244  7C 03 00 00 */	cmpw r3, r0
/* 80B89248  41 82 00 14 */	beq lbl_80B8925C
/* 80B8924C  40 80 00 40 */	bge lbl_80B8928C
/* 80B89250  2C 03 00 00 */	cmpwi r3, 0
/* 80B89254  41 82 00 20 */	beq lbl_80B89274
/* 80B89258  48 00 00 34 */	b lbl_80B8928C
lbl_80B8925C:
/* 80B8925C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89260  41 82 00 0C */	beq lbl_80B8926C
/* 80B89264  38 00 00 01 */	li r0, 1
/* 80B89268  48 00 00 28 */	b lbl_80B89290
lbl_80B8926C:
/* 80B8926C  38 00 00 02 */	li r0, 2
/* 80B89270  48 00 00 20 */	b lbl_80B89290
lbl_80B89274:
/* 80B89274  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89278  41 82 00 0C */	beq lbl_80B89284
/* 80B8927C  38 00 00 05 */	li r0, 5
/* 80B89280  48 00 00 10 */	b lbl_80B89290
lbl_80B89284:
/* 80B89284  38 00 00 03 */	li r0, 3
/* 80B89288  48 00 00 08 */	b lbl_80B89290
lbl_80B8928C:
/* 80B8928C  38 00 00 04 */	li r0, 4
lbl_80B89290:
/* 80B89290  2C 00 00 01 */	cmpwi r0, 1
/* 80B89294  40 82 00 0C */	bne lbl_80B892A0
/* 80B89298  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B8929C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B892A0:
/* 80B892A0  C0 1E 07 B8 */	lfs f0, 0x7b8(r30)
/* 80B892A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B892A8  40 80 04 38 */	bge lbl_80B896E0
/* 80B892AC  C0 1E 08 90 */	lfs f0, 0x890(r30)
/* 80B892B0  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 80B892B4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B892B8  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80B892BC  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80B892C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B892C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B892C8  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80B892CC  4B 48 31 10 */	b mDoMtx_YrotS__FPA4_fs
/* 80B892D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B892D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B892D8  38 81 01 8C */	addi r4, r1, 0x18c
/* 80B892DC  38 A1 01 80 */	addi r5, r1, 0x180
/* 80B892E0  4B 7B DA 8C */	b PSMTXMultVec
/* 80B892E4  38 61 00 FC */	addi r3, r1, 0xfc
/* 80B892E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B892EC  38 A1 01 80 */	addi r5, r1, 0x180
/* 80B892F0  4B 6D D8 44 */	b __mi__4cXyzCFRC3Vec
/* 80B892F4  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80B892F8  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 80B892FC  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80B89300  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80B89304  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80B89308  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80B8930C  38 61 01 80 */	addi r3, r1, 0x180
/* 80B89310  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B89314  7C 65 1B 78 */	mr r5, r3
/* 80B89318  4B 7B DD 78 */	b PSVECAdd
/* 80B8931C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80B89320  38 81 01 80 */	addi r4, r1, 0x180
/* 80B89324  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B89328  4B 6D D8 0C */	b __mi__4cXyzCFRC3Vec
/* 80B8932C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B89330  38 81 01 74 */	addi r4, r1, 0x174
/* 80B89334  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B89338  4B 6D D7 FC */	b __mi__4cXyzCFRC3Vec
/* 80B8933C  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80B89340  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B89344  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B89348  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B8934C  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80B89350  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B89354  38 61 00 84 */	addi r3, r1, 0x84
/* 80B89358  4B 7B DD E0 */	b PSVECSquareMag
/* 80B8935C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B89360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89364  40 81 00 58 */	ble lbl_80B893BC
/* 80B89368  FC 00 08 34 */	frsqrte f0, f1
/* 80B8936C  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B89370  FC 44 00 32 */	fmul f2, f4, f0
/* 80B89374  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B89378  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8937C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B89380  FC 03 00 28 */	fsub f0, f3, f0
/* 80B89384  FC 02 00 32 */	fmul f0, f2, f0
/* 80B89388  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8938C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B89390  FC 01 00 32 */	fmul f0, f1, f0
/* 80B89394  FC 03 00 28 */	fsub f0, f3, f0
/* 80B89398  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8939C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B893A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B893A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B893A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B893AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B893B0  FF E1 00 32 */	fmul f31, f1, f0
/* 80B893B4  FF E0 F8 18 */	frsp f31, f31
/* 80B893B8  48 00 00 90 */	b lbl_80B89448
lbl_80B893BC:
/* 80B893BC  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B893C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B893C4  40 80 00 10 */	bge lbl_80B893D4
/* 80B893C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B893CC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80B893D0  48 00 00 78 */	b lbl_80B89448
lbl_80B893D4:
/* 80B893D4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B893D8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B893DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B893E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B893E4  7C 03 00 00 */	cmpw r3, r0
/* 80B893E8  41 82 00 14 */	beq lbl_80B893FC
/* 80B893EC  40 80 00 40 */	bge lbl_80B8942C
/* 80B893F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B893F4  41 82 00 20 */	beq lbl_80B89414
/* 80B893F8  48 00 00 34 */	b lbl_80B8942C
lbl_80B893FC:
/* 80B893FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89400  41 82 00 0C */	beq lbl_80B8940C
/* 80B89404  38 00 00 01 */	li r0, 1
/* 80B89408  48 00 00 28 */	b lbl_80B89430
lbl_80B8940C:
/* 80B8940C  38 00 00 02 */	li r0, 2
/* 80B89410  48 00 00 20 */	b lbl_80B89430
lbl_80B89414:
/* 80B89414  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89418  41 82 00 0C */	beq lbl_80B89424
/* 80B8941C  38 00 00 05 */	li r0, 5
/* 80B89420  48 00 00 10 */	b lbl_80B89430
lbl_80B89424:
/* 80B89424  38 00 00 03 */	li r0, 3
/* 80B89428  48 00 00 08 */	b lbl_80B89430
lbl_80B8942C:
/* 80B8942C  38 00 00 04 */	li r0, 4
lbl_80B89430:
/* 80B89430  2C 00 00 01 */	cmpwi r0, 1
/* 80B89434  40 82 00 10 */	bne lbl_80B89444
/* 80B89438  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B8943C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80B89440  48 00 00 08 */	b lbl_80B89448
lbl_80B89444:
/* 80B89444  FF E0 08 90 */	fmr f31, f1
lbl_80B89448:
/* 80B89448  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80B8944C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B89450  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B89454  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B89458  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80B8945C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B89460  38 61 00 78 */	addi r3, r1, 0x78
/* 80B89464  4B 7B DC D4 */	b PSVECSquareMag
/* 80B89468  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8946C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89470  40 81 00 58 */	ble lbl_80B894C8
/* 80B89474  FC 00 08 34 */	frsqrte f0, f1
/* 80B89478  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B8947C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B89480  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B89484  FC 00 00 32 */	fmul f0, f0, f0
/* 80B89488  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8948C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B89490  FC 02 00 32 */	fmul f0, f2, f0
/* 80B89494  FC 44 00 32 */	fmul f2, f4, f0
/* 80B89498  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8949C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B894A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B894A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B894A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B894AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B894B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B894B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B894B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B894BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B894C0  FC 20 08 18 */	frsp f1, f1
/* 80B894C4  48 00 00 88 */	b lbl_80B8954C
lbl_80B894C8:
/* 80B894C8  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B894CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B894D0  40 80 00 10 */	bge lbl_80B894E0
/* 80B894D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B894D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B894DC  48 00 00 70 */	b lbl_80B8954C
lbl_80B894E0:
/* 80B894E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B894E4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B894E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B894EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B894F0  7C 03 00 00 */	cmpw r3, r0
/* 80B894F4  41 82 00 14 */	beq lbl_80B89508
/* 80B894F8  40 80 00 40 */	bge lbl_80B89538
/* 80B894FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B89500  41 82 00 20 */	beq lbl_80B89520
/* 80B89504  48 00 00 34 */	b lbl_80B89538
lbl_80B89508:
/* 80B89508  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8950C  41 82 00 0C */	beq lbl_80B89518
/* 80B89510  38 00 00 01 */	li r0, 1
/* 80B89514  48 00 00 28 */	b lbl_80B8953C
lbl_80B89518:
/* 80B89518  38 00 00 02 */	li r0, 2
/* 80B8951C  48 00 00 20 */	b lbl_80B8953C
lbl_80B89520:
/* 80B89520  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89524  41 82 00 0C */	beq lbl_80B89530
/* 80B89528  38 00 00 05 */	li r0, 5
/* 80B8952C  48 00 00 10 */	b lbl_80B8953C
lbl_80B89530:
/* 80B89530  38 00 00 03 */	li r0, 3
/* 80B89534  48 00 00 08 */	b lbl_80B8953C
lbl_80B89538:
/* 80B89538  38 00 00 04 */	li r0, 4
lbl_80B8953C:
/* 80B8953C  2C 00 00 01 */	cmpwi r0, 1
/* 80B89540  40 82 00 0C */	bne lbl_80B8954C
/* 80B89544  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89548  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B8954C:
/* 80B8954C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80B89550  40 80 00 20 */	bge lbl_80B89570
/* 80B89554  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 80B89558  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80B8955C  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 80B89560  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B89564  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 80B89568  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80B8956C  48 00 00 1C */	b lbl_80B89588
lbl_80B89570:
/* 80B89570  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 80B89574  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80B89578  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 80B8957C  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B89580  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 80B89584  D0 01 01 AC */	stfs f0, 0x1ac(r1)
lbl_80B89588:
/* 80B89588  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80B8958C  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 80B89590  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B89594  4B 6D D5 A0 */	b __mi__4cXyzCFRC3Vec
/* 80B89598  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80B8959C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B895A0  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B895A4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B895A8  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80B895AC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B895B0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80B895B4  4B 7B DB 84 */	b PSVECSquareMag
/* 80B895B8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B895BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B895C0  40 81 00 58 */	ble lbl_80B89618
/* 80B895C4  FC 00 08 34 */	frsqrte f0, f1
/* 80B895C8  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B895CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B895D0  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B895D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B895D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B895DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B895E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B895E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B895E8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B895EC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B895F0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B895F4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B895F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B895FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B89600  FC 01 00 32 */	fmul f0, f1, f0
/* 80B89604  FC 03 00 28 */	fsub f0, f3, f0
/* 80B89608  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8960C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B89610  FC 20 08 18 */	frsp f1, f1
/* 80B89614  48 00 00 88 */	b lbl_80B8969C
lbl_80B89618:
/* 80B89618  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B8961C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89620  40 80 00 10 */	bge lbl_80B89630
/* 80B89624  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89628  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B8962C  48 00 00 70 */	b lbl_80B8969C
lbl_80B89630:
/* 80B89630  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B89634  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B89638  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8963C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B89640  7C 03 00 00 */	cmpw r3, r0
/* 80B89644  41 82 00 14 */	beq lbl_80B89658
/* 80B89648  40 80 00 40 */	bge lbl_80B89688
/* 80B8964C  2C 03 00 00 */	cmpwi r3, 0
/* 80B89650  41 82 00 20 */	beq lbl_80B89670
/* 80B89654  48 00 00 34 */	b lbl_80B89688
lbl_80B89658:
/* 80B89658  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8965C  41 82 00 0C */	beq lbl_80B89668
/* 80B89660  38 00 00 01 */	li r0, 1
/* 80B89664  48 00 00 28 */	b lbl_80B8968C
lbl_80B89668:
/* 80B89668  38 00 00 02 */	li r0, 2
/* 80B8966C  48 00 00 20 */	b lbl_80B8968C
lbl_80B89670:
/* 80B89670  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89674  41 82 00 0C */	beq lbl_80B89680
/* 80B89678  38 00 00 05 */	li r0, 5
/* 80B8967C  48 00 00 10 */	b lbl_80B8968C
lbl_80B89680:
/* 80B89680  38 00 00 03 */	li r0, 3
/* 80B89684  48 00 00 08 */	b lbl_80B8968C
lbl_80B89688:
/* 80B89688  38 00 00 04 */	li r0, 4
lbl_80B8968C:
/* 80B8968C  2C 00 00 01 */	cmpwi r0, 1
/* 80B89690  40 82 00 0C */	bne lbl_80B8969C
/* 80B89694  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89698  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B8969C:
/* 80B8969C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80B896A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B896A4  40 81 00 1C */	ble lbl_80B896C0
/* 80B896A8  C0 3E 07 64 */	lfs f1, 0x764(r30)
/* 80B896AC  38 7E 00 00 */	addi r3, r30, 0
/* 80B896B0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B896B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B896B8  EF E1 00 32 */	fmuls f31, f1, f0
/* 80B896BC  48 00 00 7C */	b lbl_80B89738
lbl_80B896C0:
/* 80B896C0  C3 FE 08 94 */	lfs f31, 0x894(r30)
/* 80B896C4  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 80B896C8  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80B896CC  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 80B896D0  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B896D4  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 80B896D8  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80B896DC  48 00 00 5C */	b lbl_80B89738
lbl_80B896E0:
/* 80B896E0  C3 FE 00 B0 */	lfs f31, 0xb0(r30)
/* 80B896E4  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B896E8  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80B896EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B896F0  40 80 00 20 */	bge lbl_80B89710
/* 80B896F4  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 80B896F8  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80B896FC  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 80B89700  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 80B89704  C0 01 01 E8 */	lfs f0, 0x1e8(r1)
/* 80B89708  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80B8970C  48 00 00 2C */	b lbl_80B89738
lbl_80B89710:
/* 80B89710  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B89714  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B89718  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B8971C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B89720  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B89724  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B89728  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B8972C  38 81 00 CC */	addi r4, r1, 0xcc
/* 80B89730  38 A1 01 A4 */	addi r5, r1, 0x1a4
/* 80B89734  4B 5C 76 AC */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
lbl_80B89738:
/* 80B89738  38 78 15 24 */	addi r3, r24, 0x1524
/* 80B8973C  FC 20 F8 90 */	fmr f1, f31
/* 80B89740  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80B89744  C0 7E 07 CC */	lfs f3, 0x7cc(r30)
/* 80B89748  4B 6E 62 F4 */	b cLib_addCalc2__FPffff
/* 80B8974C  80 78 05 68 */	lwz r3, 0x568(r24)
/* 80B89750  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B89754  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B89758  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B8975C  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80B89760  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80B89764  C0 7E 08 98 */	lfs f3, 0x898(r30)
/* 80B89768  4B 6E 62 D4 */	b cLib_addCalc2__FPffff
/* 80B8976C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B89770  80 78 05 68 */	lwz r3, 0x568(r24)
/* 80B89774  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B89778  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 80B8977C  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B89780  4B 6E 74 F4 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B89784  B0 61 00 44 */	sth r3, 0x44(r1)
/* 80B89788  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B8978C  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 80B89790  4B 6E 74 74 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B89794  3B 41 00 46 */	addi r26, r1, 0x46
/* 80B89798  B0 61 00 46 */	sth r3, 0x46(r1)
/* 80B8979C  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B897A0  3A E1 00 48 */	addi r23, r1, 0x48
/* 80B897A4  B0 01 00 48 */	sth r0, 0x48(r1)
/* 80B897A8  38 00 00 00 */	li r0, 0
/* 80B897AC  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B897B0  7F 03 C3 78 */	mr r3, r24
/* 80B897B4  38 81 00 44 */	addi r4, r1, 0x44
/* 80B897B8  38 B8 15 36 */	addi r5, r24, 0x1536
/* 80B897BC  38 C0 00 08 */	li r6, 8
/* 80B897C0  7F 27 CB 78 */	mr r7, r25
/* 80B897C4  4B FF 8D 31 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B897C8  7F 03 C3 78 */	mr r3, r24
/* 80B897CC  7F 24 CB 78 */	mr r4, r25
/* 80B897D0  38 A0 00 08 */	li r5, 8
/* 80B897D4  7F 46 D3 78 */	mr r6, r26
/* 80B897D8  7E E7 BB 78 */	mr r7, r23
/* 80B897DC  4B FF 87 DD */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B897E0  A8 01 00 48 */	lha r0, 0x48(r1)
/* 80B897E4  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B897E8  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B897EC  B0 18 08 F0 */	sth r0, 0x8f0(r24)
/* 80B897F0  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B897F4  B0 18 08 F2 */	sth r0, 0x8f2(r24)
/* 80B897F8  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B897FC  B0 18 08 F4 */	sth r0, 0x8f4(r24)
/* 80B89800  A8 18 08 F0 */	lha r0, 0x8f0(r24)
/* 80B89804  B0 18 04 E4 */	sth r0, 0x4e4(r24)
/* 80B89808  A8 18 08 F2 */	lha r0, 0x8f2(r24)
/* 80B8980C  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B89810  A8 18 08 F4 */	lha r0, 0x8f4(r24)
/* 80B89814  B0 18 04 E8 */	sth r0, 0x4e8(r24)
/* 80B89818  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B8981C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B89820  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 80B89824  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 80B89828  D0 21 01 70 */	stfs f1, 0x170(r1)
/* 80B8982C  7F 03 C3 78 */	mr r3, r24
/* 80B89830  38 81 01 68 */	addi r4, r1, 0x168
/* 80B89834  4B FF 8D 51 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B89838  80 18 05 FC */	lwz r0, 0x5fc(r24)
/* 80B8983C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B89840  41 82 00 20 */	beq lbl_80B89860
/* 80B89844  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 80B89848  38 7E 00 00 */	addi r3, r30, 0
/* 80B8984C  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B89850  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80B89854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89858  40 81 00 08 */	ble lbl_80B89860
/* 80B8985C  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
lbl_80B89860:
/* 80B89860  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B89864  38 98 15 00 */	addi r4, r24, 0x1500
/* 80B89868  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B8986C  4B 6D D2 C8 */	b __mi__4cXyzCFRC3Vec
/* 80B89870  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80B89874  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B89878  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8987C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B89880  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80B89884  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B89888  38 61 00 60 */	addi r3, r1, 0x60
/* 80B8988C  4B 7B D8 AC */	b PSVECSquareMag
/* 80B89890  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B89894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89898  40 81 00 58 */	ble lbl_80B898F0
/* 80B8989C  FC 00 08 34 */	frsqrte f0, f1
/* 80B898A0  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B898A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B898A8  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B898AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B898B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B898B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B898B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B898BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B898C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B898C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B898C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B898CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B898D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B898D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B898D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B898DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B898E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B898E4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B898E8  FC 20 08 18 */	frsp f1, f1
/* 80B898EC  48 00 00 88 */	b lbl_80B89974
lbl_80B898F0:
/* 80B898F0  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B898F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B898F8  40 80 00 10 */	bge lbl_80B89908
/* 80B898FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89900  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B89904  48 00 00 70 */	b lbl_80B89974
lbl_80B89908:
/* 80B89908  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B8990C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B89910  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B89914  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B89918  7C 03 00 00 */	cmpw r3, r0
/* 80B8991C  41 82 00 14 */	beq lbl_80B89930
/* 80B89920  40 80 00 40 */	bge lbl_80B89960
/* 80B89924  2C 03 00 00 */	cmpwi r3, 0
/* 80B89928  41 82 00 20 */	beq lbl_80B89948
/* 80B8992C  48 00 00 34 */	b lbl_80B89960
lbl_80B89930:
/* 80B89930  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89934  41 82 00 0C */	beq lbl_80B89940
/* 80B89938  38 00 00 01 */	li r0, 1
/* 80B8993C  48 00 00 28 */	b lbl_80B89964
lbl_80B89940:
/* 80B89940  38 00 00 02 */	li r0, 2
/* 80B89944  48 00 00 20 */	b lbl_80B89964
lbl_80B89948:
/* 80B89948  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8994C  41 82 00 0C */	beq lbl_80B89958
/* 80B89950  38 00 00 05 */	li r0, 5
/* 80B89954  48 00 00 10 */	b lbl_80B89964
lbl_80B89958:
/* 80B89958  38 00 00 03 */	li r0, 3
/* 80B8995C  48 00 00 08 */	b lbl_80B89964
lbl_80B89960:
/* 80B89960  38 00 00 04 */	li r0, 4
lbl_80B89964:
/* 80B89964  2C 00 00 01 */	cmpwi r0, 1
/* 80B89968  40 82 00 0C */	bne lbl_80B89974
/* 80B8996C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89970  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B89974:
/* 80B89974  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80B89978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8997C  40 80 01 4C */	bge lbl_80B89AC8
/* 80B89980  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80B89984  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 80B89988  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80B8998C  4B 6D D1 A8 */	b __mi__4cXyzCFRC3Vec
/* 80B89990  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80B89994  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B89998  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8999C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B899A0  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80B899A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B899A8  38 61 00 54 */	addi r3, r1, 0x54
/* 80B899AC  4B 7B D7 8C */	b PSVECSquareMag
/* 80B899B0  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B899B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B899B8  40 81 00 58 */	ble lbl_80B89A10
/* 80B899BC  FC 00 08 34 */	frsqrte f0, f1
/* 80B899C0  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B899C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B899C8  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B899CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B899D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B899D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B899D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B899DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B899E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B899E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B899E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B899EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B899F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B899F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B899F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B899FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B89A00  FC 02 00 32 */	fmul f0, f2, f0
/* 80B89A04  FC 21 00 32 */	fmul f1, f1, f0
/* 80B89A08  FC 20 08 18 */	frsp f1, f1
/* 80B89A0C  48 00 00 88 */	b lbl_80B89A94
lbl_80B89A10:
/* 80B89A10  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B89A14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89A18  40 80 00 10 */	bge lbl_80B89A28
/* 80B89A1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89A20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B89A24  48 00 00 70 */	b lbl_80B89A94
lbl_80B89A28:
/* 80B89A28  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B89A2C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B89A30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B89A34  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B89A38  7C 03 00 00 */	cmpw r3, r0
/* 80B89A3C  41 82 00 14 */	beq lbl_80B89A50
/* 80B89A40  40 80 00 40 */	bge lbl_80B89A80
/* 80B89A44  2C 03 00 00 */	cmpwi r3, 0
/* 80B89A48  41 82 00 20 */	beq lbl_80B89A68
/* 80B89A4C  48 00 00 34 */	b lbl_80B89A80
lbl_80B89A50:
/* 80B89A50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89A54  41 82 00 0C */	beq lbl_80B89A60
/* 80B89A58  38 00 00 01 */	li r0, 1
/* 80B89A5C  48 00 00 28 */	b lbl_80B89A84
lbl_80B89A60:
/* 80B89A60  38 00 00 02 */	li r0, 2
/* 80B89A64  48 00 00 20 */	b lbl_80B89A84
lbl_80B89A68:
/* 80B89A68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B89A6C  41 82 00 0C */	beq lbl_80B89A78
/* 80B89A70  38 00 00 05 */	li r0, 5
/* 80B89A74  48 00 00 10 */	b lbl_80B89A84
lbl_80B89A78:
/* 80B89A78  38 00 00 03 */	li r0, 3
/* 80B89A7C  48 00 00 08 */	b lbl_80B89A84
lbl_80B89A80:
/* 80B89A80  38 00 00 04 */	li r0, 4
lbl_80B89A84:
/* 80B89A84  2C 00 00 01 */	cmpwi r0, 1
/* 80B89A88  40 82 00 0C */	bne lbl_80B89A94
/* 80B89A8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B89A90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B89A94:
/* 80B89A94  C0 1E 08 9C */	lfs f0, 0x89c(r30)
/* 80B89A98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B89A9C  40 80 00 2C */	bge lbl_80B89AC8
/* 80B89AA0  7F 03 C3 78 */	mr r3, r24
/* 80B89AA4  38 80 00 1E */	li r4, 0x1e
/* 80B89AA8  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B89AAC  38 A0 00 00 */	li r5, 0
/* 80B89AB0  81 98 0B 44 */	lwz r12, 0xb44(r24)
/* 80B89AB4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B89AB8  7D 89 03 A6 */	mtctr r12
/* 80B89ABC  4E 80 04 21 */	bctrl 
/* 80B89AC0  7F 03 C3 78 */	mr r3, r24
/* 80B89AC4  4B FF 88 09 */	bl calcWaistAngleStop__11daNpc_zrA_cFv
lbl_80B89AC8:
/* 80B89AC8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B89ACC  D0 18 15 00 */	stfs f0, 0x1500(r24)
/* 80B89AD0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B89AD4  D0 18 15 04 */	stfs f0, 0x1504(r24)
/* 80B89AD8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B89ADC  D0 18 15 08 */	stfs f0, 0x1508(r24)
/* 80B89AE0  48 00 05 58 */	b lbl_80B8A038
lbl_80B89AE4:
/* 80B89AE4  7F 03 C3 78 */	mr r3, r24
/* 80B89AE8  38 80 00 01 */	li r4, 1
/* 80B89AEC  4B FF 8B 11 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B89AF0  7F 03 C3 78 */	mr r3, r24
/* 80B89AF4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B89AF8  4B 49 0C 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B89AFC  A8 98 08 F2 */	lha r4, 0x8f2(r24)
/* 80B89B00  7C 60 07 34 */	extsh r0, r3
/* 80B89B04  7C 04 00 00 */	cmpw r4, r0
/* 80B89B08  40 82 00 28 */	bne lbl_80B89B30
/* 80B89B0C  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B89B10  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80B89B14  40 82 05 24 */	bne lbl_80B8A038
/* 80B89B18  2C 1A 00 01 */	cmpwi r26, 1
/* 80B89B1C  40 82 00 08 */	bne lbl_80B89B24
/* 80B89B20  3B 60 00 01 */	li r27, 1
lbl_80B89B24:
/* 80B89B24  38 00 00 00 */	li r0, 0
/* 80B89B28  90 18 09 6C */	stw r0, 0x96c(r24)
/* 80B89B2C  48 00 05 0C */	b lbl_80B8A038
lbl_80B89B30:
/* 80B89B30  7F 03 C3 78 */	mr r3, r24
/* 80B89B34  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B89B38  4B 49 0B D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B89B3C  7C 64 1B 78 */	mr r4, r3
/* 80B89B40  38 78 08 F2 */	addi r3, r24, 0x8f2
/* 80B89B44  A8 BC 00 74 */	lha r5, 0x74(r28)
/* 80B89B48  4B 6E 70 48 */	b cLib_chaseAngleS__FPsss
/* 80B89B4C  7F 03 C3 78 */	mr r3, r24
/* 80B89B50  A8 98 08 F2 */	lha r4, 0x8f2(r24)
/* 80B89B54  4B 5C A6 FC */	b setAngle__8daNpcF_cFs
/* 80B89B58  48 00 04 E0 */	b lbl_80B8A038
lbl_80B89B5C:
/* 80B89B5C  7F 03 C3 78 */	mr r3, r24
/* 80B89B60  38 80 00 01 */	li r4, 1
/* 80B89B64  4B FF 8A 99 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B89B68  7F 03 C3 78 */	mr r3, r24
/* 80B89B6C  38 80 00 00 */	li r4, 0
/* 80B89B70  38 A0 00 01 */	li r5, 1
/* 80B89B74  38 C0 00 00 */	li r6, 0
/* 80B89B78  4B 5C A2 0C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B89B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B89B80  41 82 04 B8 */	beq lbl_80B8A038
/* 80B89B84  3B 60 00 01 */	li r27, 1
/* 80B89B88  48 00 04 B0 */	b lbl_80B8A038
lbl_80B89B8C:
/* 80B89B8C  7F 03 C3 78 */	mr r3, r24
/* 80B89B90  38 80 00 01 */	li r4, 1
/* 80B89B94  4B FF 8A 69 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B89B98  7F 03 C3 78 */	mr r3, r24
/* 80B89B9C  38 80 00 00 */	li r4, 0
/* 80B89BA0  48 00 04 C5 */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B89BA4  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B89BA8  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 80B89BAC  4B 6E 70 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B89BB0  B0 78 04 DE */	sth r3, 0x4de(r24)
/* 80B89BB4  7F 03 C3 78 */	mr r3, r24
/* 80B89BB8  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 80B89BBC  4B 5C A6 94 */	b setAngle__8daNpcF_cFs
/* 80B89BC0  3B 60 00 01 */	li r27, 1
/* 80B89BC4  48 00 04 74 */	b lbl_80B8A038
lbl_80B89BC8:
/* 80B89BC8  7F 03 C3 78 */	mr r3, r24
/* 80B89BCC  38 80 00 01 */	li r4, 1
/* 80B89BD0  4B FF 8A 2D */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B89BD4  7F 03 C3 78 */	mr r3, r24
/* 80B89BD8  38 80 00 00 */	li r4, 0
/* 80B89BDC  48 00 04 89 */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B89BE0  7F 03 C3 78 */	mr r3, r24
/* 80B89BE4  38 80 00 00 */	li r4, 0
/* 80B89BE8  38 A0 00 01 */	li r5, 1
/* 80B89BEC  38 C0 00 00 */	li r6, 0
/* 80B89BF0  4B 5C A1 94 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B89BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B89BF8  41 82 04 40 */	beq lbl_80B8A038
/* 80B89BFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B89C00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B89C04  38 63 09 78 */	addi r3, r3, 0x978
/* 80B89C08  38 80 00 3E */	li r4, 0x3e
/* 80B89C0C  4B 4A AF DC */	b isSwitch__12dSv_danBit_cCFi
/* 80B89C10  2C 03 00 00 */	cmpwi r3, 0
/* 80B89C14  41 82 00 28 */	beq lbl_80B89C3C
/* 80B89C18  38 60 00 0F */	li r3, 0xf
/* 80B89C1C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80B89C20  38 80 00 00 */	li r4, 0
/* 80B89C24  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80B89C28  7C 05 07 74 */	extsb r5, r0
/* 80B89C2C  38 C0 00 00 */	li r6, 0
/* 80B89C30  38 E0 FF FF */	li r7, -1
/* 80B89C34  4B 49 D5 3C */	b dStage_changeScene__FifUlScsi
/* 80B89C38  48 00 04 00 */	b lbl_80B8A038
lbl_80B89C3C:
/* 80B89C3C  3B 60 00 01 */	li r27, 1
/* 80B89C40  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B89C44  B0 18 15 36 */	sth r0, 0x1536(r24)
/* 80B89C48  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B89C4C  B0 18 15 38 */	sth r0, 0x1538(r24)
/* 80B89C50  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B89C54  B0 18 15 3A */	sth r0, 0x153a(r24)
/* 80B89C58  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B89C5C  D0 18 15 28 */	stfs f0, 0x1528(r24)
/* 80B89C60  C0 38 15 28 */	lfs f1, 0x1528(r24)
/* 80B89C64  38 7E 00 00 */	addi r3, r30, 0
/* 80B89C68  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B89C6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B89C70  D0 18 15 24 */	stfs f0, 0x1524(r24)
/* 80B89C74  7F 03 C3 78 */	mr r3, r24
/* 80B89C78  38 80 00 00 */	li r4, 0
/* 80B89C7C  4B FF 4A 79 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B89C80  48 00 03 B8 */	b lbl_80B8A038
lbl_80B89C84:
/* 80B89C84  AA FC 00 74 */	lha r23, 0x74(r28)
/* 80B89C88  38 7E 00 00 */	addi r3, r30, 0
/* 80B89C8C  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B89C90  38 78 15 6C */	addi r3, r24, 0x156c
/* 80B89C94  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B89C98  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B89C9C  C0 1E 07 C0 */	lfs f0, 0x7c0(r30)
/* 80B89CA0  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B89CA4  4B 6E 6A 9C */	b cLib_chaseF__FPfff
/* 80B89CA8  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B89CAC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B89CB0  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B89CB4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B89CB8  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B89CBC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B89CC0  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B89CC4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80B89CC8  38 A1 01 5C */	addi r5, r1, 0x15c
/* 80B89CCC  4B FE E8 41 */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B89CD0  38 61 01 5C */	addi r3, r1, 0x15c
/* 80B89CD4  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B89CD8  4B 6E 6F 9C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B89CDC  B0 61 00 3C */	sth r3, 0x3c(r1)
/* 80B89CE0  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B89CE4  38 81 01 5C */	addi r4, r1, 0x15c
/* 80B89CE8  4B 6E 6F 1C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B89CEC  B0 61 00 3E */	sth r3, 0x3e(r1)
/* 80B89CF0  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B89CF4  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80B89CF8  7F 03 C3 78 */	mr r3, r24
/* 80B89CFC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B89D00  38 B8 15 36 */	addi r5, r24, 0x1536
/* 80B89D04  38 C0 00 04 */	li r6, 4
/* 80B89D08  7E E7 BB 78 */	mr r7, r23
/* 80B89D0C  4B FF 87 E9 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B89D10  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B89D14  B0 18 08 F0 */	sth r0, 0x8f0(r24)
/* 80B89D18  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B89D1C  B0 18 08 F2 */	sth r0, 0x8f2(r24)
/* 80B89D20  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B89D24  B0 18 08 F4 */	sth r0, 0x8f4(r24)
/* 80B89D28  A8 18 08 F0 */	lha r0, 0x8f0(r24)
/* 80B89D2C  B0 18 04 E4 */	sth r0, 0x4e4(r24)
/* 80B89D30  A8 18 08 F2 */	lha r0, 0x8f2(r24)
/* 80B89D34  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B89D38  A8 18 08 F4 */	lha r0, 0x8f4(r24)
/* 80B89D3C  B0 18 04 E8 */	sth r0, 0x4e8(r24)
/* 80B89D40  80 78 05 68 */	lwz r3, 0x568(r24)
/* 80B89D44  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80B89D48  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 80B89D4C  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 80B89D50  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B89D54  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 80B89D58  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B89D5C  2C 00 00 30 */	cmpwi r0, 0x30
/* 80B89D60  40 82 00 CC */	bne lbl_80B89E2C
/* 80B89D64  C0 1E 07 CC */	lfs f0, 0x7cc(r30)
/* 80B89D68  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B89D6C  4C 40 13 82 */	cror 2, 0, 2
/* 80B89D70  40 82 00 14 */	bne lbl_80B89D84
/* 80B89D74  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 80B89D78  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B89D7C  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 80B89D80  48 00 00 AC */	b lbl_80B89E2C
lbl_80B89D84:
/* 80B89D84  C0 3E 07 DC */	lfs f1, 0x7dc(r30)
/* 80B89D88  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80B89D8C  4C 40 13 82 */	cror 2, 0, 2
/* 80B89D90  40 82 00 18 */	bne lbl_80B89DA8
/* 80B89D94  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 80B89D98  C0 1E 08 A0 */	lfs f0, 0x8a0(r30)
/* 80B89D9C  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 80B89DA0  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 80B89DA4  48 00 00 88 */	b lbl_80B89E2C
lbl_80B89DA8:
/* 80B89DA8  C0 1E 07 E4 */	lfs f0, 0x7e4(r30)
/* 80B89DAC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B89DB0  4C 40 13 82 */	cror 2, 0, 2
/* 80B89DB4  40 82 00 18 */	bne lbl_80B89DCC
/* 80B89DB8  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 80B89DBC  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 80B89DC0  C0 1E 07 E8 */	lfs f0, 0x7e8(r30)
/* 80B89DC4  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80B89DC8  48 00 00 64 */	b lbl_80B89E2C
lbl_80B89DCC:
/* 80B89DCC  C0 1E 07 74 */	lfs f0, 0x774(r30)
/* 80B89DD0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B89DD4  4C 40 13 82 */	cror 2, 0, 2
/* 80B89DD8  40 82 00 1C */	bne lbl_80B89DF4
/* 80B89DDC  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 80B89DE0  C0 1E 08 38 */	lfs f0, 0x838(r30)
/* 80B89DE4  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 80B89DE8  C0 1E 08 3C */	lfs f0, 0x83c(r30)
/* 80B89DEC  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80B89DF0  48 00 00 3C */	b lbl_80B89E2C
lbl_80B89DF4:
/* 80B89DF4  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80B89DF8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B89DFC  4C 40 13 82 */	cror 2, 0, 2
/* 80B89E00  40 82 00 1C */	bne lbl_80B89E1C
/* 80B89E04  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 80B89E08  C0 1E 08 40 */	lfs f0, 0x840(r30)
/* 80B89E0C  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 80B89E10  C0 1E 07 88 */	lfs f0, 0x788(r30)
/* 80B89E14  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80B89E18  48 00 00 14 */	b lbl_80B89E2C
lbl_80B89E1C:
/* 80B89E1C  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 80B89E20  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80B89E24  C0 1E 08 44 */	lfs f0, 0x844(r30)
/* 80B89E28  D0 01 01 58 */	stfs f0, 0x158(r1)
lbl_80B89E2C:
/* 80B89E2C  38 78 04 DC */	addi r3, r24, 0x4dc
/* 80B89E30  4B 48 30 DC */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B89E34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B89E38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B89E3C  38 81 01 50 */	addi r4, r1, 0x150
/* 80B89E40  7C 85 23 78 */	mr r5, r4
/* 80B89E44  4B 7B CF 28 */	b PSMTXMultVec
/* 80B89E48  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B89E4C  38 81 01 50 */	addi r4, r1, 0x150
/* 80B89E50  7C 65 1B 78 */	mr r5, r3
/* 80B89E54  4B 7B D2 3C */	b PSVECAdd
/* 80B89E58  80 18 14 EC */	lwz r0, 0x14ec(r24)
/* 80B89E5C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B89E60  41 82 00 0C */	beq lbl_80B89E6C
/* 80B89E64  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80B89E68  40 82 00 5C */	bne lbl_80B89EC4
lbl_80B89E6C:
/* 80B89E6C  3B 60 00 01 */	li r27, 1
/* 80B89E70  7F 03 C3 78 */	mr r3, r24
/* 80B89E74  4B FF 84 65 */	bl calcWaistAngleCheck__11daNpc_zrA_cFv
/* 80B89E78  2C 03 00 00 */	cmpwi r3, 0
/* 80B89E7C  40 82 00 28 */	bne lbl_80B89EA4
/* 80B89E80  7F 03 C3 78 */	mr r3, r24
/* 80B89E84  4B FF 83 B5 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B89E88  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B89E8C  D0 18 15 28 */	stfs f0, 0x1528(r24)
/* 80B89E90  C0 38 15 28 */	lfs f1, 0x1528(r24)
/* 80B89E94  38 7E 00 00 */	addi r3, r30, 0
/* 80B89E98  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B89E9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B89EA0  D0 18 15 24 */	stfs f0, 0x1524(r24)
lbl_80B89EA4:
/* 80B89EA4  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B89EA8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B89EAC  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80B89EB0  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 80B89EB4  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 80B89EB8  7F 03 C3 78 */	mr r3, r24
/* 80B89EBC  38 81 01 44 */	addi r4, r1, 0x144
/* 80B89EC0  4B FF 86 C5 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
lbl_80B89EC4:
/* 80B89EC4  7F 03 C3 78 */	mr r3, r24
/* 80B89EC8  38 80 00 01 */	li r4, 1
/* 80B89ECC  48 00 01 99 */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B89ED0  48 00 01 68 */	b lbl_80B8A038
lbl_80B89ED4:
/* 80B89ED4  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80B89ED8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B89EDC  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80B89EE0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B89EE4  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80B89EE8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B89EEC  38 78 0C 18 */	addi r3, r24, 0xc18
/* 80B89EF0  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B89EF4  38 A1 01 38 */	addi r5, r1, 0x138
/* 80B89EF8  4B 5C 6E E8 */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B89EFC  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B89F00  38 81 00 28 */	addi r4, r1, 0x28
/* 80B89F04  4B 49 39 8C */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B89F08  2C 03 00 00 */	cmpwi r3, 0
/* 80B89F0C  41 82 00 18 */	beq lbl_80B89F24
/* 80B89F10  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 80B89F14  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B89F18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B89F1C  40 81 00 08 */	ble lbl_80B89F24
/* 80B89F20  D0 21 01 3C */	stfs f1, 0x13c(r1)
lbl_80B89F24:
/* 80B89F24  38 61 01 38 */	addi r3, r1, 0x138
/* 80B89F28  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B89F2C  4B 6E 6D 48 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B89F30  B0 61 00 34 */	sth r3, 0x34(r1)
/* 80B89F34  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 80B89F38  38 81 01 38 */	addi r4, r1, 0x138
/* 80B89F3C  4B 6E 6C C8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B89F40  3B 41 00 36 */	addi r26, r1, 0x36
/* 80B89F44  B0 61 00 36 */	sth r3, 0x36(r1)
/* 80B89F48  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B89F4C  3A E1 00 38 */	addi r23, r1, 0x38
/* 80B89F50  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80B89F54  38 00 00 00 */	li r0, 0
/* 80B89F58  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B89F5C  7F 03 C3 78 */	mr r3, r24
/* 80B89F60  38 81 00 34 */	addi r4, r1, 0x34
/* 80B89F64  38 B8 15 36 */	addi r5, r24, 0x1536
/* 80B89F68  38 C0 00 08 */	li r6, 8
/* 80B89F6C  7F 27 CB 78 */	mr r7, r25
/* 80B89F70  4B FF 85 85 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B89F74  7F 03 C3 78 */	mr r3, r24
/* 80B89F78  7F 24 CB 78 */	mr r4, r25
/* 80B89F7C  38 A0 00 08 */	li r5, 8
/* 80B89F80  7F 46 D3 78 */	mr r6, r26
/* 80B89F84  7E E7 BB 78 */	mr r7, r23
/* 80B89F88  4B FF 80 31 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B89F8C  A8 01 00 38 */	lha r0, 0x38(r1)
/* 80B89F90  B0 18 04 E0 */	sth r0, 0x4e0(r24)
/* 80B89F94  A8 18 04 DC */	lha r0, 0x4dc(r24)
/* 80B89F98  B0 18 08 F0 */	sth r0, 0x8f0(r24)
/* 80B89F9C  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80B89FA0  B0 18 08 F2 */	sth r0, 0x8f2(r24)
/* 80B89FA4  A8 18 04 E0 */	lha r0, 0x4e0(r24)
/* 80B89FA8  B0 18 08 F4 */	sth r0, 0x8f4(r24)
/* 80B89FAC  A8 18 08 F0 */	lha r0, 0x8f0(r24)
/* 80B89FB0  B0 18 04 E4 */	sth r0, 0x4e4(r24)
/* 80B89FB4  A8 18 08 F2 */	lha r0, 0x8f2(r24)
/* 80B89FB8  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B89FBC  A8 18 08 F4 */	lha r0, 0x8f4(r24)
/* 80B89FC0  B0 18 04 E8 */	sth r0, 0x4e8(r24)
/* 80B89FC4  C0 38 15 24 */	lfs f1, 0x1524(r24)
/* 80B89FC8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B89FCC  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80B89FD0  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80B89FD4  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 80B89FD8  7F 03 C3 78 */	mr r3, r24
/* 80B89FDC  38 81 01 2C */	addi r4, r1, 0x12c
/* 80B89FE0  4B FF 85 A5 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B89FE4  80 18 05 FC */	lwz r0, 0x5fc(r24)
/* 80B89FE8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B89FEC  41 82 00 24 */	beq lbl_80B8A010
/* 80B89FF0  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 80B89FF4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B89FF8  38 7E 00 00 */	addi r3, r30, 0
/* 80B89FFC  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B8A000  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B8A004  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B8A008  40 81 00 08 */	ble lbl_80B8A010
/* 80B8A00C  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
lbl_80B8A010:
/* 80B8A010  7F 03 C3 78 */	mr r3, r24
/* 80B8A014  38 80 00 01 */	li r4, 1
/* 80B8A018  48 00 00 4D */	bl calcCanoeMove__11daNpc_zrA_cFi
/* 80B8A01C  38 78 09 60 */	addi r3, r24, 0x960
/* 80B8A020  4B FF 56 8D */	bl func_80B7F6AC
/* 80B8A024  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A028  40 82 00 10 */	bne lbl_80B8A038
/* 80B8A02C  3B 60 00 01 */	li r27, 1
/* 80B8A030  48 00 00 08 */	b lbl_80B8A038
lbl_80B8A034:
/* 80B8A034  3B 60 00 01 */	li r27, 1
lbl_80B8A038:
/* 80B8A038  7F 63 DB 78 */	mr r3, r27
/* 80B8A03C  E3 E1 02 38 */	psq_l f31, 568(r1), 0, 0 /* qr0 */
/* 80B8A040  CB E1 02 30 */	lfd f31, 0x230(r1)
/* 80B8A044  E3 C1 02 28 */	psq_l f30, 552(r1), 0, 0 /* qr0 */
/* 80B8A048  CB C1 02 20 */	lfd f30, 0x220(r1)
/* 80B8A04C  39 61 02 20 */	addi r11, r1, 0x220
/* 80B8A050  4B 7D 81 BC */	b _restgpr_22
/* 80B8A054  80 01 02 44 */	lwz r0, 0x244(r1)
/* 80B8A058  7C 08 03 A6 */	mtlr r0
/* 80B8A05C  38 21 02 40 */	addi r1, r1, 0x240
/* 80B8A060  4E 80 00 20 */	blr 
