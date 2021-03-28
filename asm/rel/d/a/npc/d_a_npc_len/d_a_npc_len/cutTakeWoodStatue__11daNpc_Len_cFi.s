lbl_80A668B8:
/* 80A668B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A668BC  7C 08 02 A6 */	mflr r0
/* 80A668C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A668C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A668C8  4B 8F B9 0C */	b _savegpr_27
/* 80A668CC  7C 7D 1B 78 */	mr r29, r3
/* 80A668D0  7C 9B 23 78 */	mr r27, r4
/* 80A668D4  3B E0 FF FF */	li r31, -1
/* 80A668D8  3B C0 00 00 */	li r30, 0
/* 80A668DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A668E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A668E4  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A668E8  7F 83 E3 78 */	mr r3, r28
/* 80A668EC  3C A0 80 A7 */	lis r5, struct_80A68FDC+0x0@ha
/* 80A668F0  38 A5 8F DC */	addi r5, r5, struct_80A68FDC+0x0@l
/* 80A668F4  38 A5 00 9A */	addi r5, r5, 0x9a
/* 80A668F8  38 C0 00 03 */	li r6, 3
/* 80A668FC  4B 5E 17 F0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A66900  28 03 00 00 */	cmplwi r3, 0
/* 80A66904  41 82 00 08 */	beq lbl_80A6690C
/* 80A66908  83 E3 00 00 */	lwz r31, 0(r3)
lbl_80A6690C:
/* 80A6690C  7F 83 E3 78 */	mr r3, r28
/* 80A66910  7F 64 DB 78 */	mr r4, r27
/* 80A66914  3C A0 80 A7 */	lis r5, struct_80A68FDC+0x0@ha
/* 80A66918  38 A5 8F DC */	addi r5, r5, struct_80A68FDC+0x0@l
/* 80A6691C  38 A5 00 9E */	addi r5, r5, 0x9e
/* 80A66920  38 C0 00 03 */	li r6, 3
/* 80A66924  4B 5E 17 C8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A66928  28 03 00 00 */	cmplwi r3, 0
/* 80A6692C  41 82 00 08 */	beq lbl_80A66934
/* 80A66930  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A66934:
/* 80A66934  7F 83 E3 78 */	mr r3, r28
/* 80A66938  7F 64 DB 78 */	mr r4, r27
/* 80A6693C  4B 5E 14 10 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A66940  2C 03 00 00 */	cmpwi r3, 0
/* 80A66944  41 82 02 D8 */	beq lbl_80A66C1C
/* 80A66948  2C 1F 00 04 */	cmpwi r31, 4
/* 80A6694C  41 82 02 00 */	beq lbl_80A66B4C
/* 80A66950  40 80 00 28 */	bge lbl_80A66978
/* 80A66954  2C 1F 00 01 */	cmpwi r31, 1
/* 80A66958  41 82 00 BC */	beq lbl_80A66A14
/* 80A6695C  40 80 00 10 */	bge lbl_80A6696C
/* 80A66960  2C 1F 00 00 */	cmpwi r31, 0
/* 80A66964  40 80 00 2C */	bge lbl_80A66990
/* 80A66968  48 00 02 B4 */	b lbl_80A66C1C
lbl_80A6696C:
/* 80A6696C  2C 1F 00 03 */	cmpwi r31, 3
/* 80A66970  40 80 01 D0 */	bge lbl_80A66B40
/* 80A66974  48 00 01 48 */	b lbl_80A66ABC
lbl_80A66978:
/* 80A66978  2C 1F 00 63 */	cmpwi r31, 0x63
/* 80A6697C  41 82 01 D0 */	beq lbl_80A66B4C
/* 80A66980  40 80 02 9C */	bge lbl_80A66C1C
/* 80A66984  2C 1F 00 06 */	cmpwi r31, 6
/* 80A66988  40 80 02 94 */	bge lbl_80A66C1C
/* 80A6698C  48 00 02 88 */	b lbl_80A66C14
lbl_80A66990:
/* 80A66990  38 7D 0F 8C */	addi r3, r29, 0xf8c
/* 80A66994  4B 6D ED 74 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A66998  7C 7E 1B 78 */	mr r30, r3
/* 80A6699C  80 7D 0B C8 */	lwz r3, 0xbc8(r29)
/* 80A669A0  38 1E 05 38 */	addi r0, r30, 0x538
/* 80A669A4  7C 63 00 50 */	subf r3, r3, r0
/* 80A669A8  30 03 FF FF */	addic r0, r3, -1
/* 80A669AC  7C 00 19 10 */	subfe r0, r0, r3
/* 80A669B0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A669B4  40 82 00 10 */	bne lbl_80A669C4
/* 80A669B8  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A669BC  2C 00 00 03 */	cmpwi r0, 3
/* 80A669C0  41 82 00 34 */	beq lbl_80A669F4
lbl_80A669C4:
/* 80A669C4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A669C8  4B 6D ED 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A669CC  38 00 00 00 */	li r0, 0
/* 80A669D0  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A669D4  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A669D8  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A669DC  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A669E0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A669E4  38 00 00 03 */	li r0, 3
/* 80A669E8  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80A669EC  38 00 00 01 */	li r0, 1
/* 80A669F0  48 00 00 08 */	b lbl_80A669F8
lbl_80A669F4:
/* 80A669F4  38 00 00 00 */	li r0, 0
lbl_80A669F8:
/* 80A669F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A669FC  41 82 00 0C */	beq lbl_80A66A08
/* 80A66A00  38 1E 05 38 */	addi r0, r30, 0x538
/* 80A66A04  90 1D 0B C8 */	stw r0, 0xbc8(r29)
lbl_80A66A08:
/* 80A66A08  38 00 00 00 */	li r0, 0
/* 80A66A0C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A66A10  48 00 02 0C */	b lbl_80A66C1C
lbl_80A66A14:
/* 80A66A14  38 7D 0F 94 */	addi r3, r29, 0xf94
/* 80A66A18  4B 6D EC F0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A66A1C  7C 7C 1B 78 */	mr r28, r3
/* 80A66A20  80 7D 0B C8 */	lwz r3, 0xbc8(r29)
/* 80A66A24  38 1C 05 38 */	addi r0, r28, 0x538
/* 80A66A28  7C 63 00 50 */	subf r3, r3, r0
/* 80A66A2C  30 03 FF FF */	addic r0, r3, -1
/* 80A66A30  7C 00 19 10 */	subfe r0, r0, r3
/* 80A66A34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A66A38  40 82 00 10 */	bne lbl_80A66A48
/* 80A66A3C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A66A40  2C 00 00 03 */	cmpwi r0, 3
/* 80A66A44  41 82 00 34 */	beq lbl_80A66A78
lbl_80A66A48:
/* 80A66A48  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A66A4C  4B 6D EC B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A66A50  38 00 00 00 */	li r0, 0
/* 80A66A54  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A66A58  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A66A5C  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A66A60  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A66A64  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A66A68  38 00 00 03 */	li r0, 3
/* 80A66A6C  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80A66A70  38 00 00 01 */	li r0, 1
/* 80A66A74  48 00 00 08 */	b lbl_80A66A7C
lbl_80A66A78:
/* 80A66A78  38 00 00 00 */	li r0, 0
lbl_80A66A7C:
/* 80A66A7C  2C 00 00 00 */	cmpwi r0, 0
/* 80A66A80  41 82 00 0C */	beq lbl_80A66A8C
/* 80A66A84  38 1C 05 38 */	addi r0, r28, 0x538
/* 80A66A88  90 1D 0B C8 */	stw r0, 0xbc8(r29)
lbl_80A66A8C:
/* 80A66A8C  38 00 00 00 */	li r0, 0
/* 80A66A90  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A66A94  7F A3 EB 78 */	mr r3, r29
/* 80A66A98  7F 84 E3 78 */	mr r4, r28
/* 80A66A9C  4B 5B 3C 74 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A66AA0  7C 64 1B 78 */	mr r4, r3
/* 80A66AA4  7F A3 EB 78 */	mr r3, r29
/* 80A66AA8  4B 6E 3F 70 */	b setAngle__8daNpcT_cFs
/* 80A66AAC  93 DD 0D C4 */	stw r30, 0xdc4(r29)
/* 80A66AB0  38 00 00 01 */	li r0, 1
/* 80A66AB4  98 1D 0E 25 */	stb r0, 0xe25(r29)
/* 80A66AB8  48 00 01 64 */	b lbl_80A66C1C
lbl_80A66ABC:
/* 80A66ABC  38 7D 0F 9C */	addi r3, r29, 0xf9c
/* 80A66AC0  4B 6D EC 48 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A66AC4  7C 7E 1B 78 */	mr r30, r3
/* 80A66AC8  80 7D 0B C8 */	lwz r3, 0xbc8(r29)
/* 80A66ACC  38 1E 05 38 */	addi r0, r30, 0x538
/* 80A66AD0  7C 63 00 50 */	subf r3, r3, r0
/* 80A66AD4  30 03 FF FF */	addic r0, r3, -1
/* 80A66AD8  7C 00 19 10 */	subfe r0, r0, r3
/* 80A66ADC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A66AE0  40 82 00 10 */	bne lbl_80A66AF0
/* 80A66AE4  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A66AE8  2C 00 00 03 */	cmpwi r0, 3
/* 80A66AEC  41 82 00 34 */	beq lbl_80A66B20
lbl_80A66AF0:
/* 80A66AF0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A66AF4  4B 6D EC 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A66AF8  38 00 00 00 */	li r0, 0
/* 80A66AFC  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A66B00  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A66B04  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A66B08  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A66B0C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A66B10  38 00 00 03 */	li r0, 3
/* 80A66B14  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80A66B18  38 00 00 01 */	li r0, 1
/* 80A66B1C  48 00 00 08 */	b lbl_80A66B24
lbl_80A66B20:
/* 80A66B20  38 00 00 00 */	li r0, 0
lbl_80A66B24:
/* 80A66B24  2C 00 00 00 */	cmpwi r0, 0
/* 80A66B28  41 82 00 0C */	beq lbl_80A66B34
/* 80A66B2C  38 1E 05 38 */	addi r0, r30, 0x538
/* 80A66B30  90 1D 0B C8 */	stw r0, 0xbc8(r29)
lbl_80A66B34:
/* 80A66B34  38 00 00 00 */	li r0, 0
/* 80A66B38  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A66B3C  48 00 00 E0 */	b lbl_80A66C1C
lbl_80A66B40:
/* 80A66B40  38 00 00 01 */	li r0, 1
/* 80A66B44  98 1D 0E 25 */	stb r0, 0xe25(r29)
/* 80A66B48  48 00 00 D4 */	b lbl_80A66C1C
lbl_80A66B4C:
/* 80A66B4C  83 DD 0B 5C */	lwz r30, 0xb5c(r29)
/* 80A66B50  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A66B54  4B 6D ED 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66B58  93 DD 0B 5C */	stw r30, 0xb5c(r29)
/* 80A66B5C  38 00 00 11 */	li r0, 0x11
/* 80A66B60  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A66B64  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A66B68  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A66B6C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
/* 80A66B70  83 DD 0B 80 */	lwz r30, 0xb80(r29)
/* 80A66B74  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A66B78  4B 6D ED 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66B7C  93 DD 0B 80 */	stw r30, 0xb80(r29)
/* 80A66B80  38 00 00 00 */	li r0, 0
/* 80A66B84  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A66B88  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A66B8C  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A66B90  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A66B94  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80A66B98  2C 00 00 00 */	cmpwi r0, 0
/* 80A66B9C  41 82 00 28 */	beq lbl_80A66BC4
/* 80A66BA0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A66BA4  4B 6D EB 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A66BA8  38 00 00 00 */	li r0, 0
/* 80A66BAC  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80A66BB0  3C 60 80 A7 */	lis r3, lit_4072@ha
/* 80A66BB4  C0 03 8F 70 */	lfs f0, lit_4072@l(r3)
/* 80A66BB8  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80A66BBC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A66BC0  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80A66BC4:
/* 80A66BC4  38 00 00 00 */	li r0, 0
/* 80A66BC8  B0 1D 0C D4 */	sth r0, 0xcd4(r29)
/* 80A66BCC  B0 1D 0C D6 */	sth r0, 0xcd6(r29)
/* 80A66BD0  38 00 00 01 */	li r0, 1
/* 80A66BD4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80A66BD8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80A66BDC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A66BE0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80A66BE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A66BE8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80A66BEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A66BF0  7F A3 EB 78 */	mr r3, r29
/* 80A66BF4  38 81 00 08 */	addi r4, r1, 8
/* 80A66BF8  4B 6E 3D 10 */	b setPos__8daNpcT_cF4cXyz
/* 80A66BFC  7F A3 EB 78 */	mr r3, r29
/* 80A66C00  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80A66C04  4B 6E 3E 14 */	b setAngle__8daNpcT_cFs
/* 80A66C08  38 00 00 00 */	li r0, 0
/* 80A66C0C  98 1D 0E 25 */	stb r0, 0xe25(r29)
/* 80A66C10  48 00 00 0C */	b lbl_80A66C1C
lbl_80A66C14:
/* 80A66C14  38 00 00 00 */	li r0, 0
/* 80A66C18  98 1D 0E 25 */	stb r0, 0xe25(r29)
lbl_80A66C1C:
/* 80A66C1C  2C 1F 00 06 */	cmpwi r31, 6
/* 80A66C20  40 80 00 1C */	bge lbl_80A66C3C
/* 80A66C24  2C 1F 00 01 */	cmpwi r31, 1
/* 80A66C28  41 82 00 28 */	beq lbl_80A66C50
/* 80A66C2C  40 80 00 1C */	bge lbl_80A66C48
/* 80A66C30  2C 1F 00 00 */	cmpwi r31, 0
/* 80A66C34  40 80 00 14 */	bge lbl_80A66C48
/* 80A66C38  48 00 00 20 */	b lbl_80A66C58
lbl_80A66C3C:
/* 80A66C3C  2C 1F 00 63 */	cmpwi r31, 0x63
/* 80A66C40  41 82 00 08 */	beq lbl_80A66C48
/* 80A66C44  48 00 00 14 */	b lbl_80A66C58
lbl_80A66C48:
/* 80A66C48  38 60 00 01 */	li r3, 1
/* 80A66C4C  48 00 00 10 */	b lbl_80A66C5C
lbl_80A66C50:
/* 80A66C50  38 60 00 01 */	li r3, 1
/* 80A66C54  48 00 00 08 */	b lbl_80A66C5C
lbl_80A66C58:
/* 80A66C58  38 60 00 01 */	li r3, 1
lbl_80A66C5C:
/* 80A66C5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A66C60  4B 8F B5 C0 */	b _restgpr_27
/* 80A66C64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A66C68  7C 08 03 A6 */	mtlr r0
/* 80A66C6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A66C70  4E 80 00 20 */	blr 
