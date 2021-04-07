lbl_80BB56F0:
/* 80BB56F0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BB56F4  7C 08 02 A6 */	mflr r0
/* 80BB56F8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BB56FC  39 61 00 80 */	addi r11, r1, 0x80
/* 80BB5700  4B 7A CA D9 */	bl _savegpr_28
/* 80BB5704  3C 80 80 BB */	lis r4, lit_3655@ha /* 0x80BB5F00@ha */
/* 80BB5708  3B E4 5F 00 */	addi r31, r4, lit_3655@l /* 0x80BB5F00@l */
/* 80BB570C  7C 7E 1B 78 */	mr r30, r3
/* 80BB5710  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BB5714  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BB5718  40 82 00 64 */	bne lbl_80BB577C
/* 80BB571C  7F C0 F3 79 */	or. r0, r30, r30
/* 80BB5720  41 82 00 50 */	beq lbl_80BB5770
/* 80BB5724  7C 1C 03 78 */	mr r28, r0
/* 80BB5728  4B 4C 2E FD */	bl __ct__16dBgS_MoveBgActorFv
/* 80BB572C  3C 60 80 BB */	lis r3, __vt__15daObjBhbridge_c@ha /* 0x80BB6024@ha */
/* 80BB5730  38 03 60 24 */	addi r0, r3, __vt__15daObjBhbridge_c@l /* 0x80BB6024@l */
/* 80BB5734  90 1C 05 9C */	stw r0, 0x59c(r28)
/* 80BB5738  3B BC 05 F8 */	addi r29, r28, 0x5f8
/* 80BB573C  7F A3 EB 78 */	mr r3, r29
/* 80BB5740  4B 4C 09 61 */	bl __ct__9dBgS_AcchFv
/* 80BB5744  3C 60 80 BB */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BB6000@ha */
/* 80BB5748  38 63 60 00 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BB6000@l */
/* 80BB574C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BB5750  38 03 00 0C */	addi r0, r3, 0xc
/* 80BB5754  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BB5758  38 03 00 18 */	addi r0, r3, 0x18
/* 80BB575C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BB5760  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BB5764  4B 4C 37 05 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BB5768  38 7C 07 D0 */	addi r3, r28, 0x7d0
/* 80BB576C  4B 4C 07 41 */	bl __ct__12dBgS_AcchCirFv
lbl_80BB5770:
/* 80BB5770  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BB5774  60 00 00 08 */	ori r0, r0, 8
/* 80BB5778  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BB577C:
/* 80BB577C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80BB5780  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB5FAC@ha */
/* 80BB5784  38 84 5F AC */	addi r4, r4, l_arcName@l /* 0x80BB5FAC@l */
/* 80BB5788  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB578C  4B 47 77 31 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BB5790  7C 7D 1B 78 */	mr r29, r3
/* 80BB5794  2C 1D 00 04 */	cmpwi r29, 4
/* 80BB5798  40 82 01 10 */	bne lbl_80BB58A8
/* 80BB579C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB57A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB57A4  3C 63 00 02 */	addis r3, r3, 2
/* 80BB57A8  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB5FAC@ha */
/* 80BB57AC  38 84 5F AC */	addi r4, r4, l_arcName@l /* 0x80BB5FAC@l */
/* 80BB57B0  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB57B4  3C A0 80 BB */	lis r5, d_a_obj_bhbridge__stringBase0@ha /* 0x80BB5F84@ha */
/* 80BB57B8  38 A5 5F 84 */	addi r5, r5, d_a_obj_bhbridge__stringBase0@l /* 0x80BB5F84@l */
/* 80BB57BC  38 A5 00 09 */	addi r5, r5, 9
/* 80BB57C0  38 63 C2 F8 */	addi r3, r3, -15624
/* 80BB57C4  4B 48 6E F5 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80BB57C8  7C 65 1B 78 */	mr r5, r3
/* 80BB57CC  7F C3 F3 78 */	mr r3, r30
/* 80BB57D0  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB5FAC@ha */
/* 80BB57D4  38 84 5F AC */	addi r4, r4, l_arcName@l /* 0x80BB5FAC@l */
/* 80BB57D8  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB57DC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BB57E0  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BB57E4  38 E0 15 A0 */	li r7, 0x15a0
/* 80BB57E8  39 00 00 00 */	li r8, 0
/* 80BB57EC  4B 4C 2F D1 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BB57F0  7C 7D 1B 78 */	mr r29, r3
/* 80BB57F4  2C 1D 00 05 */	cmpwi r29, 5
/* 80BB57F8  40 82 00 08 */	bne lbl_80BB5800
/* 80BB57FC  48 00 00 AC */	b lbl_80BB58A8
lbl_80BB5800:
/* 80BB5800  38 00 00 00 */	li r0, 0
/* 80BB5804  90 01 00 08 */	stw r0, 8(r1)
/* 80BB5808  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80BB580C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BB5810  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80BB5814  7F C6 F3 78 */	mr r6, r30
/* 80BB5818  38 E0 00 01 */	li r7, 1
/* 80BB581C  39 1E 07 D0 */	addi r8, r30, 0x7d0
/* 80BB5820  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80BB5824  39 40 00 00 */	li r10, 0
/* 80BB5828  4B 4C 0A 21 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BB582C  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80BB5830  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB5834  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB5838  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 80BB583C  7F 84 E3 78 */	mr r4, r28
/* 80BB5840  4B 4C 12 6D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BB5844  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BB5848  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BB584C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BB5850  EC 21 00 2A */	fadds f1, f1, f0
/* 80BB5854  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BB5858  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB585C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BB5860  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BB5864  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BB5868  4B 4C 1F 49 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80BB586C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BB5870  38 81 00 10 */	addi r4, r1, 0x10
/* 80BB5874  4B 6B 24 B5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80BB5878  7F 83 E3 78 */	mr r3, r28
/* 80BB587C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BB5880  4B 4B EC 21 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80BB5884  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BB5888  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BB588C  41 82 00 10 */	beq lbl_80BB589C
/* 80BB5890  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80BB5894  EC 00 08 2A */	fadds f0, f0, f1
/* 80BB5898  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80BB589C:
/* 80BB589C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BB58A0  38 80 FF FF */	li r4, -1
/* 80BB58A4  4B 4C 1F A5 */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_80BB58A8:
/* 80BB58A8  7F A3 EB 78 */	mr r3, r29
/* 80BB58AC  39 61 00 80 */	addi r11, r1, 0x80
/* 80BB58B0  4B 7A C9 75 */	bl _restgpr_28
/* 80BB58B4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BB58B8  7C 08 03 A6 */	mtlr r0
/* 80BB58BC  38 21 00 80 */	addi r1, r1, 0x80
/* 80BB58C0  4E 80 00 20 */	blr 
