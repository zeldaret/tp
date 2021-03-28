lbl_8008A510:
/* 8008A510  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8008A514  7C 08 02 A6 */	mflr r0
/* 8008A518  90 01 01 04 */	stw r0, 0x104(r1)
/* 8008A51C  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8008A520  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8008A524  7C 7F 1B 78 */	mr r31, r3
/* 8008A528  80 03 01 74 */	lwz r0, 0x174(r3)
/* 8008A52C  28 00 00 00 */	cmplwi r0, 0
/* 8008A530  40 82 01 98 */	bne lbl_8008A6C8
/* 8008A534  3C 80 80 43 */	lis r4, Zero__4cXyz@ha
/* 8008A538  3B C4 0C F4 */	addi r30, r4, Zero__4cXyz@l
/* 8008A53C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8008A540  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8008A544  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8008A548  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8008A54C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8008A550  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8008A554  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8008A558  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008A55C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008A560  38 A5 00 3F */	addi r5, r5, 0x3f
/* 8008A564  38 C1 00 CC */	addi r6, r1, 0xcc
/* 8008A568  4B FF EC C5 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008A56C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8008A570  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)
/* 8008A574  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8008A578  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8008A57C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8008A580  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8008A584  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8008A588  7F E3 FB 78 */	mr r3, r31
/* 8008A58C  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8008A590  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008A594  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008A598  38 A5 00 46 */	addi r5, r5, 0x46
/* 8008A59C  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 8008A5A0  4B FF EC 8D */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008A5A4  7F E3 FB 78 */	mr r3, r31
/* 8008A5A8  38 9F 04 08 */	addi r4, r31, 0x408
/* 8008A5AC  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008A5B0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008A5B4  38 A5 00 4D */	addi r5, r5, 0x4d
/* 8008A5B8  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8008A5BC  4B FF EB 99 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008A5C0  7F E3 FB 78 */	mr r3, r31
/* 8008A5C4  38 9F 04 04 */	addi r4, r31, 0x404
/* 8008A5C8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008A5CC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008A5D0  38 A5 00 54 */	addi r5, r5, 0x54
/* 8008A5D4  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8008A5D8  4B FF EB 7D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008A5DC  7F E3 FB 78 */	mr r3, r31
/* 8008A5E0  38 9F 04 0C */	addi r4, r31, 0x40c
/* 8008A5E4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008A5E8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008A5EC  38 A5 00 1E */	addi r5, r5, 0x1e
/* 8008A5F0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8008A5F4  4B FF EB 61 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008A5F8  7F E3 FB 78 */	mr r3, r31
/* 8008A5FC  38 9F 04 10 */	addi r4, r31, 0x410
/* 8008A600  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008A604  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008A608  38 A5 00 23 */	addi r5, r5, 0x23
/* 8008A60C  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 8008A610  4B FF EB 45 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008A614  98 7F 03 E9 */	stb r3, 0x3e9(r31)
/* 8008A618  7F E3 FB 78 */	mr r3, r31
/* 8008A61C  38 9F 04 28 */	addi r4, r31, 0x428
/* 8008A620  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8008A624  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8008A628  38 C0 FF FF */	li r6, -1
/* 8008A62C  4B FF EA 61 */	bl getEvIntData__9dCamera_cFPiPci
/* 8008A630  98 7F 03 E8 */	stb r3, 0x3e8(r31)
/* 8008A634  7F E3 FB 78 */	mr r3, r31
/* 8008A638  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 8008A63C  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 8008A640  38 85 00 5B */	addi r4, r5, 0x5b
/* 8008A644  38 A5 00 62 */	addi r5, r5, 0x62
/* 8008A648  4B FF EF AD */	bl getEvActor__9dCamera_cFPcPc
/* 8008A64C  90 7F 04 14 */	stw r3, 0x414(r31)
/* 8008A650  7F E3 FB 78 */	mr r3, r31
/* 8008A654  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 8008A658  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 8008A65C  38 85 00 6B */	addi r4, r5, 0x6b
/* 8008A660  38 A5 00 72 */	addi r5, r5, 0x72
/* 8008A664  4B FF EF 91 */	bl getEvActor__9dCamera_cFPcPc
/* 8008A668  90 7F 04 18 */	stw r3, 0x418(r31)
/* 8008A66C  80 7F 04 14 */	lwz r3, 0x414(r31)
/* 8008A670  28 03 00 00 */	cmplwi r3, 0
/* 8008A674  41 82 00 10 */	beq lbl_8008A684
/* 8008A678  80 1F 04 18 */	lwz r0, 0x418(r31)
/* 8008A67C  28 00 00 00 */	cmplwi r0, 0
/* 8008A680  40 82 00 0C */	bne lbl_8008A68C
lbl_8008A684:
/* 8008A684  38 60 00 01 */	li r3, 1
/* 8008A688  48 00 02 D4 */	b lbl_8008A95C
lbl_8008A68C:
/* 8008A68C  28 03 00 00 */	cmplwi r3, 0
/* 8008A690  41 82 00 0C */	beq lbl_8008A69C
/* 8008A694  80 03 00 04 */	lwz r0, 4(r3)
/* 8008A698  48 00 00 08 */	b lbl_8008A6A0
lbl_8008A69C:
/* 8008A69C  38 00 FF FF */	li r0, -1
lbl_8008A6A0:
/* 8008A6A0  90 1F 04 1C */	stw r0, 0x41c(r31)
/* 8008A6A4  80 7F 04 18 */	lwz r3, 0x418(r31)
/* 8008A6A8  28 03 00 00 */	cmplwi r3, 0
/* 8008A6AC  41 82 00 0C */	beq lbl_8008A6B8
/* 8008A6B0  80 03 00 04 */	lwz r0, 4(r3)
/* 8008A6B4  48 00 00 08 */	b lbl_8008A6BC
lbl_8008A6B8:
/* 8008A6B8  38 00 FF FF */	li r0, -1
lbl_8008A6BC:
/* 8008A6BC  90 1F 04 20 */	stw r0, 0x420(r31)
/* 8008A6C0  38 00 00 01 */	li r0, 1
/* 8008A6C4  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8008A6C8:
/* 8008A6C8  80 1F 04 18 */	lwz r0, 0x418(r31)
/* 8008A6CC  28 00 00 00 */	cmplwi r0, 0
/* 8008A6D0  41 82 00 FC */	beq lbl_8008A7CC
/* 8008A6D4  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 8008A6D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8008A6DC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8008A6E0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8008A6E4  38 81 00 30 */	addi r4, r1, 0x30
/* 8008A6E8  4B F8 F1 11 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8008A6EC  28 03 00 00 */	cmplwi r3, 0
/* 8008A6F0  40 82 00 0C */	bne lbl_8008A6FC
/* 8008A6F4  38 60 00 01 */	li r3, 1
/* 8008A6F8  48 00 02 64 */	b lbl_8008A95C
lbl_8008A6FC:
/* 8008A6FC  38 61 00 34 */	addi r3, r1, 0x34
/* 8008A700  38 9F 03 F8 */	addi r4, r31, 0x3f8
/* 8008A704  48 1E 73 6D */	bl Val__7cSGlobeFRC4cXyz
/* 8008A708  38 61 00 28 */	addi r3, r1, 0x28
/* 8008A70C  38 81 00 38 */	addi r4, r1, 0x38
/* 8008A710  80 BF 04 18 */	lwz r5, 0x418(r31)
/* 8008A714  A8 A5 04 E4 */	lha r5, 0x4e4(r5)
/* 8008A718  48 1E 6A E5 */	bl __pl__7cSAngleCFs
/* 8008A71C  38 61 00 14 */	addi r3, r1, 0x14
/* 8008A720  A8 81 00 28 */	lha r4, 0x28(r1)
/* 8008A724  48 1E 68 75 */	bl __ct__7cSAngleFs
/* 8008A728  A8 01 00 14 */	lha r0, 0x14(r1)
/* 8008A72C  B0 01 00 38 */	sth r0, 0x38(r1)
/* 8008A730  38 61 00 24 */	addi r3, r1, 0x24
/* 8008A734  38 81 00 3A */	addi r4, r1, 0x3a
/* 8008A738  80 BF 04 18 */	lwz r5, 0x418(r31)
/* 8008A73C  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 8008A740  48 1E 6A BD */	bl __pl__7cSAngleCFs
/* 8008A744  38 61 00 10 */	addi r3, r1, 0x10
/* 8008A748  A8 81 00 24 */	lha r4, 0x24(r1)
/* 8008A74C  48 1E 68 4D */	bl __ct__7cSAngleFs
/* 8008A750  A8 01 00 10 */	lha r0, 0x10(r1)
/* 8008A754  B0 01 00 3A */	sth r0, 0x3a(r1)
/* 8008A758  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8008A75C  7F E4 FB 78 */	mr r4, r31
/* 8008A760  80 BF 04 18 */	lwz r5, 0x418(r31)
/* 8008A764  48 00 CF B9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008A768  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8008A76C  38 81 00 34 */	addi r4, r1, 0x34
/* 8008A770  48 1E 73 45 */	bl Xyz__7cSGlobeCFv
/* 8008A774  38 61 00 9C */	addi r3, r1, 0x9c
/* 8008A778  38 81 00 B4 */	addi r4, r1, 0xb4
/* 8008A77C  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8008A780  48 1D C3 65 */	bl __pl__4cXyzCFRC3Vec
/* 8008A784  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8008A788  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8008A78C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8008A790  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8008A794  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8008A798  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8008A79C  38 61 00 90 */	addi r3, r1, 0x90
/* 8008A7A0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8008A7A4  38 BF 00 64 */	addi r5, r31, 0x64
/* 8008A7A8  48 1D C3 8D */	bl __mi__4cXyzCFRC3Vec
/* 8008A7AC  38 61 00 84 */	addi r3, r1, 0x84
/* 8008A7B0  38 81 00 90 */	addi r4, r1, 0x90
/* 8008A7B4  C0 3F 04 04 */	lfs f1, 0x404(r31)
/* 8008A7B8  48 1D C3 CD */	bl __ml__4cXyzCFf
/* 8008A7BC  38 7F 00 64 */	addi r3, r31, 0x64
/* 8008A7C0  38 81 00 84 */	addi r4, r1, 0x84
/* 8008A7C4  7C 65 1B 78 */	mr r5, r3
/* 8008A7C8  48 2B C8 C9 */	bl PSVECAdd
lbl_8008A7CC:
/* 8008A7CC  80 1F 04 14 */	lwz r0, 0x414(r31)
/* 8008A7D0  28 00 00 00 */	cmplwi r0, 0
/* 8008A7D4  41 82 00 FC */	beq lbl_8008A8D0
/* 8008A7D8  80 1F 04 1C */	lwz r0, 0x41c(r31)
/* 8008A7DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8008A7E0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8008A7E4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8008A7E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8008A7EC  4B F8 F0 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8008A7F0  28 03 00 00 */	cmplwi r3, 0
/* 8008A7F4  40 82 00 0C */	bne lbl_8008A800
/* 8008A7F8  38 60 00 01 */	li r3, 1
/* 8008A7FC  48 00 01 60 */	b lbl_8008A95C
lbl_8008A800:
/* 8008A800  38 61 00 34 */	addi r3, r1, 0x34
/* 8008A804  38 9F 03 EC */	addi r4, r31, 0x3ec
/* 8008A808  48 1E 72 69 */	bl Val__7cSGlobeFRC4cXyz
/* 8008A80C  38 61 00 20 */	addi r3, r1, 0x20
/* 8008A810  38 81 00 38 */	addi r4, r1, 0x38
/* 8008A814  80 BF 04 14 */	lwz r5, 0x414(r31)
/* 8008A818  A8 A5 04 E4 */	lha r5, 0x4e4(r5)
/* 8008A81C  48 1E 69 E1 */	bl __pl__7cSAngleCFs
/* 8008A820  38 61 00 0C */	addi r3, r1, 0xc
/* 8008A824  A8 81 00 20 */	lha r4, 0x20(r1)
/* 8008A828  48 1E 67 71 */	bl __ct__7cSAngleFs
/* 8008A82C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8008A830  B0 01 00 38 */	sth r0, 0x38(r1)
/* 8008A834  38 61 00 1C */	addi r3, r1, 0x1c
/* 8008A838  38 81 00 3A */	addi r4, r1, 0x3a
/* 8008A83C  80 BF 04 14 */	lwz r5, 0x414(r31)
/* 8008A840  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 8008A844  48 1E 69 B9 */	bl __pl__7cSAngleCFs
/* 8008A848  38 61 00 08 */	addi r3, r1, 8
/* 8008A84C  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 8008A850  48 1E 67 49 */	bl __ct__7cSAngleFs
/* 8008A854  A8 01 00 08 */	lha r0, 8(r1)
/* 8008A858  B0 01 00 3A */	sth r0, 0x3a(r1)
/* 8008A85C  38 61 00 78 */	addi r3, r1, 0x78
/* 8008A860  7F E4 FB 78 */	mr r4, r31
/* 8008A864  80 BF 04 14 */	lwz r5, 0x414(r31)
/* 8008A868  48 00 CE B5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8008A86C  38 61 00 6C */	addi r3, r1, 0x6c
/* 8008A870  38 81 00 34 */	addi r4, r1, 0x34
/* 8008A874  48 1E 72 41 */	bl Xyz__7cSGlobeCFv
/* 8008A878  38 61 00 60 */	addi r3, r1, 0x60
/* 8008A87C  38 81 00 78 */	addi r4, r1, 0x78
/* 8008A880  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8008A884  48 1D C2 61 */	bl __pl__4cXyzCFRC3Vec
/* 8008A888  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8008A88C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8008A890  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8008A894  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8008A898  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8008A89C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8008A8A0  38 61 00 54 */	addi r3, r1, 0x54
/* 8008A8A4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8008A8A8  38 BF 00 70 */	addi r5, r31, 0x70
/* 8008A8AC  48 1D C2 89 */	bl __mi__4cXyzCFRC3Vec
/* 8008A8B0  38 61 00 48 */	addi r3, r1, 0x48
/* 8008A8B4  38 81 00 54 */	addi r4, r1, 0x54
/* 8008A8B8  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 8008A8BC  48 1D C2 C9 */	bl __ml__4cXyzCFf
/* 8008A8C0  38 7F 00 70 */	addi r3, r31, 0x70
/* 8008A8C4  38 81 00 48 */	addi r4, r1, 0x48
/* 8008A8C8  7C 65 1B 78 */	mr r5, r3
/* 8008A8CC  48 2B C7 C5 */	bl PSVECAdd
lbl_8008A8D0:
/* 8008A8D0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8008A8D4  38 9F 00 70 */	addi r4, r31, 0x70
/* 8008A8D8  38 BF 00 64 */	addi r5, r31, 0x64
/* 8008A8DC  48 1D C2 59 */	bl __mi__4cXyzCFRC3Vec
/* 8008A8E0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8008A8E4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8008A8E8  48 1E 71 89 */	bl Val__7cSGlobeFRC4cXyz
/* 8008A8EC  C0 1F 04 0C */	lfs f0, 0x40c(r31)
/* 8008A8F0  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8008A8F4  88 1F 03 E9 */	lbz r0, 0x3e9(r31)
/* 8008A8F8  28 00 00 00 */	cmplwi r0, 0
/* 8008A8FC  41 82 00 38 */	beq lbl_8008A934
/* 8008A900  C0 22 8E D8 */	lfs f1, lit_5145(r2)
/* 8008A904  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8008A908  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008A90C  FC 00 00 1E */	fctiwz f0, f0
/* 8008A910  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 8008A914  80 81 00 F4 */	lwz r4, 0xf4(r1)
/* 8008A918  38 61 00 18 */	addi r3, r1, 0x18
/* 8008A91C  48 1E 66 7D */	bl __ct__7cSAngleFs
/* 8008A920  A8 01 00 18 */	lha r0, 0x18(r1)
/* 8008A924  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 8008A928  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8008A92C  60 00 04 00 */	ori r0, r0, 0x400
/* 8008A930  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_8008A934:
/* 8008A934  88 1F 03 E8 */	lbz r0, 0x3e8(r31)
/* 8008A938  28 00 00 00 */	cmplwi r0, 0
/* 8008A93C  41 82 00 1C */	beq lbl_8008A958
/* 8008A940  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 8008A944  80 1F 04 28 */	lwz r0, 0x428(r31)
/* 8008A948  7C 03 00 40 */	cmplw r3, r0
/* 8008A94C  40 80 00 0C */	bge lbl_8008A958
/* 8008A950  38 60 00 00 */	li r3, 0
/* 8008A954  48 00 00 08 */	b lbl_8008A95C
lbl_8008A958:
/* 8008A958  38 60 00 01 */	li r3, 1
lbl_8008A95C:
/* 8008A95C  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8008A960  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8008A964  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8008A968  7C 08 03 A6 */	mtlr r0
/* 8008A96C  38 21 01 00 */	addi r1, r1, 0x100
/* 8008A970  4E 80 00 20 */	blr 
