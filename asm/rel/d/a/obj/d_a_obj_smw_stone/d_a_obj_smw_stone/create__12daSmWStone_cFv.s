lbl_80CDE614:
/* 80CDE614  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 80CDE618  7C 08 02 A6 */	mflr r0
/* 80CDE61C  90 01 02 44 */	stw r0, 0x244(r1)
/* 80CDE620  39 61 02 40 */	addi r11, r1, 0x240
/* 80CDE624  4B 68 3B AC */	b _savegpr_26
/* 80CDE628  7C 7E 1B 78 */	mr r30, r3
/* 80CDE62C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDE630  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDE634  40 82 00 1C */	bne lbl_80CDE650
/* 80CDE638  28 1E 00 00 */	cmplwi r30, 0
/* 80CDE63C  41 82 00 08 */	beq lbl_80CDE644
/* 80CDE640  4B FF FE F9 */	bl __ct__12daSmWStone_cFv
lbl_80CDE644:
/* 80CDE644  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CDE648  60 00 00 08 */	ori r0, r0, 8
/* 80CDE64C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CDE650:
/* 80CDE650  7F C3 F3 78 */	mr r3, r30
/* 80CDE654  28 1E 00 00 */	cmplwi r30, 0
/* 80CDE658  41 82 00 08 */	beq lbl_80CDE660
/* 80CDE65C  38 7E 05 68 */	addi r3, r30, 0x568
lbl_80CDE660:
/* 80CDE660  3C 80 80 CE */	lis r4, l_arcName@ha
/* 80CDE664  38 84 EF 1C */	addi r4, r4, l_arcName@l
/* 80CDE668  80 84 00 00 */	lwz r4, 0(r4)
/* 80CDE66C  4B 34 E8 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CDE670  7C 7F 1B 78 */	mr r31, r3
/* 80CDE674  2C 1F 00 04 */	cmpwi r31, 4
/* 80CDE678  40 82 01 64 */	bne lbl_80CDE7DC
/* 80CDE67C  7F C3 F3 78 */	mr r3, r30
/* 80CDE680  3C 80 80 CE */	lis r4, daSmWStone_c_createHeap__FP10fopAc_ac_c@ha
/* 80CDE684  38 84 E5 18 */	addi r4, r4, daSmWStone_c_createHeap__FP10fopAc_ac_c@l
/* 80CDE688  38 A0 10 00 */	li r5, 0x1000
/* 80CDE68C  4B 33 BE 24 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CDE690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDE694  40 82 00 0C */	bne lbl_80CDE6A0
/* 80CDE698  38 60 00 05 */	li r3, 5
/* 80CDE69C  48 00 01 44 */	b lbl_80CDE7E0
lbl_80CDE6A0:
/* 80CDE6A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDE6A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDE6A8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CDE6AC  7F A3 EB 78 */	mr r3, r29
/* 80CDE6B0  80 9E 05 88 */	lwz r4, 0x588(r30)
/* 80CDE6B4  7F C5 F3 78 */	mr r5, r30
/* 80CDE6B8  4B 39 63 50 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CDE6BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDE6C0  41 82 00 0C */	beq lbl_80CDE6CC
/* 80CDE6C4  38 60 00 05 */	li r3, 5
/* 80CDE6C8  48 00 01 18 */	b lbl_80CDE7E0
lbl_80CDE6CC:
/* 80CDE6CC  7F C3 F3 78 */	mr r3, r30
/* 80CDE6D0  48 00 06 61 */	bl init__12daSmWStone_cFv
/* 80CDE6D4  7F C3 F3 78 */	mr r3, r30
/* 80CDE6D8  48 00 04 C9 */	bl setModelMtx__12daSmWStone_cFv
/* 80CDE6DC  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CDE6E0  38 03 00 24 */	addi r0, r3, 0x24
/* 80CDE6E4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CDE6E8  38 61 00 10 */	addi r3, r1, 0x10
/* 80CDE6EC  4B 39 77 C0 */	b __ct__12dBgS_AcchCirFv
/* 80CDE6F0  3B 41 00 50 */	addi r26, r1, 0x50
/* 80CDE6F4  7F 43 D3 78 */	mr r3, r26
/* 80CDE6F8  4B 39 79 A8 */	b __ct__9dBgS_AcchFv
/* 80CDE6FC  3C 60 80 CE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CDE700  38 63 EF 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CDE704  90 61 00 60 */	stw r3, 0x60(r1)
/* 80CDE708  3B 83 00 0C */	addi r28, r3, 0xc
/* 80CDE70C  93 81 00 64 */	stw r28, 0x64(r1)
/* 80CDE710  3B 63 00 18 */	addi r27, r3, 0x18
/* 80CDE714  93 61 00 74 */	stw r27, 0x74(r1)
/* 80CDE718  38 7A 00 14 */	addi r3, r26, 0x14
/* 80CDE71C  4B 39 A7 4C */	b SetObj__16dBgS_PolyPassChkFv
/* 80CDE720  38 61 00 10 */	addi r3, r1, 0x10
/* 80CDE724  3C 80 80 CE */	lis r4, lit_4191@ha
/* 80CDE728  C0 24 EF 00 */	lfs f1, lit_4191@l(r4)
/* 80CDE72C  3C 80 80 CE */	lis r4, lit_4192@ha
/* 80CDE730  C0 44 EF 04 */	lfs f2, lit_4192@l(r4)
/* 80CDE734  4B 39 78 24 */	b SetWall__12dBgS_AcchCirFff
/* 80CDE738  38 00 00 00 */	li r0, 0
/* 80CDE73C  90 01 00 08 */	stw r0, 8(r1)
/* 80CDE740  7F 43 D3 78 */	mr r3, r26
/* 80CDE744  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CDE748  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80CDE74C  7F C6 F3 78 */	mr r6, r30
/* 80CDE750  38 E0 00 01 */	li r7, 1
/* 80CDE754  39 01 00 10 */	addi r8, r1, 0x10
/* 80CDE758  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80CDE75C  39 40 00 00 */	li r10, 0
/* 80CDE760  4B 39 7A E8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CDE764  7F 43 D3 78 */	mr r3, r26
/* 80CDE768  7F A4 EB 78 */	mr r4, r29
/* 80CDE76C  4B 39 83 40 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CDE770  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80CDE774  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80CDE778  A0 01 01 40 */	lhz r0, 0x140(r1)
/* 80CDE77C  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 80CDE780  A0 01 01 42 */	lhz r0, 0x142(r1)
/* 80CDE784  B0 1E 05 76 */	sth r0, 0x576(r30)
/* 80CDE788  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80CDE78C  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80CDE790  80 01 01 48 */	lwz r0, 0x148(r1)
/* 80CDE794  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80CDE798  3C 60 80 CE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CDE79C  38 03 EF 7C */	addi r0, r3, __vt__12dBgS_ObjAcch@l
/* 80CDE7A0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80CDE7A4  93 81 00 64 */	stw r28, 0x64(r1)
/* 80CDE7A8  93 61 00 74 */	stw r27, 0x74(r1)
/* 80CDE7AC  7F 43 D3 78 */	mr r3, r26
/* 80CDE7B0  38 80 00 00 */	li r4, 0
/* 80CDE7B4  4B 39 77 E0 */	b __dt__9dBgS_AcchFv
/* 80CDE7B8  3C 60 80 CE */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CDE7BC  38 03 EF 70 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CDE7C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CDE7C4  38 61 00 24 */	addi r3, r1, 0x24
/* 80CDE7C8  38 80 FF FF */	li r4, -1
/* 80CDE7CC  4B 59 07 4C */	b __dt__8cM3dGCirFv
/* 80CDE7D0  38 61 00 10 */	addi r3, r1, 0x10
/* 80CDE7D4  38 80 00 00 */	li r4, 0
/* 80CDE7D8  4B 58 98 D8 */	b __dt__13cBgS_PolyInfoFv
lbl_80CDE7DC:
/* 80CDE7DC  7F E3 FB 78 */	mr r3, r31
lbl_80CDE7E0:
/* 80CDE7E0  39 61 02 40 */	addi r11, r1, 0x240
/* 80CDE7E4  4B 68 3A 38 */	b _restgpr_26
/* 80CDE7E8  80 01 02 44 */	lwz r0, 0x244(r1)
/* 80CDE7EC  7C 08 03 A6 */	mtlr r0
/* 80CDE7F0  38 21 02 40 */	addi r1, r1, 0x240
/* 80CDE7F4  4E 80 00 20 */	blr 
