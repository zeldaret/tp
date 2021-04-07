lbl_80B649A8:
/* 80B649A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B649AC  7C 08 02 A6 */	mflr r0
/* 80B649B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B649B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B649B8  4B 7F D8 1D */	bl _savegpr_27
/* 80B649BC  7C 7C 1B 78 */	mr r28, r3
/* 80B649C0  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B649C4  3B C3 7C 38 */	addi r30, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B649C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B649CC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B649D0  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B649D4  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 80B649D8  2C 00 00 02 */	cmpwi r0, 2
/* 80B649DC  41 82 01 E4 */	beq lbl_80B64BC0
/* 80B649E0  40 80 08 7C */	bge lbl_80B6525C
/* 80B649E4  2C 00 00 00 */	cmpwi r0, 0
/* 80B649E8  40 80 00 0C */	bge lbl_80B649F4
/* 80B649EC  48 00 08 70 */	b lbl_80B6525C
/* 80B649F0  48 00 08 6C */	b lbl_80B6525C
lbl_80B649F4:
/* 80B649F4  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B649F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B649FC  40 82 01 C4 */	bne lbl_80B64BC0
/* 80B64A00  88 1C 10 69 */	lbz r0, 0x1069(r28)
/* 80B64A04  28 00 00 00 */	cmplwi r0, 0
/* 80B64A08  41 82 00 60 */	beq lbl_80B64A68
/* 80B64A0C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B64A10  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B64A14  41 82 00 24 */	beq lbl_80B64A38
/* 80B64A18  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B64A1C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B64A20  4B 5E 0E 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64A24  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B64A28  38 00 00 0A */	li r0, 0xa
/* 80B64A2C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B64A30  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B64A34  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B64A38:
/* 80B64A38  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B64A3C  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B64A40  41 82 01 54 */	beq lbl_80B64B94
/* 80B64A44  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B64A48  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B64A4C  4B 5E 0E 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64A50  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B64A54  38 00 00 13 */	li r0, 0x13
/* 80B64A58  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B64A5C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B64A60  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B64A64  48 00 01 30 */	b lbl_80B64B94
lbl_80B64A68:
/* 80B64A68  88 1C 0F 80 */	lbz r0, 0xf80(r28)
/* 80B64A6C  28 00 00 04 */	cmplwi r0, 4
/* 80B64A70  40 82 00 60 */	bne lbl_80B64AD0
/* 80B64A74  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B64A78  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B64A7C  41 82 00 24 */	beq lbl_80B64AA0
/* 80B64A80  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B64A84  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B64A88  4B 5E 0E 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64A8C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B64A90  38 00 00 0C */	li r0, 0xc
/* 80B64A94  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B64A98  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B64A9C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B64AA0:
/* 80B64AA0  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B64AA4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B64AA8  41 82 00 EC */	beq lbl_80B64B94
/* 80B64AAC  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B64AB0  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B64AB4  4B 5E 0D E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64AB8  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B64ABC  38 00 00 0D */	li r0, 0xd
/* 80B64AC0  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B64AC4  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B64AC8  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B64ACC  48 00 00 C8 */	b lbl_80B64B94
lbl_80B64AD0:
/* 80B64AD0  38 60 00 54 */	li r3, 0x54
/* 80B64AD4  4B 5E 80 99 */	bl daNpcT_chkTmpBit__FUl
/* 80B64AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80B64ADC  41 82 00 60 */	beq lbl_80B64B3C
/* 80B64AE0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B64AE4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B64AE8  41 82 00 24 */	beq lbl_80B64B0C
/* 80B64AEC  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B64AF0  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B64AF4  4B 5E 0D A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64AF8  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B64AFC  38 00 00 0D */	li r0, 0xd
/* 80B64B00  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B64B04  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B64B08  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B64B0C:
/* 80B64B0C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B64B10  2C 00 00 03 */	cmpwi r0, 3
/* 80B64B14  41 82 00 80 */	beq lbl_80B64B94
/* 80B64B18  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B64B1C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B64B20  4B 5E 0D 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64B24  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B64B28  38 00 00 03 */	li r0, 3
/* 80B64B2C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B64B30  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B64B34  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B64B38  48 00 00 5C */	b lbl_80B64B94
lbl_80B64B3C:
/* 80B64B3C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B64B40  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B64B44  41 82 00 24 */	beq lbl_80B64B68
/* 80B64B48  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B64B4C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B64B50  4B 5E 0D 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64B54  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B64B58  38 00 00 0D */	li r0, 0xd
/* 80B64B5C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B64B60  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B64B64  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B64B68:
/* 80B64B68  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B64B6C  2C 00 00 00 */	cmpwi r0, 0
/* 80B64B70  41 82 00 24 */	beq lbl_80B64B94
/* 80B64B74  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B64B78  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B64B7C  4B 5E 0D 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B64B80  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B64B84  38 00 00 00 */	li r0, 0
/* 80B64B88  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B64B8C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B64B90  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B64B94:
/* 80B64B94  88 1C 10 6F */	lbz r0, 0x106f(r28)
/* 80B64B98  28 00 00 00 */	cmplwi r0, 0
/* 80B64B9C  41 82 00 0C */	beq lbl_80B64BA8
/* 80B64BA0  38 00 FF FF */	li r0, -1
/* 80B64BA4  90 1C 0D 90 */	stw r0, 0xd90(r28)
lbl_80B64BA8:
/* 80B64BA8  38 00 00 00 */	li r0, 0
/* 80B64BAC  90 1C 10 18 */	stw r0, 0x1018(r28)
/* 80B64BB0  90 1C 10 1C */	stw r0, 0x101c(r28)
/* 80B64BB4  90 1C 10 20 */	stw r0, 0x1020(r28)
/* 80B64BB8  38 00 00 02 */	li r0, 2
/* 80B64BBC  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B64BC0:
/* 80B64BC0  88 1C 10 6F */	lbz r0, 0x106f(r28)
/* 80B64BC4  28 00 00 00 */	cmplwi r0, 0
/* 80B64BC8  41 82 00 48 */	beq lbl_80B64C10
/* 80B64BCC  38 00 00 01 */	li r0, 1
/* 80B64BD0  98 1C 0E 25 */	stb r0, 0xe25(r28)
/* 80B64BD4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80B64BD8  64 00 08 00 */	oris r0, r0, 0x800
/* 80B64BDC  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80B64BE0  7F 83 E3 78 */	mr r3, r28
/* 80B64BE4  38 80 00 00 */	li r4, 0
/* 80B64BE8  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80B64BEC  FC 40 08 90 */	fmr f2, f1
/* 80B64BF0  38 A0 50 00 */	li r5, 0x5000
/* 80B64BF4  38 C0 00 00 */	li r6, 0
/* 80B64BF8  4B FF CE AD */	bl putUtuwaHeart__11daNpc_ykW_cFP4cXyzffsP4cXyz
/* 80B64BFC  28 03 00 00 */	cmplwi r3, 0
/* 80B64C00  41 82 06 5C */	beq lbl_80B6525C
/* 80B64C04  7F 83 E3 78 */	mr r3, r28
/* 80B64C08  4B 4B 50 75 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80B64C0C  48 00 06 50 */	b lbl_80B6525C
lbl_80B64C10:
/* 80B64C10  88 1C 10 69 */	lbz r0, 0x1069(r28)
/* 80B64C14  28 00 00 00 */	cmplwi r0, 0
/* 80B64C18  41 82 00 40 */	beq lbl_80B64C58
/* 80B64C1C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B64C20  2C 00 00 00 */	cmpwi r0, 0
/* 80B64C24  41 82 00 24 */	beq lbl_80B64C48
/* 80B64C28  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B64C2C  4B 5E 0A D1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B64C30  38 00 00 00 */	li r0, 0
/* 80B64C34  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B64C38  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B64C3C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B64C40  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64C44  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B64C48:
/* 80B64C48  38 00 00 00 */	li r0, 0
/* 80B64C4C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64C50  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B64C54  48 00 06 08 */	b lbl_80B6525C
lbl_80B64C58:
/* 80B64C58  88 1C 10 6C */	lbz r0, 0x106c(r28)
/* 80B64C5C  28 00 00 00 */	cmplwi r0, 0
/* 80B64C60  41 82 00 14 */	beq lbl_80B64C74
/* 80B64C64  38 00 00 01 */	li r0, 1
/* 80B64C68  98 1C 0E 32 */	stb r0, 0xe32(r28)
/* 80B64C6C  98 1C 0E 33 */	stb r0, 0xe33(r28)
/* 80B64C70  48 00 01 94 */	b lbl_80B64E04
lbl_80B64C74:
/* 80B64C74  7F 83 E3 78 */	mr r3, r28
/* 80B64C78  4B FF CD 95 */	bl orderGoIntoBossRoomEvt__11daNpc_ykW_cFv
/* 80B64C7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B64C80  41 82 00 30 */	beq lbl_80B64CB0
/* 80B64C84  88 1C 10 66 */	lbz r0, 0x1066(r28)
/* 80B64C88  28 00 00 02 */	cmplwi r0, 2
/* 80B64C8C  41 80 00 10 */	blt lbl_80B64C9C
/* 80B64C90  38 00 00 04 */	li r0, 4
/* 80B64C94  B0 1C 0E 30 */	sth r0, 0xe30(r28)
/* 80B64C98  48 00 00 0C */	b lbl_80B64CA4
lbl_80B64C9C:
/* 80B64C9C  38 00 00 05 */	li r0, 5
/* 80B64CA0  B0 1C 0E 30 */	sth r0, 0xe30(r28)
lbl_80B64CA4:
/* 80B64CA4  38 00 00 01 */	li r0, 1
/* 80B64CA8  98 1C 0E 33 */	stb r0, 0xe33(r28)
/* 80B64CAC  48 00 01 58 */	b lbl_80B64E04
lbl_80B64CB0:
/* 80B64CB0  88 1C 0F 80 */	lbz r0, 0xf80(r28)
/* 80B64CB4  2C 00 00 03 */	cmpwi r0, 3
/* 80B64CB8  41 82 01 4C */	beq lbl_80B64E04
/* 80B64CBC  40 80 00 10 */	bge lbl_80B64CCC
/* 80B64CC0  2C 00 00 02 */	cmpwi r0, 2
/* 80B64CC4  40 80 00 14 */	bge lbl_80B64CD8
/* 80B64CC8  48 00 01 3C */	b lbl_80B64E04
lbl_80B64CCC:
/* 80B64CCC  2C 00 00 05 */	cmpwi r0, 5
/* 80B64CD0  40 80 01 34 */	bge lbl_80B64E04
/* 80B64CD4  48 00 00 B0 */	b lbl_80B64D84
lbl_80B64CD8:
/* 80B64CD8  38 00 00 00 */	li r0, 0
/* 80B64CDC  98 1C 10 67 */	stb r0, 0x1067(r28)
/* 80B64CE0  3B 60 00 00 */	li r27, 0
/* 80B64CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B64CE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B64CEC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B64CF0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B64CF4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B64CF8  40 82 01 0C */	bne lbl_80B64E04
/* 80B64CFC  88 1C 10 66 */	lbz r0, 0x1066(r28)
/* 80B64D00  28 00 00 02 */	cmplwi r0, 2
/* 80B64D04  40 82 00 1C */	bne lbl_80B64D20
/* 80B64D08  38 7C 0F 8C */	addi r3, r28, 0xf8c
/* 80B64D0C  4B 5E 09 FD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B64D10  7C 7B 1B 78 */	mr r27, r3
/* 80B64D14  38 00 00 08 */	li r0, 8
/* 80B64D18  90 1C 10 34 */	stw r0, 0x1034(r28)
/* 80B64D1C  48 00 00 28 */	b lbl_80B64D44
lbl_80B64D20:
/* 80B64D20  38 60 00 6C */	li r3, 0x6c
/* 80B64D24  4B 5E 7D 89 */	bl daNpcT_chkEvtBit__FUl
/* 80B64D28  2C 03 00 00 */	cmpwi r3, 0
/* 80B64D2C  40 82 00 18 */	bne lbl_80B64D44
/* 80B64D30  38 7C 0F 84 */	addi r3, r28, 0xf84
/* 80B64D34  4B 5E 09 D5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B64D38  7C 7B 1B 78 */	mr r27, r3
/* 80B64D3C  38 00 00 01 */	li r0, 1
/* 80B64D40  98 1C 10 67 */	stb r0, 0x1067(r28)
lbl_80B64D44:
/* 80B64D44  28 1B 00 00 */	cmplwi r27, 0
/* 80B64D48  41 82 00 BC */	beq lbl_80B64E04
/* 80B64D4C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B64D50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B64D54  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B64D58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B64D5C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B64D60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B64D64  7F 63 DB 78 */	mr r3, r27
/* 80B64D68  38 81 00 08 */	addi r4, r1, 8
/* 80B64D6C  48 00 2E 59 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80B64D70  2C 03 00 00 */	cmpwi r3, 0
/* 80B64D74  41 82 00 90 */	beq lbl_80B64E04
/* 80B64D78  38 00 00 01 */	li r0, 1
/* 80B64D7C  98 1C 0E 32 */	stb r0, 0xe32(r28)
/* 80B64D80  48 00 00 84 */	b lbl_80B64E04
lbl_80B64D84:
/* 80B64D84  3C 60 80 B6 */	lis r3, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B64D88  38 63 7E 68 */	addi r3, r3, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B64D8C  38 63 00 D0 */	addi r3, r3, 0xd0
/* 80B64D90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B64D94  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B64D98  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80B64D9C  4B 80 3B F9 */	bl strcmp
/* 80B64DA0  2C 03 00 00 */	cmpwi r3, 0
/* 80B64DA4  40 82 00 60 */	bne lbl_80B64E04
/* 80B64DA8  38 7C 0F A4 */	addi r3, r28, 0xfa4
/* 80B64DAC  4B 5E 09 5D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B64DB0  7C 7D 1B 78 */	mr r29, r3
/* 80B64DB4  38 60 00 00 */	li r3, 0
/* 80B64DB8  4B 4C 7B C5 */	bl getLayerNo__14dComIfG_play_cFi
/* 80B64DBC  2C 03 00 04 */	cmpwi r3, 4
/* 80B64DC0  41 82 00 34 */	beq lbl_80B64DF4
/* 80B64DC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B64DC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B64DCC  38 63 09 58 */	addi r3, r3, 0x958
/* 80B64DD0  38 80 00 03 */	li r4, 3
/* 80B64DD4  4B 4C FB 61 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80B64DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80B64DDC  41 82 00 28 */	beq lbl_80B64E04
/* 80B64DE0  28 1D 00 00 */	cmplwi r29, 0
/* 80B64DE4  41 82 00 20 */	beq lbl_80B64E04
/* 80B64DE8  88 1D 0F D2 */	lbz r0, 0xfd2(r29)
/* 80B64DEC  28 00 00 00 */	cmplwi r0, 0
/* 80B64DF0  41 82 00 14 */	beq lbl_80B64E04
lbl_80B64DF4:
/* 80B64DF4  38 00 00 06 */	li r0, 6
/* 80B64DF8  B0 1C 0E 30 */	sth r0, 0xe30(r28)
/* 80B64DFC  38 00 00 01 */	li r0, 1
/* 80B64E00  98 1C 0E 33 */	stb r0, 0xe33(r28)
lbl_80B64E04:
/* 80B64E04  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B64E08  2C 00 00 00 */	cmpwi r0, 0
/* 80B64E0C  40 82 04 50 */	bne lbl_80B6525C
/* 80B64E10  80 1C 10 34 */	lwz r0, 0x1034(r28)
/* 80B64E14  2C 00 00 00 */	cmpwi r0, 0
/* 80B64E18  41 82 00 58 */	beq lbl_80B64E70
/* 80B64E1C  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B64E20  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B64E24  4B 5E 08 BD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B64E28  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B64E2C  2C 00 00 01 */	cmpwi r0, 1
/* 80B64E30  41 82 00 28 */	beq lbl_80B64E58
/* 80B64E34  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B64E38  4B 5E 08 C5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B64E3C  38 00 00 00 */	li r0, 0
/* 80B64E40  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B64E44  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B64E48  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B64E4C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64E50  38 00 00 01 */	li r0, 1
/* 80B64E54  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B64E58:
/* 80B64E58  38 00 00 00 */	li r0, 0
/* 80B64E5C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64E60  80 7C 10 34 */	lwz r3, 0x1034(r28)
/* 80B64E64  38 03 FF FF */	addi r0, r3, -1
/* 80B64E68  90 1C 10 34 */	stw r0, 0x1034(r28)
/* 80B64E6C  48 00 01 98 */	b lbl_80B65004
lbl_80B64E70:
/* 80B64E70  38 60 00 54 */	li r3, 0x54
/* 80B64E74  4B 5E 7C F9 */	bl daNpcT_chkTmpBit__FUl
/* 80B64E78  2C 03 00 00 */	cmpwi r3, 0
/* 80B64E7C  41 82 00 0C */	beq lbl_80B64E88
/* 80B64E80  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B64E84  4B 5E 08 79 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80B64E88:
/* 80B64E88  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B64E8C  4B 5E 08 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B64E90  28 03 00 00 */	cmplwi r3, 0
/* 80B64E94  41 82 00 CC */	beq lbl_80B64F60
/* 80B64E98  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B64E9C  2C 00 00 01 */	cmpwi r0, 1
/* 80B64EA0  41 82 00 28 */	beq lbl_80B64EC8
/* 80B64EA4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B64EA8  4B 5E 08 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B64EAC  38 00 00 00 */	li r0, 0
/* 80B64EB0  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B64EB4  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B64EB8  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B64EBC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64EC0  38 00 00 01 */	li r0, 1
/* 80B64EC4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B64EC8:
/* 80B64EC8  38 00 00 00 */	li r0, 0
/* 80B64ECC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64ED0  88 1C 0F 80 */	lbz r0, 0xf80(r28)
/* 80B64ED4  28 00 00 03 */	cmplwi r0, 3
/* 80B64ED8  41 82 00 5C */	beq lbl_80B64F34
/* 80B64EDC  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B64EE0  4B 5E 08 29 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B64EE4  7C 64 1B 78 */	mr r4, r3
/* 80B64EE8  7F 83 E3 78 */	mr r3, r28
/* 80B64EEC  C0 3C 0D F8 */	lfs f1, 0xdf8(r28)
/* 80B64EF0  A8 BC 0D 7A */	lha r5, 0xd7a(r28)
/* 80B64EF4  4B 5E 5C DD */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B64EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80B64EFC  40 82 00 38 */	bne lbl_80B64F34
/* 80B64F00  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B64F04  2C 00 00 00 */	cmpwi r0, 0
/* 80B64F08  41 82 00 24 */	beq lbl_80B64F2C
/* 80B64F0C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B64F10  4B 5E 07 ED */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B64F14  38 00 00 00 */	li r0, 0
/* 80B64F18  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B64F1C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B64F20  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B64F24  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64F28  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B64F2C:
/* 80B64F2C  38 00 00 00 */	li r0, 0
/* 80B64F30  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80B64F34:
/* 80B64F34  7F 83 E3 78 */	mr r3, r28
/* 80B64F38  4B 5E 64 01 */	bl srchPlayerActor__8daNpcT_cFv
/* 80B64F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B64F40  40 82 00 C4 */	bne lbl_80B65004
/* 80B64F44  A8 7C 04 B6 */	lha r3, 0x4b6(r28)
/* 80B64F48  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80B64F4C  7C 03 00 00 */	cmpw r3, r0
/* 80B64F50  40 82 00 B4 */	bne lbl_80B65004
/* 80B64F54  38 00 00 01 */	li r0, 1
/* 80B64F58  B0 1C 0E 22 */	sth r0, 0xe22(r28)
/* 80B64F5C  48 00 00 A8 */	b lbl_80B65004
lbl_80B64F60:
/* 80B64F60  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B64F64  2C 00 00 00 */	cmpwi r0, 0
/* 80B64F68  41 82 00 24 */	beq lbl_80B64F8C
/* 80B64F6C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B64F70  4B 5E 07 8D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B64F74  38 00 00 00 */	li r0, 0
/* 80B64F78  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B64F7C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B64F80  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B64F84  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64F88  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B64F8C:
/* 80B64F8C  38 00 00 00 */	li r0, 0
/* 80B64F90  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B64F94  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80B64F98  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80B64F9C  7C 04 00 00 */	cmpw r4, r0
/* 80B64FA0  41 82 00 5C */	beq lbl_80B64FFC
/* 80B64FA4  88 1C 0E 34 */	lbz r0, 0xe34(r28)
/* 80B64FA8  28 00 00 00 */	cmplwi r0, 0
/* 80B64FAC  41 82 00 34 */	beq lbl_80B64FE0
/* 80B64FB0  7F 83 E3 78 */	mr r3, r28
/* 80B64FB4  38 A0 00 0D */	li r5, 0xd
/* 80B64FB8  38 C0 00 16 */	li r6, 0x16
/* 80B64FBC  38 FE 00 00 */	addi r7, r30, 0
/* 80B64FC0  A8 E7 00 B0 */	lha r7, 0xb0(r7)
/* 80B64FC4  39 00 00 00 */	li r8, 0
/* 80B64FC8  4B 5E 66 81 */	bl step__8daNpcT_cFsiiii
/* 80B64FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B64FD0  41 82 00 20 */	beq lbl_80B64FF0
/* 80B64FD4  38 00 00 01 */	li r0, 1
/* 80B64FD8  B0 1C 0E 22 */	sth r0, 0xe22(r28)
/* 80B64FDC  48 00 00 14 */	b lbl_80B64FF0
lbl_80B64FE0:
/* 80B64FE0  7F 83 E3 78 */	mr r3, r28
/* 80B64FE4  4B 5E 5A 35 */	bl setAngle__8daNpcT_cFs
/* 80B64FE8  38 00 00 01 */	li r0, 1
/* 80B64FEC  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B64FF0:
/* 80B64FF0  38 00 00 00 */	li r0, 0
/* 80B64FF4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B64FF8  48 00 00 0C */	b lbl_80B65004
lbl_80B64FFC:
/* 80B64FFC  7F 83 E3 78 */	mr r3, r28
/* 80B65000  4B 5E 63 39 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B65004:
/* 80B65004  88 1C 0F 80 */	lbz r0, 0xf80(r28)
/* 80B65008  28 00 00 03 */	cmplwi r0, 3
/* 80B6500C  40 82 00 18 */	bne lbl_80B65024
/* 80B65010  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B65014  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B65018  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B6501C  38 80 0E 40 */	li r4, 0xe40
/* 80B65020  4B 4C F9 85 */	bl offEventBit__11dSv_event_cFUs
lbl_80B65024:
/* 80B65024  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B65028  2C 00 00 01 */	cmpwi r0, 1
/* 80B6502C  41 82 00 14 */	beq lbl_80B65040
/* 80B65030  40 80 02 2C */	bge lbl_80B6525C
/* 80B65034  2C 00 00 00 */	cmpwi r0, 0
/* 80B65038  40 80 00 5C */	bge lbl_80B65094
/* 80B6503C  48 00 02 20 */	b lbl_80B6525C
lbl_80B65040:
/* 80B65040  88 1C 0F 80 */	lbz r0, 0xf80(r28)
/* 80B65044  28 00 00 03 */	cmplwi r0, 3
/* 80B65048  40 82 02 14 */	bne lbl_80B6525C
/* 80B6504C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B65050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B65054  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B65058  38 80 0E 40 */	li r4, 0xe40
/* 80B6505C  4B 4C F9 31 */	bl onEventBit__11dSv_event_cFUs
/* 80B65060  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B65064  2C 00 00 00 */	cmpwi r0, 0
/* 80B65068  41 82 01 F4 */	beq lbl_80B6525C
/* 80B6506C  41 82 01 F0 */	beq lbl_80B6525C
/* 80B65070  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B65074  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B65078  4B 5E 08 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6507C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B65080  38 00 00 00 */	li r0, 0
/* 80B65084  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B65088  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B6508C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B65090  48 00 01 CC */	b lbl_80B6525C
lbl_80B65094:
/* 80B65094  88 1C 0F 80 */	lbz r0, 0xf80(r28)
/* 80B65098  28 00 00 03 */	cmplwi r0, 3
/* 80B6509C  40 82 01 C0 */	bne lbl_80B6525C
/* 80B650A0  38 60 00 54 */	li r3, 0x54
/* 80B650A4  4B 5E 7A C9 */	bl daNpcT_chkTmpBit__FUl
/* 80B650A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B650AC  41 82 00 A4 */	beq lbl_80B65150
/* 80B650B0  38 7C 0F 9C */	addi r3, r28, 0xf9c
/* 80B650B4  4B 5E 06 55 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B650B8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B650BC  41 82 01 A0 */	beq lbl_80B6525C
/* 80B650C0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B650C4  4B 5E 06 45 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B650C8  7C 63 D8 50 */	subf r3, r3, r27
/* 80B650CC  30 03 FF FF */	addic r0, r3, -1
/* 80B650D0  7C 00 19 10 */	subfe r0, r0, r3
/* 80B650D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B650D8  40 82 00 10 */	bne lbl_80B650E8
/* 80B650DC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B650E0  2C 00 00 02 */	cmpwi r0, 2
/* 80B650E4  41 82 00 30 */	beq lbl_80B65114
lbl_80B650E8:
/* 80B650E8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B650EC  4B 5E 06 11 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B650F0  38 00 00 00 */	li r0, 0
/* 80B650F4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B650F8  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B650FC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B65100  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B65104  38 00 00 02 */	li r0, 2
/* 80B65108  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80B6510C  38 00 00 01 */	li r0, 1
/* 80B65110  48 00 00 08 */	b lbl_80B65118
lbl_80B65114:
/* 80B65114  38 00 00 00 */	li r0, 0
lbl_80B65118:
/* 80B65118  2C 00 00 00 */	cmpwi r0, 0
/* 80B6511C  41 82 00 28 */	beq lbl_80B65144
/* 80B65120  7F 63 DB 78 */	mr r3, r27
/* 80B65124  4B 4B 3B BD */	bl fopAc_IsActor__FPv
/* 80B65128  2C 03 00 00 */	cmpwi r3, 0
/* 80B6512C  41 82 00 18 */	beq lbl_80B65144
/* 80B65130  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B65134  7F 64 DB 78 */	mr r4, r27
/* 80B65138  4B 5E 05 A9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B6513C  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 80B65140  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80B65144:
/* 80B65144  38 00 00 00 */	li r0, 0
/* 80B65148  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B6514C  48 00 01 10 */	b lbl_80B6525C
lbl_80B65150:
/* 80B65150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B65154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B65158  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B6515C  38 80 0D 02 */	li r4, 0xd02
/* 80B65160  4B 4C F8 5D */	bl isEventBit__11dSv_event_cCFUs
/* 80B65164  2C 03 00 00 */	cmpwi r3, 0
/* 80B65168  41 82 00 40 */	beq lbl_80B651A8
/* 80B6516C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B65170  2C 00 00 01 */	cmpwi r0, 1
/* 80B65174  41 82 00 28 */	beq lbl_80B6519C
/* 80B65178  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B6517C  4B 5E 05 81 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B65180  38 00 00 00 */	li r0, 0
/* 80B65184  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B65188  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B6518C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B65190  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B65194  38 00 00 01 */	li r0, 1
/* 80B65198  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B6519C:
/* 80B6519C  38 00 00 00 */	li r0, 0
/* 80B651A0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B651A4  48 00 00 B8 */	b lbl_80B6525C
lbl_80B651A8:
/* 80B651A8  38 7C 0F 9C */	addi r3, r28, 0xf9c
/* 80B651AC  4B 5E 05 5D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B651B0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B651B4  41 82 00 A8 */	beq lbl_80B6525C
/* 80B651B8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B651BC  4B 5E 05 4D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B651C0  7C 63 D8 50 */	subf r3, r3, r27
/* 80B651C4  30 03 FF FF */	addic r0, r3, -1
/* 80B651C8  7C 00 19 10 */	subfe r0, r0, r3
/* 80B651CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B651D0  40 82 00 10 */	bne lbl_80B651E0
/* 80B651D4  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B651D8  2C 00 00 02 */	cmpwi r0, 2
/* 80B651DC  41 82 00 30 */	beq lbl_80B6520C
lbl_80B651E0:
/* 80B651E0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B651E4  4B 5E 05 19 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B651E8  38 00 00 00 */	li r0, 0
/* 80B651EC  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B651F0  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B651F4  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B651F8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B651FC  38 00 00 02 */	li r0, 2
/* 80B65200  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80B65204  38 00 00 01 */	li r0, 1
/* 80B65208  48 00 00 08 */	b lbl_80B65210
lbl_80B6520C:
/* 80B6520C  38 00 00 00 */	li r0, 0
lbl_80B65210:
/* 80B65210  2C 00 00 00 */	cmpwi r0, 0
/* 80B65214  41 82 00 28 */	beq lbl_80B6523C
/* 80B65218  7F 63 DB 78 */	mr r3, r27
/* 80B6521C  4B 4B 3A C5 */	bl fopAc_IsActor__FPv
/* 80B65220  2C 03 00 00 */	cmpwi r3, 0
/* 80B65224  41 82 00 18 */	beq lbl_80B6523C
/* 80B65228  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B6522C  7F 64 DB 78 */	mr r4, r27
/* 80B65230  4B 5E 04 B1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B65234  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 80B65238  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80B6523C:
/* 80B6523C  38 00 00 00 */	li r0, 0
/* 80B65240  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B65244  7F 83 E3 78 */	mr r3, r28
/* 80B65248  4B FF F6 D5 */	bl dialogue__11daNpc_ykW_cFv
/* 80B6524C  2C 03 00 00 */	cmpwi r3, 0
/* 80B65250  41 82 00 0C */	beq lbl_80B6525C
/* 80B65254  38 00 00 01 */	li r0, 1
/* 80B65258  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B6525C:
/* 80B6525C  38 60 00 01 */	li r3, 1
/* 80B65260  39 61 00 30 */	addi r11, r1, 0x30
/* 80B65264  4B 7F CF BD */	bl _restgpr_27
/* 80B65268  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6526C  7C 08 03 A6 */	mtlr r0
/* 80B65270  38 21 00 30 */	addi r1, r1, 0x30
/* 80B65274  4E 80 00 20 */	blr 
