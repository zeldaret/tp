lbl_806A65C4:
/* 806A65C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A65C8  7C 08 02 A6 */	mflr r0
/* 806A65CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A65D0  39 61 00 40 */	addi r11, r1, 0x40
/* 806A65D4  4B CB BB ED */	bl _savegpr_22
/* 806A65D8  7C 7E 1B 78 */	mr r30, r3
/* 806A65DC  3C 80 80 6A */	lis r4, lit_3903@ha /* 0x806A71C4@ha */
/* 806A65E0  3B E4 71 C4 */	addi r31, r4, lit_3903@l /* 0x806A71C4@l */
/* 806A65E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806A65E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806A65EC  40 82 01 08 */	bne lbl_806A66F4
/* 806A65F0  7F C0 F3 79 */	or. r0, r30, r30
/* 806A65F4  41 82 00 F4 */	beq lbl_806A66E8
/* 806A65F8  7C 1D 03 78 */	mr r29, r0
/* 806A65FC  4B 97 25 69 */	bl __ct__10fopAc_ac_cFv
/* 806A6600  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 806A6604  4B C1 A9 61 */	bl __ct__15Z2CreatureEnemyFv
/* 806A6608  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 806A660C  4B 9C F8 A1 */	bl __ct__12dBgS_AcchCirFv
/* 806A6610  3A DD 07 28 */	addi r22, r29, 0x728
/* 806A6614  7E C3 B3 78 */	mr r3, r22
/* 806A6618  4B 9C FA 89 */	bl __ct__9dBgS_AcchFv
/* 806A661C  3C 60 80 6A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806A7470@ha */
/* 806A6620  38 63 74 70 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806A7470@l */
/* 806A6624  90 76 00 10 */	stw r3, 0x10(r22)
/* 806A6628  38 03 00 0C */	addi r0, r3, 0xc
/* 806A662C  90 16 00 14 */	stw r0, 0x14(r22)
/* 806A6630  38 03 00 18 */	addi r0, r3, 0x18
/* 806A6634  90 16 00 24 */	stw r0, 0x24(r22)
/* 806A6638  38 76 00 14 */	addi r3, r22, 0x14
/* 806A663C  4B 9D 28 2D */	bl SetObj__16dBgS_PolyPassChkFv
/* 806A6640  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806A6644  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806A6648  90 1D 09 18 */	stw r0, 0x918(r29)
/* 806A664C  38 7D 09 1C */	addi r3, r29, 0x91c
/* 806A6650  4B 9D D1 11 */	bl __ct__10dCcD_GSttsFv
/* 806A6654  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806A6658  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806A665C  90 7D 09 18 */	stw r3, 0x918(r29)
/* 806A6660  38 03 00 20 */	addi r0, r3, 0x20
/* 806A6664  90 1D 09 1C */	stw r0, 0x91c(r29)
/* 806A6668  3B 9D 09 3C */	addi r28, r29, 0x93c
/* 806A666C  7F 83 E3 78 */	mr r3, r28
/* 806A6670  4B 9D D3 B9 */	bl __ct__12dCcD_GObjInfFv
/* 806A6674  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806A6678  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806A667C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806A6680  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha /* 0x806A7464@ha */
/* 806A6684  38 03 74 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806A7464@l */
/* 806A6688  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 806A668C  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha /* 0x806A7458@ha */
/* 806A6690  38 03 74 58 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806A7458@l */
/* 806A6694  90 1C 01 34 */	stw r0, 0x134(r28)
/* 806A6698  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806A669C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806A66A0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 806A66A4  38 03 00 58 */	addi r0, r3, 0x58
/* 806A66A8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 806A66AC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806A66B0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806A66B4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 806A66B8  38 03 00 2C */	addi r0, r3, 0x2c
/* 806A66BC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 806A66C0  38 03 00 84 */	addi r0, r3, 0x84
/* 806A66C4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 806A66C8  38 7D 0A 74 */	addi r3, r29, 0xa74
/* 806A66CC  3C 80 80 6A */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806A69A4@ha */
/* 806A66D0  38 84 69 A4 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806A69A4@l */
/* 806A66D4  3C A0 80 6A */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806A6A28@ha */
/* 806A66D8  38 A5 6A 28 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806A6A28@l */
/* 806A66DC  38 C0 01 38 */	li r6, 0x138
/* 806A66E0  38 E0 00 03 */	li r7, 3
/* 806A66E4  4B CB B6 7D */	bl __construct_array
lbl_806A66E8:
/* 806A66E8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 806A66EC  60 00 00 08 */	ori r0, r0, 8
/* 806A66F0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_806A66F4:
/* 806A66F4  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 806A66F8  3C 80 80 6A */	lis r4, d_a_e_dd__stringBase0@ha /* 0x806A72B4@ha */
/* 806A66FC  38 84 72 B4 */	addi r4, r4, d_a_e_dd__stringBase0@l /* 0x806A72B4@l */
/* 806A6700  38 84 00 05 */	addi r4, r4, 5
/* 806A6704  4B 98 67 B9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806A6708  7C 7D 1B 78 */	mr r29, r3
/* 806A670C  2C 1D 00 04 */	cmpwi r29, 4
/* 806A6710  40 82 02 78 */	bne lbl_806A6988
/* 806A6714  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806A6718  54 18 86 3E */	rlwinm r24, r0, 0x10, 0x18, 0x1f
/* 806A671C  54 04 46 3E */	srwi r4, r0, 0x18
/* 806A6720  2C 04 00 FF */	cmpwi r4, 0xff
/* 806A6724  41 82 00 28 */	beq lbl_806A674C
/* 806A6728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A672C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A6730  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A6734  7C 05 07 74 */	extsb r5, r0
/* 806A6738  4B 98 EC 29 */	bl isSwitch__10dSv_info_cCFii
/* 806A673C  2C 03 00 00 */	cmpwi r3, 0
/* 806A6740  41 82 00 0C */	beq lbl_806A674C
/* 806A6744  38 60 00 05 */	li r3, 5
/* 806A6748  48 00 02 44 */	b lbl_806A698C
lbl_806A674C:
/* 806A674C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806A6750  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 806A6754  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806A6758  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 806A675C  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 806A6760  7F C3 F3 78 */	mr r3, r30
/* 806A6764  3C 80 80 6A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806A6154@ha */
/* 806A6768  38 84 61 54 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806A6154@l */
/* 806A676C  38 A0 20 E0 */	li r5, 0x20e0
/* 806A6770  4B 97 3D 41 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806A6774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A6778  40 82 00 0C */	bne lbl_806A6784
/* 806A677C  38 60 00 05 */	li r3, 5
/* 806A6780  48 00 02 0C */	b lbl_806A698C
lbl_806A6784:
/* 806A6784  28 18 00 FF */	cmplwi r24, 0xff
/* 806A6788  41 82 00 2C */	beq lbl_806A67B4
/* 806A678C  7F 03 C3 78 */	mr r3, r24
/* 806A6790  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A6794  7C 04 07 74 */	extsb r4, r0
/* 806A6798  4B 9A B0 55 */	bl dPath_GetRoomPath__Fii
/* 806A679C  90 7E 05 B8 */	stw r3, 0x5b8(r30)
/* 806A67A0  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 806A67A4  28 00 00 00 */	cmplwi r0, 0
/* 806A67A8  40 82 00 0C */	bne lbl_806A67B4
/* 806A67AC  38 60 00 05 */	li r3, 5
/* 806A67B0  48 00 01 DC */	b lbl_806A698C
lbl_806A67B4:
/* 806A67B4  3C 60 80 6A */	lis r3, data_806A74B8@ha /* 0x806A74B8@ha */
/* 806A67B8  8C 03 74 B8 */	lbzu r0, data_806A74B8@l(r3)  /* 0x806A74B8@l */
/* 806A67BC  28 00 00 00 */	cmplwi r0, 0
/* 806A67C0  40 82 00 20 */	bne lbl_806A67E0
/* 806A67C4  38 00 00 01 */	li r0, 1
/* 806A67C8  98 1E 0E 90 */	stb r0, 0xe90(r30)
/* 806A67CC  98 03 00 00 */	stb r0, 0(r3)
/* 806A67D0  38 00 FF FF */	li r0, -1
/* 806A67D4  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A74C8@ha */
/* 806A67D8  38 63 74 C8 */	addi r3, r3, l_HIO@l /* 0x806A74C8@l */
/* 806A67DC  98 03 00 04 */	stb r0, 4(r3)
lbl_806A67E0:
/* 806A67E0  38 00 00 04 */	li r0, 4
/* 806A67E4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806A67E8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A67EC  80 63 00 04 */	lwz r3, 4(r3)
/* 806A67F0  38 03 00 24 */	addi r0, r3, 0x24
/* 806A67F4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 806A67F8  7F C3 F3 78 */	mr r3, r30
/* 806A67FC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806A6800  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 806A6804  FC 60 08 90 */	fmr f3, f1
/* 806A6808  4B 97 3D 21 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806A680C  7F C3 F3 78 */	mr r3, r30
/* 806A6810  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 806A6814  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806A6818  FC 60 08 90 */	fmr f3, f1
/* 806A681C  4B 97 3D 1D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806A6820  38 00 00 3C */	li r0, 0x3c
/* 806A6824  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806A6828  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 806A682C  38 7E 09 00 */	addi r3, r30, 0x900
/* 806A6830  38 80 00 FA */	li r4, 0xfa
/* 806A6834  38 A0 00 00 */	li r5, 0
/* 806A6838  7F C6 F3 78 */	mr r6, r30
/* 806A683C  4B 9D D0 25 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806A6840  3A C0 00 00 */	li r22, 0
/* 806A6844  3B 80 00 00 */	li r28, 0
/* 806A6848  3C 60 80 6A */	lis r3, cc_sph_src@ha /* 0x806A73A4@ha */
/* 806A684C  3B 03 73 A4 */	addi r24, r3, cc_sph_src@l /* 0x806A73A4@l */
/* 806A6850  3B 3E 09 00 */	addi r25, r30, 0x900
/* 806A6854  7F 9A E3 78 */	mr r26, r28
/* 806A6858  3B 60 00 02 */	li r27, 2
lbl_806A685C:
/* 806A685C  7E FE E2 14 */	add r23, r30, r28
/* 806A6860  38 77 0A 74 */	addi r3, r23, 0xa74
/* 806A6864  7F 04 C3 78 */	mr r4, r24
/* 806A6868  4B 9D E1 CD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806A686C  93 37 0A B8 */	stw r25, 0xab8(r23)
/* 806A6870  2C 16 00 02 */	cmpwi r22, 2
/* 806A6874  40 82 00 18 */	bne lbl_806A688C
/* 806A6878  80 17 0B 10 */	lwz r0, 0xb10(r23)
/* 806A687C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806A6880  90 17 0B 10 */	stw r0, 0xb10(r23)
/* 806A6884  9B 57 0B 2E */	stb r26, 0xb2e(r23)
/* 806A6888  48 00 00 14 */	b lbl_806A689C
lbl_806A688C:
/* 806A688C  80 17 0B 10 */	lwz r0, 0xb10(r23)
/* 806A6890  60 00 00 01 */	ori r0, r0, 1
/* 806A6894  90 17 0B 10 */	stw r0, 0xb10(r23)
/* 806A6898  9B 77 0B 2E */	stb r27, 0xb2e(r23)
lbl_806A689C:
/* 806A689C  3A D6 00 01 */	addi r22, r22, 1
/* 806A68A0  2C 16 00 03 */	cmpwi r22, 3
/* 806A68A4  3B 9C 01 38 */	addi r28, r28, 0x138
/* 806A68A8  41 80 FF B4 */	blt lbl_806A685C
/* 806A68AC  38 7E 09 3C */	addi r3, r30, 0x93c
/* 806A68B0  3C 80 80 6A */	lis r4, fire_sph_src@ha /* 0x806A7364@ha */
/* 806A68B4  38 84 73 64 */	addi r4, r4, fire_sph_src@l /* 0x806A7364@l */
/* 806A68B8  4B 9D E1 7D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806A68BC  38 1E 09 00 */	addi r0, r30, 0x900
/* 806A68C0  90 1E 09 80 */	stw r0, 0x980(r30)
/* 806A68C4  38 00 01 00 */	li r0, 0x100
/* 806A68C8  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 806A68CC  38 00 00 01 */	li r0, 1
/* 806A68D0  98 1E 09 B1 */	stb r0, 0x9b1(r30)
/* 806A68D4  38 00 00 00 */	li r0, 0
/* 806A68D8  90 01 00 08 */	stw r0, 8(r1)
/* 806A68DC  38 7E 07 28 */	addi r3, r30, 0x728
/* 806A68E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806A68E4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 806A68E8  7F C6 F3 78 */	mr r6, r30
/* 806A68EC  38 E0 00 01 */	li r7, 1
/* 806A68F0  39 1E 06 E8 */	addi r8, r30, 0x6e8
/* 806A68F4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 806A68F8  39 40 00 00 */	li r10, 0
/* 806A68FC  4B 9C F9 4D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806A6900  38 7E 06 E8 */	addi r3, r30, 0x6e8
/* 806A6904  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806A6908  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806A690C  4B 9C F6 4D */	bl SetWall__12dBgS_AcchCirFff
/* 806A6910  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A6914  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806A6918  38 BE 05 38 */	addi r5, r30, 0x538
/* 806A691C  38 C0 00 03 */	li r6, 3
/* 806A6920  38 E0 00 01 */	li r7, 1
/* 806A6924  4B C1 A7 71 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806A6928  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A692C  3C 80 80 6A */	lis r4, d_a_e_dd__stringBase0@ha /* 0x806A72B4@ha */
/* 806A6930  38 84 72 B4 */	addi r4, r4, d_a_e_dd__stringBase0@l /* 0x806A72B4@l */
/* 806A6934  38 84 00 05 */	addi r4, r4, 5
/* 806A6938  4B C1 B2 59 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806A693C  38 00 00 02 */	li r0, 2
/* 806A6940  98 1E 0E 3A */	stb r0, 0xe3a(r30)
/* 806A6944  38 1E 05 C4 */	addi r0, r30, 0x5c4
/* 806A6948  90 1E 0E 24 */	stw r0, 0xe24(r30)
/* 806A694C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 806A6950  4B BC 10 05 */	bl cM_rndF__Ff
/* 806A6954  FC 00 08 1E */	fctiwz f0, f1
/* 806A6958  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806A695C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6960  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 806A6964  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 806A6968  28 00 00 02 */	cmplwi r0, 2
/* 806A696C  41 82 00 0C */	beq lbl_806A6978
/* 806A6970  28 00 00 03 */	cmplwi r0, 3
/* 806A6974  40 82 00 0C */	bne lbl_806A6980
lbl_806A6978:
/* 806A6978  7F C3 F3 78 */	mr r3, r30
/* 806A697C  4B FF FA 85 */	bl kabe_initial_pos_set__FP10e_dd_class
lbl_806A6980:
/* 806A6980  7F C3 F3 78 */	mr r3, r30
/* 806A6984  4B FF F0 E9 */	bl daE_DD_Execute__FP10e_dd_class
lbl_806A6988:
/* 806A6988  7F A3 EB 78 */	mr r3, r29
lbl_806A698C:
/* 806A698C  39 61 00 40 */	addi r11, r1, 0x40
/* 806A6990  4B CB B8 7D */	bl _restgpr_22
/* 806A6994  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A6998  7C 08 03 A6 */	mtlr r0
/* 806A699C  38 21 00 40 */	addi r1, r1, 0x40
/* 806A69A0  4E 80 00 20 */	blr 
