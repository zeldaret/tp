lbl_80CCB66C:
/* 80CCB66C  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 80CCB670  7C 08 02 A6 */	mflr r0
/* 80CCB674  90 01 02 54 */	stw r0, 0x254(r1)
/* 80CCB678  39 61 02 50 */	addi r11, r1, 0x250
/* 80CCB67C  4B 69 6B 51 */	bl _savegpr_25
/* 80CCB680  7C 7B 1B 78 */	mr r27, r3
/* 80CCB684  3C 80 80 CD */	lis r4, lit_3832@ha /* 0x80CCCC38@ha */
/* 80CCB688  3B E4 CC 38 */	addi r31, r4, lit_3832@l /* 0x80CCCC38@l */
/* 80CCB68C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CCB690  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CCB694  40 82 00 1C */	bne lbl_80CCB6B0
/* 80CCB698  28 1B 00 00 */	cmplwi r27, 0
/* 80CCB69C  41 82 00 08 */	beq lbl_80CCB6A4
/* 80CCB6A0  4B FF FC C5 */	bl __ct__17daObjSCannonTen_cFv
lbl_80CCB6A4:
/* 80CCB6A4  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80CCB6A8  60 00 00 08 */	ori r0, r0, 8
/* 80CCB6AC  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80CCB6B0:
/* 80CCB6B0  7F 63 DB 78 */	mr r3, r27
/* 80CCB6B4  28 1B 00 00 */	cmplwi r27, 0
/* 80CCB6B8  41 82 00 08 */	beq lbl_80CCB6C0
/* 80CCB6BC  38 7B 05 68 */	addi r3, r27, 0x568
lbl_80CCB6C0:
/* 80CCB6C0  3C 80 80 CD */	lis r4, l_arcName@ha /* 0x80CCCCF0@ha */
/* 80CCB6C4  38 84 CC F0 */	addi r4, r4, l_arcName@l /* 0x80CCCCF0@l */
/* 80CCB6C8  80 84 00 00 */	lwz r4, 0(r4)
/* 80CCB6CC  4B 36 17 F1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CCB6D0  7C 7C 1B 78 */	mr r28, r3
/* 80CCB6D4  2C 1C 00 04 */	cmpwi r28, 4
/* 80CCB6D8  40 82 02 0C */	bne lbl_80CCB8E4
/* 80CCB6DC  7F 63 DB 78 */	mr r3, r27
/* 80CCB6E0  3C 80 80 CD */	lis r4, daObjSCannonTen_c_createHeap__FP10fopAc_ac_c@ha /* 0x80CCB344@ha */
/* 80CCB6E4  38 84 B3 44 */	addi r4, r4, daObjSCannonTen_c_createHeap__FP10fopAc_ac_c@l /* 0x80CCB344@l */
/* 80CCB6E8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00009500@ha */
/* 80CCB6EC  38 A5 95 00 */	addi r5, r5, 0x9500 /* 0x00009500@l */
/* 80CCB6F0  4B 34 ED C1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CCB6F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCB6F8  40 82 00 0C */	bne lbl_80CCB704
/* 80CCB6FC  38 60 00 05 */	li r3, 5
/* 80CCB700  48 00 01 E8 */	b lbl_80CCB8E8
lbl_80CCB704:
/* 80CCB704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCB708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCB70C  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 80CCB710  7F 43 D3 78 */	mr r3, r26
/* 80CCB714  80 9B 05 94 */	lwz r4, 0x594(r27)
/* 80CCB718  7F 65 DB 78 */	mr r5, r27
/* 80CCB71C  4B 3A 92 ED */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CCB720  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCB724  41 82 00 0C */	beq lbl_80CCB730
/* 80CCB728  38 60 00 05 */	li r3, 5
/* 80CCB72C  48 00 01 BC */	b lbl_80CCB8E8
lbl_80CCB730:
/* 80CCB730  7F 63 DB 78 */	mr r3, r27
/* 80CCB734  48 00 0D F5 */	bl init__17daObjSCannonTen_cFv
/* 80CCB738  7F 63 DB 78 */	mr r3, r27
/* 80CCB73C  48 00 0E 01 */	bl setModelMtx__17daObjSCannonTen_cFv
/* 80CCB740  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80CCB744  38 03 00 24 */	addi r0, r3, 0x24
/* 80CCB748  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80CCB74C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CCB750  D0 1B 05 20 */	stfs f0, 0x520(r27)
/* 80CCB754  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80CCB758  80 63 00 04 */	lwz r3, 4(r3)
/* 80CCB75C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CCB760  80 83 00 00 */	lwz r4, 0(r3)
/* 80CCB764  28 04 00 00 */	cmplwi r4, 0
/* 80CCB768  41 82 00 38 */	beq lbl_80CCB7A0
/* 80CCB76C  7F 63 DB 78 */	mr r3, r27
/* 80CCB770  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80CCB774  C0 DF 00 08 */	lfs f6, 8(r31)
/* 80CCB778  EC 20 30 28 */	fsubs f1, f0, f6
/* 80CCB77C  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80CCB780  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80CCB784  EC 60 30 28 */	fsubs f3, f0, f6
/* 80CCB788  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80CCB78C  EC 86 00 2A */	fadds f4, f6, f0
/* 80CCB790  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80CCB794  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80CCB798  EC C6 00 2A */	fadds f6, f6, f0
/* 80CCB79C  4B 34 ED AD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_80CCB7A0:
/* 80CCB7A0  38 61 00 10 */	addi r3, r1, 0x10
/* 80CCB7A4  4B 3A A7 09 */	bl __ct__12dBgS_AcchCirFv
/* 80CCB7A8  3B 21 00 50 */	addi r25, r1, 0x50
/* 80CCB7AC  7F 23 CB 78 */	mr r3, r25
/* 80CCB7B0  4B 3A A8 F1 */	bl __ct__9dBgS_AcchFv
/* 80CCB7B4  3C 60 80 CD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CCCEF0@ha */
/* 80CCB7B8  38 63 CE F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CCCEF0@l */
/* 80CCB7BC  90 61 00 60 */	stw r3, 0x60(r1)
/* 80CCB7C0  3B C3 00 0C */	addi r30, r3, 0xc
/* 80CCB7C4  93 C1 00 64 */	stw r30, 0x64(r1)
/* 80CCB7C8  3B A3 00 18 */	addi r29, r3, 0x18
/* 80CCB7CC  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80CCB7D0  38 79 00 14 */	addi r3, r25, 0x14
/* 80CCB7D4  4B 3A D6 95 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CCB7D8  38 61 00 10 */	addi r3, r1, 0x10
/* 80CCB7DC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CCB7E0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CCB7E4  4B 3A A7 75 */	bl SetWall__12dBgS_AcchCirFff
/* 80CCB7E8  38 00 00 00 */	li r0, 0
/* 80CCB7EC  90 01 00 08 */	stw r0, 8(r1)
/* 80CCB7F0  7F 23 CB 78 */	mr r3, r25
/* 80CCB7F4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80CCB7F8  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 80CCB7FC  7F 66 DB 78 */	mr r6, r27
/* 80CCB800  38 E0 00 01 */	li r7, 1
/* 80CCB804  39 01 00 10 */	addi r8, r1, 0x10
/* 80CCB808  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 80CCB80C  39 40 00 00 */	li r10, 0
/* 80CCB810  4B 3A AA 39 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CCB814  7F 23 CB 78 */	mr r3, r25
/* 80CCB818  7F 44 D3 78 */	mr r4, r26
/* 80CCB81C  4B 3A B2 91 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CCB820  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80CCB824  D0 1B 05 D8 */	stfs f0, 0x5d8(r27)
/* 80CCB828  A0 01 01 40 */	lhz r0, 0x140(r1)
/* 80CCB82C  B0 1B 05 98 */	sth r0, 0x598(r27)
/* 80CCB830  A0 01 01 42 */	lhz r0, 0x142(r1)
/* 80CCB834  B0 1B 05 9A */	sth r0, 0x59a(r27)
/* 80CCB838  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80CCB83C  90 1B 05 9C */	stw r0, 0x59c(r27)
/* 80CCB840  80 01 01 48 */	lwz r0, 0x148(r1)
/* 80CCB844  90 1B 05 A0 */	stw r0, 0x5a0(r27)
/* 80CCB848  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80CCB84C  80 63 00 04 */	lwz r3, 4(r3)
/* 80CCB850  83 43 00 54 */	lwz r26, 0x54(r3)
/* 80CCB854  3B 20 00 00 */	li r25, 0
/* 80CCB858  3C 60 80 CD */	lis r3, d_a_obj_scannon_ten__stringBase0@ha /* 0x80CCCC80@ha */
/* 80CCB85C  3B E3 CC 80 */	addi r31, r3, d_a_obj_scannon_ten__stringBase0@l /* 0x80CCCC80@l */
/* 80CCB860  48 00 00 2C */	b lbl_80CCB88C
lbl_80CCB864:
/* 80CCB864  7F 43 D3 78 */	mr r3, r26
/* 80CCB868  57 24 04 3E */	clrlwi r4, r25, 0x10
/* 80CCB86C  4B 61 32 8D */	bl getName__10JUTNameTabCFUs
/* 80CCB870  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80CCB874  4B 69 D1 21 */	bl strcmp
/* 80CCB878  2C 03 00 00 */	cmpwi r3, 0
/* 80CCB87C  40 82 00 0C */	bne lbl_80CCB888
/* 80CCB880  B3 3B 05 EE */	sth r25, 0x5ee(r27)
/* 80CCB884  48 00 00 1C */	b lbl_80CCB8A0
lbl_80CCB888:
/* 80CCB888  3B 39 00 01 */	addi r25, r25, 1
lbl_80CCB88C:
/* 80CCB88C  80 7B 05 74 */	lwz r3, 0x574(r27)
/* 80CCB890  80 63 00 04 */	lwz r3, 4(r3)
/* 80CCB894  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 80CCB898  7C 19 00 00 */	cmpw r25, r0
/* 80CCB89C  41 80 FF C8 */	blt lbl_80CCB864
lbl_80CCB8A0:
/* 80CCB8A0  3C 60 80 CD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CCCEF0@ha */
/* 80CCB8A4  38 03 CE F0 */	addi r0, r3, __vt__12dBgS_ObjAcch@l /* 0x80CCCEF0@l */
/* 80CCB8A8  90 01 00 60 */	stw r0, 0x60(r1)
/* 80CCB8AC  93 C1 00 64 */	stw r30, 0x64(r1)
/* 80CCB8B0  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80CCB8B4  38 61 00 50 */	addi r3, r1, 0x50
/* 80CCB8B8  38 80 00 00 */	li r4, 0
/* 80CCB8BC  4B 3A A6 D9 */	bl __dt__9dBgS_AcchFv
/* 80CCB8C0  3C 60 80 CD */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CCCEE4@ha */
/* 80CCB8C4  38 03 CE E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CCCEE4@l */
/* 80CCB8C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CCB8CC  38 61 00 24 */	addi r3, r1, 0x24
/* 80CCB8D0  38 80 FF FF */	li r4, -1
/* 80CCB8D4  4B 5A 36 45 */	bl __dt__8cM3dGCirFv
/* 80CCB8D8  38 61 00 10 */	addi r3, r1, 0x10
/* 80CCB8DC  38 80 00 00 */	li r4, 0
/* 80CCB8E0  4B 59 C7 D1 */	bl __dt__13cBgS_PolyInfoFv
lbl_80CCB8E4:
/* 80CCB8E4  7F 83 E3 78 */	mr r3, r28
lbl_80CCB8E8:
/* 80CCB8E8  39 61 02 50 */	addi r11, r1, 0x250
/* 80CCB8EC  4B 69 69 2D */	bl _restgpr_25
/* 80CCB8F0  80 01 02 54 */	lwz r0, 0x254(r1)
/* 80CCB8F4  7C 08 03 A6 */	mtlr r0
/* 80CCB8F8  38 21 02 50 */	addi r1, r1, 0x250
/* 80CCB8FC  4E 80 00 20 */	blr 
