lbl_80624890:
/* 80624890  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80624894  7C 08 02 A6 */	mflr r0
/* 80624898  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062489C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806248A0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806248A4  39 61 00 30 */	addi r11, r1, 0x30
/* 806248A8  4B D3 D9 2C */	b _savegpr_27
/* 806248AC  7C 7B 1B 78 */	mr r27, r3
/* 806248B0  3C 80 80 63 */	lis r4, lit_3920@ha
/* 806248B4  3B C4 E6 34 */	addi r30, r4, lit_3920@l
/* 806248B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806248BC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 806248C0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806248C4  4B 9F 5F 1C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806248C8  FF E0 08 90 */	fmr f31, f1
/* 806248CC  7F 63 DB 78 */	mr r3, r27
/* 806248D0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806248D4  4B 9F 5E 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806248D8  7C 7D 1B 78 */	mr r29, r3
/* 806248DC  7F 63 DB 78 */	mr r3, r27
/* 806248E0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806248E4  4B 9F 5E 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806248E8  7C 7C 1B 78 */	mr r28, r3
/* 806248EC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 806248F0  FC 20 00 50 */	fneg f1, f0
/* 806248F4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 806248F8  FC 40 00 50 */	fneg f2, f0
/* 806248FC  4B C4 2D 78 */	b cM_atan2s__Fff
/* 80624900  7C 03 E0 50 */	subf r0, r3, r28
/* 80624904  7C 1C 07 34 */	extsh r28, r0
/* 80624908  7F 63 DB 78 */	mr r3, r27
/* 8062490C  4B FF DE C5 */	bl checkMoveArea__8daB_TN_cFv
/* 80624910  7C 7F 1B 78 */	mr r31, r3
/* 80624914  80 1B 06 F4 */	lwz r0, 0x6f4(r27)
/* 80624918  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062491C  41 82 01 7C */	beq lbl_80624A98
/* 80624920  40 80 00 58 */	bge lbl_80624978
/* 80624924  2C 00 00 04 */	cmpwi r0, 4
/* 80624928  41 82 03 70 */	beq lbl_80624C98
/* 8062492C  40 80 00 28 */	bge lbl_80624954
/* 80624930  2C 00 00 01 */	cmpwi r0, 1
/* 80624934  41 82 02 70 */	beq lbl_80624BA4
/* 80624938  40 80 00 10 */	bge lbl_80624948
/* 8062493C  2C 00 00 00 */	cmpwi r0, 0
/* 80624940  40 80 00 8C */	bge lbl_806249CC
/* 80624944  48 00 09 F0 */	b lbl_80625334
lbl_80624948:
/* 80624948  2C 00 00 03 */	cmpwi r0, 3
/* 8062494C  40 80 03 14 */	bge lbl_80624C60
/* 80624950  48 00 02 A8 */	b lbl_80624BF8
lbl_80624954:
/* 80624954  2C 00 00 07 */	cmpwi r0, 7
/* 80624958  41 82 05 84 */	beq lbl_80624EDC
/* 8062495C  40 80 00 10 */	bge lbl_8062496C
/* 80624960  2C 00 00 06 */	cmpwi r0, 6
/* 80624964  40 80 04 B8 */	bge lbl_80624E1C
/* 80624968  48 00 04 1C */	b lbl_80624D84
lbl_8062496C:
/* 8062496C  2C 00 00 09 */	cmpwi r0, 9
/* 80624970  40 80 01 74 */	bge lbl_80624AE4
/* 80624974  48 00 01 24 */	b lbl_80624A98
lbl_80624978:
/* 80624978  2C 00 00 65 */	cmpwi r0, 0x65
/* 8062497C  41 82 09 B8 */	beq lbl_80625334
/* 80624980  40 80 00 28 */	bge lbl_806249A8
/* 80624984  2C 00 00 46 */	cmpwi r0, 0x46
/* 80624988  41 82 00 44 */	beq lbl_806249CC
/* 8062498C  40 80 00 10 */	bge lbl_8062499C
/* 80624990  2C 00 00 0C */	cmpwi r0, 0xc
/* 80624994  40 80 09 A0 */	bge lbl_80625334
/* 80624998  48 00 02 0C */	b lbl_80624BA4
lbl_8062499C:
/* 8062499C  2C 00 00 64 */	cmpwi r0, 0x64
/* 806249A0  40 80 05 FC */	bge lbl_80624F9C
/* 806249A4  48 00 09 90 */	b lbl_80625334
lbl_806249A8:
/* 806249A8  2C 00 00 6A */	cmpwi r0, 0x6a
/* 806249AC  40 80 00 14 */	bge lbl_806249C0
/* 806249B0  2C 00 00 67 */	cmpwi r0, 0x67
/* 806249B4  41 82 06 90 */	beq lbl_80625044
/* 806249B8  40 80 09 7C */	bge lbl_80625334
/* 806249BC  48 00 06 10 */	b lbl_80624FCC
lbl_806249C0:
/* 806249C0  2C 00 00 6C */	cmpwi r0, 0x6c
/* 806249C4  40 80 09 70 */	bge lbl_80625334
/* 806249C8  48 00 07 6C */	b lbl_80625134
lbl_806249CC:
/* 806249CC  2C 1F 00 03 */	cmpwi r31, 3
/* 806249D0  40 82 00 2C */	bne lbl_806249FC
/* 806249D4  7F 63 DB 78 */	mr r3, r27
/* 806249D8  4B FF E1 89 */	bl checkMoveAngle__8daB_TN_cFv
/* 806249DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806249E0  41 82 00 10 */	beq lbl_806249F0
/* 806249E4  38 00 00 64 */	li r0, 0x64
/* 806249E8  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 806249EC  48 00 00 94 */	b lbl_80624A80
lbl_806249F0:
/* 806249F0  38 00 00 67 */	li r0, 0x67
/* 806249F4  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 806249F8  48 00 00 88 */	b lbl_80624A80
lbl_806249FC:
/* 806249FC  2C 1F 00 00 */	cmpwi r31, 0
/* 80624A00  41 82 00 14 */	beq lbl_80624A14
/* 80624A04  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80624A08  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624A0C  40 81 00 08 */	ble lbl_80624A14
/* 80624A10  C3 FE 00 F8 */	lfs f31, 0xf8(r30)
lbl_80624A14:
/* 80624A14  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80624A18  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624A1C  40 80 00 10 */	bge lbl_80624A2C
/* 80624A20  38 00 00 03 */	li r0, 3
/* 80624A24  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624A28  48 00 00 58 */	b lbl_80624A80
lbl_80624A2C:
/* 80624A2C  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80624A30  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624A34  4C 41 13 82 */	cror 2, 1, 2
/* 80624A38  40 82 00 24 */	bne lbl_80624A5C
/* 80624A3C  2C 00 00 00 */	cmpwi r0, 0
/* 80624A40  40 82 00 10 */	bne lbl_80624A50
/* 80624A44  38 00 00 0A */	li r0, 0xa
/* 80624A48  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624A4C  48 00 00 34 */	b lbl_80624A80
lbl_80624A50:
/* 80624A50  38 00 00 08 */	li r0, 8
/* 80624A54  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624A58  48 00 00 28 */	b lbl_80624A80
lbl_80624A5C:
/* 80624A5C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80624A60  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624A64  4C 41 13 82 */	cror 2, 1, 2
/* 80624A68  40 82 00 10 */	bne lbl_80624A78
/* 80624A6C  38 00 00 01 */	li r0, 1
/* 80624A70  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624A74  48 00 00 0C */	b lbl_80624A80
lbl_80624A78:
/* 80624A78  38 00 00 05 */	li r0, 5
/* 80624A7C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80624A80:
/* 80624A80  7F 63 DB 78 */	mr r3, r27
/* 80624A84  38 80 00 00 */	li r4, 0
/* 80624A88  4B FF BF 59 */	bl setSwordAtBit__8daB_TN_cFi
/* 80624A8C  38 00 00 01 */	li r0, 1
/* 80624A90  98 1B 0A 91 */	stb r0, 0xa91(r27)
/* 80624A94  48 00 08 A0 */	b lbl_80625334
lbl_80624A98:
/* 80624A98  2C 00 00 08 */	cmpwi r0, 8
/* 80624A9C  40 82 00 20 */	bne lbl_80624ABC
/* 80624AA0  7F 63 DB 78 */	mr r3, r27
/* 80624AA4  38 80 00 13 */	li r4, 0x13
/* 80624AA8  38 A0 00 02 */	li r5, 2
/* 80624AAC  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624AB0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624AB4  4B FF BE 15 */	bl setBck__8daB_TN_cFiUcff
/* 80624AB8  48 00 00 1C */	b lbl_80624AD4
lbl_80624ABC:
/* 80624ABC  7F 63 DB 78 */	mr r3, r27
/* 80624AC0  38 80 00 13 */	li r4, 0x13
/* 80624AC4  38 A0 00 02 */	li r5, 2
/* 80624AC8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80624ACC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624AD0  4B FF BD F9 */	bl setBck__8daB_TN_cFiUcff
lbl_80624AD4:
/* 80624AD4  38 00 00 09 */	li r0, 9
/* 80624AD8  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624ADC  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 80624AE0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80624AE4:
/* 80624AE4  80 7B 06 00 */	lwz r3, 0x600(r27)
/* 80624AE8  38 63 00 0C */	addi r3, r3, 0xc
/* 80624AEC  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 80624AF0  4B D0 39 3C */	b checkPass__12J3DFrameCtrlFf
/* 80624AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80624AF8  41 82 00 30 */	beq lbl_80624B28
/* 80624AFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80624B00  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80624B04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80624B08  38 7B 06 4C */	addi r3, r27, 0x64c
/* 80624B0C  38 81 00 0C */	addi r4, r1, 0xc
/* 80624B10  38 A0 00 00 */	li r5, 0
/* 80624B14  38 C0 FF FF */	li r6, -1
/* 80624B18  81 9B 06 4C */	lwz r12, 0x64c(r27)
/* 80624B1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80624B20  7D 89 03 A6 */	mtctr r12
/* 80624B24  4E 80 04 21 */	bctrl 
lbl_80624B28:
/* 80624B28  80 7B 06 00 */	lwz r3, 0x600(r27)
/* 80624B2C  38 63 00 0C */	addi r3, r3, 0xc
/* 80624B30  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80624B34  4B D0 38 F8 */	b checkPass__12J3DFrameCtrlFf
/* 80624B38  2C 03 00 00 */	cmpwi r3, 0
/* 80624B3C  41 82 00 30 */	beq lbl_80624B6C
/* 80624B40  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80624B44  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80624B48  90 01 00 08 */	stw r0, 8(r1)
/* 80624B4C  38 7B 06 4C */	addi r3, r27, 0x64c
/* 80624B50  38 81 00 08 */	addi r4, r1, 8
/* 80624B54  38 A0 00 00 */	li r5, 0
/* 80624B58  38 C0 FF FF */	li r6, -1
/* 80624B5C  81 9B 06 4C */	lwz r12, 0x64c(r27)
/* 80624B60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80624B64  7D 89 03 A6 */	mtctr r12
/* 80624B68  4E 80 04 21 */	bctrl 
lbl_80624B6C:
/* 80624B6C  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80624B70  7F A4 EB 78 */	mr r4, r29
/* 80624B74  38 A0 00 04 */	li r5, 4
/* 80624B78  38 C0 04 00 */	li r6, 0x400
/* 80624B7C  38 E0 00 10 */	li r7, 0x10
/* 80624B80  4B C4 B9 C0 */	b cLib_addCalcAngleS__FPsssss
/* 80624B84  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80624B88  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624B8C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80624B90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624B94  40 80 07 A0 */	bge lbl_80625334
/* 80624B98  38 00 00 0B */	li r0, 0xb
/* 80624B9C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624BA0  48 00 07 94 */	b lbl_80625334
lbl_80624BA4:
/* 80624BA4  2C 00 00 01 */	cmpwi r0, 1
/* 80624BA8  40 82 00 20 */	bne lbl_80624BC8
/* 80624BAC  7F 63 DB 78 */	mr r3, r27
/* 80624BB0  38 80 00 10 */	li r4, 0x10
/* 80624BB4  38 A0 00 02 */	li r5, 2
/* 80624BB8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624BBC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624BC0  4B FF BD 09 */	bl setBck__8daB_TN_cFiUcff
/* 80624BC4  48 00 00 1C */	b lbl_80624BE0
lbl_80624BC8:
/* 80624BC8  7F 63 DB 78 */	mr r3, r27
/* 80624BCC  38 80 00 10 */	li r4, 0x10
/* 80624BD0  38 A0 00 02 */	li r5, 2
/* 80624BD4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80624BD8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624BDC  4B FF BC ED */	bl setBck__8daB_TN_cFiUcff
lbl_80624BE0:
/* 80624BE0  38 00 00 02 */	li r0, 2
/* 80624BE4  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624BE8  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80624BEC  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80624BF0  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80624BF4  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_80624BF8:
/* 80624BF8  7F 63 DB 78 */	mr r3, r27
/* 80624BFC  4B FF FB DD */	bl setAwaitSound__8daB_TN_cFv
/* 80624C00  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80624C04  7F A4 EB 78 */	mr r4, r29
/* 80624C08  38 A0 00 04 */	li r5, 4
/* 80624C0C  38 C0 04 00 */	li r6, 0x400
/* 80624C10  38 E0 00 10 */	li r7, 0x10
/* 80624C14  4B C4 B9 2C */	b cLib_addCalcAngleS__FPsssss
/* 80624C18  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80624C1C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624C20  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80624C24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624C28  40 81 00 18 */	ble lbl_80624C40
/* 80624C2C  2C 1F 00 00 */	cmpwi r31, 0
/* 80624C30  40 82 07 04 */	bne lbl_80625334
/* 80624C34  38 00 00 0A */	li r0, 0xa
/* 80624C38  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624C3C  48 00 06 F8 */	b lbl_80625334
lbl_80624C40:
/* 80624C40  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80624C44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624C48  40 80 06 EC */	bge lbl_80625334
/* 80624C4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80624C50  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80624C54  38 00 00 05 */	li r0, 5
/* 80624C58  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624C5C  48 00 06 D8 */	b lbl_80625334
lbl_80624C60:
/* 80624C60  7F 63 DB 78 */	mr r3, r27
/* 80624C64  38 80 00 10 */	li r4, 0x10
/* 80624C68  38 A0 00 02 */	li r5, 2
/* 80624C6C  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624C70  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80624C74  4B FF BC 55 */	bl setBck__8daB_TN_cFiUcff
/* 80624C78  38 00 00 04 */	li r0, 4
/* 80624C7C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624C80  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624C84  3C 63 00 01 */	addis r3, r3, 1
/* 80624C88  38 03 80 00 */	addi r0, r3, -32768
/* 80624C8C  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624C90  38 00 00 00 */	li r0, 0
/* 80624C94  90 1B 0A 8C */	stw r0, 0xa8c(r27)
lbl_80624C98:
/* 80624C98  7F 63 DB 78 */	mr r3, r27
/* 80624C9C  4B FF FB 3D */	bl setAwaitSound__8daB_TN_cFv
/* 80624CA0  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80624CA4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80624CA8  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80624CAC  7F A4 EB 78 */	mr r4, r29
/* 80624CB0  38 A0 00 04 */	li r5, 4
/* 80624CB4  38 C0 04 00 */	li r6, 0x400
/* 80624CB8  38 E0 00 10 */	li r7, 0x10
/* 80624CBC  4B C4 B8 84 */	b cLib_addCalcAngleS__FPsssss
/* 80624CC0  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624CC4  3C 63 00 01 */	addis r3, r3, 1
/* 80624CC8  38 03 80 00 */	addi r0, r3, -32768
/* 80624CCC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624CD0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80624CD4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624CD8  40 80 00 84 */	bge lbl_80624D5C
/* 80624CDC  80 1B 0A 70 */	lwz r0, 0xa70(r27)
/* 80624CE0  2C 00 00 00 */	cmpwi r0, 0
/* 80624CE4  40 82 00 78 */	bne lbl_80624D5C
/* 80624CE8  80 7B 0A 8C */	lwz r3, 0xa8c(r27)
/* 80624CEC  38 03 00 01 */	addi r0, r3, 1
/* 80624CF0  90 1B 0A 8C */	stw r0, 0xa8c(r27)
/* 80624CF4  80 1B 0A 8C */	lwz r0, 0xa8c(r27)
/* 80624CF8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80624CFC  40 81 00 68 */	ble lbl_80624D64
/* 80624D00  88 1B 0A A5 */	lbz r0, 0xaa5(r27)
/* 80624D04  28 00 00 01 */	cmplwi r0, 1
/* 80624D08  40 82 00 24 */	bne lbl_80624D2C
/* 80624D0C  3C 60 80 63 */	lis r3, l_HIO@ha
/* 80624D10  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 80624D14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80624D18  FC 00 00 1E */	fctiwz f0, f0
/* 80624D1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80624D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80624D24  90 1B 0A 70 */	stw r0, 0xa70(r27)
/* 80624D28  48 00 00 20 */	b lbl_80624D48
lbl_80624D2C:
/* 80624D2C  3C 60 80 63 */	lis r3, l_HIO@ha
/* 80624D30  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 80624D34  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80624D38  FC 00 00 1E */	fctiwz f0, f0
/* 80624D3C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80624D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80624D44  90 1B 0A 70 */	stw r0, 0xa70(r27)
lbl_80624D48:
/* 80624D48  7F 63 DB 78 */	mr r3, r27
/* 80624D4C  38 80 00 04 */	li r4, 4
/* 80624D50  38 A0 00 00 */	li r5, 0
/* 80624D54  4B FF BC 75 */	bl setActionMode__8daB_TN_cFii
/* 80624D58  48 00 00 0C */	b lbl_80624D64
lbl_80624D5C:
/* 80624D5C  38 00 00 00 */	li r0, 0
/* 80624D60  90 1B 0A 8C */	stw r0, 0xa8c(r27)
lbl_80624D64:
/* 80624D64  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80624D68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624D6C  40 81 05 C8 */	ble lbl_80625334
/* 80624D70  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80624D74  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80624D78  38 00 00 05 */	li r0, 5
/* 80624D7C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624D80  48 00 05 B4 */	b lbl_80625334
lbl_80624D84:
/* 80624D84  4B C4 2A E8 */	b cM_rnd__Fv
/* 80624D88  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80624D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80624D90  40 80 00 34 */	bge lbl_80624DC4
/* 80624D94  38 00 00 06 */	li r0, 6
/* 80624D98  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624D9C  7F 63 DB 78 */	mr r3, r27
/* 80624DA0  38 80 00 11 */	li r4, 0x11
/* 80624DA4  38 A0 00 02 */	li r5, 2
/* 80624DA8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624DAC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624DB0  4B FF BB 19 */	bl setBck__8daB_TN_cFiUcff
/* 80624DB4  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624DB8  38 03 40 00 */	addi r0, r3, 0x4000
/* 80624DBC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624DC0  48 00 00 30 */	b lbl_80624DF0
lbl_80624DC4:
/* 80624DC4  38 00 00 07 */	li r0, 7
/* 80624DC8  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624DCC  7F 63 DB 78 */	mr r3, r27
/* 80624DD0  38 80 00 11 */	li r4, 0x11
/* 80624DD4  38 A0 00 02 */	li r5, 2
/* 80624DD8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624DDC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80624DE0  4B FF BA E9 */	bl setBck__8daB_TN_cFiUcff
/* 80624DE4  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624DE8  38 03 C0 00 */	addi r0, r3, -16384
/* 80624DEC  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_80624DF0:
/* 80624DF0  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 80624DF4  4B C4 2B 98 */	b cM_rndFX__Ff
/* 80624DF8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80624DFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80624E00  FC 00 00 1E */	fctiwz f0, f0
/* 80624E04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80624E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80624E0C  90 1B 0A 6C */	stw r0, 0xa6c(r27)
/* 80624E10  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80624E14  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80624E18  48 00 05 1C */	b lbl_80625334
lbl_80624E1C:
/* 80624E1C  7F 63 DB 78 */	mr r3, r27
/* 80624E20  4B FF F9 B9 */	bl setAwaitSound__8daB_TN_cFv
/* 80624E24  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80624E28  7F A4 EB 78 */	mr r4, r29
/* 80624E2C  38 A0 00 04 */	li r5, 4
/* 80624E30  38 C0 04 00 */	li r6, 0x400
/* 80624E34  38 E0 00 10 */	li r7, 0x10
/* 80624E38  4B C4 B7 08 */	b cLib_addCalcAngleS__FPsssss
/* 80624E3C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624E40  38 03 40 00 */	addi r0, r3, 0x4000
/* 80624E44  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624E48  80 1B 0A 6C */	lwz r0, 0xa6c(r27)
/* 80624E4C  2C 00 00 00 */	cmpwi r0, 0
/* 80624E50  40 82 00 60 */	bne lbl_80624EB0
/* 80624E54  4B C4 2A 18 */	b cM_rnd__Fv
/* 80624E58  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80624E5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80624E60  40 80 00 30 */	bge lbl_80624E90
/* 80624E64  7F 63 DB 78 */	mr r3, r27
/* 80624E68  38 80 00 11 */	li r4, 0x11
/* 80624E6C  38 A0 00 02 */	li r5, 2
/* 80624E70  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624E74  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80624E78  4B FF BA 51 */	bl setBck__8daB_TN_cFiUcff
/* 80624E7C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624E80  38 03 C0 00 */	addi r0, r3, -16384
/* 80624E84  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624E88  38 00 00 07 */	li r0, 7
/* 80624E8C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80624E90:
/* 80624E90  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 80624E94  4B C4 2A F8 */	b cM_rndFX__Ff
/* 80624E98  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80624E9C  EC 00 08 2A */	fadds f0, f0, f1
/* 80624EA0  FC 00 00 1E */	fctiwz f0, f0
/* 80624EA4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80624EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80624EAC  90 1B 0A 6C */	stw r0, 0xa6c(r27)
lbl_80624EB0:
/* 80624EB0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80624EB4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624EB8  40 80 00 0C */	bge lbl_80624EC4
/* 80624EBC  38 00 00 03 */	li r0, 3
/* 80624EC0  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80624EC4:
/* 80624EC4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80624EC8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624ECC  40 81 04 68 */	ble lbl_80625334
/* 80624ED0  38 00 00 01 */	li r0, 1
/* 80624ED4  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624ED8  48 00 04 5C */	b lbl_80625334
lbl_80624EDC:
/* 80624EDC  7F 63 DB 78 */	mr r3, r27
/* 80624EE0  4B FF F8 F9 */	bl setAwaitSound__8daB_TN_cFv
/* 80624EE4  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80624EE8  7F A4 EB 78 */	mr r4, r29
/* 80624EEC  38 A0 00 04 */	li r5, 4
/* 80624EF0  38 C0 04 00 */	li r6, 0x400
/* 80624EF4  38 E0 00 10 */	li r7, 0x10
/* 80624EF8  4B C4 B6 48 */	b cLib_addCalcAngleS__FPsssss
/* 80624EFC  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624F00  38 03 C0 00 */	addi r0, r3, -16384
/* 80624F04  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624F08  80 1B 0A 6C */	lwz r0, 0xa6c(r27)
/* 80624F0C  2C 00 00 00 */	cmpwi r0, 0
/* 80624F10  40 82 00 60 */	bne lbl_80624F70
/* 80624F14  4B C4 29 58 */	b cM_rnd__Fv
/* 80624F18  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80624F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80624F20  40 80 00 30 */	bge lbl_80624F50
/* 80624F24  7F 63 DB 78 */	mr r3, r27
/* 80624F28  38 80 00 11 */	li r4, 0x11
/* 80624F2C  38 A0 00 02 */	li r5, 2
/* 80624F30  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80624F34  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624F38  4B FF B9 91 */	bl setBck__8daB_TN_cFiUcff
/* 80624F3C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80624F40  38 03 40 00 */	addi r0, r3, 0x4000
/* 80624F44  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80624F48  38 00 00 06 */	li r0, 6
/* 80624F4C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80624F50:
/* 80624F50  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 80624F54  4B C4 2A 38 */	b cM_rndFX__Ff
/* 80624F58  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 80624F5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80624F60  FC 00 00 1E */	fctiwz f0, f0
/* 80624F64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80624F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80624F6C  90 1B 0A 6C */	stw r0, 0xa6c(r27)
lbl_80624F70:
/* 80624F70  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80624F74  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624F78  40 80 00 0C */	bge lbl_80624F84
/* 80624F7C  38 00 00 03 */	li r0, 3
/* 80624F80  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80624F84:
/* 80624F84  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80624F88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80624F8C  40 81 03 A8 */	ble lbl_80625334
/* 80624F90  38 00 00 01 */	li r0, 1
/* 80624F94  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624F98  48 00 03 9C */	b lbl_80625334
lbl_80624F9C:
/* 80624F9C  7F 63 DB 78 */	mr r3, r27
/* 80624FA0  38 80 00 10 */	li r4, 0x10
/* 80624FA4  38 A0 00 02 */	li r5, 2
/* 80624FA8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80624FAC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80624FB0  4B FF B9 19 */	bl setBck__8daB_TN_cFiUcff
/* 80624FB4  38 00 00 66 */	li r0, 0x66
/* 80624FB8  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80624FBC  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80624FC0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80624FC4  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80624FC8  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_80624FCC:
/* 80624FCC  7F 63 DB 78 */	mr r3, r27
/* 80624FD0  4B FF F8 09 */	bl setAwaitSound__8daB_TN_cFv
/* 80624FD4  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80624FD8  7F A4 EB 78 */	mr r4, r29
/* 80624FDC  38 A0 00 04 */	li r5, 4
/* 80624FE0  38 C0 04 00 */	li r6, 0x400
/* 80624FE4  38 E0 00 10 */	li r7, 0x10
/* 80624FE8  4B C4 B5 58 */	b cLib_addCalcAngleS__FPsssss
/* 80624FEC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80624FF0  FC 20 00 50 */	fneg f1, f0
/* 80624FF4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80624FF8  FC 40 00 50 */	fneg f2, f0
/* 80624FFC  4B C4 26 78 */	b cM_atan2s__Fff
/* 80625000  7C 64 1B 78 */	mr r4, r3
/* 80625004  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80625008  38 A0 00 04 */	li r5, 4
/* 8062500C  38 C0 04 00 */	li r6, 0x400
/* 80625010  38 E0 00 10 */	li r7, 0x10
/* 80625014  4B C4 B5 2C */	b cLib_addCalcAngleS__FPsssss
/* 80625018  7F 63 DB 78 */	mr r3, r27
/* 8062501C  4B FF DB 45 */	bl checkMoveAngle__8daB_TN_cFv
/* 80625020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80625024  40 82 00 0C */	bne lbl_80625030
/* 80625028  38 00 00 67 */	li r0, 0x67
/* 8062502C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80625030:
/* 80625030  2C 1F 00 01 */	cmpwi r31, 1
/* 80625034  41 81 03 00 */	bgt lbl_80625334
/* 80625038  38 00 00 46 */	li r0, 0x46
/* 8062503C  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80625040  48 00 02 F4 */	b lbl_80625334
lbl_80625044:
/* 80625044  C3 FE 01 28 */	lfs f31, 0x128(r30)
/* 80625048  7F 63 DB 78 */	mr r3, r27
/* 8062504C  38 80 00 13 */	li r4, 0x13
/* 80625050  4B FF B9 1D */	bl checkBck__8daB_TN_cFi
/* 80625054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80625058  41 82 00 08 */	beq lbl_80625060
/* 8062505C  C3 FE 00 50 */	lfs f31, 0x50(r30)
lbl_80625060:
/* 80625060  7F 83 E3 78 */	mr r3, r28
/* 80625064  4B D4 00 6C */	b abs
/* 80625068  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8062506C  40 80 00 5C */	bge lbl_806250C8
/* 80625070  4B C4 27 FC */	b cM_rnd__Fv
/* 80625074  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80625078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062507C  40 80 00 28 */	bge lbl_806250A4
/* 80625080  38 00 00 6A */	li r0, 0x6a
/* 80625084  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80625088  7F 63 DB 78 */	mr r3, r27
/* 8062508C  38 80 00 11 */	li r4, 0x11
/* 80625090  38 A0 00 02 */	li r5, 2
/* 80625094  FC 20 F8 90 */	fmr f1, f31
/* 80625098  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8062509C  4B FF B8 2D */	bl setBck__8daB_TN_cFiUcff
/* 806250A0  48 00 00 74 */	b lbl_80625114
lbl_806250A4:
/* 806250A4  38 00 00 6B */	li r0, 0x6b
/* 806250A8  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 806250AC  7F 63 DB 78 */	mr r3, r27
/* 806250B0  38 80 00 11 */	li r4, 0x11
/* 806250B4  38 A0 00 02 */	li r5, 2
/* 806250B8  FC 20 F8 90 */	fmr f1, f31
/* 806250BC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 806250C0  4B FF B8 09 */	bl setBck__8daB_TN_cFiUcff
/* 806250C4  48 00 00 50 */	b lbl_80625114
lbl_806250C8:
/* 806250C8  7F 80 07 35 */	extsh. r0, r28
/* 806250CC  40 80 00 28 */	bge lbl_806250F4
/* 806250D0  38 00 00 6A */	li r0, 0x6a
/* 806250D4  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 806250D8  7F 63 DB 78 */	mr r3, r27
/* 806250DC  38 80 00 11 */	li r4, 0x11
/* 806250E0  38 A0 00 02 */	li r5, 2
/* 806250E4  FC 20 F8 90 */	fmr f1, f31
/* 806250E8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806250EC  4B FF B7 DD */	bl setBck__8daB_TN_cFiUcff
/* 806250F0  48 00 00 24 */	b lbl_80625114
lbl_806250F4:
/* 806250F4  38 00 00 6B */	li r0, 0x6b
/* 806250F8  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 806250FC  7F 63 DB 78 */	mr r3, r27
/* 80625100  38 80 00 11 */	li r4, 0x11
/* 80625104  38 A0 00 02 */	li r5, 2
/* 80625108  FC 20 F8 90 */	fmr f1, f31
/* 8062510C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80625110  4B FF B7 B9 */	bl setBck__8daB_TN_cFiUcff
lbl_80625114:
/* 80625114  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 80625118  4B C4 28 74 */	b cM_rndFX__Ff
/* 8062511C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80625120  EC 00 08 2A */	fadds f0, f0, f1
/* 80625124  FC 00 00 1E */	fctiwz f0, f0
/* 80625128  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8062512C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80625130  90 1B 0A 6C */	stw r0, 0xa6c(r27)
lbl_80625134:
/* 80625134  7F 63 DB 78 */	mr r3, r27
/* 80625138  4B FF F6 A1 */	bl setAwaitSound__8daB_TN_cFv
/* 8062513C  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80625140  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80625144  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 80625148  7F A4 EB 78 */	mr r4, r29
/* 8062514C  38 A0 00 04 */	li r5, 4
/* 80625150  38 C0 04 00 */	li r6, 0x400
/* 80625154  38 E0 00 10 */	li r7, 0x10
/* 80625158  4B C4 B3 E8 */	b cLib_addCalcAngleS__FPsssss
/* 8062515C  80 1B 06 F4 */	lwz r0, 0x6f4(r27)
/* 80625160  2C 00 00 6A */	cmpwi r0, 0x6a
/* 80625164  40 82 00 44 */	bne lbl_806251A8
/* 80625168  2C 1F 00 03 */	cmpwi r31, 3
/* 8062516C  40 82 00 14 */	bne lbl_80625180
/* 80625170  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80625174  38 03 60 00 */	addi r0, r3, 0x6000
/* 80625178  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8062517C  48 00 00 68 */	b lbl_806251E4
lbl_80625180:
/* 80625180  2C 1F 00 02 */	cmpwi r31, 2
/* 80625184  40 82 00 14 */	bne lbl_80625198
/* 80625188  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8062518C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80625190  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80625194  48 00 00 50 */	b lbl_806251E4
lbl_80625198:
/* 80625198  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8062519C  38 03 30 00 */	addi r0, r3, 0x3000
/* 806251A0  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 806251A4  48 00 00 40 */	b lbl_806251E4
lbl_806251A8:
/* 806251A8  2C 1F 00 03 */	cmpwi r31, 3
/* 806251AC  40 82 00 14 */	bne lbl_806251C0
/* 806251B0  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 806251B4  38 03 A0 00 */	addi r0, r3, -24576
/* 806251B8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 806251BC  48 00 00 28 */	b lbl_806251E4
lbl_806251C0:
/* 806251C0  2C 1F 00 02 */	cmpwi r31, 2
/* 806251C4  40 82 00 14 */	bne lbl_806251D8
/* 806251C8  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 806251CC  38 03 C0 00 */	addi r0, r3, -16384
/* 806251D0  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 806251D4  48 00 00 10 */	b lbl_806251E4
lbl_806251D8:
/* 806251D8  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 806251DC  38 03 D0 00 */	addi r0, r3, -12288
/* 806251E0  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_806251E4:
/* 806251E4  80 1B 0A 6C */	lwz r0, 0xa6c(r27)
/* 806251E8  2C 00 00 00 */	cmpwi r0, 0
/* 806251EC  40 82 01 20 */	bne lbl_8062530C
/* 806251F0  80 7B 06 00 */	lwz r3, 0x600(r27)
/* 806251F4  38 63 00 0C */	addi r3, r3, 0xc
/* 806251F8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806251FC  4B D0 32 30 */	b checkPass__12J3DFrameCtrlFf
/* 80625200  2C 03 00 00 */	cmpwi r3, 0
/* 80625204  41 82 01 08 */	beq lbl_8062530C
/* 80625208  7F 83 E3 78 */	mr r3, r28
/* 8062520C  4B D3 FE C4 */	b abs
/* 80625210  2C 03 78 00 */	cmpwi r3, 0x7800
/* 80625214  40 81 00 88 */	ble lbl_8062529C
/* 80625218  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 8062521C  4B C4 27 70 */	b cM_rndFX__Ff
/* 80625220  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 80625224  EC 00 08 2A */	fadds f0, f0, f1
/* 80625228  FC 00 00 1E */	fctiwz f0, f0
/* 8062522C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80625230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80625234  90 1B 0A 6C */	stw r0, 0xa6c(r27)
/* 80625238  4B C4 26 34 */	b cM_rnd__Fv
/* 8062523C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80625240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80625244  40 80 00 C8 */	bge lbl_8062530C
/* 80625248  80 1B 06 F4 */	lwz r0, 0x6f4(r27)
/* 8062524C  2C 00 00 6A */	cmpwi r0, 0x6a
/* 80625250  40 82 00 28 */	bne lbl_80625278
/* 80625254  7F 63 DB 78 */	mr r3, r27
/* 80625258  38 80 00 11 */	li r4, 0x11
/* 8062525C  38 A0 00 02 */	li r5, 2
/* 80625260  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80625264  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80625268  4B FF B6 61 */	bl setBck__8daB_TN_cFiUcff
/* 8062526C  38 00 00 6B */	li r0, 0x6b
/* 80625270  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80625274  48 00 00 98 */	b lbl_8062530C
lbl_80625278:
/* 80625278  7F 63 DB 78 */	mr r3, r27
/* 8062527C  38 80 00 11 */	li r4, 0x11
/* 80625280  38 A0 00 02 */	li r5, 2
/* 80625284  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 80625288  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8062528C  4B FF B6 3D */	bl setBck__8daB_TN_cFiUcff
/* 80625290  38 00 00 6A */	li r0, 0x6a
/* 80625294  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80625298  48 00 00 74 */	b lbl_8062530C
lbl_8062529C:
/* 8062529C  7F 83 E3 78 */	mr r3, r28
/* 806252A0  4B D3 FE 30 */	b abs
/* 806252A4  2C 03 70 00 */	cmpwi r3, 0x7000
/* 806252A8  40 80 00 64 */	bge lbl_8062530C
/* 806252AC  80 1B 06 F4 */	lwz r0, 0x6f4(r27)
/* 806252B0  2C 00 00 6A */	cmpwi r0, 0x6a
/* 806252B4  40 82 00 30 */	bne lbl_806252E4
/* 806252B8  7F 80 07 35 */	extsh. r0, r28
/* 806252BC  40 81 00 50 */	ble lbl_8062530C
/* 806252C0  7F 63 DB 78 */	mr r3, r27
/* 806252C4  38 80 00 11 */	li r4, 0x11
/* 806252C8  38 A0 00 02 */	li r5, 2
/* 806252CC  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 806252D0  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 806252D4  4B FF B5 F5 */	bl setBck__8daB_TN_cFiUcff
/* 806252D8  38 00 00 6B */	li r0, 0x6b
/* 806252DC  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 806252E0  48 00 00 2C */	b lbl_8062530C
lbl_806252E4:
/* 806252E4  7F 80 07 35 */	extsh. r0, r28
/* 806252E8  40 80 00 24 */	bge lbl_8062530C
/* 806252EC  7F 63 DB 78 */	mr r3, r27
/* 806252F0  38 80 00 11 */	li r4, 0x11
/* 806252F4  38 A0 00 02 */	li r5, 2
/* 806252F8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 806252FC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80625300  4B FF B5 C9 */	bl setBck__8daB_TN_cFiUcff
/* 80625304  38 00 00 6A */	li r0, 0x6a
/* 80625308  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_8062530C:
/* 8062530C  7F 63 DB 78 */	mr r3, r27
/* 80625310  4B FF D8 51 */	bl checkMoveAngle__8daB_TN_cFv
/* 80625314  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80625318  41 82 00 0C */	beq lbl_80625324
/* 8062531C  38 00 00 64 */	li r0, 0x64
/* 80625320  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80625324:
/* 80625324  2C 1F 00 01 */	cmpwi r31, 1
/* 80625328  40 80 00 0C */	bge lbl_80625334
/* 8062532C  38 00 00 46 */	li r0, 0x46
/* 80625330  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80625334:
/* 80625334  80 1B 06 F4 */	lwz r0, 0x6f4(r27)
/* 80625338  2C 00 00 64 */	cmpwi r0, 0x64
/* 8062533C  40 80 00 38 */	bge lbl_80625374
/* 80625340  7F 63 DB 78 */	mr r3, r27
/* 80625344  48 00 00 51 */	bl checkStartAttackH__8daB_TN_cFv
/* 80625348  2C 1F 00 03 */	cmpwi r31, 3
/* 8062534C  40 82 00 28 */	bne lbl_80625374
/* 80625350  7F 63 DB 78 */	mr r3, r27
/* 80625354  4B FF D8 0D */	bl checkMoveAngle__8daB_TN_cFv
/* 80625358  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8062535C  41 82 00 10 */	beq lbl_8062536C
/* 80625360  38 00 00 64 */	li r0, 0x64
/* 80625364  90 1B 06 F4 */	stw r0, 0x6f4(r27)
/* 80625368  48 00 00 0C */	b lbl_80625374
lbl_8062536C:
/* 8062536C  38 00 00 67 */	li r0, 0x67
/* 80625370  90 1B 06 F4 */	stw r0, 0x6f4(r27)
lbl_80625374:
/* 80625374  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80625378  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8062537C  39 61 00 30 */	addi r11, r1, 0x30
/* 80625380  4B D3 CE A0 */	b _restgpr_27
/* 80625384  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80625388  7C 08 03 A6 */	mtlr r0
/* 8062538C  38 21 00 40 */	addi r1, r1, 0x40
/* 80625390  4E 80 00 20 */	blr 
