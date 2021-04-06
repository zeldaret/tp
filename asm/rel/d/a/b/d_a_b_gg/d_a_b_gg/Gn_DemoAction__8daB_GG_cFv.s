lbl_805E2974:
/* 805E2974  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E2978  7C 08 02 A6 */	mflr r0
/* 805E297C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E2980  39 61 00 40 */	addi r11, r1, 0x40
/* 805E2984  4B D7 F8 59 */	bl _savegpr_29
/* 805E2988  7C 7D 1B 78 */	mr r29, r3
/* 805E298C  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E2990  3B C4 D0 60 */	addi r30, r4, lit_3911@l /* 0x805ED060@l */
/* 805E2994  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805E2998  2C 00 00 03 */	cmpwi r0, 3
/* 805E299C  41 82 02 68 */	beq lbl_805E2C04
/* 805E29A0  40 80 00 1C */	bge lbl_805E29BC
/* 805E29A4  2C 00 00 01 */	cmpwi r0, 1
/* 805E29A8  41 82 00 48 */	beq lbl_805E29F0
/* 805E29AC  40 80 01 4C */	bge lbl_805E2AF8
/* 805E29B0  2C 00 00 00 */	cmpwi r0, 0
/* 805E29B4  40 80 00 18 */	bge lbl_805E29CC
/* 805E29B8  48 00 04 C8 */	b lbl_805E2E80
lbl_805E29BC:
/* 805E29BC  2C 00 00 05 */	cmpwi r0, 5
/* 805E29C0  41 82 04 C0 */	beq lbl_805E2E80
/* 805E29C4  40 80 04 BC */	bge lbl_805E2E80
/* 805E29C8  48 00 03 A4 */	b lbl_805E2D6C
lbl_805E29CC:
/* 805E29CC  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E29D0  2C 00 00 20 */	cmpwi r0, 0x20
/* 805E29D4  41 82 04 AC */	beq lbl_805E2E80
/* 805E29D8  38 80 00 20 */	li r4, 0x20
/* 805E29DC  38 A0 00 02 */	li r5, 2
/* 805E29E0  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E29E4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E29E8  4B FF C5 7D */	bl SetAnm__8daB_GG_cFiiff
/* 805E29EC  48 00 04 94 */	b lbl_805E2E80
lbl_805E29F0:
/* 805E29F0  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E29F4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805E29F8  41 82 00 58 */	beq lbl_805E2A50
/* 805E29FC  38 80 00 1B */	li r4, 0x1b
/* 805E2A00  38 A0 00 00 */	li r5, 0
/* 805E2A04  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E2A08  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E2A0C  4B FF C5 59 */	bl SetAnm__8daB_GG_cFiiff
/* 805E2A10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070505@ha */
/* 805E2A14  38 03 05 05 */	addi r0, r3, 0x0505 /* 0x00070505@l */
/* 805E2A18  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E2A1C  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E2A20  38 81 00 10 */	addi r4, r1, 0x10
/* 805E2A24  38 A0 00 00 */	li r5, 0
/* 805E2A28  38 C0 FF FF */	li r6, -1
/* 805E2A2C  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E2A30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E2A34  7D 89 03 A6 */	mtctr r12
/* 805E2A38  4E 80 04 21 */	bctrl 
/* 805E2A3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E2A40  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E2A44  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E2A48  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E2A4C  48 00 04 34 */	b lbl_805E2E80
lbl_805E2A50:
/* 805E2A50  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E2A54  38 63 00 0C */	addi r3, r3, 0xc
/* 805E2A58  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 805E2A5C  4B D4 59 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 805E2A60  2C 03 00 00 */	cmpwi r3, 0
/* 805E2A64  41 82 00 20 */	beq lbl_805E2A84
/* 805E2A68  C0 1E 02 74 */	lfs f0, 0x274(r30)
/* 805E2A6C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E2A70  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E2A74  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E2A78  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 805E2A7C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E2A80  48 00 04 00 */	b lbl_805E2E80
lbl_805E2A84:
/* 805E2A84  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E2A88  38 80 00 01 */	li r4, 1
/* 805E2A8C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E2A90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E2A94  40 82 00 18 */	bne lbl_805E2AAC
/* 805E2A98  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E2A9C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E2AA0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E2AA4  41 82 00 08 */	beq lbl_805E2AAC
/* 805E2AA8  38 80 00 00 */	li r4, 0
lbl_805E2AAC:
/* 805E2AAC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E2AB0  41 82 03 D0 */	beq lbl_805E2E80
/* 805E2AB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E2AB8  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E2ABC  7F A3 EB 78 */	mr r3, r29
/* 805E2AC0  38 80 00 0E */	li r4, 0xe
/* 805E2AC4  38 A0 00 02 */	li r5, 2
/* 805E2AC8  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E2ACC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E2AD0  4B FF C4 95 */	bl SetAnm__8daB_GG_cFiiff
/* 805E2AD4  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E2AD8  38 03 00 01 */	addi r0, r3, 1
/* 805E2ADC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E2AE0  38 00 00 32 */	li r0, 0x32
/* 805E2AE4  B0 1D 05 DA */	sth r0, 0x5da(r29)
/* 805E2AE8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E2AEC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E2AF0  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E2AF4  48 00 03 8C */	b lbl_805E2E80
lbl_805E2AF8:
/* 805E2AF8  A8 1D 05 DA */	lha r0, 0x5da(r29)
/* 805E2AFC  2C 00 00 00 */	cmpwi r0, 0
/* 805E2B00  40 82 00 28 */	bne lbl_805E2B28
/* 805E2B04  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E2B08  2C 00 00 04 */	cmpwi r0, 4
/* 805E2B0C  41 82 00 1C */	beq lbl_805E2B28
/* 805E2B10  38 80 00 04 */	li r4, 4
/* 805E2B14  38 A0 00 00 */	li r5, 0
/* 805E2B18  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E2B1C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E2B20  4B FF C4 45 */	bl SetAnm__8daB_GG_cFiiff
/* 805E2B24  48 00 03 5C */	b lbl_805E2E80
lbl_805E2B28:
/* 805E2B28  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E2B2C  38 80 00 01 */	li r4, 1
/* 805E2B30  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E2B34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E2B38  40 82 00 18 */	bne lbl_805E2B50
/* 805E2B3C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E2B40  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E2B44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E2B48  41 82 00 08 */	beq lbl_805E2B50
/* 805E2B4C  38 80 00 00 */	li r4, 0
lbl_805E2B50:
/* 805E2B50  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E2B54  41 82 03 2C */	beq lbl_805E2E80
/* 805E2B58  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E2B5C  2C 00 00 04 */	cmpwi r0, 4
/* 805E2B60  40 82 03 20 */	bne lbl_805E2E80
/* 805E2B64  7F A3 EB 78 */	mr r3, r29
/* 805E2B68  38 80 00 05 */	li r4, 5
/* 805E2B6C  38 A0 00 00 */	li r5, 0
/* 805E2B70  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E2B74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E2B78  4B FF C3 ED */	bl SetAnm__8daB_GG_cFiiff
/* 805E2B7C  3C 60 80 5F */	lis r3, data_805ED730@ha /* 0x805ED730@ha */
/* 805E2B80  AC 03 D7 30 */	lhau r0, data_805ED730@l(r3)  /* 0x805ED730@l */
/* 805E2B84  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E2B88  A8 03 00 00 */	lha r0, 0(r3)
/* 805E2B8C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E2B90  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 805E2B94  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E2B98  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 805E2B9C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E2BA0  7F A3 EB 78 */	mr r3, r29
/* 805E2BA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E2BA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E2BAC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805E2BB0  4B A3 7D B5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805E2BB4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805E2BB8  3C 60 80 5F */	lis r3, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E2BBC  38 63 D7 2C */	addi r3, r3, data_805ED72C@l /* 0x805ED72C@l */
/* 805E2BC0  80 63 00 00 */	lwz r3, 0(r3)
/* 805E2BC4  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E2BC8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E2BCC  EC 02 00 28 */	fsubs f0, f2, f0
/* 805E2BD0  EC 43 00 2A */	fadds f2, f3, f0
/* 805E2BD4  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 805E2BD8  EC 20 00 72 */	fmuls f1, f0, f1
/* 805E2BDC  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 805E2BE0  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E2BE4  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E2BE8  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E2BEC  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 805E2BF0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E2BF4  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E2BF8  38 03 00 01 */	addi r0, r3, 1
/* 805E2BFC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E2C00  48 00 02 80 */	b lbl_805E2E80
lbl_805E2C04:
/* 805E2C04  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070507@ha */
/* 805E2C08  38 03 05 07 */	addi r0, r3, 0x0507 /* 0x00070507@l */
/* 805E2C0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E2C10  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E2C14  38 81 00 0C */	addi r4, r1, 0xc
/* 805E2C18  38 A0 00 00 */	li r5, 0
/* 805E2C1C  38 C0 FF FF */	li r6, -1
/* 805E2C20  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E2C24  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805E2C28  7D 89 03 A6 */	mtctr r12
/* 805E2C2C  4E 80 04 21 */	bctrl 
/* 805E2C30  7F A3 EB 78 */	mr r3, r29
/* 805E2C34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E2C38  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E2C3C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805E2C40  4B A3 7D 25 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805E2C44  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805E2C48  3C 60 80 5F */	lis r3, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E2C4C  38 63 D7 2C */	addi r3, r3, data_805ED72C@l /* 0x805ED72C@l */
/* 805E2C50  80 63 00 00 */	lwz r3, 0(r3)
/* 805E2C54  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E2C58  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E2C5C  EC 02 00 28 */	fsubs f0, f2, f0
/* 805E2C60  EC 43 00 2A */	fadds f2, f3, f0
/* 805E2C64  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 805E2C68  EC 20 00 72 */	fmuls f1, f0, f1
/* 805E2C6C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 805E2C70  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E2C74  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E2C78  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E2C7C  3C 60 80 5F */	lis r3, data_805ED730@ha /* 0x805ED730@ha */
/* 805E2C80  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)  /* 0x805ED730@l */
/* 805E2C84  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E2C88  7F A3 EB 78 */	mr r3, r29
/* 805E2C8C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805E2C90  4B A3 7B 51 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805E2C94  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 805E2C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E2C9C  40 80 00 5C */	bge lbl_805E2CF8
/* 805E2CA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E2CA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E2CA8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805E2CAC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E2CB0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E2CB4  41 82 00 28 */	beq lbl_805E2CDC
/* 805E2CB8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E2CBC  38 00 00 10 */	li r0, 0x10
/* 805E2CC0  90 03 06 14 */	stw r0, 0x614(r3)
/* 805E2CC4  38 00 00 03 */	li r0, 3
/* 805E2CC8  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805E2CCC  38 00 00 00 */	li r0, 0
/* 805E2CD0  90 03 06 10 */	stw r0, 0x610(r3)
/* 805E2CD4  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805E2CD8  48 00 00 20 */	b lbl_805E2CF8
lbl_805E2CDC:
/* 805E2CDC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E2CE0  38 00 00 49 */	li r0, 0x49
/* 805E2CE4  90 03 06 14 */	stw r0, 0x614(r3)
/* 805E2CE8  38 00 00 00 */	li r0, 0
/* 805E2CEC  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805E2CF0  90 03 06 10 */	stw r0, 0x610(r3)
/* 805E2CF4  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_805E2CF8:
/* 805E2CF8  7F A3 EB 78 */	mr r3, r29
/* 805E2CFC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805E2D00  4B A3 7A E1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805E2D04  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 805E2D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E2D0C  40 80 01 74 */	bge lbl_805E2E80
/* 805E2D10  7F A3 EB 78 */	mr r3, r29
/* 805E2D14  38 80 00 06 */	li r4, 6
/* 805E2D18  38 A0 00 00 */	li r5, 0
/* 805E2D1C  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E2D20  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E2D24  4B FF C2 41 */	bl SetAnm__8daB_GG_cFiiff
/* 805E2D28  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 805E2D2C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805E2D30  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E2D34  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E2D38  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E2D3C  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 805E2D40  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E2D44  38 03 00 01 */	addi r0, r3, 1
/* 805E2D48  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E2D4C  88 7D 05 CB */	lbz r3, 0x5cb(r29)
/* 805E2D50  38 03 00 01 */	addi r0, r3, 1
/* 805E2D54  98 1D 05 CB */	stb r0, 0x5cb(r29)
/* 805E2D58  38 00 00 14 */	li r0, 0x14
/* 805E2D5C  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E2D60  38 00 00 28 */	li r0, 0x28
/* 805E2D64  B0 1D 05 DA */	sth r0, 0x5da(r29)
/* 805E2D68  48 00 01 18 */	b lbl_805E2E80
lbl_805E2D6C:
/* 805E2D6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070507@ha */
/* 805E2D70  38 03 05 07 */	addi r0, r3, 0x0507 /* 0x00070507@l */
/* 805E2D74  90 01 00 08 */	stw r0, 8(r1)
/* 805E2D78  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E2D7C  38 81 00 08 */	addi r4, r1, 8
/* 805E2D80  38 A0 00 00 */	li r5, 0
/* 805E2D84  38 C0 FF FF */	li r6, -1
/* 805E2D88  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E2D8C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805E2D90  7D 89 03 A6 */	mtctr r12
/* 805E2D94  4E 80 04 21 */	bctrl 
/* 805E2D98  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E2D9C  38 63 00 0C */	addi r3, r3, 0xc
/* 805E2DA0  C0 3E 02 88 */	lfs f1, 0x288(r30)
/* 805E2DA4  4B D4 56 89 */	bl checkPass__12J3DFrameCtrlFf
/* 805E2DA8  2C 03 00 00 */	cmpwi r3, 0
/* 805E2DAC  41 82 00 0C */	beq lbl_805E2DB8
/* 805E2DB0  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E2DB4  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
lbl_805E2DB8:
/* 805E2DB8  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E2DBC  2C 00 00 06 */	cmpwi r0, 6
/* 805E2DC0  40 82 00 50 */	bne lbl_805E2E10
/* 805E2DC4  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E2DC8  38 80 00 01 */	li r4, 1
/* 805E2DCC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E2DD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E2DD4  40 82 00 18 */	bne lbl_805E2DEC
/* 805E2DD8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E2DDC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E2DE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E2DE4  41 82 00 08 */	beq lbl_805E2DEC
/* 805E2DE8  38 80 00 00 */	li r4, 0
lbl_805E2DEC:
/* 805E2DEC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E2DF0  41 82 00 20 */	beq lbl_805E2E10
/* 805E2DF4  7F A3 EB 78 */	mr r3, r29
/* 805E2DF8  38 80 00 07 */	li r4, 7
/* 805E2DFC  38 A0 00 02 */	li r5, 2
/* 805E2E00  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E2E04  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E2E08  4B FF C1 5D */	bl SetAnm__8daB_GG_cFiiff
/* 805E2E0C  48 00 00 74 */	b lbl_805E2E80
lbl_805E2E10:
/* 805E2E10  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805E2E14  C0 1D 06 48 */	lfs f0, 0x648(r29)
/* 805E2E18  EC 21 00 28 */	fsubs f1, f1, f0
/* 805E2E1C  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 805E2E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E2E24  41 81 00 10 */	bgt lbl_805E2E34
/* 805E2E28  80 1D 0F 5C */	lwz r0, 0xf5c(r29)
/* 805E2E2C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 805E2E30  41 82 00 50 */	beq lbl_805E2E80
lbl_805E2E34:
/* 805E2E34  7F A3 EB 78 */	mr r3, r29
/* 805E2E38  38 80 00 0E */	li r4, 0xe
/* 805E2E3C  38 A0 00 02 */	li r5, 2
/* 805E2E40  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 805E2E44  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E2E48  4B FF C1 1D */	bl SetAnm__8daB_GG_cFiiff
/* 805E2E4C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805E2E50  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E2E54  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E2E58  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805E2E5C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E2E60  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 805E2E64  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E2E68  38 03 00 01 */	addi r0, r3, 1
/* 805E2E6C  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E2E70  C0 1E 02 8C */	lfs f0, 0x28c(r30)
/* 805E2E74  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E2E78  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E2E7C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
lbl_805E2E80:
/* 805E2E80  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805E2E84  3C 60 80 5F */	lis r3, data_805ED730@ha /* 0x805ED730@ha */
/* 805E2E88  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)  /* 0x805ED730@l */
/* 805E2E8C  7C 04 00 50 */	subf r0, r4, r0
/* 805E2E90  7C 1F 07 34 */	extsh r31, r0
/* 805E2E94  38 61 00 14 */	addi r3, r1, 0x14
/* 805E2E98  3C 80 80 5F */	lis r4, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E2E9C  38 84 D7 2C */	addi r4, r4, data_805ED72C@l /* 0x805ED72C@l */
/* 805E2EA0  80 84 00 00 */	lwz r4, 0(r4)
/* 805E2EA4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805E2EA8  4B C8 3C 8D */	bl __mi__4cXyzCFRC3Vec
/* 805E2EAC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 805E2EB0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805E2EB4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805E2EB8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E2EBC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805E2EC0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E2EC4  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E2EC8  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E2ECC  EC 41 00 2A */	fadds f2, f1, f0
/* 805E2ED0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E2ED4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E2ED8  40 81 00 0C */	ble lbl_805E2EE4
/* 805E2EDC  FC 00 10 34 */	frsqrte f0, f2
/* 805E2EE0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E2EE4:
/* 805E2EE4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 805E2EE8  4B C8 47 8D */	bl cM_atan2s__Fff
/* 805E2EEC  7C 03 00 D0 */	neg r0, r3
/* 805E2EF0  7C 04 07 34 */	extsh r4, r0
/* 805E2EF4  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 805E2EF8  38 A0 00 02 */	li r5, 2
/* 805E2EFC  38 C0 06 00 */	li r6, 0x600
/* 805E2F00  4B C8 D7 09 */	bl cLib_addCalcAngleS2__FPssss
/* 805E2F04  38 7D 06 BE */	addi r3, r29, 0x6be
/* 805E2F08  7F E4 FB 78 */	mr r4, r31
/* 805E2F0C  38 A0 00 02 */	li r5, 2
/* 805E2F10  38 C0 01 00 */	li r6, 0x100
/* 805E2F14  4B C8 D6 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 805E2F18  3C 60 80 5F */	lis r3, data_805ED730@ha /* 0x805ED730@ha */
/* 805E2F1C  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)  /* 0x805ED730@l */
/* 805E2F20  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E2F24  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805E2F28  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805E2F2C  39 61 00 40 */	addi r11, r1, 0x40
/* 805E2F30  4B D7 F2 F9 */	bl _restgpr_29
/* 805E2F34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E2F38  7C 08 03 A6 */	mtlr r0
/* 805E2F3C  38 21 00 40 */	addi r1, r1, 0x40
/* 805E2F40  4E 80 00 20 */	blr 
