lbl_80D11228:
/* 80D11228  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1122C  7C 08 02 A6 */	mflr r0
/* 80D11230  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D11234  39 61 00 40 */	addi r11, r1, 0x40
/* 80D11238  4B 65 0F 99 */	bl _savegpr_26
/* 80D1123C  7C 7C 1B 78 */	mr r28, r3
/* 80D11240  3C 60 80 D1 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80D128F0@ha */
/* 80D11244  3B C3 28 F0 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80D128F0@l */
/* 80D11248  3C 60 80 D1 */	lis r3, m__16daObjTks_Param_c@ha /* 0x80D1273C@ha */
/* 80D1124C  3B E3 27 3C */	addi r31, r3, m__16daObjTks_Param_c@l /* 0x80D1273C@l */
/* 80D11250  A0 1C 0D DE */	lhz r0, 0xdde(r28)
/* 80D11254  2C 00 00 02 */	cmpwi r0, 2
/* 80D11258  41 82 00 FC */	beq lbl_80D11354
/* 80D1125C  40 80 00 10 */	bge lbl_80D1126C
/* 80D11260  2C 00 00 00 */	cmpwi r0, 0
/* 80D11264  41 82 00 14 */	beq lbl_80D11278
/* 80D11268  48 00 03 38 */	b lbl_80D115A0
lbl_80D1126C:
/* 80D1126C  2C 00 00 04 */	cmpwi r0, 4
/* 80D11270  40 80 03 30 */	bge lbl_80D115A0
/* 80D11274  48 00 03 00 */	b lbl_80D11574
lbl_80D11278:
/* 80D11278  28 1C 00 00 */	cmplwi r28, 0
/* 80D1127C  41 82 00 0C */	beq lbl_80D11288
/* 80D11280  83 7C 00 04 */	lwz r27, 4(r28)
/* 80D11284  48 00 00 08 */	b lbl_80D1128C
lbl_80D11288:
/* 80D11288  3B 60 FF FF */	li r27, -1
lbl_80D1128C:
/* 80D1128C  4B 47 03 B5 */	bl dCam_getBody__Fv
/* 80D11290  7F 64 DB 78 */	mr r4, r27
/* 80D11294  4B 37 79 29 */	bl EndEventCamera__9dCamera_cFi
/* 80D11298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1129C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D112A0  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D112A4  7F 84 E3 78 */	mr r4, r28
/* 80D112A8  4B 33 12 71 */	bl reset__14dEvt_control_cFPv
/* 80D112AC  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 80D112B0  90 1C 01 00 */	stw r0, 0x100(r28)
/* 80D112B4  3B 7B 4F F8 */	addi r27, r27, 0x4ff8
/* 80D112B8  7F 63 DB 78 */	mr r3, r27
/* 80D112BC  80 9C 01 00 */	lwz r4, 0x100(r28)
/* 80D112C0  4B 33 55 41 */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80D112C4  7F 63 DB 78 */	mr r3, r27
/* 80D112C8  7F 84 E3 78 */	mr r4, r28
/* 80D112CC  3C A0 80 D1 */	lis r5, d_a_obj_tks__stringBase0@ha /* 0x80D128C8@ha */
/* 80D112D0  38 A5 28 C8 */	addi r5, r5, d_a_obj_tks__stringBase0@l /* 0x80D128C8@l */
/* 80D112D4  38 A5 00 1C */	addi r5, r5, 0x1c
/* 80D112D8  38 C0 00 FF */	li r6, 0xff
/* 80D112DC  4B 33 64 7D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D112E0  B0 7C 09 D4 */	sth r3, 0x9d4(r28)
/* 80D112E4  7F 83 E3 78 */	mr r3, r28
/* 80D112E8  A8 9C 09 D4 */	lha r4, 0x9d4(r28)
/* 80D112EC  38 A0 00 01 */	li r5, 1
/* 80D112F0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D112F4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D112F8  4B 30 A2 ED */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D112FC  7F 83 E3 78 */	mr r3, r28
/* 80D11300  38 80 00 01 */	li r4, 1
/* 80D11304  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80D11308  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80D1130C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D11310  7D 89 03 A6 */	mtctr r12
/* 80D11314  4E 80 04 21 */	bctrl 
/* 80D11318  7F 83 E3 78 */	mr r3, r28
/* 80D1131C  38 80 00 02 */	li r4, 2
/* 80D11320  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80D11324  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80D11328  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80D1132C  7D 89 03 A6 */	mtctr r12
/* 80D11330  4E 80 04 21 */	bctrl 
/* 80D11334  A8 1C 0D DC */	lha r0, 0xddc(r28)
/* 80D11338  2C 00 00 02 */	cmpwi r0, 2
/* 80D1133C  41 82 00 0C */	beq lbl_80D11348
/* 80D11340  38 00 00 02 */	li r0, 2
/* 80D11344  B0 1C 0D DC */	sth r0, 0xddc(r28)
lbl_80D11348:
/* 80D11348  38 00 00 02 */	li r0, 2
/* 80D1134C  B0 1C 0D DE */	sth r0, 0xdde(r28)
/* 80D11350  48 00 02 50 */	b lbl_80D115A0
lbl_80D11354:
/* 80D11354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D11358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1135C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D11360  28 00 00 00 */	cmplwi r0, 0
/* 80D11364  41 82 01 8C */	beq lbl_80D114F0
/* 80D11368  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D1136C  28 00 00 01 */	cmplwi r0, 1
/* 80D11370  41 82 01 80 */	beq lbl_80D114F0
/* 80D11374  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80D11378  7F A3 EB 78 */	mr r3, r29
/* 80D1137C  80 9E 00 68 */	lwz r4, 0x68(r30)
/* 80D11380  38 A0 00 00 */	li r5, 0
/* 80D11384  38 C0 00 00 */	li r6, 0
/* 80D11388  4B 33 67 95 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D1138C  7C 7A 1B 78 */	mr r26, r3
/* 80D11390  2C 1A FF FF */	cmpwi r26, -1
/* 80D11394  41 82 02 0C */	beq lbl_80D115A0
/* 80D11398  7F A3 EB 78 */	mr r3, r29
/* 80D1139C  7F 44 D3 78 */	mr r4, r26
/* 80D113A0  4B 33 6B BD */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D113A4  7C 7B 1B 78 */	mr r27, r3
/* 80D113A8  7F A3 EB 78 */	mr r3, r29
/* 80D113AC  7F 44 D3 78 */	mr r4, r26
/* 80D113B0  4B 33 69 9D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D113B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D113B8  41 82 00 2C */	beq lbl_80D113E4
/* 80D113BC  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D113C0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D113C4  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D113C8  7C 04 00 00 */	cmpw r4, r0
/* 80D113CC  41 82 00 0C */	beq lbl_80D113D8
/* 80D113D0  40 80 00 14 */	bge lbl_80D113E4
/* 80D113D4  48 00 00 10 */	b lbl_80D113E4
lbl_80D113D8:
/* 80D113D8  38 7F 00 00 */	addi r3, r31, 0
/* 80D113DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D113E0  D0 1C 05 30 */	stfs f0, 0x530(r28)
lbl_80D113E4:
/* 80D113E4  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D113E8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D113EC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D113F0  7C 04 00 00 */	cmpw r4, r0
/* 80D113F4  41 82 00 28 */	beq lbl_80D1141C
/* 80D113F8  40 80 00 4C */	bge lbl_80D11444
/* 80D113FC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D11400  7C 04 00 00 */	cmpw r4, r0
/* 80D11404  40 80 00 08 */	bge lbl_80D1140C
/* 80D11408  48 00 00 3C */	b lbl_80D11444
lbl_80D1140C:
/* 80D1140C  7F A3 EB 78 */	mr r3, r29
/* 80D11410  7F 44 D3 78 */	mr r4, r26
/* 80D11414  4B 33 6D 69 */	bl cutEnd__16dEvent_manager_cFi
/* 80D11418  48 00 00 2C */	b lbl_80D11444
lbl_80D1141C:
/* 80D1141C  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80D11420  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80D11424  41 82 00 14 */	beq lbl_80D11438
/* 80D11428  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80D1142C  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80D11430  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D11434  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80D11438:
/* 80D11438  7F A3 EB 78 */	mr r3, r29
/* 80D1143C  7F 44 D3 78 */	mr r4, r26
/* 80D11440  4B 33 6D 3D */	bl cutEnd__16dEvent_manager_cFi
lbl_80D11444:
/* 80D11444  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D11448  28 00 00 02 */	cmplwi r0, 2
/* 80D1144C  40 82 01 54 */	bne lbl_80D115A0
/* 80D11450  A8 9C 09 D4 */	lha r4, 0x9d4(r28)
/* 80D11454  2C 04 FF FF */	cmpwi r4, -1
/* 80D11458  41 82 01 48 */	beq lbl_80D115A0
/* 80D1145C  7F A3 EB 78 */	mr r3, r29
/* 80D11460  4B 33 66 19 */	bl endCheck__16dEvent_manager_cFs
/* 80D11464  2C 03 00 00 */	cmpwi r3, 0
/* 80D11468  41 82 01 38 */	beq lbl_80D115A0
/* 80D1146C  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 80D11470  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 80D11474  90 61 00 14 */	stw r3, 0x14(r1)
/* 80D11478  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D1147C  80 1E 00 BC */	lwz r0, 0xbc(r30)
/* 80D11480  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D11484  38 00 00 03 */	li r0, 3
/* 80D11488  B0 1C 0D DE */	sth r0, 0xdde(r28)
/* 80D1148C  38 7C 0D B8 */	addi r3, r28, 0xdb8
/* 80D11490  4B 65 0B 89 */	bl __ptmf_test
/* 80D11494  2C 03 00 00 */	cmpwi r3, 0
/* 80D11498  41 82 00 14 */	beq lbl_80D114AC
/* 80D1149C  7F 83 E3 78 */	mr r3, r28
/* 80D114A0  39 9C 0D B8 */	addi r12, r28, 0xdb8
/* 80D114A4  4B 65 0B E1 */	bl __ptmf_scall
/* 80D114A8  60 00 00 00 */	nop 
lbl_80D114AC:
/* 80D114AC  38 00 00 00 */	li r0, 0
/* 80D114B0  B0 1C 0D DE */	sth r0, 0xdde(r28)
/* 80D114B4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80D114B8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80D114BC  90 7C 0D B8 */	stw r3, 0xdb8(r28)
/* 80D114C0  90 1C 0D BC */	stw r0, 0xdbc(r28)
/* 80D114C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D114C8  90 1C 0D C0 */	stw r0, 0xdc0(r28)
/* 80D114CC  38 7C 0D B8 */	addi r3, r28, 0xdb8
/* 80D114D0  4B 65 0B 49 */	bl __ptmf_test
/* 80D114D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D114D8  41 82 00 C8 */	beq lbl_80D115A0
/* 80D114DC  7F 83 E3 78 */	mr r3, r28
/* 80D114E0  39 9C 0D B8 */	addi r12, r28, 0xdb8
/* 80D114E4  4B 65 0B A1 */	bl __ptmf_scall
/* 80D114E8  60 00 00 00 */	nop 
/* 80D114EC  48 00 00 B4 */	b lbl_80D115A0
lbl_80D114F0:
/* 80D114F0  80 7E 00 C0 */	lwz r3, 0xc0(r30)
/* 80D114F4  80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 80D114F8  90 61 00 08 */	stw r3, 8(r1)
/* 80D114FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D11500  80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 80D11504  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D11508  38 00 00 03 */	li r0, 3
/* 80D1150C  B0 1C 0D DE */	sth r0, 0xdde(r28)
/* 80D11510  38 7C 0D B8 */	addi r3, r28, 0xdb8
/* 80D11514  4B 65 0B 05 */	bl __ptmf_test
/* 80D11518  2C 03 00 00 */	cmpwi r3, 0
/* 80D1151C  41 82 00 14 */	beq lbl_80D11530
/* 80D11520  7F 83 E3 78 */	mr r3, r28
/* 80D11524  39 9C 0D B8 */	addi r12, r28, 0xdb8
/* 80D11528  4B 65 0B 5D */	bl __ptmf_scall
/* 80D1152C  60 00 00 00 */	nop 
lbl_80D11530:
/* 80D11530  38 00 00 00 */	li r0, 0
/* 80D11534  B0 1C 0D DE */	sth r0, 0xdde(r28)
/* 80D11538  80 61 00 08 */	lwz r3, 8(r1)
/* 80D1153C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D11540  90 7C 0D B8 */	stw r3, 0xdb8(r28)
/* 80D11544  90 1C 0D BC */	stw r0, 0xdbc(r28)
/* 80D11548  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80D1154C  90 1C 0D C0 */	stw r0, 0xdc0(r28)
/* 80D11550  38 7C 0D B8 */	addi r3, r28, 0xdb8
/* 80D11554  4B 65 0A C5 */	bl __ptmf_test
/* 80D11558  2C 03 00 00 */	cmpwi r3, 0
/* 80D1155C  41 82 00 44 */	beq lbl_80D115A0
/* 80D11560  7F 83 E3 78 */	mr r3, r28
/* 80D11564  39 9C 0D B8 */	addi r12, r28, 0xdb8
/* 80D11568  4B 65 0B 1D */	bl __ptmf_scall
/* 80D1156C  60 00 00 00 */	nop 
/* 80D11570  48 00 00 30 */	b lbl_80D115A0
lbl_80D11574:
/* 80D11574  88 1C 09 EC */	lbz r0, 0x9ec(r28)
/* 80D11578  28 00 00 00 */	cmplwi r0, 0
/* 80D1157C  40 82 00 14 */	bne lbl_80D11590
/* 80D11580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D11584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D11588  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D1158C  4B 33 0E DD */	bl reset__14dEvt_control_cFv
lbl_80D11590:
/* 80D11590  38 00 00 00 */	li r0, 0
/* 80D11594  98 1C 09 EC */	stb r0, 0x9ec(r28)
/* 80D11598  38 00 FF FF */	li r0, -1
/* 80D1159C  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
lbl_80D115A0:
/* 80D115A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80D115A4  4B 65 0C 79 */	bl _restgpr_26
/* 80D115A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D115AC  7C 08 03 A6 */	mtlr r0
/* 80D115B0  38 21 00 40 */	addi r1, r1, 0x40
/* 80D115B4  4E 80 00 20 */	blr 
