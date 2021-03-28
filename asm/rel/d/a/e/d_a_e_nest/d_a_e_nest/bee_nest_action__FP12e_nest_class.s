lbl_805031CC:
/* 805031CC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805031D0  7C 08 02 A6 */	mflr r0
/* 805031D4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805031D8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 805031DC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 805031E0  39 61 00 90 */	addi r11, r1, 0x90
/* 805031E4  4B E5 EF E4 */	b _savegpr_24
/* 805031E8  7C 7D 1B 78 */	mr r29, r3
/* 805031EC  3C 60 80 50 */	lis r3, lit_3999@ha
/* 805031F0  3B E3 46 DC */	addi r31, r3, lit_3999@l
/* 805031F4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805031F8  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 805031FC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80503200  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80503204  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80503208  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 8050320C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80503210  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80503214  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80503218  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8050321C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80503220  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80503224  C0 5D 05 3C */	lfs f2, 0x53c(r29)
/* 80503228  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8050322C  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80503230  EC 01 00 32 */	fmuls f0, f1, f0
/* 80503234  EC 02 00 2A */	fadds f0, f2, f0
/* 80503238  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 8050323C  3B 20 00 00 */	li r25, 0
/* 80503240  3B C0 00 00 */	li r30, 0
/* 80503244  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80503248  3B 40 00 00 */	li r26, 0
/* 8050324C  88 7D 05 B0 */	lbz r3, 0x5b0(r29)
/* 80503250  7C 60 07 75 */	extsb. r0, r3
/* 80503254  41 82 00 0C */	beq lbl_80503260
/* 80503258  38 03 FF FF */	addi r0, r3, -1
/* 8050325C  98 1D 05 B0 */	stb r0, 0x5b0(r29)
lbl_80503260:
/* 80503260  38 7D 07 E8 */	addi r3, r29, 0x7e8
/* 80503264  4B B8 05 CC */	b Move__10dCcD_GSttsFv
/* 80503268  A8 1D 05 7E */	lha r0, 0x57e(r29)
/* 8050326C  2C 00 00 03 */	cmpwi r0, 3
/* 80503270  41 82 00 6C */	beq lbl_805032DC
/* 80503274  40 80 00 1C */	bge lbl_80503290
/* 80503278  2C 00 00 01 */	cmpwi r0, 1
/* 8050327C  41 82 00 30 */	beq lbl_805032AC
/* 80503280  40 80 00 50 */	bge lbl_805032D0
/* 80503284  2C 00 00 00 */	cmpwi r0, 0
/* 80503288  40 80 00 18 */	bge lbl_805032A0
/* 8050328C  48 00 00 90 */	b lbl_8050331C
lbl_80503290:
/* 80503290  2C 00 00 05 */	cmpwi r0, 5
/* 80503294  41 82 00 70 */	beq lbl_80503304
/* 80503298  40 80 00 84 */	bge lbl_8050331C
/* 8050329C  48 00 00 54 */	b lbl_805032F0
lbl_805032A0:
/* 805032A0  7F A3 EB 78 */	mr r3, r29
/* 805032A4  4B FF E9 39 */	bl e_nest_normal__FP12e_nest_class
/* 805032A8  48 00 00 74 */	b lbl_8050331C
lbl_805032AC:
/* 805032AC  7F A3 EB 78 */	mr r3, r29
/* 805032B0  4B FF EF D1 */	bl e_nest_drop__FP12e_nest_class
/* 805032B4  3B 40 00 01 */	li r26, 1
/* 805032B8  A8 1D 05 82 */	lha r0, 0x582(r29)
/* 805032BC  2C 00 00 00 */	cmpwi r0, 0
/* 805032C0  40 82 00 08 */	bne lbl_805032C8
/* 805032C4  3B 20 00 01 */	li r25, 1
lbl_805032C8:
/* 805032C8  3B C0 00 01 */	li r30, 1
/* 805032CC  48 00 00 50 */	b lbl_8050331C
lbl_805032D0:
/* 805032D0  7F A3 EB 78 */	mr r3, r29
/* 805032D4  4B FF FE 4D */	bl e_nest_hook__FP12e_nest_class
/* 805032D8  48 00 00 44 */	b lbl_8050331C
lbl_805032DC:
/* 805032DC  7F A3 EB 78 */	mr r3, r29
/* 805032E0  4B FF F2 E5 */	bl e_nest_carry__FP12e_nest_class
/* 805032E4  7C 79 1B 78 */	mr r25, r3
/* 805032E8  C3 FF 00 44 */	lfs f31, 0x44(r31)
/* 805032EC  48 00 00 30 */	b lbl_8050331C
lbl_805032F0:
/* 805032F0  7F A3 EB 78 */	mr r3, r29
/* 805032F4  4B FF F7 E1 */	bl e_nest_float__FP12e_nest_class
/* 805032F8  3B 20 00 01 */	li r25, 1
/* 805032FC  3B 40 00 01 */	li r26, 1
/* 80503300  48 00 00 1C */	b lbl_8050331C
lbl_80503304:
/* 80503304  7F A3 EB 78 */	mr r3, r29
/* 80503308  4B FF FA 29 */	bl e_nest_hahen__FP12e_nest_class
/* 8050330C  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80503310  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80503314  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80503318  48 00 03 30 */	b lbl_80503648
lbl_8050331C:
/* 8050331C  38 7D 05 8C */	addi r3, r29, 0x58c
/* 80503320  FC 20 F8 90 */	fmr f1, f31
/* 80503324  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80503328  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8050332C  4B D6 C7 10 */	b cLib_addCalc2__FPffff
/* 80503330  7F 20 07 75 */	extsb. r0, r25
/* 80503334  41 82 00 18 */	beq lbl_8050334C
/* 80503338  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 8050333C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80503340  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80503344  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80503348  4B B7 37 64 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_8050334C:
/* 8050334C  7F 40 07 75 */	extsb. r0, r26
/* 80503350  41 82 00 44 */	beq lbl_80503394
/* 80503354  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80503358  60 00 00 10 */	ori r0, r0, 0x10
/* 8050335C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80503360  38 00 00 2C */	li r0, 0x2c
/* 80503364  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80503368  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8050336C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80503370  41 82 00 30 */	beq lbl_805033A0
/* 80503374  38 00 00 03 */	li r0, 3
/* 80503378  B0 1D 05 7E */	sth r0, 0x57e(r29)
/* 8050337C  38 00 00 00 */	li r0, 0
/* 80503380  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 80503384  80 1D 08 34 */	lwz r0, 0x834(r29)
/* 80503388  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8050338C  90 1D 08 34 */	stw r0, 0x834(r29)
/* 80503390  48 00 00 10 */	b lbl_805033A0
lbl_80503394:
/* 80503394  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80503398  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8050339C  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_805033A0:
/* 805033A0  7F C0 07 75 */	extsb. r0, r30
/* 805033A4  41 82 01 94 */	beq lbl_80503538
/* 805033A8  7F A3 EB 78 */	mr r3, r29
/* 805033AC  4B FF F3 85 */	bl water_check__FP12e_nest_class
/* 805033B0  2C 03 00 00 */	cmpwi r3, 0
/* 805033B4  41 82 01 84 */	beq lbl_80503538
/* 805033B8  38 00 00 04 */	li r0, 4
/* 805033BC  B0 1D 05 7E */	sth r0, 0x57e(r29)
/* 805033C0  38 00 00 00 */	li r0, 0
/* 805033C4  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 805033C8  38 00 00 02 */	li r0, 2
/* 805033CC  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 805033D0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 805033D4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 805033D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805033DC  40 80 00 40 */	bge lbl_8050341C
/* 805033E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805033E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805033E8  80 63 00 00 */	lwz r3, 0(r3)
/* 805033EC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805033F0  4B B0 8F EC */	b mDoMtx_YrotS__FPA4_fs
/* 805033F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805033F8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805033FC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80503400  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80503404  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80503408  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8050340C  38 61 00 58 */	addi r3, r1, 0x58
/* 80503410  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80503414  4B D6 DA D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80503418  48 00 00 38 */	b lbl_80503450
lbl_8050341C:
/* 8050341C  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80503420  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80503424  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80503428  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8050342C  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80503430  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80503434  EC 00 00 72 */	fmuls f0, f0, f1
/* 80503438  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8050343C  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80503440  EC 00 00 72 */	fmuls f0, f0, f1
/* 80503444  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80503448  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8050344C  D0 1D 0A A8 */	stfs f0, 0xaa8(r29)
lbl_80503450:
/* 80503450  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80503454  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80503458  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 8050345C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80503460  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80503464  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80503468  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8050346C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80503470  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80503474  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80503478  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8050347C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80503480  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80503484  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80503488  3B 00 00 00 */	li r24, 0
/* 8050348C  3B C0 00 00 */	li r30, 0
/* 80503490  3B 80 00 00 */	li r28, 0
/* 80503494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80503498  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8050349C  3C 60 80 50 */	lis r3, w_eff_id@ha
/* 805034A0  3B 63 48 14 */	addi r27, r3, w_eff_id@l
lbl_805034A4:
/* 805034A4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805034A8  38 00 00 FF */	li r0, 0xff
/* 805034AC  90 01 00 08 */	stw r0, 8(r1)
/* 805034B0  38 80 00 00 */	li r4, 0
/* 805034B4  90 81 00 0C */	stw r4, 0xc(r1)
/* 805034B8  38 00 FF FF */	li r0, -1
/* 805034BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805034C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805034C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805034C8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805034CC  3B 3C 0A C0 */	addi r25, r28, 0xac0
/* 805034D0  7C 9D C8 2E */	lwzx r4, r29, r25
/* 805034D4  38 A0 00 00 */	li r5, 0
/* 805034D8  7C DB F2 2E */	lhzx r6, r27, r30
/* 805034DC  38 E1 00 40 */	addi r7, r1, 0x40
/* 805034E0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 805034E4  39 20 00 00 */	li r9, 0
/* 805034E8  39 41 00 4C */	addi r10, r1, 0x4c
/* 805034EC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805034F0  4B B4 9F DC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805034F4  7C 7D C9 2E */	stwx r3, r29, r25
/* 805034F8  3B 18 00 01 */	addi r24, r24, 1
/* 805034FC  2C 18 00 04 */	cmpwi r24, 4
/* 80503500  3B DE 00 02 */	addi r30, r30, 2
/* 80503504  3B 9C 00 04 */	addi r28, r28, 4
/* 80503508  41 80 FF 9C */	blt lbl_805034A4
/* 8050350C  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003001C@ha */
/* 80503510  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0003001C@l */
/* 80503514  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503518  38 7D 0A F8 */	addi r3, r29, 0xaf8
/* 8050351C  38 81 00 24 */	addi r4, r1, 0x24
/* 80503520  38 A0 00 00 */	li r5, 0
/* 80503524  38 C0 FF FF */	li r6, -1
/* 80503528  81 9D 0B 08 */	lwz r12, 0xb08(r29)
/* 8050352C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80503530  7D 89 03 A6 */	mtctr r12
/* 80503534  4E 80 04 21 */	bctrl 
lbl_80503538:
/* 80503538  88 1D 05 67 */	lbz r0, 0x567(r29)
/* 8050353C  7C 00 07 75 */	extsb. r0, r0
/* 80503540  41 82 01 00 */	beq lbl_80503640
/* 80503544  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080046@ha */
/* 80503548  38 03 00 46 */	addi r0, r3, 0x0046 /* 0x00080046@l */
/* 8050354C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80503550  38 7D 0A F8 */	addi r3, r29, 0xaf8
/* 80503554  38 81 00 20 */	addi r4, r1, 0x20
/* 80503558  38 A0 00 00 */	li r5, 0
/* 8050355C  38 C0 FF FF */	li r6, -1
/* 80503560  81 9D 0B 08 */	lwz r12, 0xb08(r29)
/* 80503564  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80503568  7D 89 03 A6 */	mtctr r12
/* 8050356C  4E 80 04 21 */	bctrl 
/* 80503570  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80503574  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80503578  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8050357C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80503580  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80503584  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80503588  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8050358C  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80503590  EC 01 00 32 */	fmuls f0, f1, f0
/* 80503594  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80503598  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8050359C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805035A0  3B 00 00 00 */	li r24, 0
/* 805035A4  3B C0 00 00 */	li r30, 0
/* 805035A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805035AC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 805035B0  3C 60 80 50 */	lis r3, b_eff_id@ha
/* 805035B4  3B 83 48 1C */	addi r28, r3, b_eff_id@l
lbl_805035B8:
/* 805035B8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805035BC  38 80 00 00 */	li r4, 0
/* 805035C0  90 81 00 08 */	stw r4, 8(r1)
/* 805035C4  38 00 FF FF */	li r0, -1
/* 805035C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805035CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 805035D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805035D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805035D8  38 80 00 00 */	li r4, 0
/* 805035DC  7C BC F2 2E */	lhzx r5, r28, r30
/* 805035E0  38 C1 00 34 */	addi r6, r1, 0x34
/* 805035E4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 805035E8  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 805035EC  39 21 00 28 */	addi r9, r1, 0x28
/* 805035F0  39 40 00 FF */	li r10, 0xff
/* 805035F4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805035F8  4B B4 94 98 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805035FC  3B 18 00 01 */	addi r24, r24, 1
/* 80503600  2C 18 00 02 */	cmpwi r24, 2
/* 80503604  3B DE 00 02 */	addi r30, r30, 2
/* 80503608  41 80 FF B0 */	blt lbl_805035B8
/* 8050360C  38 00 00 01 */	li r0, 1
/* 80503610  98 1D 0B 18 */	stb r0, 0xb18(r29)
/* 80503614  88 1D 05 67 */	lbz r0, 0x567(r29)
/* 80503618  2C 00 00 01 */	cmpwi r0, 1
/* 8050361C  40 82 00 1C */	bne lbl_80503638
/* 80503620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80503624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80503628  88 9D 05 73 */	lbz r4, 0x573(r29)
/* 8050362C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80503630  7C 05 07 74 */	extsb r5, r0
/* 80503634  4B B3 1B CC */	b onSwitch__10dSv_info_cFii
lbl_80503638:
/* 80503638  38 00 00 00 */	li r0, 0
/* 8050363C  98 1D 05 67 */	stb r0, 0x567(r29)
lbl_80503640:
/* 80503640  7F A3 EB 78 */	mr r3, r29
/* 80503644  4B FF E3 FD */	bl mtx_cc_set__FP12e_nest_class
lbl_80503648:
/* 80503648  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8050364C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80503650  39 61 00 90 */	addi r11, r1, 0x90
/* 80503654  4B E5 EB C0 */	b _restgpr_24
/* 80503658  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8050365C  7C 08 03 A6 */	mtlr r0
/* 80503660  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80503664  4E 80 00 20 */	blr 
