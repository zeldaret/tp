lbl_80797858:
/* 80797858  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079785C  7C 08 02 A6 */	mflr r0
/* 80797860  90 01 00 44 */	stw r0, 0x44(r1)
/* 80797864  39 61 00 40 */	addi r11, r1, 0x40
/* 80797868  4B BC A9 75 */	bl _savegpr_29
/* 8079786C  7C 7D 1B 78 */	mr r29, r3
/* 80797870  3C 80 80 7A */	lis r4, lit_3920@ha /* 0x807985E0@ha */
/* 80797874  3B E4 85 E0 */	addi r31, r4, lit_3920@l /* 0x807985E0@l */
/* 80797878  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8079787C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80797880  40 82 00 1C */	bne lbl_8079789C
/* 80797884  28 1D 00 00 */	cmplwi r29, 0
/* 80797888  41 82 00 08 */	beq lbl_80797890
/* 8079788C  48 00 04 55 */	bl __ct__8daE_SM_cFv
lbl_80797890:
/* 80797890  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80797894  60 00 00 08 */	ori r0, r0, 8
/* 80797898  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8079789C:
/* 8079789C  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 807978A0  3C 80 80 7A */	lis r4, d_a_e_sm__stringBase0@ha /* 0x80798780@ha */
/* 807978A4  38 84 87 80 */	addi r4, r4, d_a_e_sm__stringBase0@l /* 0x80798780@l */
/* 807978A8  4B 89 56 15 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807978AC  7C 7E 1B 78 */	mr r30, r3
/* 807978B0  2C 1E 00 04 */	cmpwi r30, 4
/* 807978B4  40 82 04 10 */	bne lbl_80797CC4
/* 807978B8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807978BC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807978C0  98 1D 06 80 */	stb r0, 0x680(r29)
/* 807978C4  88 9D 06 80 */	lbz r4, 0x680(r29)
/* 807978C8  28 04 00 FF */	cmplwi r4, 0xff
/* 807978CC  41 82 00 28 */	beq lbl_807978F4
/* 807978D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807978D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807978D8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807978DC  7C 05 07 74 */	extsb r5, r0
/* 807978E0  4B 89 DA 81 */	bl isSwitch__10dSv_info_cCFii
/* 807978E4  2C 03 00 00 */	cmpwi r3, 0
/* 807978E8  41 82 00 0C */	beq lbl_807978F4
/* 807978EC  38 60 00 05 */	li r3, 5
/* 807978F0  48 00 03 D8 */	b lbl_80797CC8
lbl_807978F4:
/* 807978F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807978F8  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 807978FC  7F A3 EB 78 */	mr r3, r29
/* 80797900  3C 80 80 79 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8079762C@ha */
/* 80797904  38 84 76 2C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8079762C@l */
/* 80797908  38 A0 32 80 */	li r5, 0x3280
/* 8079790C  4B 88 2B A5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80797910  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80797914  40 82 00 0C */	bne lbl_80797920
/* 80797918  38 60 00 05 */	li r3, 5
/* 8079791C  48 00 03 AC */	b lbl_80797CC8
lbl_80797920:
/* 80797920  3C 60 80 7A */	lis r3, struct_807989BC+0x1@ha /* 0x807989BD@ha */
/* 80797924  8C 03 89 BD */	lbzu r0, struct_807989BC+0x1@l(r3)  /* 0x807989BD@l */
/* 80797928  28 00 00 00 */	cmplwi r0, 0
/* 8079792C  40 82 00 20 */	bne lbl_8079794C
/* 80797930  38 00 00 01 */	li r0, 1
/* 80797934  98 03 00 00 */	stb r0, 0(r3)
/* 80797938  98 1D 11 5C */	stb r0, 0x115c(r29)
/* 8079793C  38 00 FF FF */	li r0, -1
/* 80797940  3C 60 80 7A */	lis r3, l_HIO@ha /* 0x807989CC@ha */
/* 80797944  38 63 89 CC */	addi r3, r3, l_HIO@l /* 0x807989CC@l */
/* 80797948  98 03 00 04 */	stb r0, 4(r3)
lbl_8079794C:
/* 8079794C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80797950  D0 1D 09 C8 */	stfs f0, 0x9c8(r29)
/* 80797954  D0 1D 09 CC */	stfs f0, 0x9cc(r29)
/* 80797958  D0 1D 09 D0 */	stfs f0, 0x9d0(r29)
/* 8079795C  38 00 00 00 */	li r0, 0
/* 80797960  B0 1D 09 88 */	sth r0, 0x988(r29)
/* 80797964  B0 1D 09 8A */	sth r0, 0x98a(r29)
/* 80797968  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 8079796C  B0 1D 06 B2 */	sth r0, 0x6b2(r29)
/* 80797970  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 80797974  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 80797978  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8079797C  D0 1D 09 90 */	stfs f0, 0x990(r29)
/* 80797980  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80797984  D0 1D 09 94 */	stfs f0, 0x994(r29)
/* 80797988  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8079798C  D0 1D 09 98 */	stfs f0, 0x998(r29)
/* 80797990  C0 1D 09 90 */	lfs f0, 0x990(r29)
/* 80797994  D0 1D 09 9C */	stfs f0, 0x99c(r29)
/* 80797998  C0 1D 09 94 */	lfs f0, 0x994(r29)
/* 8079799C  D0 1D 09 A0 */	stfs f0, 0x9a0(r29)
/* 807979A0  C0 1D 09 98 */	lfs f0, 0x998(r29)
/* 807979A4  D0 1D 09 A4 */	stfs f0, 0x9a4(r29)
/* 807979A8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807979AC  2C 00 00 0A */	cmpwi r0, 0xa
/* 807979B0  40 82 00 E8 */	bne lbl_80797A98
/* 807979B4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807979B8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 807979BC  98 1D 06 81 */	stb r0, 0x681(r29)
/* 807979C0  88 9D 06 81 */	lbz r4, 0x681(r29)
/* 807979C4  28 04 00 FF */	cmplwi r4, 0xff
/* 807979C8  41 82 00 20 */	beq lbl_807979E8
/* 807979CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807979D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807979D4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807979D8  7C 05 07 74 */	extsb r5, r0
/* 807979DC  4B 89 D9 85 */	bl isSwitch__10dSv_info_cCFii
/* 807979E0  2C 03 00 00 */	cmpwi r3, 0
/* 807979E4  40 82 00 B4 */	bne lbl_80797A98
lbl_807979E8:
/* 807979E8  38 00 00 01 */	li r0, 1
/* 807979EC  98 1D 0A 08 */	stb r0, 0xa08(r29)
/* 807979F0  38 00 00 03 */	li r0, 3
/* 807979F4  B0 1D 09 88 */	sth r0, 0x988(r29)
/* 807979F8  38 60 00 00 */	li r3, 0
/* 807979FC  B0 7D 09 8A */	sth r3, 0x98a(r29)
/* 80797A00  38 00 00 07 */	li r0, 7
/* 80797A04  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 80797A08  B0 7D 0A 0A */	sth r3, 0xa0a(r29)
/* 80797A0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80797A10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80797A14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80797A18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80797A1C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80797A20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80797A24  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80797A28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80797A2C  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80797A30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80797A34  38 61 00 1C */	addi r3, r1, 0x1c
/* 80797A38  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80797A3C  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 80797A40  38 C1 00 10 */	addi r6, r1, 0x10
/* 80797A44  4B AD 93 7D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80797A48  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80797A4C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80797A50  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80797A54  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80797A58  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80797A5C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80797A60  7F A3 EB 78 */	mr r3, r29
/* 80797A64  38 80 00 1D */	li r4, 0x1d
/* 80797A68  38 A0 00 00 */	li r5, 0
/* 80797A6C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80797A70  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80797A74  4B FF A7 ED */	bl SetAnm__8daE_SM_cFiiff
/* 80797A78  7F A3 EB 78 */	mr r3, r29
/* 80797A7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80797A80  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80797A84  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80797A88  4B 88 2C 89 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80797A8C  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80797A90  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80797A94  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_80797A98:
/* 80797A98  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80797A9C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80797AA0  28 00 00 FF */	cmplwi r0, 0xff
/* 80797AA4  41 82 00 2C */	beq lbl_80797AD0
/* 80797AA8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80797AAC  C8 3F 01 98 */	lfd f1, 0x198(r31)
/* 80797AB0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80797AB4  3C 00 43 30 */	lis r0, 0x4330
/* 80797AB8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80797ABC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80797AC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80797AC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80797AC8  D0 1D 09 70 */	stfs f0, 0x970(r29)
/* 80797ACC  48 00 00 0C */	b lbl_80797AD8
lbl_80797AD0:
/* 80797AD0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80797AD4  D0 1D 09 70 */	stfs f0, 0x970(r29)
lbl_80797AD8:
/* 80797AD8  7F A3 EB 78 */	mr r3, r29
/* 80797ADC  4B FF FC A9 */	bl initCoSph__8daE_SM_cFv
/* 80797AE0  38 00 00 00 */	li r0, 0
/* 80797AE4  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 80797AE8  98 1D 0A 10 */	stb r0, 0xa10(r29)
/* 80797AEC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80797AF0  38 03 00 24 */	addi r0, r3, 0x24
/* 80797AF4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80797AF8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80797AFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80797B00  38 03 00 24 */	addi r0, r3, 0x24
/* 80797B04  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80797B08  7F A3 EB 78 */	mr r3, r29
/* 80797B0C  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 80797B10  C0 5F 01 84 */	lfs f2, 0x184(r31)
/* 80797B14  FC 60 08 90 */	fmr f3, f1
/* 80797B18  4B 88 2A 11 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80797B1C  7F A3 EB 78 */	mr r3, r29
/* 80797B20  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 80797B24  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80797B28  FC 60 08 90 */	fmr f3, f1
/* 80797B2C  4B 88 2A 0D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80797B30  38 00 00 04 */	li r0, 4
/* 80797B34  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80797B38  38 00 00 3A */	li r0, 0x3a
/* 80797B3C  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80797B40  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80797B44  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80797B48  38 A0 00 00 */	li r5, 0
/* 80797B4C  38 C0 00 03 */	li r6, 3
/* 80797B50  38 E0 00 01 */	li r7, 1
/* 80797B54  4B B2 95 41 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80797B58  38 7D 06 60 */	addi r3, r29, 0x660
/* 80797B5C  38 9D 09 90 */	addi r4, r29, 0x990
/* 80797B60  38 A0 00 01 */	li r5, 1
/* 80797B64  81 9D 06 70 */	lwz r12, 0x670(r29)
/* 80797B68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80797B6C  7D 89 03 A6 */	mtctr r12
/* 80797B70  4E 80 04 21 */	bctrl 
/* 80797B74  38 00 00 00 */	li r0, 0
/* 80797B78  98 1D 06 82 */	stb r0, 0x682(r29)
/* 80797B7C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80797B80  90 7D 11 40 */	stw r3, 0x1140(r29)
/* 80797B84  3C 80 80 7A */	lis r4, d_a_e_sm__stringBase0@ha /* 0x80798780@ha */
/* 80797B88  38 84 87 80 */	addi r4, r4, d_a_e_sm__stringBase0@l /* 0x80798780@l */
/* 80797B8C  4B B2 A0 05 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80797B90  38 7D 0C 38 */	addi r3, r29, 0xc38
/* 80797B94  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80797B98  C0 7F 01 88 */	lfs f3, 0x188(r31)
/* 80797B9C  C0 5F 01 8C */	lfs f2, 0x18c(r31)
/* 80797BA0  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 80797BA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80797BA8  EC 43 00 2A */	fadds f2, f3, f0
/* 80797BAC  4B 8D E3 AD */	bl SetWall__12dBgS_AcchCirFff
/* 80797BB0  38 00 00 00 */	li r0, 0
/* 80797BB4  90 01 00 08 */	stw r0, 8(r1)
/* 80797BB8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80797BBC  38 9D 09 90 */	addi r4, r29, 0x990
/* 80797BC0  38 BD 09 9C */	addi r5, r29, 0x99c
/* 80797BC4  7F A6 EB 78 */	mr r6, r29
/* 80797BC8  38 E0 00 01 */	li r7, 1
/* 80797BCC  39 1D 0C 38 */	addi r8, r29, 0xc38
/* 80797BD0  39 3D 09 B8 */	addi r9, r29, 0x9b8
/* 80797BD4  39 40 00 00 */	li r10, 0
/* 80797BD8  4B 8D E6 71 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80797BDC  38 7D 0A 20 */	addi r3, r29, 0xa20
/* 80797BE0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80797BE4  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80797BE8  4B 8D E3 71 */	bl SetWall__12dBgS_AcchCirFff
/* 80797BEC  38 00 00 00 */	li r0, 0
/* 80797BF0  90 01 00 08 */	stw r0, 8(r1)
/* 80797BF4  38 7D 0A 60 */	addi r3, r29, 0xa60
/* 80797BF8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80797BFC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80797C00  7F A6 EB 78 */	mr r6, r29
/* 80797C04  38 E0 00 01 */	li r7, 1
/* 80797C08  39 1D 0A 20 */	addi r8, r29, 0xa20
/* 80797C0C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80797C10  39 40 00 00 */	li r10, 0
/* 80797C14  4B 8D E6 35 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80797C18  80 1D 0A 8C */	lwz r0, 0xa8c(r29)
/* 80797C1C  60 00 20 00 */	ori r0, r0, 0x2000
/* 80797C20  90 1D 0A 8C */	stw r0, 0xa8c(r29)
/* 80797C24  38 7D 0A 60 */	addi r3, r29, 0xa60
/* 80797C28  4B 8D F7 99 */	bl SetGndThinCellingOff__9dBgS_AcchFv
/* 80797C2C  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80797C30  4B 8D F7 91 */	bl SetGndThinCellingOff__9dBgS_AcchFv
/* 80797C34  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 80797C38  4B AC FD 1D */	bl cM_rndF__Ff
/* 80797C3C  FC 00 08 1E */	fctiwz f0, f1
/* 80797C40  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80797C44  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80797C48  B0 1D 06 BC */	sth r0, 0x6bc(r29)
/* 80797C4C  38 00 00 50 */	li r0, 0x50
/* 80797C50  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80797C54  38 00 00 04 */	li r0, 4
/* 80797C58  90 1D 09 84 */	stw r0, 0x984(r29)
/* 80797C5C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80797C60  D0 1D 06 E0 */	stfs f0, 0x6e0(r29)
/* 80797C64  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80797C68  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80797C6C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80797C70  38 BD 05 38 */	addi r5, r29, 0x538
/* 80797C74  38 C0 00 03 */	li r6, 3
/* 80797C78  38 E0 00 01 */	li r7, 1
/* 80797C7C  4B B2 94 19 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80797C80  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80797C84  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80797C88  80 1D 0E E0 */	lwz r0, 0xee0(r29)
/* 80797C8C  60 00 00 01 */	ori r0, r0, 1
/* 80797C90  90 1D 0E E0 */	stw r0, 0xee0(r29)
/* 80797C94  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80797C98  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 80797C9C  38 60 00 00 */	li r3, 0
/* 80797CA0  38 80 FF FF */	li r4, -1
/* 80797CA4  38 00 00 1E */	li r0, 0x1e
/* 80797CA8  7C 09 03 A6 */	mtctr r0
lbl_80797CAC:
/* 80797CAC  38 03 07 18 */	addi r0, r3, 0x718
/* 80797CB0  7C 9D 01 2E */	stwx r4, r29, r0
/* 80797CB4  38 63 00 04 */	addi r3, r3, 4
/* 80797CB8  42 00 FF F4 */	bdnz lbl_80797CAC
/* 80797CBC  7F A3 EB 78 */	mr r3, r29
/* 80797CC0  4B FF F8 71 */	bl daE_SM_Execute__FP8daE_SM_c
lbl_80797CC4:
/* 80797CC4  7F C3 F3 78 */	mr r3, r30
lbl_80797CC8:
/* 80797CC8  39 61 00 40 */	addi r11, r1, 0x40
/* 80797CCC  4B BC A5 5D */	bl _restgpr_29
/* 80797CD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80797CD4  7C 08 03 A6 */	mtlr r0
/* 80797CD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80797CDC  4E 80 00 20 */	blr 
