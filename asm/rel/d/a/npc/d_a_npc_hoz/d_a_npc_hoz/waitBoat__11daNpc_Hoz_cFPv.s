lbl_80A037E4:
/* 80A037E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A037E8  7C 08 02 A6 */	mflr r0
/* 80A037EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A037F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A037F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A037F8  7C 7F 1B 78 */	mr r31, r3
/* 80A037FC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A03800  2C 00 00 02 */	cmpwi r0, 2
/* 80A03804  41 82 01 38 */	beq lbl_80A0393C
/* 80A03808  40 80 03 B8 */	bge lbl_80A03BC0
/* 80A0380C  2C 00 00 00 */	cmpwi r0, 0
/* 80A03810  40 80 00 0C */	bge lbl_80A0381C
/* 80A03814  48 00 03 AC */	b lbl_80A03BC0
/* 80A03818  48 00 03 A8 */	b lbl_80A03BC0
lbl_80A0381C:
/* 80A0381C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A03820  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A03824  41 82 00 28 */	beq lbl_80A0384C
/* 80A03828  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A0382C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A03830  4B 74 20 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A03834  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A03838  38 00 00 22 */	li r0, 0x22
/* 80A0383C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A03840  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A03844  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A03848  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A0384C:
/* 80A0384C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A03850  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A03854  41 82 00 24 */	beq lbl_80A03878
/* 80A03858  40 80 00 14 */	bge lbl_80A0386C
/* 80A0385C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A03860  41 82 00 18 */	beq lbl_80A03878
/* 80A03864  40 80 00 44 */	bge lbl_80A038A8
/* 80A03868  48 00 00 A0 */	b lbl_80A03908
lbl_80A0386C:
/* 80A0386C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80A03870  41 82 00 68 */	beq lbl_80A038D8
/* 80A03874  48 00 00 94 */	b lbl_80A03908
lbl_80A03878:
/* 80A03878  2C 00 00 21 */	cmpwi r0, 0x21
/* 80A0387C  41 82 00 B8 */	beq lbl_80A03934
/* 80A03880  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03884  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A03888  4B 74 20 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A0388C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03890  38 00 00 21 */	li r0, 0x21
/* 80A03894  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03898  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A0389C  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A038A0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A038A4  48 00 00 90 */	b lbl_80A03934
lbl_80A038A8:
/* 80A038A8  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A038AC  41 82 00 88 */	beq lbl_80A03934
/* 80A038B0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A038B4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A038B8  4B 74 1F E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A038BC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A038C0  38 00 00 22 */	li r0, 0x22
/* 80A038C4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A038C8  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A038CC  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A038D0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A038D4  48 00 00 60 */	b lbl_80A03934
lbl_80A038D8:
/* 80A038D8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80A038DC  41 82 00 58 */	beq lbl_80A03934
/* 80A038E0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A038E4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A038E8  4B 74 1F B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A038EC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A038F0  38 00 00 1F */	li r0, 0x1f
/* 80A038F4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A038F8  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A038FC  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A03900  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80A03904  48 00 00 30 */	b lbl_80A03934
lbl_80A03908:
/* 80A03908  2C 00 00 00 */	cmpwi r0, 0
/* 80A0390C  41 82 00 28 */	beq lbl_80A03934
/* 80A03910  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A03914  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A03918  4B 74 1F 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A0391C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03920  38 00 00 00 */	li r0, 0
/* 80A03924  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03928  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A0392C  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A03930  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A03934:
/* 80A03934  38 00 00 02 */	li r0, 2
/* 80A03938  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A0393C:
/* 80A0393C  80 1F 0F 84 */	lwz r0, 0xf84(r31)
/* 80A03940  28 00 00 00 */	cmplwi r0, 0
/* 80A03944  40 82 00 30 */	bne lbl_80A03974
/* 80A03948  3C 60 80 A0 */	lis r3, s_sub__FPvPv@ha /* 0x80A01EBC@ha */
/* 80A0394C  38 63 1E BC */	addi r3, r3, s_sub__FPvPv@l /* 0x80A01EBC@l */
/* 80A03950  7F E4 FB 78 */	mr r4, r31
/* 80A03954  4B 61 D9 E5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A03958  90 7F 0F 84 */	stw r3, 0xf84(r31)
/* 80A0395C  38 00 00 00 */	li r0, 0
/* 80A03960  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80A03964  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80A03968  98 03 00 BC */	stb r0, 0xbc(r3)
/* 80A0396C  38 80 00 00 */	li r4, 0
/* 80A03970  4B 81 A8 F9 */	bl setMiniGameCount__13dMeter2Info_cFSc
lbl_80A03974:
/* 80A03974  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A03978  4B 74 1D 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A0397C  28 03 00 00 */	cmplwi r3, 0
/* 80A03980  40 82 00 48 */	bne lbl_80A039C8
/* 80A03984  3C 60 80 A0 */	lis r3, s_subCanoe__FPvPv@ha /* 0x80A01F08@ha */
/* 80A03988  38 63 1F 08 */	addi r3, r3, s_subCanoe__FPvPv@l /* 0x80A01F08@l */
/* 80A0398C  7F E4 FB 78 */	mr r4, r31
/* 80A03990  4B 61 D9 A9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A03994  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A03998  41 82 00 30 */	beq lbl_80A039C8
/* 80A0399C  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A039A0  7F C4 F3 78 */	mr r4, r30
/* 80A039A4  4B 74 1D 3D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A039A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A039AC  D0 1F 0F 90 */	stfs f0, 0xf90(r31)
/* 80A039B0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A039B4  D0 1F 0F 94 */	stfs f0, 0xf94(r31)
/* 80A039B8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A039BC  D0 1F 0F 98 */	stfs f0, 0xf98(r31)
/* 80A039C0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A039C4  B0 1F 0F 9C */	sth r0, 0xf9c(r31)
lbl_80A039C8:
/* 80A039C8  88 1F 0F 8A */	lbz r0, 0xf8a(r31)
/* 80A039CC  28 00 00 00 */	cmplwi r0, 0
/* 80A039D0  40 82 00 68 */	bne lbl_80A03A38
/* 80A039D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A039D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A039DC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80A039E0  3C 80 80 A0 */	lis r4, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A039E4  38 84 67 64 */	addi r4, r4, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A039E8  38 84 00 94 */	addi r4, r4, 0x94
/* 80A039EC  4B 96 4F A9 */	bl strcmp
/* 80A039F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A039F4  40 82 00 3C */	bne lbl_80A03A30
/* 80A039F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A039FC  2C 00 00 01 */	cmpwi r0, 1
/* 80A03A00  40 82 00 30 */	bne lbl_80A03A30
/* 80A03A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A03A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A03A0C  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 80A03A10  2C 00 00 02 */	cmpwi r0, 2
/* 80A03A14  40 82 00 1C */	bne lbl_80A03A30
/* 80A03A18  38 00 00 05 */	li r0, 5
/* 80A03A1C  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A03A20  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A03A24  38 00 00 01 */	li r0, 1
/* 80A03A28  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80A03A2C  48 00 01 94 */	b lbl_80A03BC0
lbl_80A03A30:
/* 80A03A30  38 00 00 01 */	li r0, 1
/* 80A03A34  98 1F 0F 8A */	stb r0, 0xf8a(r31)
lbl_80A03A38:
/* 80A03A38  88 1F 0F 8B */	lbz r0, 0xf8b(r31)
/* 80A03A3C  28 00 00 00 */	cmplwi r0, 0
/* 80A03A40  40 82 00 3C */	bne lbl_80A03A7C
/* 80A03A44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A03A48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A03A4C  88 9F 0F 88 */	lbz r4, 0xf88(r31)
/* 80A03A50  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A03A54  7C 05 07 74 */	extsb r5, r0
/* 80A03A58  4B 63 19 09 */	bl isSwitch__10dSv_info_cCFii
/* 80A03A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80A03A60  41 82 00 1C */	beq lbl_80A03A7C
/* 80A03A64  38 00 00 06 */	li r0, 6
/* 80A03A68  98 1F 0F 8C */	stb r0, 0xf8c(r31)
/* 80A03A6C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A03A70  38 00 00 01 */	li r0, 1
/* 80A03A74  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80A03A78  48 00 01 48 */	b lbl_80A03BC0
lbl_80A03A7C:
/* 80A03A7C  88 1F 0F 8D */	lbz r0, 0xf8d(r31)
/* 80A03A80  28 00 00 00 */	cmplwi r0, 0
/* 80A03A84  41 82 00 44 */	beq lbl_80A03AC8
/* 80A03A88  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03A8C  2C 00 00 01 */	cmpwi r0, 1
/* 80A03A90  41 82 00 2C */	beq lbl_80A03ABC
/* 80A03A94  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03A98  4B 74 1C 65 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A03A9C  38 00 00 00 */	li r0, 0
/* 80A03AA0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03AA4  3C 60 80 A0 */	lis r3, lit_4337@ha /* 0x80A0670C@ha */
/* 80A03AA8  C0 03 67 0C */	lfs f0, lit_4337@l(r3)  /* 0x80A0670C@l */
/* 80A03AAC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03AB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03AB4  38 00 00 01 */	li r0, 1
/* 80A03AB8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A03ABC:
/* 80A03ABC  38 00 00 00 */	li r0, 0
/* 80A03AC0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03AC4  48 00 00 FC */	b lbl_80A03BC0
lbl_80A03AC8:
/* 80A03AC8  7F E3 FB 78 */	mr r3, r31
/* 80A03ACC  4B 74 78 6D */	bl srchPlayerActor__8daNpcT_cFv
/* 80A03AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80A03AD4  41 82 00 44 */	beq lbl_80A03B18
/* 80A03AD8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03ADC  2C 00 00 01 */	cmpwi r0, 1
/* 80A03AE0  41 82 00 2C */	beq lbl_80A03B0C
/* 80A03AE4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03AE8  4B 74 1C 15 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A03AEC  38 00 00 00 */	li r0, 0
/* 80A03AF0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03AF4  3C 60 80 A0 */	lis r3, lit_4337@ha /* 0x80A0670C@ha */
/* 80A03AF8  C0 03 67 0C */	lfs f0, lit_4337@l(r3)  /* 0x80A0670C@l */
/* 80A03AFC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03B00  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03B04  38 00 00 01 */	li r0, 1
/* 80A03B08  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A03B0C:
/* 80A03B0C  38 00 00 00 */	li r0, 0
/* 80A03B10  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03B14  48 00 00 74 */	b lbl_80A03B88
lbl_80A03B18:
/* 80A03B18  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A03B1C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A03B20  7C 04 00 00 */	cmpw r4, r0
/* 80A03B24  41 82 00 2C */	beq lbl_80A03B50
/* 80A03B28  7F E3 FB 78 */	mr r3, r31
/* 80A03B2C  38 A0 FF FF */	li r5, -1
/* 80A03B30  38 C0 FF FF */	li r6, -1
/* 80A03B34  38 E0 00 0F */	li r7, 0xf
/* 80A03B38  39 00 00 00 */	li r8, 0
/* 80A03B3C  4B 74 7B 0D */	bl step__8daNpcT_cFsiiii
/* 80A03B40  2C 03 00 00 */	cmpwi r3, 0
/* 80A03B44  41 82 00 0C */	beq lbl_80A03B50
/* 80A03B48  38 00 00 01 */	li r0, 1
/* 80A03B4C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A03B50:
/* 80A03B50  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A03B54  2C 00 00 00 */	cmpwi r0, 0
/* 80A03B58  41 82 00 28 */	beq lbl_80A03B80
/* 80A03B5C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03B60  4B 74 1B 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A03B64  38 00 00 00 */	li r0, 0
/* 80A03B68  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03B6C  3C 60 80 A0 */	lis r3, lit_4337@ha /* 0x80A0670C@ha */
/* 80A03B70  C0 03 67 0C */	lfs f0, lit_4337@l(r3)  /* 0x80A0670C@l */
/* 80A03B74  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03B78  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03B7C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A03B80:
/* 80A03B80  38 00 00 00 */	li r0, 0
/* 80A03B84  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A03B88:
/* 80A03B88  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A03B8C  4B 74 1B 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A03B90  28 03 00 00 */	cmplwi r3, 0
/* 80A03B94  41 82 00 2C */	beq lbl_80A03BC0
/* 80A03B98  A8 1F 0F 9C */	lha r0, 0xf9c(r31)
/* 80A03B9C  C0 1F 0F 90 */	lfs f0, 0xf90(r31)
/* 80A03BA0  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80A03BA4  C0 1F 0F 94 */	lfs f0, 0xf94(r31)
/* 80A03BA8  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80A03BAC  C0 1F 0F 98 */	lfs f0, 0xf98(r31)
/* 80A03BB0  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80A03BB4  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80A03BB8  38 00 00 01 */	li r0, 1
/* 80A03BBC  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80A03BC0:
/* 80A03BC0  38 60 00 01 */	li r3, 1
/* 80A03BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A03BC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A03BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A03BD0  7C 08 03 A6 */	mtlr r0
/* 80A03BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A03BD8  4E 80 00 20 */	blr 
