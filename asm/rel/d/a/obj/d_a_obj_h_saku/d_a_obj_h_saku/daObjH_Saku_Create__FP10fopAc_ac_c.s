lbl_80C15FC4:
/* 80C15FC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C15FC8  7C 08 02 A6 */	mflr r0
/* 80C15FCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C15FD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C15FD4  4B 74 C2 09 */	bl _savegpr_29
/* 80C15FD8  3C 80 80 C1 */	lis r4, lit_3703@ha /* 0x80C164C8@ha */
/* 80C15FDC  3B E4 64 C8 */	addi r31, r4, lit_3703@l /* 0x80C164C8@l */
/* 80C15FE0  7C 7E 1B 78 */	mr r30, r3
/* 80C15FE4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C15FE8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C15FEC  40 82 00 8C */	bne lbl_80C16078
/* 80C15FF0  7F C0 F3 79 */	or. r0, r30, r30
/* 80C15FF4  41 82 00 78 */	beq lbl_80C1606C
/* 80C15FF8  7C 1D 03 78 */	mr r29, r0
/* 80C15FFC  4B 46 26 29 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C16000  3C 60 80 C1 */	lis r3, __vt__13daObjH_Saku_c@ha /* 0x80C165B8@ha */
/* 80C16004  38 03 65 B8 */	addi r0, r3, __vt__13daObjH_Saku_c@l /* 0x80C165B8@l */
/* 80C16008  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80C1600C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C16010  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C16014  90 1D 06 04 */	stw r0, 0x604(r29)
/* 80C16018  38 7D 06 08 */	addi r3, r29, 0x608
/* 80C1601C  4B 46 D7 45 */	bl __ct__10dCcD_GSttsFv
/* 80C16020  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C16024  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C16028  90 7D 06 04 */	stw r3, 0x604(r29)
/* 80C1602C  38 03 00 20 */	addi r0, r3, 0x20
/* 80C16030  90 1D 06 08 */	stw r0, 0x608(r29)
/* 80C16034  38 7D 06 38 */	addi r3, r29, 0x638
/* 80C16038  4B 45 FE 75 */	bl __ct__12dBgS_AcchCirFv
/* 80C1603C  3B BD 06 78 */	addi r29, r29, 0x678
/* 80C16040  7F A3 EB 78 */	mr r3, r29
/* 80C16044  4B 46 00 5D */	bl __ct__9dBgS_AcchFv
/* 80C16048  3C 60 80 C1 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C16594@ha */
/* 80C1604C  38 63 65 94 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C16594@l */
/* 80C16050  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C16054  38 03 00 0C */	addi r0, r3, 0xc
/* 80C16058  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C1605C  38 03 00 18 */	addi r0, r3, 0x18
/* 80C16060  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C16064  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C16068  4B 46 2E 01 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80C1606C:
/* 80C1606C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C16070  60 00 00 08 */	ori r0, r0, 8
/* 80C16074  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C16078:
/* 80C16078  38 7E 06 30 */	addi r3, r30, 0x630
/* 80C1607C  3C 80 80 C1 */	lis r4, l_arcName@ha /* 0x80C16540@ha */
/* 80C16080  38 84 65 40 */	addi r4, r4, l_arcName@l /* 0x80C16540@l */
/* 80C16084  80 84 00 00 */	lwz r4, 0(r4)
/* 80C16088  4B 41 6E 35 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C1608C  7C 7D 1B 78 */	mr r29, r3
/* 80C16090  2C 1D 00 04 */	cmpwi r29, 4
/* 80C16094  40 82 00 68 */	bne lbl_80C160FC
/* 80C16098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1609C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C160A0  3C 63 00 02 */	addis r3, r3, 2
/* 80C160A4  3C 80 80 C1 */	lis r4, l_arcName@ha /* 0x80C16540@ha */
/* 80C160A8  38 84 65 40 */	addi r4, r4, l_arcName@l /* 0x80C16540@l */
/* 80C160AC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C160B0  3C A0 80 C1 */	lis r5, d_a_obj_h_saku__stringBase0@ha /* 0x80C16520@ha */
/* 80C160B4  38 A5 65 20 */	addi r5, r5, d_a_obj_h_saku__stringBase0@l /* 0x80C16520@l */
/* 80C160B8  38 A5 00 07 */	addi r5, r5, 7
/* 80C160BC  38 63 C2 F8 */	addi r3, r3, -15624
/* 80C160C0  4B 42 65 F9 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80C160C4  7C 65 1B 78 */	mr r5, r3
/* 80C160C8  7F C3 F3 78 */	mr r3, r30
/* 80C160CC  3C 80 80 C1 */	lis r4, l_arcName@ha /* 0x80C16540@ha */
/* 80C160D0  38 84 65 40 */	addi r4, r4, l_arcName@l /* 0x80C16540@l */
/* 80C160D4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C160D8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C160DC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C160E0  38 E0 13 20 */	li r7, 0x1320
/* 80C160E4  39 00 00 00 */	li r8, 0
/* 80C160E8  4B 46 26 D5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C160EC  7C 7D 1B 78 */	mr r29, r3
/* 80C160F0  2C 1D 00 05 */	cmpwi r29, 5
/* 80C160F4  40 82 00 08 */	bne lbl_80C160FC
/* 80C160F8  48 00 00 64 */	b lbl_80C1615C
lbl_80C160FC:
/* 80C160FC  38 00 00 00 */	li r0, 0
/* 80C16100  98 1E 05 DE */	stb r0, 0x5de(r30)
/* 80C16104  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C16108  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C1610C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C16110  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C16114  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C16118  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C1611C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C16120  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C16124  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80C16128  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C1612C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C16130  38 C1 00 08 */	addi r6, r1, 8
/* 80C16134  4B 65 AC 8D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C16138  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C1613C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C16140  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C16144  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C16148  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80C1614C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C16150  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C16154  38 C1 00 08 */	addi r6, r1, 8
/* 80C16158  4B 65 AC 69 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_80C1615C:
/* 80C1615C  7F A3 EB 78 */	mr r3, r29
/* 80C16160  39 61 00 30 */	addi r11, r1, 0x30
/* 80C16164  4B 74 C0 C5 */	bl _restgpr_29
/* 80C16168  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C1616C  7C 08 03 A6 */	mtlr r0
/* 80C16170  38 21 00 30 */	addi r1, r1, 0x30
/* 80C16174  4E 80 00 20 */	blr 
