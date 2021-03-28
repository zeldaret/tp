lbl_80CE5624:
/* 80CE5624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE5628  7C 08 02 A6 */	mflr r0
/* 80CE562C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE5630  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE5634  4B 67 CB A8 */	b _savegpr_29
/* 80CE5638  7C 7E 1B 78 */	mr r30, r3
/* 80CE563C  3C 80 80 CE */	lis r4, mCcDObjInfo__15daObj_SSDrink_c@ha
/* 80CE5640  3B E4 69 30 */	addi r31, r4, mCcDObjInfo__15daObj_SSDrink_c@l
/* 80CE5644  48 00 08 85 */	bl setParam__15daObj_SSDrink_cFv
/* 80CE5648  38 7E 07 84 */	addi r3, r30, 0x784
/* 80CE564C  4B 39 E1 E4 */	b Move__10dCcD_GSttsFv
/* 80CE5650  7F C3 F3 78 */	mr r3, r30
/* 80CE5654  48 00 0B D9 */	bl chkEvent__15daObj_SSDrink_cFv
/* 80CE5658  2C 03 00 00 */	cmpwi r3, 0
/* 80CE565C  41 82 00 30 */	beq lbl_80CE568C
/* 80CE5660  38 7E 0A F0 */	addi r3, r30, 0xaf0
/* 80CE5664  4B 67 C9 B4 */	b __ptmf_test
/* 80CE5668  2C 03 00 00 */	cmpwi r3, 0
/* 80CE566C  41 82 00 18 */	beq lbl_80CE5684
/* 80CE5670  7F C3 F3 78 */	mr r3, r30
/* 80CE5674  38 80 00 00 */	li r4, 0
/* 80CE5678  39 9E 0A F0 */	addi r12, r30, 0xaf0
/* 80CE567C  4B 67 CA 08 */	b __ptmf_scall
/* 80CE5680  60 00 00 00 */	nop 
lbl_80CE5684:
/* 80CE5684  7F C3 F3 78 */	mr r3, r30
/* 80CE5688  48 00 0D 25 */	bl orderEvent__15daObj_SSDrink_cFv
lbl_80CE568C:
/* 80CE568C  7F C3 F3 78 */	mr r3, r30
/* 80CE5690  38 9E 0A 98 */	addi r4, r30, 0xa98
/* 80CE5694  4B 33 50 38 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CE5698  38 7E 05 90 */	addi r3, r30, 0x590
/* 80CE569C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CE56A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CE56A4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CE56A8  4B 39 14 04 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CE56AC  80 1E 06 6C */	lwz r0, 0x66c(r30)
/* 80CE56B0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80CE56B4  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 80CE56B8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80CE56BC  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 80CE56C0  90 1E 0A 64 */	stw r0, 0xa64(r30)
/* 80CE56C4  88 1E 06 78 */	lbz r0, 0x678(r30)
/* 80CE56C8  98 1E 0A 68 */	stb r0, 0xa68(r30)
/* 80CE56CC  A0 1E 06 80 */	lhz r0, 0x680(r30)
/* 80CE56D0  B0 1E 0A 70 */	sth r0, 0xa70(r30)
/* 80CE56D4  A0 1E 06 82 */	lhz r0, 0x682(r30)
/* 80CE56D8  B0 1E 0A 72 */	sth r0, 0xa72(r30)
/* 80CE56DC  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 80CE56E0  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 80CE56E4  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80CE56E8  90 1E 0A 78 */	stw r0, 0xa78(r30)
/* 80CE56EC  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80CE56F0  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80CE56F4  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80CE56F8  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80CE56FC  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 80CE5700  D0 1E 0A 88 */	stfs f0, 0xa88(r30)
/* 80CE5704  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 80CE5708  90 1E 0A 8C */	stw r0, 0xa8c(r30)
/* 80CE570C  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80CE5710  D0 1E 0A 90 */	stfs f0, 0xa90(r30)
/* 80CE5714  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 80CE5718  90 1E 0A 94 */	stw r0, 0xa94(r30)
/* 80CE571C  C0 1E 06 28 */	lfs f0, 0x628(r30)
/* 80CE5720  D0 1E 0A FC */	stfs f0, 0xafc(r30)
/* 80CE5724  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CE5728  C0 1E 0A FC */	lfs f0, 0xafc(r30)
/* 80CE572C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CE5730  41 82 00 14 */	beq lbl_80CE5744
/* 80CE5734  7F C3 F3 78 */	mr r3, r30
/* 80CE5738  48 00 08 AD */	bl setEnvTevColor__15daObj_SSDrink_cFv
/* 80CE573C  7F C3 F3 78 */	mr r3, r30
/* 80CE5740  48 00 09 01 */	bl setRoomNo__15daObj_SSDrink_cFv
lbl_80CE5744:
/* 80CE5744  7F C3 F3 78 */	mr r3, r30
/* 80CE5748  48 00 0A 9D */	bl animePlay__15daObj_SSDrink_cFv
/* 80CE574C  7F C3 F3 78 */	mr r3, r30
/* 80CE5750  48 00 09 35 */	bl setMtx__15daObj_SSDrink_cFv
/* 80CE5754  3C 60 80 CE */	lis r3, lit_4020@ha
/* 80CE5758  38 83 6A 30 */	addi r4, r3, lit_4020@l
/* 80CE575C  80 64 00 00 */	lwz r3, 0(r4)
/* 80CE5760  80 04 00 04 */	lwz r0, 4(r4)
/* 80CE5764  90 61 00 08 */	stw r3, 8(r1)
/* 80CE5768  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE576C  80 04 00 08 */	lwz r0, 8(r4)
/* 80CE5770  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE5774  7F C3 F3 78 */	mr r3, r30
/* 80CE5778  38 81 00 08 */	addi r4, r1, 8
/* 80CE577C  48 00 06 35 */	bl checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE5780  2C 03 00 00 */	cmpwi r3, 0
/* 80CE5784  40 82 00 B0 */	bne lbl_80CE5834
/* 80CE5788  38 00 00 00 */	li r0, 0
/* 80CE578C  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80CE5790  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80CE5794  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80CE5798  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80CE579C  38 00 00 1F */	li r0, 0x1f
/* 80CE57A0  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80CE57A4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80CE57A8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CE57AC  4B 58 9A 54 */	b SetR__8cM3dGCylFf
/* 80CE57B0  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80CE57B4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CE57B8  4B 58 9A 40 */	b SetH__8cM3dGCylFf
/* 80CE57BC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CE57C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CE57C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CE57C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CE57CC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CE57D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CE57D4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80CE57D8  38 81 00 14 */	addi r4, r1, 0x14
/* 80CE57DC  4B 58 9A 00 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CE57E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE57E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE57E8  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80CE57EC  7F A3 EB 78 */	mr r3, r29
/* 80CE57F0  38 9E 09 20 */	addi r4, r30, 0x920
/* 80CE57F4  4B 57 F3 B4 */	b Set__4cCcSFP8cCcD_Obj
/* 80CE57F8  38 00 00 00 */	li r0, 0
/* 80CE57FC  90 1E 07 F4 */	stw r0, 0x7f4(r30)
/* 80CE5800  90 1E 07 E4 */	stw r0, 0x7e4(r30)
/* 80CE5804  38 7E 09 08 */	addi r3, r30, 0x908
/* 80CE5808  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CE580C  4B 58 99 F4 */	b SetR__8cM3dGCylFf
/* 80CE5810  38 7E 09 08 */	addi r3, r30, 0x908
/* 80CE5814  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CE5818  4B 58 99 E0 */	b SetH__8cM3dGCylFf
/* 80CE581C  38 7E 09 08 */	addi r3, r30, 0x908
/* 80CE5820  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CE5824  4B 58 99 B8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CE5828  7F A3 EB 78 */	mr r3, r29
/* 80CE582C  38 9E 07 E4 */	addi r4, r30, 0x7e4
/* 80CE5830  4B 57 F3 78 */	b Set__4cCcSFP8cCcD_Obj
lbl_80CE5834:
/* 80CE5834  7F C3 F3 78 */	mr r3, r30
/* 80CE5838  48 00 08 B1 */	bl setAttnPos__15daObj_SSDrink_cFv
/* 80CE583C  38 60 00 01 */	li r3, 1
/* 80CE5840  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE5844  4B 67 C9 E4 */	b _restgpr_29
/* 80CE5848  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE584C  7C 08 03 A6 */	mtlr r0
/* 80CE5850  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE5854  4E 80 00 20 */	blr 
