lbl_809D0140:
/* 809D0140  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809D0144  7C 08 02 A6 */	mflr r0
/* 809D0148  90 01 00 44 */	stw r0, 0x44(r1)
/* 809D014C  39 61 00 40 */	addi r11, r1, 0x40
/* 809D0150  4B 99 20 79 */	bl _savegpr_24
/* 809D0154  7C 7E 1B 78 */	mr r30, r3
/* 809D0158  3C 80 80 9D */	lis r4, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D015C  3B E4 3A 04 */	addi r31, r4, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D0160  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809D0164  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809D0168  40 82 00 1C */	bne lbl_809D0184
/* 809D016C  28 1E 00 00 */	cmplwi r30, 0
/* 809D0170  41 82 00 08 */	beq lbl_809D0178
/* 809D0174  4B FF FB B9 */	bl __ct__11daNpc_Grd_cFv
lbl_809D0178:
/* 809D0178  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809D017C  60 00 00 08 */	ori r0, r0, 8
/* 809D0180  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809D0184:
/* 809D0184  7F C3 F3 78 */	mr r3, r30
/* 809D0188  48 00 18 09 */	bl getTypeFromParam__11daNpc_Grd_cFv
/* 809D018C  98 7E 0E 18 */	stb r3, 0xe18(r30)
/* 809D0190  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809D0194  3C 03 00 00 */	addis r0, r3, 0
/* 809D0198  28 00 FF FF */	cmplwi r0, 0xffff
/* 809D019C  41 82 00 0C */	beq lbl_809D01A8
/* 809D01A0  90 7E 0E 10 */	stw r3, 0xe10(r30)
/* 809D01A4  48 00 00 0C */	b lbl_809D01B0
lbl_809D01A8:
/* 809D01A8  38 00 FF FF */	li r0, -1
/* 809D01AC  90 1E 0E 10 */	stw r0, 0xe10(r30)
lbl_809D01B0:
/* 809D01B0  7F C3 F3 78 */	mr r3, r30
/* 809D01B4  48 00 17 FD */	bl isDelete__11daNpc_Grd_cFv
/* 809D01B8  2C 03 00 00 */	cmpwi r3, 0
/* 809D01BC  41 82 00 0C */	beq lbl_809D01C8
/* 809D01C0  38 60 00 05 */	li r3, 5
/* 809D01C4  48 00 02 38 */	b lbl_809D03FC
lbl_809D01C8:
/* 809D01C8  3B 20 00 00 */	li r25, 0
/* 809D01CC  3B 00 00 00 */	li r24, 0
/* 809D01D0  3B A0 00 00 */	li r29, 0
/* 809D01D4  3B 80 00 00 */	li r28, 0
/* 809D01D8  3C 60 80 9D */	lis r3, l_resNames@ha /* 0x809D3CFC@ha */
/* 809D01DC  3B 43 3C FC */	addi r26, r3, l_resNames@l /* 0x809D3CFC@l */
/* 809D01E0  3C 60 80 9D */	lis r3, l_loadRes_list@ha /* 0x809D3CF0@ha */
/* 809D01E4  3B 63 3C F0 */	addi r27, r3, l_loadRes_list@l /* 0x809D3CF0@l */
/* 809D01E8  48 00 00 48 */	b lbl_809D0230
lbl_809D01EC:
/* 809D01EC  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 809D01F0  7C 7E 1A 14 */	add r3, r30, r3
/* 809D01F4  54 00 10 3A */	slwi r0, r0, 2
/* 809D01F8  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809D01FC  4B 65 CC C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809D0200  2C 03 00 05 */	cmpwi r3, 5
/* 809D0204  41 82 00 0C */	beq lbl_809D0210
/* 809D0208  2C 03 00 03 */	cmpwi r3, 3
/* 809D020C  40 82 00 0C */	bne lbl_809D0218
lbl_809D0210:
/* 809D0210  38 60 00 05 */	li r3, 5
/* 809D0214  48 00 01 E8 */	b lbl_809D03FC
lbl_809D0218:
/* 809D0218  2C 03 00 04 */	cmpwi r3, 4
/* 809D021C  40 82 00 08 */	bne lbl_809D0224
/* 809D0220  3B 39 00 01 */	addi r25, r25, 1
lbl_809D0224:
/* 809D0224  3B 18 00 01 */	addi r24, r24, 1
/* 809D0228  3B BD 00 04 */	addi r29, r29, 4
/* 809D022C  3B 9C 00 08 */	addi r28, r28, 8
lbl_809D0230:
/* 809D0230  88 1E 0E 18 */	lbz r0, 0xe18(r30)
/* 809D0234  54 00 10 3A */	slwi r0, r0, 2
/* 809D0238  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809D023C  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809D0240  2C 00 00 00 */	cmpwi r0, 0
/* 809D0244  40 80 FF A8 */	bge lbl_809D01EC
/* 809D0248  7C 19 C0 00 */	cmpw r25, r24
/* 809D024C  40 82 01 AC */	bne lbl_809D03F8
/* 809D0250  7F C3 F3 78 */	mr r3, r30
/* 809D0254  3C 80 80 9D */	lis r4, createHeapCallBack__11daNpc_Grd_cFP10fopAc_ac_c@ha /* 0x809D0B70@ha */
/* 809D0258  38 84 0B 70 */	addi r4, r4, createHeapCallBack__11daNpc_Grd_cFP10fopAc_ac_c@l /* 0x809D0B70@l */
/* 809D025C  38 A0 3A 50 */	li r5, 0x3a50
/* 809D0260  4B 64 A2 51 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809D0264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D0268  40 82 00 0C */	bne lbl_809D0274
/* 809D026C  38 60 00 05 */	li r3, 5
/* 809D0270  48 00 01 8C */	b lbl_809D03FC
lbl_809D0274:
/* 809D0274  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809D0278  80 63 00 04 */	lwz r3, 4(r3)
/* 809D027C  38 03 00 24 */	addi r0, r3, 0x24
/* 809D0280  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809D0284  7F C3 F3 78 */	mr r3, r30
/* 809D0288  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 809D028C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 809D0290  FC 60 08 90 */	fmr f3, f1
/* 809D0294  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 809D0298  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 809D029C  FC C0 20 90 */	fmr f6, f4
/* 809D02A0  4B 64 A2 A9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809D02A4  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809D02A8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809D02AC  38 BE 05 38 */	addi r5, r30, 0x538
/* 809D02B0  38 C0 00 03 */	li r6, 3
/* 809D02B4  38 E0 00 01 */	li r7, 1
/* 809D02B8  4B 8F 02 79 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809D02BC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809D02C0  38 9F 00 00 */	addi r4, r31, 0
/* 809D02C4  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809D02C8  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809D02CC  4B 6A 5C 8D */	bl SetWall__12dBgS_AcchCirFff
/* 809D02D0  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809D02D4  90 01 00 08 */	stw r0, 8(r1)
/* 809D02D8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809D02DC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809D02E0  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809D02E4  7F C6 F3 78 */	mr r6, r30
/* 809D02E8  38 E0 00 01 */	li r7, 1
/* 809D02EC  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809D02F0  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809D02F4  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809D02F8  4B 6A 5F 51 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809D02FC  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809D0300  38 9F 00 00 */	addi r4, r31, 0
/* 809D0304  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809D0308  FC 00 00 1E */	fctiwz f0, f0
/* 809D030C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809D0310  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809D0314  38 A0 00 00 */	li r5, 0
/* 809D0318  7F C6 F3 78 */	mr r6, r30
/* 809D031C  4B 6B 35 45 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809D0320  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 809D0324  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 809D0328  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 809D032C  4B 6B 45 89 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809D0330  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 809D0334  90 1E 0C D8 */	stw r0, 0xcd8(r30)
/* 809D0338  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80152614@ha */
/* 809D033C  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80152614@l */
/* 809D0340  90 1E 0D 38 */	stw r0, 0xd38(r30)
/* 809D0344  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809D0348  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D034C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D0350  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809D0354  4B 6A 67 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809D0358  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809D035C  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809D0360  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809D0364  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809D0368  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809D036C  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809D0370  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809D0374  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809D0378  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809D037C  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809D0380  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809D0384  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809D0388  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809D038C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809D0390  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809D0394  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809D0398  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809D039C  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809D03A0  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809D03A4  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809D03A8  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809D03AC  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809D03B0  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809D03B4  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809D03B8  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809D03BC  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809D03C0  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809D03C4  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809D03C8  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809D03CC  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809D03D0  7F C3 F3 78 */	mr r3, r30
/* 809D03D4  4B 78 29 B1 */	bl setEnvTevColor__8daNpcF_cFv
/* 809D03D8  7F C3 F3 78 */	mr r3, r30
/* 809D03DC  4B 78 2A 05 */	bl setRoomNo__8daNpcF_cFv
/* 809D03E0  7F C3 F3 78 */	mr r3, r30
/* 809D03E4  48 00 16 39 */	bl reset__11daNpc_Grd_cFv
/* 809D03E8  7F C3 F3 78 */	mr r3, r30
/* 809D03EC  48 00 04 A1 */	bl Execute__11daNpc_Grd_cFv
/* 809D03F0  38 60 00 04 */	li r3, 4
/* 809D03F4  48 00 00 08 */	b lbl_809D03FC
lbl_809D03F8:
/* 809D03F8  38 60 00 00 */	li r3, 0
lbl_809D03FC:
/* 809D03FC  39 61 00 40 */	addi r11, r1, 0x40
/* 809D0400  4B 99 1E 15 */	bl _restgpr_24
/* 809D0404  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809D0408  7C 08 03 A6 */	mtlr r0
/* 809D040C  38 21 00 40 */	addi r1, r1, 0x40
/* 809D0410  4E 80 00 20 */	blr 
