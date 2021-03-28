lbl_8084A2A8:
/* 8084A2A8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8084A2AC  7C 08 02 A6 */	mflr r0
/* 8084A2B0  90 01 01 14 */	stw r0, 0x114(r1)
/* 8084A2B4  39 61 01 10 */	addi r11, r1, 0x110
/* 8084A2B8  4B B1 7F 18 */	b _savegpr_26
/* 8084A2BC  7C 7B 1B 78 */	mr r27, r3
/* 8084A2C0  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084A2C4  3B C3 4B 04 */	addi r30, r3, lit_3929@l
/* 8084A2C8  38 61 00 88 */	addi r3, r1, 0x88
/* 8084A2CC  4B 82 D9 9C */	b __ct__11dBgS_LinChkFv
/* 8084A2D0  3C 60 80 85 */	lis r3, __vt__8cM3dGPla@ha
/* 8084A2D4  38 83 4F 48 */	addi r4, r3, __vt__8cM3dGPla@l
/* 8084A2D8  90 81 00 84 */	stw r4, 0x84(r1)
/* 8084A2DC  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 8084A2E0  83 A3 00 04 */	lwz r29, 4(r3)
/* 8084A2E4  38 00 00 00 */	li r0, 0
/* 8084A2E8  98 1B 06 D9 */	stb r0, 0x6d9(r27)
/* 8084A2EC  80 1B 07 40 */	lwz r0, 0x740(r27)
/* 8084A2F0  2C 00 00 04 */	cmpwi r0, 4
/* 8084A2F4  40 82 00 18 */	bne lbl_8084A30C
/* 8084A2F8  90 81 00 84 */	stw r4, 0x84(r1)
/* 8084A2FC  38 61 00 88 */	addi r3, r1, 0x88
/* 8084A300  38 80 FF FF */	li r4, -1
/* 8084A304  4B 82 D9 D8 */	b __dt__11dBgS_LinChkFv
/* 8084A308  48 00 03 74 */	b lbl_8084A67C
lbl_8084A30C:
/* 8084A30C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8084A310  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084A314  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8084A318  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8084A31C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8084A320  4B AF C1 90 */	b PSMTXCopy
/* 8084A324  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084A328  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 8084A32C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084A330  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8084A334  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084A338  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084A33C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084A340  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8084A344  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8084A348  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084A34C  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 8084A350  7F E4 FB 78 */	mr r4, r31
/* 8084A354  4B AF C1 5C */	b PSMTXCopy
/* 8084A358  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084A35C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084A360  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084A364  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084A368  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084A36C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084A370  38 61 00 50 */	addi r3, r1, 0x50
/* 8084A374  38 81 00 5C */	addi r4, r1, 0x5c
/* 8084A378  38 A1 00 68 */	addi r5, r1, 0x68
/* 8084A37C  4B A1 C7 B8 */	b __mi__4cXyzCFRC3Vec
/* 8084A380  38 61 00 44 */	addi r3, r1, 0x44
/* 8084A384  38 81 00 50 */	addi r4, r1, 0x50
/* 8084A388  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8084A38C  4B A1 C7 F8 */	b __ml__4cXyzCFf
/* 8084A390  38 61 00 38 */	addi r3, r1, 0x38
/* 8084A394  38 81 00 68 */	addi r4, r1, 0x68
/* 8084A398  38 A1 00 44 */	addi r5, r1, 0x44
/* 8084A39C  4B A1 C7 48 */	b __pl__4cXyzCFRC3Vec
/* 8084A3A0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8084A3A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084A3A8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8084A3AC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084A3B0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8084A3B4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084A3B8  38 61 00 88 */	addi r3, r1, 0x88
/* 8084A3BC  38 81 00 68 */	addi r4, r1, 0x68
/* 8084A3C0  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8084A3C4  38 C0 00 00 */	li r6, 0
/* 8084A3C8  4B 82 D9 9C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8084A3CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084A3D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084A3D4  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 8084A3D8  7F 83 E3 78 */	mr r3, r28
/* 8084A3DC  38 81 00 88 */	addi r4, r1, 0x88
/* 8084A3E0  4B 82 9F D4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8084A3E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084A3E8  41 82 00 50 */	beq lbl_8084A438
/* 8084A3EC  7F 83 E3 78 */	mr r3, r28
/* 8084A3F0  3B 41 00 9C */	addi r26, r1, 0x9c
/* 8084A3F4  7F 44 D3 78 */	mr r4, r26
/* 8084A3F8  38 A1 00 74 */	addi r5, r1, 0x74
/* 8084A3FC  4B 82 A3 48 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8084A400  7F 83 E3 78 */	mr r3, r28
/* 8084A404  7F 44 D3 78 */	mr r4, r26
/* 8084A408  4B 82 A8 B4 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 8084A40C  2C 03 00 01 */	cmpwi r3, 1
/* 8084A410  40 82 00 28 */	bne lbl_8084A438
/* 8084A414  88 1B 06 D9 */	lbz r0, 0x6d9(r27)
/* 8084A418  60 00 00 01 */	ori r0, r0, 1
/* 8084A41C  98 1B 06 D9 */	stb r0, 0x6d9(r27)
/* 8084A420  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8084A424  D0 1B 06 50 */	stfs f0, 0x650(r27)
/* 8084A428  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8084A42C  D0 1B 06 54 */	stfs f0, 0x654(r27)
/* 8084A430  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8084A434  D0 1B 06 58 */	stfs f0, 0x658(r27)
lbl_8084A438:
/* 8084A438  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8084A43C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084A440  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8084A444  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8084A448  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8084A44C  4B AF C0 64 */	b PSMTXCopy
/* 8084A450  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084A454  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8084A458  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084A45C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084A460  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084A464  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8084A468  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8084A46C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084A470  38 63 03 90 */	addi r3, r3, 0x390
/* 8084A474  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8084A478  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8084A47C  4B AF C0 34 */	b PSMTXCopy
/* 8084A480  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084A484  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084A488  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084A48C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084A490  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084A494  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084A498  38 61 00 2C */	addi r3, r1, 0x2c
/* 8084A49C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8084A4A0  38 A1 00 68 */	addi r5, r1, 0x68
/* 8084A4A4  4B A1 C6 90 */	b __mi__4cXyzCFRC3Vec
/* 8084A4A8  38 61 00 20 */	addi r3, r1, 0x20
/* 8084A4AC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8084A4B0  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8084A4B4  4B A1 C6 D0 */	b __ml__4cXyzCFf
/* 8084A4B8  38 61 00 14 */	addi r3, r1, 0x14
/* 8084A4BC  38 81 00 68 */	addi r4, r1, 0x68
/* 8084A4C0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8084A4C4  4B A1 C6 20 */	b __pl__4cXyzCFRC3Vec
/* 8084A4C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8084A4CC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084A4D0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8084A4D4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084A4D8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8084A4DC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084A4E0  38 61 00 88 */	addi r3, r1, 0x88
/* 8084A4E4  38 81 00 68 */	addi r4, r1, 0x68
/* 8084A4E8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8084A4EC  38 C0 00 00 */	li r6, 0
/* 8084A4F0  4B 82 D8 74 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8084A4F4  7F 83 E3 78 */	mr r3, r28
/* 8084A4F8  38 81 00 88 */	addi r4, r1, 0x88
/* 8084A4FC  4B 82 9E B8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8084A500  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084A504  41 82 00 50 */	beq lbl_8084A554
/* 8084A508  7F 83 E3 78 */	mr r3, r28
/* 8084A50C  3B 41 00 9C */	addi r26, r1, 0x9c
/* 8084A510  7F 44 D3 78 */	mr r4, r26
/* 8084A514  38 A1 00 74 */	addi r5, r1, 0x74
/* 8084A518  4B 82 A2 2C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8084A51C  7F 83 E3 78 */	mr r3, r28
/* 8084A520  7F 44 D3 78 */	mr r4, r26
/* 8084A524  4B 82 A7 98 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 8084A528  2C 03 00 01 */	cmpwi r3, 1
/* 8084A52C  40 82 00 28 */	bne lbl_8084A554
/* 8084A530  88 1B 06 D9 */	lbz r0, 0x6d9(r27)
/* 8084A534  60 00 00 02 */	ori r0, r0, 2
/* 8084A538  98 1B 06 D9 */	stb r0, 0x6d9(r27)
/* 8084A53C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8084A540  D0 1B 06 5C */	stfs f0, 0x65c(r27)
/* 8084A544  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8084A548  D0 1B 06 60 */	stfs f0, 0x660(r27)
/* 8084A54C  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8084A550  D0 1B 06 64 */	stfs f0, 0x664(r27)
lbl_8084A554:
/* 8084A554  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8084A558  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8084A55C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8084A560  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084A564  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8084A568  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8084A56C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8084A570  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084A574  38 63 00 30 */	addi r3, r3, 0x30
/* 8084A578  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8084A57C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8084A580  4B AF BF 30 */	b PSMTXCopy
/* 8084A584  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084A588  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8084A58C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084A590  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084A594  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084A598  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8084A59C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8084A5A0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8084A5A4  FC 60 10 90 */	fmr f3, f2
/* 8084A5A8  4B 7C 27 F4 */	b transM__14mDoMtx_stack_cFfff
/* 8084A5AC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084A5B0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084A5B4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084A5B8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084A5BC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084A5C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084A5C4  38 61 00 88 */	addi r3, r1, 0x88
/* 8084A5C8  38 81 00 68 */	addi r4, r1, 0x68
/* 8084A5CC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8084A5D0  38 C0 00 00 */	li r6, 0
/* 8084A5D4  4B 82 D7 90 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8084A5D8  7F 83 E3 78 */	mr r3, r28
/* 8084A5DC  38 81 00 88 */	addi r4, r1, 0x88
/* 8084A5E0  4B 82 9D D4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8084A5E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084A5E8  41 82 00 7C */	beq lbl_8084A664
/* 8084A5EC  7F 83 E3 78 */	mr r3, r28
/* 8084A5F0  3B 41 00 9C */	addi r26, r1, 0x9c
/* 8084A5F4  7F 44 D3 78 */	mr r4, r26
/* 8084A5F8  38 A1 00 74 */	addi r5, r1, 0x74
/* 8084A5FC  4B 82 A1 48 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8084A600  7F 83 E3 78 */	mr r3, r28
/* 8084A604  7F 44 D3 78 */	mr r4, r26
/* 8084A608  4B 82 A6 B4 */	b GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 8084A60C  2C 03 00 01 */	cmpwi r3, 1
/* 8084A610  40 82 00 54 */	bne lbl_8084A664
/* 8084A614  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8084A618  D0 01 00 08 */	stfs f0, 8(r1)
/* 8084A61C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8084A620  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084A624  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8084A628  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084A62C  7F 63 DB 78 */	mr r3, r27
/* 8084A630  38 81 00 08 */	addi r4, r1, 8
/* 8084A634  48 00 0B 01 */	bl checkYaguraPos__8daKago_cF4cXyz
/* 8084A638  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084A63C  40 82 00 28 */	bne lbl_8084A664
/* 8084A640  88 1B 06 D9 */	lbz r0, 0x6d9(r27)
/* 8084A644  60 00 00 04 */	ori r0, r0, 4
/* 8084A648  98 1B 06 D9 */	stb r0, 0x6d9(r27)
/* 8084A64C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8084A650  D0 1B 06 68 */	stfs f0, 0x668(r27)
/* 8084A654  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8084A658  D0 1B 06 6C */	stfs f0, 0x66c(r27)
/* 8084A65C  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8084A660  D0 1B 06 70 */	stfs f0, 0x670(r27)
lbl_8084A664:
/* 8084A664  3C 60 80 85 */	lis r3, __vt__8cM3dGPla@ha
/* 8084A668  38 03 4F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8084A66C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8084A670  38 61 00 88 */	addi r3, r1, 0x88
/* 8084A674  38 80 FF FF */	li r4, -1
/* 8084A678  4B 82 D6 64 */	b __dt__11dBgS_LinChkFv
lbl_8084A67C:
/* 8084A67C  39 61 01 10 */	addi r11, r1, 0x110
/* 8084A680  4B B1 7B 9C */	b _restgpr_26
/* 8084A684  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8084A688  7C 08 03 A6 */	mtlr r0
/* 8084A68C  38 21 01 10 */	addi r1, r1, 0x110
/* 8084A690  4E 80 00 20 */	blr 
