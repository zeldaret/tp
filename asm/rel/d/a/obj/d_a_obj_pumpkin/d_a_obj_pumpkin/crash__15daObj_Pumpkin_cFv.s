lbl_80CB7EF4:
/* 80CB7EF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CB7EF8  7C 08 02 A6 */	mflr r0
/* 80CB7EFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CB7F00  39 61 00 50 */	addi r11, r1, 0x50
/* 80CB7F04  4B 6A A2 D9 */	bl _savegpr_29
/* 80CB7F08  7C 7E 1B 78 */	mr r30, r3
/* 80CB7F0C  3C 60 80 CC */	lis r3, m__21daObj_Pumpkin_Param_c@ha /* 0x80CB8370@ha */
/* 80CB7F10  3B E3 83 70 */	addi r31, r3, m__21daObj_Pumpkin_Param_c@l /* 0x80CB8370@l */
/* 80CB7F14  38 00 00 00 */	li r0, 0
/* 80CB7F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB7F1C  38 60 02 58 */	li r3, 0x258
/* 80CB7F20  38 81 00 24 */	addi r4, r1, 0x24
/* 80CB7F24  4B 36 1B 09 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80CB7F28  2C 03 00 00 */	cmpwi r3, 0
/* 80CB7F2C  41 82 00 D8 */	beq lbl_80CB8004
/* 80CB7F30  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80CB7F34  28 1D 00 00 */	cmplwi r29, 0
/* 80CB7F38  41 82 00 CC */	beq lbl_80CB8004
/* 80CB7F3C  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80CB7F40  28 00 00 00 */	cmplwi r0, 0
/* 80CB7F44  40 82 00 C0 */	bne lbl_80CB8004
/* 80CB7F48  A8 1E 00 08 */	lha r0, 8(r30)
/* 80CB7F4C  2C 00 02 F8 */	cmpwi r0, 0x2f8
/* 80CB7F50  40 82 00 B4 */	bne lbl_80CB8004
/* 80CB7F54  38 60 00 AE */	li r3, 0xae
/* 80CB7F58  4B 49 4B 55 */	bl daNpcT_chkEvtBit__FUl
/* 80CB7F5C  2C 03 00 00 */	cmpwi r3, 0
/* 80CB7F60  40 82 00 A4 */	bne lbl_80CB8004
/* 80CB7F64  38 60 02 5B */	li r3, 0x25b
/* 80CB7F68  4B 49 4B 45 */	bl daNpcT_chkEvtBit__FUl
/* 80CB7F6C  2C 03 00 00 */	cmpwi r3, 0
/* 80CB7F70  41 82 00 94 */	beq lbl_80CB8004
/* 80CB7F74  38 60 02 35 */	li r3, 0x235
/* 80CB7F78  4B 49 4B 35 */	bl daNpcT_chkEvtBit__FUl
/* 80CB7F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80CB7F80  40 82 00 84 */	bne lbl_80CB8004
/* 80CB7F84  80 7D 0F FC */	lwz r3, 0xffc(r29)
/* 80CB7F88  38 03 00 01 */	addi r0, r3, 1
/* 80CB7F8C  90 1D 0F FC */	stw r0, 0xffc(r29)
/* 80CB7F90  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CB7F94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CB7F98  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CB7F9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CB7FA0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CB7FA4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CB7FA8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CB7FAC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CB7FB0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CB7FB4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CB7FB8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CB7FBC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CB7FC0  7F A3 EB 78 */	mr r3, r29
/* 80CB7FC4  38 81 00 28 */	addi r4, r1, 0x28
/* 80CB7FC8  38 A1 00 34 */	addi r5, r1, 0x34
/* 80CB7FCC  3C C0 80 A2 */	lis r6, m__19daNpc_Jagar_Param_c@ha /* 0x80A1A330@ha */
/* 80CB7FD0  38 C6 A3 30 */	addi r6, r6, m__19daNpc_Jagar_Param_c@l /* 0x80A1A330@l */
/* 80CB7FD4  C0 26 00 8C */	lfs f1, 0x8c(r6)
/* 80CB7FD8  C0 46 00 90 */	lfs f2, 0x90(r6)
/* 80CB7FDC  C0 66 00 94 */	lfs f3, 0x94(r6)
/* 80CB7FE0  38 C0 00 00 */	li r6, 0
/* 80CB7FE4  4B 49 2D 0D */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80CB7FE8  2C 03 00 00 */	cmpwi r3, 0
/* 80CB7FEC  41 82 00 18 */	beq lbl_80CB8004
/* 80CB7FF0  80 1D 0F FC */	lwz r0, 0xffc(r29)
/* 80CB7FF4  2C 00 00 04 */	cmpwi r0, 4
/* 80CB7FF8  41 80 00 0C */	blt lbl_80CB8004
/* 80CB7FFC  38 60 00 1B */	li r3, 0x1b
/* 80CB8000  4B 49 4A ED */	bl daNpcT_onTmpBit__FUl
lbl_80CB8004:
/* 80CB8004  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CB8008  7C 03 07 74 */	extsb r3, r0
/* 80CB800C  4B 37 50 61 */	bl dComIfGp_getReverb__Fi
/* 80CB8010  7C 67 1B 78 */	mr r7, r3
/* 80CB8014  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800A9@ha */
/* 80CB8018  38 03 00 A9 */	addi r0, r3, 0x00A9 /* 0x000800A9@l */
/* 80CB801C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CB8020  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB8024  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB8028  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB802C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CB8030  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CB8034  38 C0 00 00 */	li r6, 0
/* 80CB8038  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CB803C  FC 40 08 90 */	fmr f2, f1
/* 80CB8040  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80CB8044  FC 80 18 90 */	fmr f4, f3
/* 80CB8048  39 00 00 00 */	li r8, 0
/* 80CB804C  4B 5F 39 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB8050  88 1E 0B A8 */	lbz r0, 0xba8(r30)
/* 80CB8054  28 00 00 00 */	cmplwi r0, 0
/* 80CB8058  41 82 00 AC */	beq lbl_80CB8104
/* 80CB805C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8060  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB8064  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CB8068  38 00 00 FF */	li r0, 0xff
/* 80CB806C  90 01 00 08 */	stw r0, 8(r1)
/* 80CB8070  38 80 00 00 */	li r4, 0
/* 80CB8074  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB8078  38 00 FF FF */	li r0, -1
/* 80CB807C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB8080  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB8084  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB8088  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB808C  38 80 FF FF */	li r4, -1
/* 80CB8090  38 A0 00 00 */	li r5, 0
/* 80CB8094  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008241@ha */
/* 80CB8098  38 C6 82 41 */	addi r6, r6, 0x8241 /* 0x00008241@l */
/* 80CB809C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80CB80A0  39 00 00 00 */	li r8, 0
/* 80CB80A4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80CB80A8  39 5E 04 EC */	addi r10, r30, 0x4ec
/* 80CB80AC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CB80B0  4B 39 54 1D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB80B4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80CB80B8  38 00 00 FF */	li r0, 0xff
/* 80CB80BC  90 01 00 08 */	stw r0, 8(r1)
/* 80CB80C0  38 80 00 00 */	li r4, 0
/* 80CB80C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB80C8  38 00 FF FF */	li r0, -1
/* 80CB80CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB80D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB80D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB80D8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB80DC  38 80 FF FF */	li r4, -1
/* 80CB80E0  38 A0 00 00 */	li r5, 0
/* 80CB80E4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008242@ha */
/* 80CB80E8  38 C6 82 42 */	addi r6, r6, 0x8242 /* 0x00008242@l */
/* 80CB80EC  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80CB80F0  39 00 00 00 */	li r8, 0
/* 80CB80F4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80CB80F8  39 5E 04 EC */	addi r10, r30, 0x4ec
/* 80CB80FC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CB8100  4B 39 53 CD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CB8104:
/* 80CB8104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB810C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CB8110  38 00 00 FF */	li r0, 0xff
/* 80CB8114  90 01 00 08 */	stw r0, 8(r1)
/* 80CB8118  38 80 00 00 */	li r4, 0
/* 80CB811C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB8120  38 00 FF FF */	li r0, -1
/* 80CB8124  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB8128  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB812C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB8130  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB8134  38 80 FF FF */	li r4, -1
/* 80CB8138  38 A0 00 00 */	li r5, 0
/* 80CB813C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008240@ha */
/* 80CB8140  38 C6 82 40 */	addi r6, r6, 0x8240 /* 0x00008240@l */
/* 80CB8144  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80CB8148  39 00 00 00 */	li r8, 0
/* 80CB814C  39 20 00 00 */	li r9, 0
/* 80CB8150  39 5E 04 EC */	addi r10, r30, 0x4ec
/* 80CB8154  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CB8158  4B 39 53 75 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB815C  7F C3 F3 78 */	mr r3, r30
/* 80CB8160  4B FF F8 09 */	bl reset__15daObj_Pumpkin_cFv
/* 80CB8164  38 7E 07 50 */	addi r3, r30, 0x750
/* 80CB8168  4B 5A B7 F5 */	bl ClrCcMove__9cCcD_SttsFv
/* 80CB816C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80CB8170  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CB8174  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80CB8178  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CB817C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80CB8180  38 00 00 01 */	li r0, 1
/* 80CB8184  98 1E 0B B0 */	stb r0, 0xbb0(r30)
/* 80CB8188  98 1E 0B AE */	stb r0, 0xbae(r30)
/* 80CB818C  39 61 00 50 */	addi r11, r1, 0x50
/* 80CB8190  4B 6A A0 99 */	bl _restgpr_29
/* 80CB8194  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CB8198  7C 08 03 A6 */	mtlr r0
/* 80CB819C  38 21 00 50 */	addi r1, r1, 0x50
/* 80CB81A0  4E 80 00 20 */	blr 
