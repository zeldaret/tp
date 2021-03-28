lbl_800B80C4:
/* 800B80C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B80C8  7C 08 02 A6 */	mflr r0
/* 800B80CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B80D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B80D4  93 C1 00 08 */	stw r30, 8(r1)
/* 800B80D8  7C 7F 1B 78 */	mr r31, r3
/* 800B80DC  38 00 00 00 */	li r0, 0
/* 800B80E0  88 63 2F AA */	lbz r3, 0x2faa(r3)
/* 800B80E4  28 03 00 01 */	cmplwi r3, 1
/* 800B80E8  41 82 00 0C */	beq lbl_800B80F4
/* 800B80EC  28 03 00 02 */	cmplwi r3, 2
/* 800B80F0  40 82 00 08 */	bne lbl_800B80F8
lbl_800B80F4:
/* 800B80F4  38 00 00 01 */	li r0, 1
lbl_800B80F8:
/* 800B80F8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B80FC  40 82 00 38 */	bne lbl_800B8134
/* 800B8100  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800B8104  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 800B8108  40 82 00 2C */	bne lbl_800B8134
/* 800B810C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B8110  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B8114  40 82 00 20 */	bne lbl_800B8134
/* 800B8118  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800B811C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B8120  41 82 01 00 */	beq lbl_800B8220
/* 800B8124  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800B8128  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800B812C  7C 80 00 39 */	and. r0, r4, r0
/* 800B8130  40 82 00 F0 */	bne lbl_800B8220
lbl_800B8134:
/* 800B8134  80 1F 28 38 */	lwz r0, 0x2838(r31)
/* 800B8138  28 00 00 00 */	cmplwi r0, 0
/* 800B813C  40 82 00 E4 */	bne lbl_800B8220
/* 800B8140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B8144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B8148  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800B814C  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 800B8150  40 82 00 D0 */	bne lbl_800B8220
/* 800B8154  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800B8158  28 00 00 38 */	cmplwi r0, 0x38
/* 800B815C  41 82 00 C4 */	beq lbl_800B8220
/* 800B8160  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800B8164  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800B8168  40 82 00 B8 */	bne lbl_800B8220
/* 800B816C  48 00 82 35 */	bl checkCloudSea__9daAlink_cFv
/* 800B8170  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8174  40 82 00 AC */	bne lbl_800B8220
/* 800B8178  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800B817C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800B8180  38 63 04 7F */	addi r3, r3, 0x47f
/* 800B8184  4B FE 58 DD */	bl checkStageName__9daAlink_cFPCc
/* 800B8188  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B818C  40 82 00 94 */	bne lbl_800B8220
/* 800B8190  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800B8194  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800B8198  38 63 01 2C */	addi r3, r3, 0x12c
/* 800B819C  4B FE 58 C5 */	bl checkStageName__9daAlink_cFPCc
/* 800B81A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B81A4  41 82 00 2C */	beq lbl_800B81D0
/* 800B81A8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800B81AC  2C 00 00 32 */	cmpwi r0, 0x32
/* 800B81B0  40 82 00 14 */	bne lbl_800B81C4
/* 800B81B4  38 60 00 00 */	li r3, 0
/* 800B81B8  4B F7 47 C5 */	bl getLayerNo__14dComIfG_play_cFi
/* 800B81BC  2C 03 00 00 */	cmpwi r3, 0
/* 800B81C0  41 82 00 60 */	beq lbl_800B8220
lbl_800B81C4:
/* 800B81C4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800B81C8  2C 00 00 33 */	cmpwi r0, 0x33
/* 800B81CC  41 82 00 54 */	beq lbl_800B8220
lbl_800B81D0:
/* 800B81D0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B81D4  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B81D8  41 82 00 2C */	beq lbl_800B8204
/* 800B81DC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800B81E0  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800B81E4  38 63 00 3B */	addi r3, r3, 0x3b
/* 800B81E8  4B FE 58 79 */	bl checkStageName__9daAlink_cFPCc
/* 800B81EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B81F0  41 82 00 30 */	beq lbl_800B8220
/* 800B81F4  C0 3F 36 AC */	lfs f1, 0x36ac(r31)
/* 800B81F8  48 1A FF ED */	bl cBgW_CheckBGround__Ff
/* 800B81FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8200  41 82 00 20 */	beq lbl_800B8220
lbl_800B8204:
/* 800B8204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B8208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B820C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800B8210  38 80 61 40 */	li r4, 0x6140
/* 800B8214  4B F7 C7 A9 */	bl isEventBit__11dSv_event_cCFUs
/* 800B8218  2C 03 00 00 */	cmpwi r3, 0
/* 800B821C  41 82 00 0C */	beq lbl_800B8228
lbl_800B8220:
/* 800B8220  38 60 00 00 */	li r3, 0
/* 800B8224  48 00 01 38 */	b lbl_800B835C
lbl_800B8228:
/* 800B8228  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B822C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B8230  41 82 01 28 */	beq lbl_800B8358
/* 800B8234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B8238  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800B823C  38 64 5B 48 */	addi r3, r4, 0x5b48
/* 800B8240  80 84 5B 50 */	lwz r4, 0x5b50(r4)
/* 800B8244  4B FB B6 89 */	bl convPId__10dAttHint_cFUi
/* 800B8248  7C 7E 1B 79 */	or. r30, r3, r3
/* 800B824C  41 82 00 1C */	beq lbl_800B8268
/* 800B8250  38 00 00 08 */	li r0, 8
/* 800B8254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B8258  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B825C  98 03 5E 33 */	stb r0, 0x5e33(r3)
/* 800B8260  38 00 00 00 */	li r0, 0
/* 800B8264  98 03 5E 4E */	stb r0, 0x5e4e(r3)
lbl_800B8268:
/* 800B8268  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 800B826C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 800B8270  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 800B8274  60 00 08 00 */	ori r0, r0, 0x800
/* 800B8278  B0 03 00 AE */	sth r0, 0xae(r3)
/* 800B827C  7F E3 FB 78 */	mr r3, r31
/* 800B8280  4B FF A4 2D */	bl midnaTalkTrigger__9daAlink_cCFv
/* 800B8284  2C 03 00 00 */	cmpwi r3, 0
/* 800B8288  41 82 00 D0 */	beq lbl_800B8358
/* 800B828C  28 1E 00 00 */	cmplwi r30, 0
/* 800B8290  41 82 00 54 */	beq lbl_800B82E4
/* 800B8294  A8 1E 00 08 */	lha r0, 8(r30)
/* 800B8298  2C 00 02 C1 */	cmpwi r0, 0x2c1
/* 800B829C  40 82 00 30 */	bne lbl_800B82CC
/* 800B82A0  88 BE 05 6C */	lbz r5, 0x56c(r30)
/* 800B82A4  28 05 00 FF */	cmplwi r5, 0xff
/* 800B82A8  41 82 00 24 */	beq lbl_800B82CC
/* 800B82AC  7F C3 F3 78 */	mr r3, r30
/* 800B82B0  A8 9E 05 76 */	lha r4, 0x576(r30)
/* 800B82B4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800B82B8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800B82BC  38 E0 00 00 */	li r7, 0
/* 800B82C0  39 00 00 01 */	li r8, 1
/* 800B82C4  4B F6 33 B9 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 800B82C8  48 00 00 70 */	b lbl_800B8338
lbl_800B82CC:
/* 800B82CC  7F E3 FB 78 */	mr r3, r31
/* 800B82D0  7F C4 F3 78 */	mr r4, r30
/* 800B82D4  38 A0 00 00 */	li r5, 0
/* 800B82D8  38 C0 00 00 */	li r6, 0
/* 800B82DC  4B F6 2D 8D */	bl fopAcM_orderTalkEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
/* 800B82E0  48 00 00 58 */	b lbl_800B8338
lbl_800B82E4:
/* 800B82E4  80 1F 28 00 */	lwz r0, 0x2800(r31)
/* 800B82E8  28 00 00 00 */	cmplwi r0, 0
/* 800B82EC  41 82 00 38 */	beq lbl_800B8324
/* 800B82F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B82F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B82F8  90 03 5E F0 */	stw r0, 0x5ef0(r3)
/* 800B82FC  38 00 00 00 */	li r0, 0
/* 800B8300  90 03 5E F4 */	stw r0, 0x5ef4(r3)
/* 800B8304  90 03 5E F8 */	stw r0, 0x5ef8(r3)
/* 800B8308  90 03 5E FC */	stw r0, 0x5efc(r3)
/* 800B830C  90 03 5F 00 */	stw r0, 0x5f00(r3)
/* 800B8310  90 03 5F 04 */	stw r0, 0x5f04(r3)
/* 800B8314  90 03 5F 08 */	stw r0, 0x5f08(r3)
/* 800B8318  90 03 5F 0C */	stw r0, 0x5f0c(r3)
/* 800B831C  90 03 5F 10 */	stw r0, 0x5f10(r3)
/* 800B8320  90 03 5F 14 */	stw r0, 0x5f14(r3)
lbl_800B8324:
/* 800B8324  7F E3 FB 78 */	mr r3, r31
/* 800B8328  80 8D 8A 98 */	lwz r4, m_midnaActor__9daPy_py_c(r13)
/* 800B832C  38 A0 00 00 */	li r5, 0
/* 800B8330  38 C0 00 00 */	li r6, 0
/* 800B8334  4B F6 2D 35 */	bl fopAcM_orderTalkEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
lbl_800B8338:
/* 800B8338  C0 1F 35 94 */	lfs f0, 0x3594(r31)
/* 800B833C  D0 1F 35 A0 */	stfs f0, 0x35a0(r31)
/* 800B8340  C0 1F 35 98 */	lfs f0, 0x3598(r31)
/* 800B8344  D0 1F 35 A4 */	stfs f0, 0x35a4(r31)
/* 800B8348  C0 1F 35 9C */	lfs f0, 0x359c(r31)
/* 800B834C  D0 1F 35 A8 */	stfs f0, 0x35a8(r31)
/* 800B8350  38 60 00 01 */	li r3, 1
/* 800B8354  48 00 00 08 */	b lbl_800B835C
lbl_800B8358:
/* 800B8358  38 60 00 00 */	li r3, 0
lbl_800B835C:
/* 800B835C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B8360  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B8364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B8368  7C 08 03 A6 */	mtlr r0
/* 800B836C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B8370  4E 80 00 20 */	blr 
