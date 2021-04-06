lbl_8045906C:
/* 8045906C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80459070  7C 08 02 A6 */	mflr r0
/* 80459074  90 01 00 34 */	stw r0, 0x34(r1)
/* 80459078  39 61 00 30 */	addi r11, r1, 0x30
/* 8045907C  4B F0 91 55 */	bl _savegpr_26
/* 80459080  7C 7F 1B 78 */	mr r31, r3
/* 80459084  83 A3 00 B0 */	lwz r29, 0xb0(r3)
/* 80459088  38 00 00 00 */	li r0, 0
/* 8045908C  98 03 05 F0 */	stb r0, 0x5f0(r3)
/* 80459090  98 03 05 F1 */	stb r0, 0x5f1(r3)
/* 80459094  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 80459098  28 00 00 00 */	cmplwi r0, 0
/* 8045909C  40 82 02 68 */	bne lbl_80459304
/* 804590A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804590A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804590A8  40 82 00 1C */	bne lbl_804590C4
/* 804590AC  28 1F 00 00 */	cmplwi r31, 0
/* 804590B0  41 82 00 08 */	beq lbl_804590B8
/* 804590B4  4B BB FA B1 */	bl __ct__10fopAc_ac_cFv
lbl_804590B8:
/* 804590B8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804590BC  60 00 00 08 */	ori r0, r0, 8
/* 804590C0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804590C4:
/* 804590C4  9B BF 04 BA */	stb r29, 0x4ba(r31)
/* 804590C8  9B BF 04 E2 */	stb r29, 0x4e2(r31)
/* 804590CC  7F A3 EB 78 */	mr r3, r29
/* 804590D0  4B BC B2 E1 */	bl getMemoryBlock__20dStage_roomControl_cFi
/* 804590D4  7C 64 1B 79 */	or. r4, r3, r3
/* 804590D8  41 82 00 3C */	beq lbl_80459114
/* 804590DC  38 60 FF FF */	li r3, -1
/* 804590E0  38 A0 00 00 */	li r5, 0
/* 804590E4  4B E7 79 41 */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 804590E8  90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 804590EC  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 804590F0  4B BB 60 DD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 804590F4  7C 7A 1B 78 */	mr r26, r3
/* 804590F8  7F E3 FB 78 */	mr r3, r31
/* 804590FC  4B FF F1 BD */	bl createHeap__6daBg_cFv
/* 80459100  7F 43 D3 78 */	mr r3, r26
/* 80459104  4B BB 60 C9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80459108  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8045910C  4B E7 7A E9 */	bl adjustSize__12JKRSolidHeapFv
/* 80459110  48 00 00 2C */	b lbl_8045913C
lbl_80459114:
/* 80459114  7F E3 FB 78 */	mr r3, r31
/* 80459118  3C 80 80 46 */	lis r4, checkCreateHeap__FP10fopAc_ac_c@ha /* 0x80458298@ha */
/* 8045911C  38 84 82 98 */	addi r4, r4, checkCreateHeap__FP10fopAc_ac_c@l /* 0x80458298@l */
/* 80459120  3C A0 80 02 */	lis r5, 0x8002 /* 0x80020040@ha */
/* 80459124  38 A5 00 40 */	addi r5, r5, 0x0040 /* 0x80020040@l */
/* 80459128  4B BC 13 89 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8045912C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80459130  40 82 00 0C */	bne lbl_8045913C
/* 80459134  38 60 00 05 */	li r3, 5
/* 80459138  48 00 01 EC */	b lbl_80459324
lbl_8045913C:
/* 8045913C  3B 7F 05 70 */	addi r27, r31, 0x570
/* 80459140  3B 80 00 00 */	li r28, 0
lbl_80459144:
/* 80459144  80 7B 00 00 */	lwz r3, 0(r27)
/* 80459148  28 03 00 00 */	cmplwi r3, 0
/* 8045914C  41 82 00 30 */	beq lbl_8045917C
/* 80459150  83 43 00 04 */	lwz r26, 4(r3)
/* 80459154  80 7B 00 04 */	lwz r3, 4(r27)
/* 80459158  28 03 00 00 */	cmplwi r3, 0
/* 8045915C  41 82 00 0C */	beq lbl_80459168
/* 80459160  7F 44 D3 78 */	mr r4, r26
/* 80459164  4B FF EF 25 */	bl entry__13daBg_btkAnm_cFP12J3DModelData
lbl_80459168:
/* 80459168  80 7B 00 08 */	lwz r3, 8(r27)
/* 8045916C  28 03 00 00 */	cmplwi r3, 0
/* 80459170  41 82 00 0C */	beq lbl_8045917C
/* 80459174  7F 44 D3 78 */	mr r4, r26
/* 80459178  4B FF F0 B9 */	bl entry__13daBg_brkAnm_cFP12J3DModelData
lbl_8045917C:
/* 8045917C  3B 9C 00 01 */	addi r28, r28, 1
/* 80459180  2C 1C 00 06 */	cmpwi r28, 6
/* 80459184  3B 7B 00 14 */	addi r27, r27, 0x14
/* 80459188  41 80 FF BC */	blt lbl_80459144
/* 8045918C  7F A3 EB 78 */	mr r3, r29
/* 80459190  38 81 00 10 */	addi r4, r1, 0x10
/* 80459194  38 A1 00 0C */	addi r5, r1, 0xc
/* 80459198  38 C1 00 08 */	addi r6, r1, 8
/* 8045919C  4B BD 40 11 */	bl dComIfGp_getMapTrans__FiPfPfPs
/* 804591A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804591A4  41 82 00 E0 */	beq lbl_80459284
/* 804591A8  3B 9F 05 70 */	addi r28, r31, 0x570
/* 804591AC  3B 60 00 00 */	li r27, 0
lbl_804591B0:
/* 804591B0  83 5C 00 00 */	lwz r26, 0(r28)
/* 804591B4  28 1A 00 00 */	cmplwi r26, 0
/* 804591B8  41 82 00 BC */	beq lbl_80459274
/* 804591BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804591C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804591C4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804591C8  3C 80 80 46 */	lis r4, lit_3914@ha /* 0x80459384@ha */
/* 804591CC  C0 44 93 84 */	lfs f2, lit_3914@l(r4)  /* 0x80459384@l */
/* 804591D0  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 804591D4  4B EE D7 15 */	bl PSMTXTrans
/* 804591D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804591DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804591E0  A8 81 00 08 */	lha r4, 8(r1)
/* 804591E4  4B BB 32 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 804591E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804591EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804591F0  38 9A 00 24 */	addi r4, r26, 0x24
/* 804591F4  4B EE D2 BD */	bl PSMTXCopy
/* 804591F8  83 DA 00 04 */	lwz r30, 4(r26)
/* 804591FC  3B 40 00 00 */	li r26, 0
/* 80459200  48 00 00 64 */	b lbl_80459264
lbl_80459204:
/* 80459204  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80459208  7F 44 D3 78 */	mr r4, r26
/* 8045920C  4B E8 58 ED */	bl getName__10JUTNameTabCFUs
/* 80459210  88 03 00 03 */	lbz r0, 3(r3)
/* 80459214  2C 00 00 4D */	cmpwi r0, 0x4d
/* 80459218  40 82 00 48 */	bne lbl_80459260
/* 8045921C  88 03 00 04 */	lbz r0, 4(r3)
/* 80459220  2C 00 00 41 */	cmpwi r0, 0x41
/* 80459224  40 82 00 3C */	bne lbl_80459260
/* 80459228  88 03 00 05 */	lbz r0, 5(r3)
/* 8045922C  2C 00 00 30 */	cmpwi r0, 0x30
/* 80459230  40 82 00 30 */	bne lbl_80459260
/* 80459234  88 03 00 06 */	lbz r0, 6(r3)
/* 80459238  2C 00 00 38 */	cmpwi r0, 0x38
/* 8045923C  40 82 00 24 */	bne lbl_80459260
/* 80459240  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80459244  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 80459248  7C 63 00 2E */	lwzx r3, r3, r0
/* 8045924C  80 63 00 08 */	lwz r3, 8(r3)
/* 80459250  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80459254  54 00 05 1E */	rlwinm r0, r0, 0, 0x14, 0xf
/* 80459258  60 00 20 00 */	ori r0, r0, 0x2000
/* 8045925C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80459260:
/* 80459260  3B 5A 00 01 */	addi r26, r26, 1
lbl_80459264:
/* 80459264  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 80459268  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 8045926C  7C 03 00 40 */	cmplw r3, r0
/* 80459270  41 80 FF 94 */	blt lbl_80459204
lbl_80459274:
/* 80459274  3B 7B 00 01 */	addi r27, r27, 1
/* 80459278  2C 1B 00 06 */	cmpwi r27, 6
/* 8045927C  3B 9C 00 14 */	addi r28, r28, 0x14
/* 80459280  41 80 FF 30 */	blt lbl_804591B0
lbl_80459284:
/* 80459284  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80459288  28 04 00 00 */	cmplwi r4, 0
/* 8045928C  41 82 00 28 */	beq lbl_804592B4
/* 80459290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80459294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80459298  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045929C  7F E5 FB 78 */	mr r5, r31
/* 804592A0  4B C1 B7 69 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 804592A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804592A8  41 82 00 0C */	beq lbl_804592B4
/* 804592AC  38 60 00 05 */	li r3, 5
/* 804592B0  48 00 00 74 */	b lbl_80459324
lbl_804592B4:
/* 804592B4  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 804592B8  28 04 00 00 */	cmplwi r4, 0
/* 804592BC  41 82 00 28 */	beq lbl_804592E4
/* 804592C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804592C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804592C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804592CC  7F E5 FB 78 */	mr r5, r31
/* 804592D0  4B C1 B7 39 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 804592D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804592D8  41 82 00 0C */	beq lbl_804592E4
/* 804592DC  38 60 00 05 */	li r3, 5
/* 804592E0  48 00 00 44 */	b lbl_80459324
lbl_804592E4:
/* 804592E4  1C 9D 04 04 */	mulli r4, r29, 0x404
/* 804592E8  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 804592EC  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 804592F0  7C 60 22 14 */	add r3, r0, r4
/* 804592F4  38 63 00 6C */	addi r3, r3, 0x6c
/* 804592F8  7F A4 07 74 */	extsb r4, r29
/* 804592FC  38 A0 00 FF */	li r5, 0xff
/* 80459300  4B D4 F5 ED */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
lbl_80459304:
/* 80459304  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 80459308  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8045930C  1C 1D 04 04 */	mulli r0, r29, 0x404
/* 80459310  7C 63 02 14 */	add r3, r3, r0
/* 80459314  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 80459318  60 00 00 10 */	ori r0, r0, 0x10
/* 8045931C  98 03 03 F4 */	stb r0, 0x3f4(r3)
/* 80459320  38 60 00 04 */	li r3, 4
lbl_80459324:
/* 80459324  39 61 00 30 */	addi r11, r1, 0x30
/* 80459328  4B F0 8E F5 */	bl _restgpr_26
/* 8045932C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80459330  7C 08 03 A6 */	mtlr r0
/* 80459334  38 21 00 30 */	addi r1, r1, 0x30
/* 80459338  4E 80 00 20 */	blr 
