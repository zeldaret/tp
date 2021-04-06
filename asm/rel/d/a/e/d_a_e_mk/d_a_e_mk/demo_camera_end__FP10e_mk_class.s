lbl_8071823C:
/* 8071823C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80718240  7C 08 02 A6 */	mflr r0
/* 80718244  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80718248  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8071824C  4B C4 9F 81 */	bl _savegpr_25
/* 80718250  7C 7C 1B 78 */	mr r28, r3
/* 80718254  3C 60 80 72 */	lis r3, lit_1109@ha /* 0x8071CA68@ha */
/* 80718258  3B A3 CA 68 */	addi r29, r3, lit_1109@l /* 0x8071CA68@l */
/* 8071825C  3C 60 80 72 */	lis r3, lit_3777@ha /* 0x8071C544@ha */
/* 80718260  3B C3 C5 44 */	addi r30, r3, lit_3777@l /* 0x8071C544@l */
/* 80718264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80718268  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071826C  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 80718270  80 1C 07 08 */	lwz r0, 0x708(r28)
/* 80718274  90 01 00 0C */	stw r0, 0xc(r1)
/* 80718278  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8071827C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80718280  38 81 00 0C */	addi r4, r1, 0xc
/* 80718284  4B 90 15 75 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80718288  7C 7A 1B 78 */	mr r26, r3
/* 8071828C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80718290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80718294  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80718298  7C 00 07 74 */	extsb r0, r0
/* 8071829C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807182A0  7C 63 02 14 */	add r3, r3, r0
/* 807182A4  83 23 5D 74 */	lwz r25, 0x5d74(r3)
/* 807182A8  A8 1C 0C 32 */	lha r0, 0xc32(r28)
/* 807182AC  2C 00 00 09 */	cmpwi r0, 9
/* 807182B0  41 82 09 44 */	beq lbl_80718BF4
/* 807182B4  40 80 00 44 */	bge lbl_807182F8
/* 807182B8  2C 00 00 04 */	cmpwi r0, 4
/* 807182BC  41 82 02 9C */	beq lbl_80718558
/* 807182C0  40 80 00 20 */	bge lbl_807182E0
/* 807182C4  2C 00 00 01 */	cmpwi r0, 1
/* 807182C8  41 82 00 70 */	beq lbl_80718338
/* 807182CC  40 80 00 08 */	bge lbl_807182D4
/* 807182D0  48 00 11 A0 */	b lbl_80719470
lbl_807182D4:
/* 807182D4  2C 00 00 03 */	cmpwi r0, 3
/* 807182D8  40 80 02 00 */	bge lbl_807184D8
/* 807182DC  48 00 01 10 */	b lbl_807183EC
lbl_807182E0:
/* 807182E0  2C 00 00 07 */	cmpwi r0, 7
/* 807182E4  41 82 11 8C */	beq lbl_80719470
/* 807182E8  40 80 08 8C */	bge lbl_80718B74
/* 807182EC  2C 00 00 06 */	cmpwi r0, 6
/* 807182F0  40 80 04 48 */	bge lbl_80718738
/* 807182F4  48 00 02 E4 */	b lbl_807185D8
lbl_807182F8:
/* 807182F8  2C 00 00 16 */	cmpwi r0, 0x16
/* 807182FC  41 82 10 74 */	beq lbl_80719370
/* 80718300  40 80 00 20 */	bge lbl_80718320
/* 80718304  2C 00 00 14 */	cmpwi r0, 0x14
/* 80718308  41 82 0D AC */	beq lbl_807190B4
/* 8071830C  40 80 0F 20 */	bge lbl_8071922C
/* 80718310  2C 00 00 0B */	cmpwi r0, 0xb
/* 80718314  41 82 0B 9C */	beq lbl_80718EB0
/* 80718318  40 80 11 58 */	bge lbl_80719470
/* 8071831C  48 00 09 F0 */	b lbl_80718D0C
lbl_80718320:
/* 80718320  2C 00 00 64 */	cmpwi r0, 0x64
/* 80718324  41 82 11 4C */	beq lbl_80719470
/* 80718328  40 80 11 48 */	bge lbl_80719470
/* 8071832C  2C 00 00 18 */	cmpwi r0, 0x18
/* 80718330  40 80 11 40 */	bge lbl_80719470
/* 80718334  48 00 10 90 */	b lbl_807193C4
lbl_80718338:
/* 80718338  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 8071833C  28 00 00 02 */	cmplwi r0, 2
/* 80718340  41 82 00 2C */	beq lbl_8071836C
/* 80718344  7F 83 E3 78 */	mr r3, r28
/* 80718348  38 80 00 02 */	li r4, 2
/* 8071834C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80718350  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80718354  38 C0 00 00 */	li r6, 0
/* 80718358  4B 90 35 B1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8071835C  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80718360  60 00 00 02 */	ori r0, r0, 2
/* 80718364  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80718368  48 00 11 08 */	b lbl_80719470
lbl_8071836C:
/* 8071836C  38 79 02 48 */	addi r3, r25, 0x248
/* 80718370  4B A4 91 61 */	bl Stop__9dCamera_cFv
/* 80718374  38 00 00 02 */	li r0, 2
/* 80718378  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 8071837C  38 00 00 00 */	li r0, 0
/* 80718380  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80718384  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80718388  D0 1C 0C 80 */	stfs f0, 0xc80(r28)
/* 8071838C  38 79 02 48 */	addi r3, r25, 0x248
/* 80718390  38 80 00 03 */	li r4, 3
/* 80718394  4B A4 AC 79 */	bl SetTrimSize__9dCamera_cFl
/* 80718398  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8071839C  38 00 00 03 */	li r0, 3
/* 807183A0  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807183A4  38 00 00 00 */	li r0, 0
/* 807183A8  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807183AC  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 807183B0  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 807183B4  EC 01 00 2A */	fadds f0, f1, f0
/* 807183B8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 807183BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807183C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807183C4  80 63 00 00 */	lwz r3, 0(r3)
/* 807183C8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807183CC  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200000E@ha */
/* 807183D0  38 84 00 0E */	addi r4, r4, 0x000E /* 0x0200000E@l */
/* 807183D4  4B B9 77 C1 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 807183D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807183DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807183E0  38 63 09 58 */	addi r3, r3, 0x958
/* 807183E4  38 80 00 07 */	li r4, 7
/* 807183E8  4B 91 C5 31 */	bl onDungeonItem__12dSv_memBit_cFi
lbl_807183EC:
/* 807183EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807183F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807183F4  80 63 00 00 */	lwz r3, 0(r3)
/* 807183F8  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807183FC  4B 8F 3F E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80718400  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80718404  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80718408  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 8071840C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718410  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80718414  38 61 00 78 */	addi r3, r1, 0x78
/* 80718418  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 8071841C  4B B5 8A D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718420  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718424  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80718428  7C 65 1B 78 */	mr r5, r3
/* 8071842C  4B C2 EC 65 */	bl PSVECAdd
/* 80718430  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80718434  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718438  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8071843C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718440  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80718444  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718448  38 61 00 78 */	addi r3, r1, 0x78
/* 8071844C  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 80718450  4B B5 8A 9D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718454  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718458  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8071845C  7C 65 1B 78 */	mr r5, r3
/* 80718460  4B C2 EC 31 */	bl PSVECAdd
/* 80718464  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718468  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8071846C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718470  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80718474  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718478  38 61 00 78 */	addi r3, r1, 0x78
/* 8071847C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718480  4B B5 8A 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718484  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718488  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8071848C  7C 65 1B 78 */	mr r5, r3
/* 80718490  4B C2 EC 01 */	bl PSVECAdd
/* 80718494  7F 63 DB 78 */	mr r3, r27
/* 80718498  38 81 00 6C */	addi r4, r1, 0x6c
/* 8071849C  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 807184A0  38 C0 00 00 */	li r6, 0
/* 807184A4  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 807184A8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807184AC  7D 89 03 A6 */	mtctr r12
/* 807184B0  4E 80 04 21 */	bctrl 
/* 807184B4  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 807184B8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807184BC  41 80 0F B4 */	blt lbl_80719470
/* 807184C0  A8 7C 0C 32 */	lha r3, 0xc32(r28)
/* 807184C4  38 03 00 01 */	addi r0, r3, 1
/* 807184C8  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 807184CC  38 00 00 00 */	li r0, 0
/* 807184D0  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 807184D4  48 00 0F 9C */	b lbl_80719470
lbl_807184D8:
/* 807184D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807184DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807184E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807184E4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807184E8  4B 8F 3E F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807184EC  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 807184F0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807184F4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807184F8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807184FC  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80718500  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718504  38 61 00 78 */	addi r3, r1, 0x78
/* 80718508  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 8071850C  4B B5 89 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718510  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718514  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80718518  7C 65 1B 78 */	mr r5, r3
/* 8071851C  4B C2 EB 75 */	bl PSVECAdd
/* 80718520  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80718524  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718528  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8071852C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718530  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718534  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718538  38 61 00 78 */	addi r3, r1, 0x78
/* 8071853C  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 80718540  4B B5 89 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718544  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718548  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8071854C  7C 65 1B 78 */	mr r5, r3
/* 80718550  4B C2 EB 41 */	bl PSVECAdd
/* 80718554  48 00 0F 1C */	b lbl_80719470
lbl_80718558:
/* 80718558  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8071855C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80718560  80 63 00 00 */	lwz r3, 0(r3)
/* 80718564  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 80718568  4B 8F 3E 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 8071856C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80718570  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718574  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718578  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8071857C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80718580  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718584  38 61 00 78 */	addi r3, r1, 0x78
/* 80718588  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 8071858C  4B B5 89 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718590  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718594  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718598  7C 65 1B 78 */	mr r5, r3
/* 8071859C  4B C2 EA F5 */	bl PSVECAdd
/* 807185A0  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 807185A4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807185A8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 807185AC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807185B0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807185B4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807185B8  38 61 00 78 */	addi r3, r1, 0x78
/* 807185BC  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 807185C0  4B B5 89 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807185C4  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 807185C8  38 9D 00 94 */	addi r4, r29, 0x94
/* 807185CC  7C 65 1B 78 */	mr r5, r3
/* 807185D0  4B C2 EA C1 */	bl PSVECAdd
/* 807185D4  48 00 0E 9C */	b lbl_80719470
lbl_807185D8:
/* 807185D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807185DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807185E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807185E4  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 807185E8  4B 8F 3D F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807185EC  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 807185F0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807185F4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807185F8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807185FC  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80718600  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718604  38 61 00 78 */	addi r3, r1, 0x78
/* 80718608  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 8071860C  4B B5 88 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718610  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718614  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718618  7C 65 1B 78 */	mr r5, r3
/* 8071861C  4B C2 EA 75 */	bl PSVECAdd
/* 80718620  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80718624  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718628  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8071862C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718630  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718634  38 61 00 78 */	addi r3, r1, 0x78
/* 80718638  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 8071863C  4B B5 88 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718640  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718644  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718648  7C 65 1B 78 */	mr r5, r3
/* 8071864C  4B C2 EA 45 */	bl PSVECAdd
/* 80718650  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80718654  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718658  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8071865C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718660  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718664  38 61 00 78 */	addi r3, r1, 0x78
/* 80718668  38 81 00 6C */	addi r4, r1, 0x6c
/* 8071866C  4B B5 88 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718670  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718674  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718678  7C 65 1B 78 */	mr r5, r3
/* 8071867C  4B C2 EA 15 */	bl PSVECAdd
/* 80718680  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80718684  C0 1C 0C 38 */	lfs f0, 0xc38(r28)
/* 80718688  EC 01 00 28 */	fsubs f0, f1, f0
/* 8071868C  FC 00 02 10 */	fabs f0, f0
/* 80718690  FC 00 00 18 */	frsp f0, f0
/* 80718694  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 80718698  EC 02 00 32 */	fmuls f0, f2, f0
/* 8071869C  D0 1C 0C 68 */	stfs f0, 0xc68(r28)
/* 807186A0  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 807186A4  C0 1C 0C 3C */	lfs f0, 0xc3c(r28)
/* 807186A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807186AC  FC 00 02 10 */	fabs f0, f0
/* 807186B0  FC 00 00 18 */	frsp f0, f0
/* 807186B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807186B8  D0 1C 0C 6C */	stfs f0, 0xc6c(r28)
/* 807186BC  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 807186C0  C0 1C 0C 40 */	lfs f0, 0xc40(r28)
/* 807186C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807186C8  FC 00 02 10 */	fabs f0, f0
/* 807186CC  FC 00 00 18 */	frsp f0, f0
/* 807186D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807186D4  D0 1C 0C 70 */	stfs f0, 0xc70(r28)
/* 807186D8  38 00 00 06 */	li r0, 6
/* 807186DC  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 807186E0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 807186E4  D0 3C 0C 84 */	stfs f1, 0xc84(r28)
/* 807186E8  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807186EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807186F0  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 807186F4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807186F8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807186FC  38 61 00 78 */	addi r3, r1, 0x78
/* 80718700  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718704  4B B5 87 E9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718708  38 61 00 6C */	addi r3, r1, 0x6c
/* 8071870C  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718710  7C 65 1B 78 */	mr r5, r3
/* 80718714  4B C2 E9 7D */	bl PSVECAdd
/* 80718718  7F 63 DB 78 */	mr r3, r27
/* 8071871C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718720  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 80718724  38 C0 00 00 */	li r6, 0
/* 80718728  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8071872C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80718730  7D 89 03 A6 */	mtctr r12
/* 80718734  4E 80 04 21 */	bctrl 
lbl_80718738:
/* 80718738  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 8071873C  C0 3C 05 E4 */	lfs f1, 0x5e4(r28)
/* 80718740  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718744  C0 7E 01 38 */	lfs f3, 0x138(r30)
/* 80718748  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 8071874C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718750  4B B5 72 ED */	bl cLib_addCalc2__FPffff
/* 80718754  38 7C 0C 48 */	addi r3, r28, 0xc48
/* 80718758  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8071875C  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 80718760  EC 21 00 2A */	fadds f1, f1, f0
/* 80718764  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718768  C0 7E 01 38 */	lfs f3, 0x138(r30)
/* 8071876C  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80718770  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718774  4B B5 72 C9 */	bl cLib_addCalc2__FPffff
/* 80718778  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 8071877C  C0 3C 05 EC */	lfs f1, 0x5ec(r28)
/* 80718780  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718784  C0 7E 01 38 */	lfs f3, 0x138(r30)
/* 80718788  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 8071878C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718790  4B B5 72 AD */	bl cLib_addCalc2__FPffff
/* 80718794  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80718798  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8071879C  80 63 00 00 */	lwz r3, 0(r3)
/* 807187A0  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 807187A4  4B 8F 3C 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 807187A8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807187AC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807187B0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807187B4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807187B8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807187BC  38 61 00 78 */	addi r3, r1, 0x78
/* 807187C0  38 81 00 6C */	addi r4, r1, 0x6c
/* 807187C4  4B B5 87 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807187C8  38 61 00 6C */	addi r3, r1, 0x6c
/* 807187CC  38 9D 00 94 */	addi r4, r29, 0x94
/* 807187D0  7C 65 1B 78 */	mr r5, r3
/* 807187D4  4B C2 E8 BD */	bl PSVECAdd
/* 807187D8  38 7C 0C 84 */	addi r3, r28, 0xc84
/* 807187DC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807187E0  FC 40 08 90 */	fmr f2, f1
/* 807187E4  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 807187E8  4B B5 72 55 */	bl cLib_addCalc2__FPffff
/* 807187EC  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 807187F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807187F4  41 80 00 6C */	blt lbl_80718860
/* 807187F8  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 807187FC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80718800  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718804  C0 7C 0C 68 */	lfs f3, 0xc68(r28)
/* 80718808  C0 1C 0C 88 */	lfs f0, 0xc88(r28)
/* 8071880C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718810  4B B5 72 2D */	bl cLib_addCalc2__FPffff
/* 80718814  38 7C 0C 3C */	addi r3, r28, 0xc3c
/* 80718818  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8071881C  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718820  C0 7C 0C 6C */	lfs f3, 0xc6c(r28)
/* 80718824  C0 1C 0C 88 */	lfs f0, 0xc88(r28)
/* 80718828  EC 63 00 32 */	fmuls f3, f3, f0
/* 8071882C  4B B5 72 11 */	bl cLib_addCalc2__FPffff
/* 80718830  38 7C 0C 40 */	addi r3, r28, 0xc40
/* 80718834  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80718838  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 8071883C  C0 7C 0C 70 */	lfs f3, 0xc70(r28)
/* 80718840  C0 1C 0C 88 */	lfs f0, 0xc88(r28)
/* 80718844  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718848  4B B5 71 F5 */	bl cLib_addCalc2__FPffff
/* 8071884C  38 7C 0C 88 */	addi r3, r28, 0xc88
/* 80718850  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80718854  FC 40 08 90 */	fmr f2, f1
/* 80718858  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 8071885C  4B B5 71 E1 */	bl cLib_addCalc2__FPffff
lbl_80718860:
/* 80718860  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80718864  2C 00 00 28 */	cmpwi r0, 0x28
/* 80718868  40 82 00 44 */	bne lbl_807188AC
/* 8071886C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060040@ha */
/* 80718870  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00060040@l */
/* 80718874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80718878  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8071887C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80718880  80 63 00 00 */	lwz r3, 0(r3)
/* 80718884  38 81 00 14 */	addi r4, r1, 0x14
/* 80718888  38 BC 05 E4 */	addi r5, r28, 0x5e4
/* 8071888C  38 C0 00 00 */	li r6, 0
/* 80718890  38 E0 00 00 */	li r7, 0
/* 80718894  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80718898  FC 40 08 90 */	fmr f2, f1
/* 8071889C  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 807188A0  FC 80 18 90 */	fmr f4, f3
/* 807188A4  39 00 00 00 */	li r8, 0
/* 807188A8  4B B9 30 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807188AC:
/* 807188AC  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 807188B0  2C 00 00 5A */	cmpwi r0, 0x5a
/* 807188B4  41 80 0B BC */	blt lbl_80719470
/* 807188B8  40 82 00 B8 */	bne lbl_80718970
/* 807188BC  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 807188C0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807188C4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807188C8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807188CC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807188D0  38 61 00 78 */	addi r3, r1, 0x78
/* 807188D4  38 81 00 6C */	addi r4, r1, 0x6c
/* 807188D8  4B B5 86 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807188DC  38 61 00 6C */	addi r3, r1, 0x6c
/* 807188E0  38 9D 00 94 */	addi r4, r29, 0x94
/* 807188E4  7C 65 1B 78 */	mr r5, r3
/* 807188E8  4B C2 E7 A9 */	bl PSVECAdd
/* 807188EC  7F 63 DB 78 */	mr r3, r27
/* 807188F0  38 81 00 6C */	addi r4, r1, 0x6c
/* 807188F4  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 807188F8  38 C0 00 00 */	li r6, 0
/* 807188FC  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80718900  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80718904  7D 89 03 A6 */	mtctr r12
/* 80718908  4E 80 04 21 */	bctrl 
/* 8071890C  38 00 00 03 */	li r0, 3
/* 80718910  90 1B 06 14 */	stw r0, 0x614(r27)
/* 80718914  38 00 00 01 */	li r0, 1
/* 80718918  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 8071891C  38 00 00 00 */	li r0, 0
/* 80718920  90 1B 06 10 */	stw r0, 0x610(r27)
/* 80718924  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 80718928  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8071892C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718930  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718934  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718938  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8071893C  38 61 00 78 */	addi r3, r1, 0x78
/* 80718940  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718944  4B B5 85 A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718948  38 61 00 6C */	addi r3, r1, 0x6c
/* 8071894C  38 9C 05 E4 */	addi r4, r28, 0x5e4
/* 80718950  7C 65 1B 78 */	mr r5, r3
/* 80718954  4B C2 E7 3D */	bl PSVECAdd
/* 80718958  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8071895C  D0 1B 06 1C */	stfs f0, 0x61c(r27)
/* 80718960  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80718964  D0 1B 06 20 */	stfs f0, 0x620(r27)
/* 80718968  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8071896C  D0 1B 06 24 */	stfs f0, 0x624(r27)
lbl_80718970:
/* 80718970  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80718974  2C 00 00 82 */	cmpwi r0, 0x82
/* 80718978  40 82 00 1C */	bne lbl_80718994
/* 8071897C  7F 83 E3 78 */	mr r3, r28
/* 80718980  38 80 00 2A */	li r4, 0x2a
/* 80718984  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80718988  38 A0 00 00 */	li r5, 0
/* 8071898C  FC 40 08 90 */	fmr f2, f1
/* 80718990  4B FF B8 99 */	bl ok_anm_init__FP10e_mk_classifUcf
lbl_80718994:
/* 80718994  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80718998  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 8071899C  40 82 00 68 */	bne lbl_80718A04
/* 807189A0  38 00 00 00 */	li r0, 0
/* 807189A4  98 1C 06 0C */	stb r0, 0x60c(r28)
/* 807189A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807189AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807189B0  80 63 00 00 */	lwz r3, 0(r3)
/* 807189B4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807189B8  4B 8F 3A 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 807189BC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807189C0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807189C4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807189C8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807189CC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807189D0  38 61 00 78 */	addi r3, r1, 0x78
/* 807189D4  38 81 00 6C */	addi r4, r1, 0x6c
/* 807189D8  4B B5 85 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807189DC  38 61 00 6C */	addi r3, r1, 0x6c
/* 807189E0  38 9C 05 E4 */	addi r4, r28, 0x5e4
/* 807189E4  7C 65 1B 78 */	mr r5, r3
/* 807189E8  4B C2 E6 A9 */	bl PSVECAdd
/* 807189EC  7F 83 E3 78 */	mr r3, r28
/* 807189F0  38 81 00 6C */	addi r4, r1, 0x6c
/* 807189F4  38 A0 00 05 */	li r5, 5
/* 807189F8  38 C0 00 00 */	li r6, 0
/* 807189FC  38 E0 00 FF */	li r7, 0xff
/* 80718A00  4B 90 40 D9 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_80718A04:
/* 80718A04  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80718A08  2C 00 00 F8 */	cmpwi r0, 0xf8
/* 80718A0C  40 82 0A 64 */	bne lbl_80719470
/* 80718A10  A8 7C 0C 32 */	lha r3, 0xc32(r28)
/* 80718A14  38 03 00 01 */	addi r0, r3, 1
/* 80718A18  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80718A1C  38 00 00 00 */	li r0, 0
/* 80718A20  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80718A24  38 00 00 05 */	li r0, 5
/* 80718A28  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80718A2C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80718A30  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80718A34  80 63 00 00 */	lwz r3, 0(r3)
/* 80718A38  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 80718A3C  4B 8F 39 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80718A40  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80718A44  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80718A48  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718A4C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718A50  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80718A54  38 61 00 78 */	addi r3, r1, 0x78
/* 80718A58  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718A5C  4B B5 84 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718A60  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718A64  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718A68  7C 65 1B 78 */	mr r5, r3
/* 80718A6C  4B C2 E6 25 */	bl PSVECAdd
/* 80718A70  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80718A74  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80718A78  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80718A7C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80718A80  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80718A84  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718A88  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80718A8C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718A90  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718A94  38 61 00 78 */	addi r3, r1, 0x78
/* 80718A98  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 80718A9C  4B B5 84 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718AA0  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718AA4  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718AA8  7C 65 1B 78 */	mr r5, r3
/* 80718AAC  4B C2 E5 E5 */	bl PSVECAdd
/* 80718AB0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80718AB4  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 80718AB8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80718ABC  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80718AC0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80718AC4  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 80718AC8  C0 3C 0C 48 */	lfs f1, 0xc48(r28)
/* 80718ACC  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 80718AD0  EC 01 00 2A */	fadds f0, f1, f0
/* 80718AD4  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80718AD8  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80718ADC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718AE0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718AE4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718AE8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80718AEC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718AF0  38 61 00 78 */	addi r3, r1, 0x78
/* 80718AF4  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718AF8  4B B5 83 F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718AFC  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718B00  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718B04  7C 65 1B 78 */	mr r5, r3
/* 80718B08  4B C2 E5 89 */	bl PSVECAdd
/* 80718B0C  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80718B10  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80718B14  EC 21 00 28 */	fsubs f1, f1, f0
/* 80718B18  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80718B1C  38 7D 00 94 */	addi r3, r29, 0x94
/* 80718B20  C0 43 00 08 */	lfs f2, 8(r3)
/* 80718B24  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80718B28  EC 42 00 28 */	fsubs f2, f2, f0
/* 80718B2C  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80718B30  4B B4 EB 45 */	bl cM_atan2s__Fff
/* 80718B34  7C 65 1B 78 */	mr r5, r3
/* 80718B38  7F 63 DB 78 */	mr r3, r27
/* 80718B3C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718B40  38 C0 00 00 */	li r6, 0
/* 80718B44  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80718B48  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80718B4C  7D 89 03 A6 */	mtctr r12
/* 80718B50  4E 80 04 21 */	bctrl 
/* 80718B54  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80718B58  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80718B5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80718B60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80718B64  80 63 00 00 */	lwz r3, 0(r3)
/* 80718B68  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80718B6C  4B B9 72 AD */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80718B70  48 00 09 00 */	b lbl_80719470
lbl_80718B74:
/* 80718B74  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80718B78  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80718B7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80718B80  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 80718B84  4B 8F 38 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 80718B88  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80718B8C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718B90  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80718B94  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718B98  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718B9C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718BA0  38 61 00 78 */	addi r3, r1, 0x78
/* 80718BA4  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 80718BA8  4B B5 83 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718BAC  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718BB0  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718BB4  7C 65 1B 78 */	mr r5, r3
/* 80718BB8  4B C2 E4 D9 */	bl PSVECAdd
/* 80718BBC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80718BC0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718BC4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80718BC8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718BCC  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80718BD0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718BD4  38 61 00 78 */	addi r3, r1, 0x78
/* 80718BD8  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 80718BDC  4B B5 83 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718BE0  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718BE4  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718BE8  7C 65 1B 78 */	mr r5, r3
/* 80718BEC  4B C2 E4 A5 */	bl PSVECAdd
/* 80718BF0  48 00 08 80 */	b lbl_80719470
lbl_80718BF4:
/* 80718BF4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80718BF8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80718BFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80718C00  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 80718C04  4B 8F 37 D9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80718C08  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80718C0C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718C10  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80718C14  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718C18  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80718C1C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718C20  38 61 00 78 */	addi r3, r1, 0x78
/* 80718C24  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 80718C28  4B B5 82 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718C2C  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718C30  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718C34  7C 65 1B 78 */	mr r5, r3
/* 80718C38  4B C2 E4 59 */	bl PSVECAdd
/* 80718C3C  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80718C40  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718C44  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80718C48  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718C4C  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80718C50  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718C54  38 61 00 78 */	addi r3, r1, 0x78
/* 80718C58  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 80718C5C  4B B5 82 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718C60  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718C64  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718C68  7C 65 1B 78 */	mr r5, r3
/* 80718C6C  4B C2 E4 25 */	bl PSVECAdd
/* 80718C70  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80718C74  2C 00 01 2C */	cmpwi r0, 0x12c
/* 80718C78  41 80 07 F8 */	blt lbl_80719470
/* 80718C7C  38 00 00 0A */	li r0, 0xa
/* 80718C80  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80718C84  38 00 00 00 */	li r0, 0
/* 80718C88  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80718C8C  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80718C90  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718C94  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718C98  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718C9C  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80718CA0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718CA4  38 61 00 78 */	addi r3, r1, 0x78
/* 80718CA8  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718CAC  4B B5 82 41 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718CB0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718CB4  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718CB8  7C 65 1B 78 */	mr r5, r3
/* 80718CBC  4B C2 E3 D5 */	bl PSVECAdd
/* 80718CC0  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80718CC4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80718CC8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80718CCC  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80718CD0  38 7D 00 94 */	addi r3, r29, 0x94
/* 80718CD4  C0 43 00 08 */	lfs f2, 8(r3)
/* 80718CD8  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80718CDC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80718CE0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80718CE4  4B B4 E9 91 */	bl cM_atan2s__Fff
/* 80718CE8  7C 65 1B 78 */	mr r5, r3
/* 80718CEC  7F 63 DB 78 */	mr r3, r27
/* 80718CF0  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718CF4  38 C0 00 00 */	li r6, 0
/* 80718CF8  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80718CFC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80718D00  7D 89 03 A6 */	mtctr r12
/* 80718D04  4E 80 04 21 */	bctrl 
/* 80718D08  48 00 07 68 */	b lbl_80719470
lbl_80718D0C:
/* 80718D0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80718D10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80718D14  80 63 00 00 */	lwz r3, 0(r3)
/* 80718D18  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 80718D1C  4B 8F 36 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80718D20  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718D24  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718D28  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80718D2C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718D30  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80718D34  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718D38  38 61 00 78 */	addi r3, r1, 0x78
/* 80718D3C  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 80718D40  4B B5 81 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718D44  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718D48  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718D4C  7C 65 1B 78 */	mr r5, r3
/* 80718D50  4B C2 E3 41 */	bl PSVECAdd
/* 80718D54  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80718D58  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718D5C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718D60  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718D64  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80718D68  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718D6C  38 61 00 78 */	addi r3, r1, 0x78
/* 80718D70  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718D74  4B B5 81 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718D78  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718D7C  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718D80  7C 65 1B 78 */	mr r5, r3
/* 80718D84  4B C2 E3 0D */	bl PSVECAdd
/* 80718D88  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80718D8C  C0 1C 0C 44 */	lfs f0, 0xc44(r28)
/* 80718D90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80718D94  FC 00 02 10 */	fabs f0, f0
/* 80718D98  FC 00 00 18 */	frsp f0, f0
/* 80718D9C  C0 5E 01 5C */	lfs f2, 0x15c(r30)
/* 80718DA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80718DA4  D0 1C 0C 74 */	stfs f0, 0xc74(r28)
/* 80718DA8  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80718DAC  C0 1C 0C 48 */	lfs f0, 0xc48(r28)
/* 80718DB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80718DB4  FC 00 02 10 */	fabs f0, f0
/* 80718DB8  FC 00 00 18 */	frsp f0, f0
/* 80718DBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80718DC0  D0 1C 0C 78 */	stfs f0, 0xc78(r28)
/* 80718DC4  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80718DC8  C0 1C 0C 4C */	lfs f0, 0xc4c(r28)
/* 80718DCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80718DD0  FC 00 02 10 */	fabs f0, f0
/* 80718DD4  FC 00 00 18 */	frsp f0, f0
/* 80718DD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80718DDC  D0 1C 0C 7C */	stfs f0, 0xc7c(r28)
/* 80718DE0  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80718DE4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718DE8  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80718DEC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718DF0  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80718DF4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718DF8  38 61 00 78 */	addi r3, r1, 0x78
/* 80718DFC  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 80718E00  4B B5 80 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718E04  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718E08  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718E0C  7C 65 1B 78 */	mr r5, r3
/* 80718E10  4B C2 E2 81 */	bl PSVECAdd
/* 80718E14  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80718E18  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718E1C  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80718E20  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718E24  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80718E28  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718E2C  38 61 00 78 */	addi r3, r1, 0x78
/* 80718E30  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718E34  4B B5 80 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718E38  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718E3C  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718E40  7C 65 1B 78 */	mr r5, r3
/* 80718E44  4B C2 E2 4D */	bl PSVECAdd
/* 80718E48  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80718E4C  C0 1C 0C 38 */	lfs f0, 0xc38(r28)
/* 80718E50  EC 01 00 28 */	fsubs f0, f1, f0
/* 80718E54  FC 00 02 10 */	fabs f0, f0
/* 80718E58  FC 00 00 18 */	frsp f0, f0
/* 80718E5C  C0 5E 01 5C */	lfs f2, 0x15c(r30)
/* 80718E60  EC 02 00 32 */	fmuls f0, f2, f0
/* 80718E64  D0 1C 0C 68 */	stfs f0, 0xc68(r28)
/* 80718E68  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80718E6C  C0 1C 0C 3C */	lfs f0, 0xc3c(r28)
/* 80718E70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80718E74  FC 00 02 10 */	fabs f0, f0
/* 80718E78  FC 00 00 18 */	frsp f0, f0
/* 80718E7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80718E80  D0 1C 0C 6C */	stfs f0, 0xc6c(r28)
/* 80718E84  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80718E88  C0 1C 0C 40 */	lfs f0, 0xc40(r28)
/* 80718E8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80718E90  FC 00 02 10 */	fabs f0, f0
/* 80718E94  FC 00 00 18 */	frsp f0, f0
/* 80718E98  EC 02 00 32 */	fmuls f0, f2, f0
/* 80718E9C  D0 1C 0C 70 */	stfs f0, 0xc70(r28)
/* 80718EA0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718EA4  D0 1C 0C 84 */	stfs f0, 0xc84(r28)
/* 80718EA8  38 00 00 0B */	li r0, 0xb
/* 80718EAC  B0 1C 0C 32 */	sth r0, 0xc32(r28)
lbl_80718EB0:
/* 80718EB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80718EB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80718EB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80718EBC  A8 9D 00 A0 */	lha r4, 0xa0(r29)
/* 80718EC0  4B 8F 35 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 80718EC4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80718EC8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718ECC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80718ED0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718ED4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80718ED8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718EDC  38 61 00 78 */	addi r3, r1, 0x78
/* 80718EE0  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718EE4  4B B5 80 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718EE8  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718EEC  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718EF0  7C 65 1B 78 */	mr r5, r3
/* 80718EF4  4B C2 E1 9D */	bl PSVECAdd
/* 80718EF8  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80718EFC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80718F00  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718F04  C0 7C 0C 74 */	lfs f3, 0xc74(r28)
/* 80718F08  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80718F0C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718F10  4B B5 6B 2D */	bl cLib_addCalc2__FPffff
/* 80718F14  38 7C 0C 48 */	addi r3, r28, 0xc48
/* 80718F18  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80718F1C  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718F20  C0 7C 0C 78 */	lfs f3, 0xc78(r28)
/* 80718F24  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80718F28  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718F2C  4B B5 6B 11 */	bl cLib_addCalc2__FPffff
/* 80718F30  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 80718F34  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80718F38  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718F3C  C0 7C 0C 7C */	lfs f3, 0xc7c(r28)
/* 80718F40  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80718F44  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718F48  4B B5 6A F5 */	bl cLib_addCalc2__FPffff
/* 80718F4C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80718F50  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80718F54  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80718F58  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80718F5C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80718F60  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80718F64  38 61 00 78 */	addi r3, r1, 0x78
/* 80718F68  38 81 00 6C */	addi r4, r1, 0x6c
/* 80718F6C  4B B5 7F 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80718F70  38 61 00 6C */	addi r3, r1, 0x6c
/* 80718F74  38 9D 00 94 */	addi r4, r29, 0x94
/* 80718F78  7C 65 1B 78 */	mr r5, r3
/* 80718F7C  4B C2 E1 15 */	bl PSVECAdd
/* 80718F80  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718F84  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80718F88  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718F8C  C0 7C 0C 68 */	lfs f3, 0xc68(r28)
/* 80718F90  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80718F94  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718F98  4B B5 6A A5 */	bl cLib_addCalc2__FPffff
/* 80718F9C  38 7C 0C 3C */	addi r3, r28, 0xc3c
/* 80718FA0  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80718FA4  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718FA8  C0 7C 0C 6C */	lfs f3, 0xc6c(r28)
/* 80718FAC  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80718FB0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718FB4  4B B5 6A 89 */	bl cLib_addCalc2__FPffff
/* 80718FB8  38 7C 0C 40 */	addi r3, r28, 0xc40
/* 80718FBC  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80718FC0  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80718FC4  C0 7C 0C 70 */	lfs f3, 0xc70(r28)
/* 80718FC8  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80718FCC  EC 63 00 32 */	fmuls f3, f3, f0
/* 80718FD0  4B B5 6A 6D */	bl cLib_addCalc2__FPffff
/* 80718FD4  38 7C 0C 84 */	addi r3, r28, 0xc84
/* 80718FD8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80718FDC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80718FE0  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 80718FE4  4B B5 6A 59 */	bl cLib_addCalc2__FPffff
/* 80718FE8  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80718FEC  2C 00 00 02 */	cmpwi r0, 2
/* 80718FF0  40 82 00 64 */	bne lbl_80719054
/* 80718FF4  80 1C 07 08 */	lwz r0, 0x708(r28)
/* 80718FF8  90 01 00 08 */	stw r0, 8(r1)
/* 80718FFC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80719000  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80719004  38 81 00 08 */	addi r4, r1, 8
/* 80719008  4B 90 07 F1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8071900C  7C 7F 1B 78 */	mr r31, r3
/* 80719010  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80719014  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80719018  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8071901C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80719020  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80719024  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80719028  38 61 00 78 */	addi r3, r1, 0x78
/* 8071902C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80719030  4B B5 7E BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80719034  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80719038  38 9D 00 94 */	addi r4, r29, 0x94
/* 8071903C  7C 65 1B 78 */	mr r5, r3
/* 80719040  4B C2 E0 51 */	bl PSVECAdd
/* 80719044  38 00 00 00 */	li r0, 0
/* 80719048  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8071904C  A8 1D 00 A0 */	lha r0, 0xa0(r29)
/* 80719050  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80719054:
/* 80719054  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80719058  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8071905C  40 82 00 38 */	bne lbl_80719094
/* 80719060  38 00 00 01 */	li r0, 1
/* 80719064  90 1B 06 14 */	stw r0, 0x614(r27)
/* 80719068  38 60 00 03 */	li r3, 3
/* 8071906C  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 80719070  38 00 00 00 */	li r0, 0
/* 80719074  90 1B 06 10 */	stw r0, 0x610(r27)
/* 80719078  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 8071907C  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 80719080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80719084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80719088  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8071908C  7F 44 D3 78 */	mr r4, r26
/* 80719090  4B 92 A5 FD */	bl setPtT__14dEvt_control_cFPv
lbl_80719094:
/* 80719094  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80719098  2C 00 00 FA */	cmpwi r0, 0xfa
/* 8071909C  40 82 03 D4 */	bne lbl_80719470
/* 807190A0  38 00 00 14 */	li r0, 0x14
/* 807190A4  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 807190A8  38 00 00 00 */	li r0, 0
/* 807190AC  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 807190B0  48 00 03 C0 */	b lbl_80719470
lbl_807190B4:
/* 807190B4  38 61 00 60 */	addi r3, r1, 0x60
/* 807190B8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807190BC  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807190C0  4B B4 DA 75 */	bl __mi__4cXyzCFRC3Vec
/* 807190C4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807190C8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807190CC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807190D0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807190D4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 807190D8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807190DC  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 807190E0  2C 00 00 03 */	cmpwi r0, 3
/* 807190E4  40 82 00 B8 */	bne lbl_8071919C
/* 807190E8  38 00 00 03 */	li r0, 3
/* 807190EC  90 1B 06 14 */	stw r0, 0x614(r27)
/* 807190F0  38 00 00 01 */	li r0, 1
/* 807190F4  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 807190F8  38 00 00 00 */	li r0, 0
/* 807190FC  90 1B 06 10 */	stw r0, 0x610(r27)
/* 80719100  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 80719104  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80719108  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8071910C  4B B4 E5 69 */	bl cM_atan2s__Fff
/* 80719110  7C 64 1B 78 */	mr r4, r3
/* 80719114  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80719118  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8071911C  80 63 00 00 */	lwz r3, 0(r3)
/* 80719120  4B 8F 32 BD */	bl mDoMtx_YrotS__FPA4_fs
/* 80719124  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80719128  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8071912C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80719130  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80719134  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80719138  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8071913C  38 61 00 78 */	addi r3, r1, 0x78
/* 80719140  38 81 00 6C */	addi r4, r1, 0x6c
/* 80719144  4B B5 7D A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80719148  38 61 00 6C */	addi r3, r1, 0x6c
/* 8071914C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80719150  7C 65 1B 78 */	mr r5, r3
/* 80719154  4B C2 DF 3D */	bl PSVECAdd
/* 80719158  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8071915C  D0 1B 06 1C */	stfs f0, 0x61c(r27)
/* 80719160  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80719164  D0 1B 06 20 */	stfs f0, 0x620(r27)
/* 80719168  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8071916C  D0 1B 06 24 */	stfs f0, 0x624(r27)
/* 80719170  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80719174  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80719178  38 61 00 78 */	addi r3, r1, 0x78
/* 8071917C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80719180  4B B5 7D 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80719184  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80719188  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8071918C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80719190  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80719194  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80719198  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8071919C:
/* 8071919C  38 61 00 54 */	addi r3, r1, 0x54
/* 807191A0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807191A4  38 BB 05 38 */	addi r5, r27, 0x538
/* 807191A8  4B B4 D9 8D */	bl __mi__4cXyzCFRC3Vec
/* 807191AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807191B0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807191B4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807191B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807191BC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807191C0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807191C4  38 61 00 48 */	addi r3, r1, 0x48
/* 807191C8  38 81 00 6C */	addi r4, r1, 0x6c
/* 807191CC  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 807191D0  4B B4 D9 B5 */	bl __ml__4cXyzCFf
/* 807191D4  38 61 00 3C */	addi r3, r1, 0x3c
/* 807191D8  38 9B 05 38 */	addi r4, r27, 0x538
/* 807191DC  38 A1 00 48 */	addi r5, r1, 0x48
/* 807191E0  4B B4 D9 05 */	bl __pl__4cXyzCFRC3Vec
/* 807191E4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807191E8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 807191EC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807191F0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807191F4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807191F8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 807191FC  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80719200  2C 00 00 14 */	cmpwi r0, 0x14
/* 80719204  40 82 02 6C */	bne lbl_80719470
/* 80719208  38 00 00 01 */	li r0, 1
/* 8071920C  B0 1A 05 62 */	sth r0, 0x562(r26)
/* 80719210  38 00 00 15 */	li r0, 0x15
/* 80719214  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80719218  38 00 00 00 */	li r0, 0
/* 8071921C  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80719220  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80719224  D0 1C 0C 84 */	stfs f0, 0xc84(r28)
/* 80719228  48 00 02 48 */	b lbl_80719470
lbl_8071922C:
/* 8071922C  38 7C 0C 48 */	addi r3, r28, 0xc48
/* 80719230  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80719234  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80719238  EC 21 00 28 */	fsubs f1, f1, f0
/* 8071923C  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 80719240  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80719244  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80719248  EC 63 00 32 */	fmuls f3, f3, f0
/* 8071924C  4B B5 67 F1 */	bl cLib_addCalc2__FPffff
/* 80719250  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80719254  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 80719258  C0 5E 01 68 */	lfs f2, 0x168(r30)
/* 8071925C  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80719260  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80719264  EC 63 00 32 */	fmuls f3, f3, f0
/* 80719268  4B B5 67 D5 */	bl cLib_addCalc2__FPffff
/* 8071926C  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 80719270  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 80719274  C0 5E 01 68 */	lfs f2, 0x168(r30)
/* 80719278  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 8071927C  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 80719280  EC 63 00 32 */	fmuls f3, f3, f0
/* 80719284  4B B5 67 B9 */	bl cLib_addCalc2__FPffff
/* 80719288  38 7C 0C 3C */	addi r3, r28, 0xc3c
/* 8071928C  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 80719290  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80719294  EC 21 00 2A */	fadds f1, f1, f0
/* 80719298  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 8071929C  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807192A0  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 807192A4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807192A8  4B B5 67 95 */	bl cLib_addCalc2__FPffff
/* 807192AC  38 7C 0C 84 */	addi r3, r28, 0xc84
/* 807192B0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807192B4  FC 40 08 90 */	fmr f2, f1
/* 807192B8  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 807192BC  4B B5 67 81 */	bl cLib_addCalc2__FPffff
/* 807192C0  38 61 00 30 */	addi r3, r1, 0x30
/* 807192C4  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 807192C8  38 BB 05 38 */	addi r5, r27, 0x538
/* 807192CC  4B B4 D8 69 */	bl __mi__4cXyzCFRC3Vec
/* 807192D0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807192D4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807192D8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807192DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807192E0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807192E4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807192E8  38 61 00 24 */	addi r3, r1, 0x24
/* 807192EC  38 81 00 6C */	addi r4, r1, 0x6c
/* 807192F0  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 807192F4  4B B4 D8 91 */	bl __ml__4cXyzCFf
/* 807192F8  38 61 00 18 */	addi r3, r1, 0x18
/* 807192FC  38 9B 05 38 */	addi r4, r27, 0x538
/* 80719300  38 A1 00 24 */	addi r5, r1, 0x24
/* 80719304  4B B4 D7 E1 */	bl __pl__4cXyzCFRC3Vec
/* 80719308  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8071930C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80719310  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80719314  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80719318  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8071931C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80719320  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80719324  2C 00 00 46 */	cmpwi r0, 0x46
/* 80719328  41 80 01 48 */	blt lbl_80719470
/* 8071932C  40 82 00 1C */	bne lbl_80719348
/* 80719330  38 7C 0C A4 */	addi r3, r28, 0xca4
/* 80719334  7F 84 E3 78 */	mr r4, r28
/* 80719338  38 A0 00 66 */	li r5, 0x66
/* 8071933C  38 C0 00 00 */	li r6, 0
/* 80719340  38 E0 00 00 */	li r7, 0
/* 80719344  4B B3 0C 4D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80719348:
/* 80719348  38 7C 0C A4 */	addi r3, r28, 0xca4
/* 8071934C  7F 84 E3 78 */	mr r4, r28
/* 80719350  38 A0 00 00 */	li r5, 0
/* 80719354  38 C0 00 00 */	li r6, 0
/* 80719358  4B B3 0F 81 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8071935C  2C 03 00 00 */	cmpwi r3, 0
/* 80719360  41 82 01 10 */	beq lbl_80719470
/* 80719364  38 00 00 01 */	li r0, 1
/* 80719368  B0 1A 05 62 */	sth r0, 0x562(r26)
/* 8071936C  48 00 01 04 */	b lbl_80719470
lbl_80719370:
/* 80719370  38 00 00 1C */	li r0, 0x1c
/* 80719374  90 1B 06 14 */	stw r0, 0x614(r27)
/* 80719378  38 80 00 00 */	li r4, 0
/* 8071937C  90 9B 06 0C */	stw r4, 0x60c(r27)
/* 80719380  90 9B 06 10 */	stw r4, 0x610(r27)
/* 80719384  B0 9B 06 0A */	sth r4, 0x60a(r27)
/* 80719388  A8 7C 0C 32 */	lha r3, 0xc32(r28)
/* 8071938C  38 03 00 01 */	addi r0, r3, 1
/* 80719390  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80719394  B0 9C 0C 34 */	sth r4, 0xc34(r28)
/* 80719398  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007007C@ha */
/* 8071939C  38 03 00 7C */	addi r0, r3, 0x007C /* 0x0007007C@l */
/* 807193A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807193A4  38 7C 06 10 */	addi r3, r28, 0x610
/* 807193A8  38 81 00 10 */	addi r4, r1, 0x10
/* 807193AC  38 A0 00 00 */	li r5, 0
/* 807193B0  38 C0 FF FF */	li r6, -1
/* 807193B4  81 9C 06 10 */	lwz r12, 0x610(r28)
/* 807193B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807193BC  7D 89 03 A6 */	mtctr r12
/* 807193C0  4E 80 04 21 */	bctrl 
lbl_807193C4:
/* 807193C4  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 807193C8  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807193CC  C0 5E 01 68 */	lfs f2, 0x168(r30)
/* 807193D0  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 807193D4  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 807193D8  EC 63 00 32 */	fmuls f3, f3, f0
/* 807193DC  4B B5 66 61 */	bl cLib_addCalc2__FPffff
/* 807193E0  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 807193E4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807193E8  C0 5E 01 68 */	lfs f2, 0x168(r30)
/* 807193EC  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 807193F0  C0 1C 0C 84 */	lfs f0, 0xc84(r28)
/* 807193F4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807193F8  4B B5 66 45 */	bl cLib_addCalc2__FPffff
/* 807193FC  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80719400  2C 00 00 14 */	cmpwi r0, 0x14
/* 80719404  40 82 00 6C */	bne lbl_80719470
/* 80719408  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8071940C  38 80 00 40 */	li r4, 0x40
/* 80719410  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80719414  7C 05 07 74 */	extsb r5, r0
/* 80719418  38 C0 00 00 */	li r6, 0
/* 8071941C  38 E0 00 00 */	li r7, 0
/* 80719420  39 00 00 00 */	li r8, 0
/* 80719424  39 20 FF FF */	li r9, -1
/* 80719428  4B 90 2D 4D */	bl fopAcM_createItemForMidBoss__FPC4cXyziiPC5csXyzPC4cXyzii
/* 8071942C  38 00 00 0A */	li r0, 0xa
/* 80719430  B0 1C 0C 30 */	sth r0, 0xc30(r28)
/* 80719434  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80719438  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 8071943C  EC 01 00 2A */	fadds f0, f1, f0
/* 80719440  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80719444  38 00 00 00 */	li r0, 0
/* 80719448  90 1D 01 24 */	stw r0, 0x124(r29)
/* 8071944C  3C 60 80 71 */	lis r3, s_h_sub__FPvPv@ha /* 0x80714534@ha */
/* 80719450  38 63 45 34 */	addi r3, r3, s_h_sub__FPvPv@l /* 0x80714534@l */
/* 80719454  7F 84 E3 78 */	mr r4, r28
/* 80719458  4B 90 7E E1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8071945C  80 7D 00 D4 */	lwz r3, 0xd4(r29)
/* 80719460  4B 90 08 1D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80719464  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80719468  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8071946C  4B 90 08 11 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80719470:
/* 80719470  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80719474  4B C4 8D A5 */	bl _restgpr_25
/* 80719478  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8071947C  7C 08 03 A6 */	mtlr r0
/* 80719480  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80719484  4E 80 00 20 */	blr 
