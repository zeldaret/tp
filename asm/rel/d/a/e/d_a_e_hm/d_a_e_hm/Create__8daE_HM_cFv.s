lbl_806E4E64:
/* 806E4E64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E4E68  7C 08 02 A6 */	mflr r0
/* 806E4E6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E4E70  39 61 00 30 */	addi r11, r1, 0x30
/* 806E4E74  4B C7 D3 65 */	bl _savegpr_28
/* 806E4E78  7C 7D 1B 78 */	mr r29, r3
/* 806E4E7C  3C 80 80 6E */	lis r4, lit_3791@ha /* 0x806E5920@ha */
/* 806E4E80  3B E4 59 20 */	addi r31, r4, lit_3791@l /* 0x806E5920@l */
/* 806E4E84  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806E4E88  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806E4E8C  40 82 00 E8 */	bne lbl_806E4F74
/* 806E4E90  7F A0 EB 79 */	or. r0, r29, r29
/* 806E4E94  41 82 00 D4 */	beq lbl_806E4F68
/* 806E4E98  7C 1E 03 78 */	mr r30, r0
/* 806E4E9C  4B 93 3C C9 */	bl __ct__10fopAc_ac_cFv
/* 806E4EA0  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E4EA4  4B BD C0 C1 */	bl __ct__15Z2CreatureEnemyFv
/* 806E4EA8  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806E4EAC  4B 99 10 01 */	bl __ct__12dBgS_AcchCirFv
/* 806E4EB0  3B 9E 07 14 */	addi r28, r30, 0x714
/* 806E4EB4  7F 83 E3 78 */	mr r3, r28
/* 806E4EB8  4B 99 11 E9 */	bl __ct__9dBgS_AcchFv
/* 806E4EBC  3C 60 80 6E */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806E5B88@ha */
/* 806E4EC0  38 63 5B 88 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806E5B88@l */
/* 806E4EC4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806E4EC8  38 03 00 0C */	addi r0, r3, 0xc
/* 806E4ECC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806E4ED0  38 03 00 18 */	addi r0, r3, 0x18
/* 806E4ED4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806E4ED8  38 7C 00 14 */	addi r3, r28, 0x14
/* 806E4EDC  4B 99 3F 8D */	bl SetObj__16dBgS_PolyPassChkFv
/* 806E4EE0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806E4EE4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806E4EE8  90 1E 09 04 */	stw r0, 0x904(r30)
/* 806E4EEC  38 7E 09 08 */	addi r3, r30, 0x908
/* 806E4EF0  4B 99 E8 71 */	bl __ct__10dCcD_GSttsFv
/* 806E4EF4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806E4EF8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806E4EFC  90 7E 09 04 */	stw r3, 0x904(r30)
/* 806E4F00  38 03 00 20 */	addi r0, r3, 0x20
/* 806E4F04  90 1E 09 08 */	stw r0, 0x908(r30)
/* 806E4F08  3B 9E 09 28 */	addi r28, r30, 0x928
/* 806E4F0C  7F 83 E3 78 */	mr r3, r28
/* 806E4F10  4B 99 EB 19 */	bl __ct__12dCcD_GObjInfFv
/* 806E4F14  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806E4F18  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806E4F1C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806E4F20  3C 60 80 6E */	lis r3, __vt__8cM3dGAab@ha /* 0x806E5B7C@ha */
/* 806E4F24  38 03 5B 7C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806E5B7C@l */
/* 806E4F28  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 806E4F2C  3C 60 80 6E */	lis r3, __vt__8cM3dGSph@ha /* 0x806E5B70@ha */
/* 806E4F30  38 03 5B 70 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806E5B70@l */
/* 806E4F34  90 1C 01 34 */	stw r0, 0x134(r28)
/* 806E4F38  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806E4F3C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806E4F40  90 7C 01 20 */	stw r3, 0x120(r28)
/* 806E4F44  38 03 00 58 */	addi r0, r3, 0x58
/* 806E4F48  90 1C 01 34 */	stw r0, 0x134(r28)
/* 806E4F4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806E4F50  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806E4F54  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 806E4F58  38 03 00 2C */	addi r0, r3, 0x2c
/* 806E4F5C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806E4F60  38 03 00 84 */	addi r0, r3, 0x84
/* 806E4F64  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_806E4F68:
/* 806E4F68  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806E4F6C  60 00 00 08 */	ori r0, r0, 8
/* 806E4F70  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806E4F74:
/* 806E4F74  38 7D 06 24 */	addi r3, r29, 0x624
/* 806E4F78  3C 80 80 6E */	lis r4, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E4F7C  38 84 5A 74 */	addi r4, r4, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E4F80  4B 94 7F 3D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806E4F84  7C 7E 1B 78 */	mr r30, r3
/* 806E4F88  2C 1E 00 04 */	cmpwi r30, 4
/* 806E4F8C  40 82 02 1C */	bne lbl_806E51A8
/* 806E4F90  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806E4F94  54 00 46 3E */	srwi r0, r0, 0x18
/* 806E4F98  98 1D 05 AE */	stb r0, 0x5ae(r29)
/* 806E4F9C  88 9D 05 AE */	lbz r4, 0x5ae(r29)
/* 806E4FA0  28 04 00 FF */	cmplwi r4, 0xff
/* 806E4FA4  41 82 00 28 */	beq lbl_806E4FCC
/* 806E4FA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E4FAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E4FB0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806E4FB4  7C 05 07 74 */	extsb r5, r0
/* 806E4FB8  4B 95 03 A9 */	bl isSwitch__10dSv_info_cCFii
/* 806E4FBC  2C 03 00 00 */	cmpwi r3, 0
/* 806E4FC0  41 82 00 0C */	beq lbl_806E4FCC
/* 806E4FC4  38 60 00 05 */	li r3, 5
/* 806E4FC8  48 00 01 E4 */	b lbl_806E51AC
lbl_806E4FCC:
/* 806E4FCC  7F A3 EB 78 */	mr r3, r29
/* 806E4FD0  3C 80 80 6E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806E06A0@ha */
/* 806E4FD4  38 84 06 A0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806E06A0@l */
/* 806E4FD8  38 A0 15 A0 */	li r5, 0x15a0
/* 806E4FDC  4B 93 54 D5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806E4FE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E4FE4  40 82 00 0C */	bne lbl_806E4FF0
/* 806E4FE8  38 60 00 05 */	li r3, 5
/* 806E4FEC  48 00 01 C0 */	b lbl_806E51AC
lbl_806E4FF0:
/* 806E4FF0  3C 60 80 6E */	lis r3, struct_806E5C14+0x1@ha /* 0x806E5C15@ha */
/* 806E4FF4  8C 03 5C 15 */	lbzu r0, struct_806E5C14+0x1@l(r3)  /* 0x806E5C15@l */
/* 806E4FF8  28 00 00 00 */	cmplwi r0, 0
/* 806E4FFC  40 82 00 20 */	bne lbl_806E501C
/* 806E5000  38 00 00 01 */	li r0, 1
/* 806E5004  98 03 00 00 */	stb r0, 0(r3)
/* 806E5008  98 1D 0A 84 */	stb r0, 0xa84(r29)
/* 806E500C  38 00 FF FF */	li r0, -1
/* 806E5010  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806E5C24@ha */
/* 806E5014  38 63 5C 24 */	addi r3, r3, l_HIO@l /* 0x806E5C24@l */
/* 806E5018  98 03 00 04 */	stb r0, 4(r3)
lbl_806E501C:
/* 806E501C  38 00 00 00 */	li r0, 0
/* 806E5020  B0 1D 05 CC */	sth r0, 0x5cc(r29)
/* 806E5024  B0 1D 05 CE */	sth r0, 0x5ce(r29)
/* 806E5028  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 806E502C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806E5030  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806E5034  B0 1D 05 D2 */	sth r0, 0x5d2(r29)
/* 806E5038  A8 1D 05 D2 */	lha r0, 0x5d2(r29)
/* 806E503C  2C 00 00 FF */	cmpwi r0, 0xff
/* 806E5040  40 82 00 0C */	bne lbl_806E504C
/* 806E5044  38 00 00 01 */	li r0, 1
/* 806E5048  B0 1D 05 D2 */	sth r0, 0x5d2(r29)
lbl_806E504C:
/* 806E504C  7F A3 EB 78 */	mr r3, r29
/* 806E5050  4B FF FC 7D */	bl CreateStyle__8daE_HM_cFv
/* 806E5054  38 00 00 04 */	li r0, 4
/* 806E5058  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806E505C  80 7D 06 18 */	lwz r3, 0x618(r29)
/* 806E5060  80 63 00 04 */	lwz r3, 4(r3)
/* 806E5064  38 03 00 24 */	addi r0, r3, 0x24
/* 806E5068  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806E506C  7F A3 EB 78 */	mr r3, r29
/* 806E5070  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 806E5074  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806E5078  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 806E507C  4B 93 54 AD */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806E5080  7F A3 EB 78 */	mr r3, r29
/* 806E5084  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 806E5088  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 806E508C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 806E5090  4B 93 54 A9 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806E5094  38 00 00 00 */	li r0, 0
/* 806E5098  90 01 00 08 */	stw r0, 8(r1)
/* 806E509C  38 7D 07 14 */	addi r3, r29, 0x714
/* 806E50A0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806E50A4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 806E50A8  7F A6 EB 78 */	mr r6, r29
/* 806E50AC  38 E0 00 01 */	li r7, 1
/* 806E50B0  39 1D 06 D4 */	addi r8, r29, 0x6d4
/* 806E50B4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 806E50B8  39 40 00 00 */	li r10, 0
/* 806E50BC  4B 99 11 8D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806E50C0  38 7D 06 30 */	addi r3, r29, 0x630
/* 806E50C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806E50C8  38 BD 05 38 */	addi r5, r29, 0x538
/* 806E50CC  38 C0 00 03 */	li r6, 3
/* 806E50D0  38 E0 00 01 */	li r7, 1
/* 806E50D4  4B BD BF C1 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806E50D8  38 7D 06 30 */	addi r3, r29, 0x630
/* 806E50DC  90 7D 0A 68 */	stw r3, 0xa68(r29)
/* 806E50E0  38 00 00 01 */	li r0, 1
/* 806E50E4  98 1D 0A 7E */	stb r0, 0xa7e(r29)
/* 806E50E8  90 7D 0A 68 */	stw r3, 0xa68(r29)
/* 806E50EC  80 7D 06 18 */	lwz r3, 0x618(r29)
/* 806E50F0  80 A3 00 04 */	lwz r5, 4(r3)
/* 806E50F4  93 A5 00 14 */	stw r29, 0x14(r5)
/* 806E50F8  38 E0 00 00 */	li r7, 0
/* 806E50FC  3C 60 80 6E */	lis r3, JointCallBack__FP8J3DJointi@ha /* 0x806E0D64@ha */
/* 806E5100  38 83 0D 64 */	addi r4, r3, JointCallBack__FP8J3DJointi@l /* 0x806E0D64@l */
/* 806E5104  48 00 00 20 */	b lbl_806E5124
lbl_806E5108:
/* 806E5108  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 806E510C  41 82 00 14 */	beq lbl_806E5120
/* 806E5110  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806E5114  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806E5118  7C 63 00 2E */	lwzx r3, r3, r0
/* 806E511C  90 83 00 04 */	stw r4, 4(r3)
lbl_806E5120:
/* 806E5120  38 E7 00 01 */	addi r7, r7, 1
lbl_806E5124:
/* 806E5124  80 C5 00 04 */	lwz r6, 4(r5)
/* 806E5128  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806E512C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806E5130  7C 00 18 40 */	cmplw r0, r3
/* 806E5134  41 80 FF D4 */	blt lbl_806E5108
/* 806E5138  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806E513C  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 806E5140  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 806E5144  D0 1D 05 F0 */	stfs f0, 0x5f0(r29)
/* 806E5148  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 806E514C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806E5150  D0 1D 05 B0 */	stfs f0, 0x5b0(r29)
/* 806E5154  7F A3 EB 78 */	mr r3, r29
/* 806E5158  4B FF B5 69 */	bl initCcCylinder__8daE_HM_cFv
/* 806E515C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701A1@ha */
/* 806E5160  38 03 01 A1 */	addi r0, r3, 0x01A1 /* 0x000701A1@l */
/* 806E5164  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E5168  38 7D 06 30 */	addi r3, r29, 0x630
/* 806E516C  38 81 00 10 */	addi r4, r1, 0x10
/* 806E5170  38 A0 00 00 */	li r5, 0
/* 806E5174  38 C0 FF FF */	li r6, -1
/* 806E5178  81 9D 06 30 */	lwz r12, 0x630(r29)
/* 806E517C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806E5180  7D 89 03 A6 */	mtctr r12
/* 806E5184  4E 80 04 21 */	bctrl 
/* 806E5188  38 7D 06 30 */	addi r3, r29, 0x630
/* 806E518C  3C 80 80 6E */	lis r4, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E5190  38 84 5A 74 */	addi r4, r4, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E5194  4B BD C9 FD */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806E5198  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E519C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806E51A0  7F A3 EB 78 */	mr r3, r29
/* 806E51A4  4B FF F4 35 */	bl daE_HM_Execute__FP8daE_HM_c
lbl_806E51A8:
/* 806E51A8  7F C3 F3 78 */	mr r3, r30
lbl_806E51AC:
/* 806E51AC  39 61 00 30 */	addi r11, r1, 0x30
/* 806E51B0  4B C7 D0 75 */	bl _restgpr_28
/* 806E51B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E51B8  7C 08 03 A6 */	mtlr r0
/* 806E51BC  38 21 00 30 */	addi r1, r1, 0x30
/* 806E51C0  4E 80 00 20 */	blr 
