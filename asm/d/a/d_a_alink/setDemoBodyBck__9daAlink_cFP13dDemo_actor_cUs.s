lbl_801189F8:
/* 801189F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801189FC  7C 08 02 A6 */	mflr r0
/* 80118A00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80118A04  39 61 00 20 */	addi r11, r1, 0x20
/* 80118A08  48 24 97 D5 */	bl _savegpr_29
/* 80118A0C  7C 7D 1B 78 */	mr r29, r3
/* 80118A10  7C 9E 23 78 */	mr r30, r4
/* 80118A14  38 7D 1F 58 */	addi r3, r29, 0x1f58
/* 80118A18  7C A4 2B 78 */	mr r4, r5
/* 80118A1C  38 A0 00 00 */	li r5, 0
/* 80118A20  48 04 66 F9 */	bl loadDataDemoRID__14daPy_anmHeap_cFUsUs
/* 80118A24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80118A28  41 82 00 90 */	beq lbl_80118AB8
/* 80118A2C  7F A3 EB 78 */	mr r3, r29
/* 80118A30  38 9D 1F D0 */	addi r4, r29, 0x1fd0
/* 80118A34  88 BF 00 04 */	lbz r5, 4(r31)
/* 80118A38  38 C0 00 00 */	li r6, 0
/* 80118A3C  A8 FF 00 06 */	lha r7, 6(r31)
/* 80118A40  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80118A44  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 80118A48  4B F9 39 4D */	bl setFrameCtrl__9daAlink_cFP16daPy_frameCtrl_cUcssff
/* 80118A4C  93 FD 1F 2C */	stw r31, 0x1f2c(r29)
/* 80118A50  93 FD 1F 44 */	stw r31, 0x1f44(r29)
/* 80118A54  80 6D 88 A0 */	lwz r3, m_object__7dDemo_c(r13)
/* 80118A58  88 9D 04 98 */	lbz r4, 0x498(r29)
/* 80118A5C  4B F2 06 2D */	bl getActor__14dDemo_object_cFUc
/* 80118A60  A0 03 00 04 */	lhz r0, 4(r3)
/* 80118A64  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80118A68  41 82 00 18 */	beq lbl_80118A80
/* 80118A6C  4B F1 F7 31 */	bl getPrm_Morf__13dDemo_actor_cFv
/* 80118A70  80 7D 20 60 */	lwz r3, 0x2060(r29)
/* 80118A74  38 80 00 00 */	li r4, 0
/* 80118A78  A0 BD 30 C6 */	lhz r5, 0x30c6(r29)
/* 80118A7C  4B EF 6D CD */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_80118A80:
/* 80118A80  38 00 00 00 */	li r0, 0
/* 80118A84  98 1D 2F 8C */	stb r0, 0x2f8c(r29)
/* 80118A88  A8 1F 00 06 */	lha r0, 6(r31)
/* 80118A8C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80118A90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80118A94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80118A98  3C 00 43 30 */	lis r0, 0x4330
/* 80118A9C  90 01 00 08 */	stw r0, 8(r1)
/* 80118AA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80118AA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80118AA8  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80118AAC  7F A3 EB 78 */	mr r3, r29
/* 80118AB0  38 80 00 00 */	li r4, 0
/* 80118AB4  4B FA 67 51 */	bl setBasAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDER
lbl_80118AB8:
/* 80118AB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80118ABC  48 24 97 6D */	bl _restgpr_29
/* 80118AC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80118AC4  7C 08 03 A6 */	mtlr r0
/* 80118AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80118ACC  4E 80 00 20 */	blr 
