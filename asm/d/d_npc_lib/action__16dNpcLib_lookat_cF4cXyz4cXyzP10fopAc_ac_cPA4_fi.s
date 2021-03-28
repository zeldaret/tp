lbl_80251534:
/* 80251534  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80251538  7C 08 02 A6 */	mflr r0
/* 8025153C  90 01 01 44 */	stw r0, 0x144(r1)
/* 80251540  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80251544  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 80251548  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8025154C  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 80251550  39 61 01 20 */	addi r11, r1, 0x120
/* 80251554  48 11 0C 6D */	bl _savegpr_22
/* 80251558  7C 7E 1B 78 */	mr r30, r3
/* 8025155C  7C 9F 23 78 */	mr r31, r4
/* 80251560  7C BB 2B 78 */	mr r27, r5
/* 80251564  7C DA 33 78 */	mr r26, r6
/* 80251568  7D 19 43 78 */	mr r25, r8
/* 8025156C  7C E3 3B 78 */	mr r3, r7
/* 80251570  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80251574  48 0F 4F 3D */	bl PSMTXCopy
/* 80251578  C0 02 B3 E8 */	lfs f0, lit_3864(r2)
/* 8025157C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80251580  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80251584  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80251588  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8025158C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80251590  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80251594  48 0F 4F 1D */	bl PSMTXCopy
/* 80251598  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8025159C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 802515A0  7C 64 1B 78 */	mr r4, r3
/* 802515A4  48 0F 50 0D */	bl PSMTXInverse
/* 802515A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 802515AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 802515B0  38 81 00 A8 */	addi r4, r1, 0xa8
/* 802515B4  48 0F 4E FD */	bl PSMTXCopy
/* 802515B8  3A C0 00 00 */	li r22, 0
/* 802515BC  3A E0 00 00 */	li r23, 0
/* 802515C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 802515C4  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 802515C8  7F 98 E3 78 */	mr r24, r28
/* 802515CC  48 00 00 64 */	b lbl_80251630
lbl_802515D0:
/* 802515D0  38 61 00 78 */	addi r3, r1, 0x78
/* 802515D4  3B B7 00 04 */	addi r29, r23, 4
/* 802515D8  7F BE EA 14 */	add r29, r30, r29
/* 802515DC  7F A4 EB 78 */	mr r4, r29
/* 802515E0  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 802515E4  48 01 55 51 */	bl __mi__4cXyzCFRC3Vec
/* 802515E8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 802515EC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 802515F0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 802515F4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 802515F8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 802515FC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80251600  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80251604  4B DB B7 61 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80251608  7F 83 E3 78 */	mr r3, r28
/* 8025160C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80251610  7F 85 E3 78 */	mr r5, r28
/* 80251614  48 0F 4E D1 */	bl PSMTXConcat
/* 80251618  7F 03 C3 78 */	mr r3, r24
/* 8025161C  38 81 00 9C */	addi r4, r1, 0x9c
/* 80251620  7F A5 EB 78 */	mr r5, r29
/* 80251624  48 0F 57 49 */	bl PSMTXMultVec
/* 80251628  3A D6 00 01 */	addi r22, r22, 1
/* 8025162C  3A F7 00 0C */	addi r23, r23, 0xc
lbl_80251630:
/* 80251630  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 80251634  7C 16 00 00 */	cmpw r22, r0
/* 80251638  41 80 FF 98 */	blt lbl_802515D0
/* 8025163C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80251640  7F E4 FB 78 */	mr r4, r31
/* 80251644  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80251648  48 01 54 ED */	bl __mi__4cXyzCFRC3Vec
/* 8025164C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80251650  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80251654  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80251658  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8025165C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80251660  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80251664  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80251668  4B DB B6 FD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8025166C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80251670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80251674  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80251678  7C 65 1B 78 */	mr r5, r3
/* 8025167C  48 0F 4E 69 */	bl PSMTXConcat
/* 80251680  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80251684  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80251688  38 81 00 9C */	addi r4, r1, 0x9c
/* 8025168C  7F E5 FB 78 */	mr r5, r31
/* 80251690  48 0F 56 DD */	bl PSMTXMultVec
/* 80251694  38 61 00 60 */	addi r3, r1, 0x60
/* 80251698  7F 64 DB 78 */	mr r4, r27
/* 8025169C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 802516A0  48 01 54 95 */	bl __mi__4cXyzCFRC3Vec
/* 802516A4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 802516A8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 802516AC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 802516B0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 802516B4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 802516B8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 802516BC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 802516C0  4B DB B6 A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 802516C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 802516C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 802516CC  38 81 00 A8 */	addi r4, r1, 0xa8
/* 802516D0  7C 65 1B 78 */	mr r5, r3
/* 802516D4  48 0F 4E 11 */	bl PSMTXConcat
/* 802516D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 802516DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 802516E0  38 81 00 9C */	addi r4, r1, 0x9c
/* 802516E4  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 802516E8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 802516EC  38 A5 00 04 */	addi r5, r5, 4
/* 802516F0  7C BE 2A 14 */	add r5, r30, r5
/* 802516F4  48 0F 56 79 */	bl PSMTXMultVec
/* 802516F8  7F C3 F3 78 */	mr r3, r30
/* 802516FC  48 00 04 69 */	bl setPrm__16dNpcLib_lookat_cFv
/* 80251700  7F C3 F3 78 */	mr r3, r30
/* 80251704  48 00 07 F5 */	bl update__16dNpcLib_lookat_cFv
/* 80251708  C3 E2 B3 EC */	lfs f31, lit_3865(r2)
/* 8025170C  80 7E 00 CC */	lwz r3, 0xcc(r30)
/* 80251710  3B 43 FF FF */	addi r26, r3, -1
/* 80251714  C3 C2 B4 08 */	lfs f30, lit_3869(r2)
/* 80251718  1E FA 00 0C */	mulli r23, r26, 0xc
/* 8025171C  1F 1A 00 06 */	mulli r24, r26, 6
/* 80251720  48 00 03 B8 */	b lbl_80251AD8
lbl_80251724:
/* 80251724  38 61 00 54 */	addi r3, r1, 0x54
/* 80251728  7F E4 FB 78 */	mr r4, r31
/* 8025172C  3B 77 00 04 */	addi r27, r23, 4
/* 80251730  7F 7E DA 14 */	add r27, r30, r27
/* 80251734  7F 65 DB 78 */	mr r5, r27
/* 80251738  48 01 53 FD */	bl __mi__4cXyzCFRC3Vec
/* 8025173C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80251740  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80251744  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80251748  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8025174C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80251750  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80251754  38 61 00 90 */	addi r3, r1, 0x90
/* 80251758  48 01 59 55 */	bl isZero__4cXyzCFv
/* 8025175C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80251760  40 82 03 60 */	bne lbl_80251AC0
/* 80251764  38 61 00 48 */	addi r3, r1, 0x48
/* 80251768  38 81 00 90 */	addi r4, r1, 0x90
/* 8025176C  48 01 57 89 */	bl normalize__4cXyzFv
/* 80251770  38 61 00 3C */	addi r3, r1, 0x3c
/* 80251774  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 80251778  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8025177C  38 84 00 04 */	addi r4, r4, 4
/* 80251780  7C 9E 22 14 */	add r4, r30, r4
/* 80251784  7F 65 DB 78 */	mr r5, r27
/* 80251788  48 01 53 AD */	bl __mi__4cXyzCFRC3Vec
/* 8025178C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80251790  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80251794  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80251798  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8025179C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802517A0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 802517A4  38 61 00 84 */	addi r3, r1, 0x84
/* 802517A8  48 01 59 05 */	bl isZero__4cXyzCFv
/* 802517AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802517B0  40 82 03 10 */	bne lbl_80251AC0
/* 802517B4  38 61 00 30 */	addi r3, r1, 0x30
/* 802517B8  38 81 00 84 */	addi r4, r1, 0x84
/* 802517BC  48 01 57 39 */	bl normalize__4cXyzFv
/* 802517C0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 802517C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802517C8  C0 02 B3 E8 */	lfs f0, lit_3864(r2)
/* 802517CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802517D0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 802517D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802517D8  38 61 00 24 */	addi r3, r1, 0x24
/* 802517DC  48 0F 59 5D */	bl PSVECSquareMag
/* 802517E0  C0 02 B3 E8 */	lfs f0, lit_3864(r2)
/* 802517E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802517E8  40 81 00 58 */	ble lbl_80251840
/* 802517EC  FC 00 08 34 */	frsqrte f0, f1
/* 802517F0  C8 82 B3 F0 */	lfd f4, lit_3866(r2)
/* 802517F4  FC 44 00 32 */	fmul f2, f4, f0
/* 802517F8  C8 62 B3 F8 */	lfd f3, lit_3867(r2)
/* 802517FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80251800  FC 01 00 32 */	fmul f0, f1, f0
/* 80251804  FC 03 00 28 */	fsub f0, f3, f0
/* 80251808  FC 02 00 32 */	fmul f0, f2, f0
/* 8025180C  FC 44 00 32 */	fmul f2, f4, f0
/* 80251810  FC 00 00 32 */	fmul f0, f0, f0
/* 80251814  FC 01 00 32 */	fmul f0, f1, f0
/* 80251818  FC 03 00 28 */	fsub f0, f3, f0
/* 8025181C  FC 02 00 32 */	fmul f0, f2, f0
/* 80251820  FC 44 00 32 */	fmul f2, f4, f0
/* 80251824  FC 00 00 32 */	fmul f0, f0, f0
/* 80251828  FC 01 00 32 */	fmul f0, f1, f0
/* 8025182C  FC 03 00 28 */	fsub f0, f3, f0
/* 80251830  FC 02 00 32 */	fmul f0, f2, f0
/* 80251834  FC 41 00 32 */	fmul f2, f1, f0
/* 80251838  FC 40 10 18 */	frsp f2, f2
/* 8025183C  48 00 00 90 */	b lbl_802518CC
lbl_80251840:
/* 80251840  C8 02 B4 00 */	lfd f0, lit_3868(r2)
/* 80251844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251848  40 80 00 10 */	bge lbl_80251858
/* 8025184C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80251850  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80251854  48 00 00 78 */	b lbl_802518CC
lbl_80251858:
/* 80251858  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8025185C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80251860  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80251864  3C 00 7F 80 */	lis r0, 0x7f80
/* 80251868  7C 03 00 00 */	cmpw r3, r0
/* 8025186C  41 82 00 14 */	beq lbl_80251880
/* 80251870  40 80 00 40 */	bge lbl_802518B0
/* 80251874  2C 03 00 00 */	cmpwi r3, 0
/* 80251878  41 82 00 20 */	beq lbl_80251898
/* 8025187C  48 00 00 34 */	b lbl_802518B0
lbl_80251880:
/* 80251880  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80251884  41 82 00 0C */	beq lbl_80251890
/* 80251888  38 00 00 01 */	li r0, 1
/* 8025188C  48 00 00 28 */	b lbl_802518B4
lbl_80251890:
/* 80251890  38 00 00 02 */	li r0, 2
/* 80251894  48 00 00 20 */	b lbl_802518B4
lbl_80251898:
/* 80251898  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8025189C  41 82 00 0C */	beq lbl_802518A8
/* 802518A0  38 00 00 05 */	li r0, 5
/* 802518A4  48 00 00 10 */	b lbl_802518B4
lbl_802518A8:
/* 802518A8  38 00 00 03 */	li r0, 3
/* 802518AC  48 00 00 08 */	b lbl_802518B4
lbl_802518B0:
/* 802518B0  38 00 00 04 */	li r0, 4
lbl_802518B4:
/* 802518B4  2C 00 00 01 */	cmpwi r0, 1
/* 802518B8  40 82 00 10 */	bne lbl_802518C8
/* 802518BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802518C0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 802518C4  48 00 00 08 */	b lbl_802518CC
lbl_802518C8:
/* 802518C8  FC 40 08 90 */	fmr f2, f1
lbl_802518CC:
/* 802518CC  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 802518D0  48 01 5D A5 */	bl cM_atan2s__Fff
/* 802518D4  7C 03 00 D0 */	neg r0, r3
/* 802518D8  7C 1B 07 34 */	extsh r27, r0
/* 802518DC  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 802518E0  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 802518E4  48 01 5D 91 */	bl cM_atan2s__Fff
/* 802518E8  7C 7D 1B 78 */	mr r29, r3
/* 802518EC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 802518F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802518F4  C0 02 B3 E8 */	lfs f0, lit_3864(r2)
/* 802518F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802518FC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80251900  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80251904  38 61 00 18 */	addi r3, r1, 0x18
/* 80251908  48 0F 58 31 */	bl PSVECSquareMag
/* 8025190C  C0 02 B3 E8 */	lfs f0, lit_3864(r2)
/* 80251910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251914  40 81 00 58 */	ble lbl_8025196C
/* 80251918  FC 00 08 34 */	frsqrte f0, f1
/* 8025191C  C8 82 B3 F0 */	lfd f4, lit_3866(r2)
/* 80251920  FC 44 00 32 */	fmul f2, f4, f0
/* 80251924  C8 62 B3 F8 */	lfd f3, lit_3867(r2)
/* 80251928  FC 00 00 32 */	fmul f0, f0, f0
/* 8025192C  FC 01 00 32 */	fmul f0, f1, f0
/* 80251930  FC 03 00 28 */	fsub f0, f3, f0
/* 80251934  FC 02 00 32 */	fmul f0, f2, f0
/* 80251938  FC 44 00 32 */	fmul f2, f4, f0
/* 8025193C  FC 00 00 32 */	fmul f0, f0, f0
/* 80251940  FC 01 00 32 */	fmul f0, f1, f0
/* 80251944  FC 03 00 28 */	fsub f0, f3, f0
/* 80251948  FC 02 00 32 */	fmul f0, f2, f0
/* 8025194C  FC 44 00 32 */	fmul f2, f4, f0
/* 80251950  FC 00 00 32 */	fmul f0, f0, f0
/* 80251954  FC 01 00 32 */	fmul f0, f1, f0
/* 80251958  FC 03 00 28 */	fsub f0, f3, f0
/* 8025195C  FC 02 00 32 */	fmul f0, f2, f0
/* 80251960  FC 41 00 32 */	fmul f2, f1, f0
/* 80251964  FC 40 10 18 */	frsp f2, f2
/* 80251968  48 00 00 90 */	b lbl_802519F8
lbl_8025196C:
/* 8025196C  C8 02 B4 00 */	lfd f0, lit_3868(r2)
/* 80251970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80251974  40 80 00 10 */	bge lbl_80251984
/* 80251978  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8025197C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80251980  48 00 00 78 */	b lbl_802519F8
lbl_80251984:
/* 80251984  D0 21 00 08 */	stfs f1, 8(r1)
/* 80251988  80 81 00 08 */	lwz r4, 8(r1)
/* 8025198C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80251990  3C 00 7F 80 */	lis r0, 0x7f80
/* 80251994  7C 03 00 00 */	cmpw r3, r0
/* 80251998  41 82 00 14 */	beq lbl_802519AC
/* 8025199C  40 80 00 40 */	bge lbl_802519DC
/* 802519A0  2C 03 00 00 */	cmpwi r3, 0
/* 802519A4  41 82 00 20 */	beq lbl_802519C4
/* 802519A8  48 00 00 34 */	b lbl_802519DC
lbl_802519AC:
/* 802519AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802519B0  41 82 00 0C */	beq lbl_802519BC
/* 802519B4  38 00 00 01 */	li r0, 1
/* 802519B8  48 00 00 28 */	b lbl_802519E0
lbl_802519BC:
/* 802519BC  38 00 00 02 */	li r0, 2
/* 802519C0  48 00 00 20 */	b lbl_802519E0
lbl_802519C4:
/* 802519C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802519C8  41 82 00 0C */	beq lbl_802519D4
/* 802519CC  38 00 00 05 */	li r0, 5
/* 802519D0  48 00 00 10 */	b lbl_802519E0
lbl_802519D4:
/* 802519D4  38 00 00 03 */	li r0, 3
/* 802519D8  48 00 00 08 */	b lbl_802519E0
lbl_802519DC:
/* 802519DC  38 00 00 04 */	li r0, 4
lbl_802519E0:
/* 802519E0  2C 00 00 01 */	cmpwi r0, 1
/* 802519E4  40 82 00 10 */	bne lbl_802519F4
/* 802519E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802519EC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 802519F0  48 00 00 08 */	b lbl_802519F8
lbl_802519F4:
/* 802519F4  FC 40 08 90 */	fmr f2, f1
lbl_802519F8:
/* 802519F8  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 802519FC  48 01 5C 79 */	bl cM_atan2s__Fff
/* 80251A00  7C 03 00 D0 */	neg r0, r3
/* 80251A04  7C 16 07 34 */	extsh r22, r0
/* 80251A08  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80251A0C  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 80251A10  48 01 5C 65 */	bl cM_atan2s__Fff
/* 80251A14  7F 9E C2 14 */	add r28, r30, r24
/* 80251A18  A8 9C 00 4C */	lha r4, 0x4c(r28)
/* 80251A1C  7C 16 D8 50 */	subf r0, r22, r27
/* 80251A20  C8 22 B4 10 */	lfd f1, lit_3873(r2)
/* 80251A24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80251A28  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80251A2C  3C A0 43 30 */	lis r5, 0x4330
/* 80251A30  90 A1 00 D8 */	stw r5, 0xd8(r1)
/* 80251A34  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 80251A38  EC 00 08 28 */	fsubs f0, f0, f1
/* 80251A3C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80251A40  FC 00 00 1E */	fctiwz f0, f0
/* 80251A44  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80251A48  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80251A4C  7C 04 02 14 */	add r0, r4, r0
/* 80251A50  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 80251A54  A8 9C 00 4E */	lha r4, 0x4e(r28)
/* 80251A58  7C 63 07 34 */	extsh r3, r3
/* 80251A5C  7F A0 07 34 */	extsh r0, r29
/* 80251A60  7C 03 00 50 */	subf r0, r3, r0
/* 80251A64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80251A68  90 01 00 EC */	stw r0, 0xec(r1)
/* 80251A6C  90 A1 00 E8 */	stw r5, 0xe8(r1)
/* 80251A70  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 80251A74  EC 00 08 28 */	fsubs f0, f0, f1
/* 80251A78  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80251A7C  FC 00 00 1E */	fctiwz f0, f0
/* 80251A80  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80251A84  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80251A88  7C 04 02 14 */	add r0, r4, r0
/* 80251A8C  B0 1C 00 4E */	sth r0, 0x4e(r28)
/* 80251A90  7F C3 F3 78 */	mr r3, r30
/* 80251A94  38 9C 00 4C */	addi r4, r28, 0x4c
/* 80251A98  A8 BC 00 34 */	lha r5, 0x34(r28)
/* 80251A9C  A8 DC 00 94 */	lha r6, 0x94(r28)
/* 80251AA0  A8 FC 00 7C */	lha r7, 0x7c(r28)
/* 80251AA4  48 00 05 75 */	bl limitter__16dNpcLib_lookat_cFPssss
/* 80251AA8  7F C3 F3 78 */	mr r3, r30
/* 80251AAC  38 9C 00 4E */	addi r4, r28, 0x4e
/* 80251AB0  A8 BC 00 36 */	lha r5, 0x36(r28)
/* 80251AB4  A8 DC 00 96 */	lha r6, 0x96(r28)
/* 80251AB8  A8 FC 00 7E */	lha r7, 0x7e(r28)
/* 80251ABC  48 00 05 5D */	bl limitter__16dNpcLib_lookat_cFPssss
lbl_80251AC0:
/* 80251AC0  EF FF 07 B2 */	fmuls f31, f31, f30
/* 80251AC4  7F C3 F3 78 */	mr r3, r30
/* 80251AC8  48 00 04 31 */	bl update__16dNpcLib_lookat_cFv
/* 80251ACC  3B 5A FF FF */	addi r26, r26, -1
/* 80251AD0  3B 18 FF FA */	addi r24, r24, -6
/* 80251AD4  3A F7 FF F4 */	addi r23, r23, -12
lbl_80251AD8:
/* 80251AD8  2C 1A 00 00 */	cmpwi r26, 0
/* 80251ADC  41 80 00 0C */	blt lbl_80251AE8
/* 80251AE0  2C 19 00 01 */	cmpwi r25, 1
/* 80251AE4  41 82 FC 40 */	beq lbl_80251724
lbl_80251AE8:
/* 80251AE8  80 0D 8B E0 */	lwz r0, Zero__5csXyz(r13)
/* 80251AEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80251AF0  A0 0D 8B E4 */	lhz r0, data_80451164(r13)
/* 80251AF4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80251AF8  3A C0 00 00 */	li r22, 0
/* 80251AFC  3B 20 00 00 */	li r25, 0
/* 80251B00  3A E0 00 00 */	li r23, 0
lbl_80251B04:
/* 80251B04  38 61 00 10 */	addi r3, r1, 0x10
/* 80251B08  7F 1E CA 14 */	add r24, r30, r25
/* 80251B0C  38 98 00 4C */	addi r4, r24, 0x4c
/* 80251B10  48 01 59 4D */	bl __apl__5csXyzFR5csXyz
/* 80251B14  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80251B18  B0 18 00 64 */	sth r0, 0x64(r24)
/* 80251B1C  A8 01 00 12 */	lha r0, 0x12(r1)
/* 80251B20  B0 18 00 66 */	sth r0, 0x66(r24)
/* 80251B24  B2 F8 00 68 */	sth r23, 0x68(r24)
/* 80251B28  3A D6 00 01 */	addi r22, r22, 1
/* 80251B2C  2C 16 00 04 */	cmpwi r22, 4
/* 80251B30  3B 39 00 06 */	addi r25, r25, 6
/* 80251B34  41 80 FF D0 */	blt lbl_80251B04
/* 80251B38  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 80251B3C  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80251B40  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 80251B44  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80251B48  39 61 01 20 */	addi r11, r1, 0x120
/* 80251B4C  48 11 06 C1 */	bl _restgpr_22
/* 80251B50  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80251B54  7C 08 03 A6 */	mtlr r0
/* 80251B58  38 21 01 40 */	addi r1, r1, 0x140
/* 80251B5C  4E 80 00 20 */	blr 
