lbl_807DC168:
/* 807DC168  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 807DC16C  7C 08 02 A6 */	mflr r0
/* 807DC170  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 807DC174  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 807DC178  4B B8 60 45 */	bl _savegpr_21
/* 807DC17C  7C 7F 1B 78 */	mr r31, r3
/* 807DC180  3C 60 80 7E */	lis r3, lit_1109@ha /* 0x807E3578@ha */
/* 807DC184  3B 43 35 78 */	addi r26, r3, lit_1109@l /* 0x807E3578@l */
/* 807DC188  3C 60 80 7E */	lis r3, lit_3882@ha /* 0x807E298C@ha */
/* 807DC18C  3B C3 29 8C */	addi r30, r3, lit_3882@l /* 0x807E298C@l */
/* 807DC190  38 60 00 00 */	li r3, 0
/* 807DC194  48 00 64 0D */	bl dComIfGp_getPlayerCameraID__Fi
/* 807DC198  48 00 63 F1 */	bl dComIfGp_getCamera__Fi
/* 807DC19C  7C 7D 1B 78 */	mr r29, r3
/* 807DC1A0  38 60 00 00 */	li r3, 0
/* 807DC1A4  48 00 63 E5 */	bl dComIfGp_getCamera__Fi
/* 807DC1A8  38 60 00 00 */	li r3, 0
/* 807DC1AC  48 00 63 C5 */	bl dComIfGp_getPlayer__Fi
/* 807DC1B0  7C 79 1B 78 */	mr r25, r3
/* 807DC1B4  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DC1B8  2C 00 00 00 */	cmpwi r0, 0
/* 807DC1BC  41 82 00 24 */	beq lbl_807DC1E0
/* 807DC1C0  48 00 63 A1 */	bl dComIfGp_getHorseActor__Fv
/* 807DC1C4  7C 78 1B 78 */	mr r24, r3
/* 807DC1C8  80 7F 14 34 */	lwz r3, 0x1434(r31)
/* 807DC1CC  48 00 63 65 */	bl fopAcM_SearchByID__FUi
/* 807DC1D0  7C 7B 1B 78 */	mr r27, r3
/* 807DC1D4  38 60 01 D5 */	li r3, 0x1d5
/* 807DC1D8  48 00 63 29 */	bl fopAcM_SearchByName__Fs
/* 807DC1DC  7C 7C 1B 78 */	mr r28, r3
lbl_807DC1E0:
/* 807DC1E0  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC1E4  48 00 63 19 */	bl __ct__4cXyzFv
/* 807DC1E8  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC1EC  48 00 63 11 */	bl __ct__4cXyzFv
/* 807DC1F0  38 61 01 50 */	addi r3, r1, 0x150
/* 807DC1F4  48 00 63 09 */	bl __ct__4cXyzFv
/* 807DC1F8  38 61 01 44 */	addi r3, r1, 0x144
/* 807DC1FC  48 00 63 01 */	bl __ct__4cXyzFv
/* 807DC200  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DC204  28 00 00 61 */	cmplwi r0, 0x61
/* 807DC208  41 81 35 28 */	bgt lbl_807DF730
/* 807DC20C  3C 60 80 7E */	lis r3, lit_9407@ha /* 0x807E3244@ha */
/* 807DC210  38 63 32 44 */	addi r3, r3, lit_9407@l /* 0x807E3244@l */
/* 807DC214  54 00 10 3A */	slwi r0, r0, 2
/* 807DC218  7C 03 00 2E */	lwzx r0, r3, r0
/* 807DC21C  7C 09 03 A6 */	mtctr r0
/* 807DC220  4E 80 04 20 */	bctr 
lbl_807DC224:
/* 807DC224  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DC228  48 00 62 C1 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DC22C  2C 03 00 00 */	cmpwi r3, 0
/* 807DC230  40 82 00 5C */	bne lbl_807DC28C
/* 807DC234  7F E3 FB 78 */	mr r3, r31
/* 807DC238  38 80 00 02 */	li r4, 2
/* 807DC23C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DC240  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DC244  38 C0 00 00 */	li r6, 0
/* 807DC248  4B 83 F6 C1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DC24C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DC250  38 80 00 02 */	li r4, 2
/* 807DC254  48 00 62 85 */	bl onCondition__11dEvt_info_cFUs
/* 807DC258  38 61 01 44 */	addi r3, r1, 0x144
/* 807DC25C  38 80 FF FF */	li r4, -1
/* 807DC260  4B FF 68 E9 */	bl __dt__4cXyzFv
/* 807DC264  38 61 01 50 */	addi r3, r1, 0x150
/* 807DC268  38 80 FF FF */	li r4, -1
/* 807DC26C  4B FF 68 DD */	bl __dt__4cXyzFv
/* 807DC270  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC274  38 80 FF FF */	li r4, -1
/* 807DC278  4B FF 68 D1 */	bl __dt__4cXyzFv
/* 807DC27C  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC280  38 80 FF FF */	li r4, -1
/* 807DC284  4B FF 68 C5 */	bl __dt__4cXyzFv
/* 807DC288  48 00 38 14 */	b lbl_807DFA9C
lbl_807DC28C:
/* 807DC28C  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DC290  4B 98 52 41 */	bl Stop__9dCamera_cFv
/* 807DC294  38 00 00 02 */	li r0, 2
/* 807DC298  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DC29C  38 00 00 00 */	li r0, 0
/* 807DC2A0  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DC2A4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DC2A8  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DC2AC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DC2B0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807DC2B4  D0 1F 17 08 */	stfs f0, 0x1708(r31)
/* 807DC2B8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DC2BC  38 80 00 03 */	li r4, 3
/* 807DC2C0  4B 98 6D 4D */	bl SetTrimSize__9dCamera_cFl
/* 807DC2C4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807DC2C8  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DC2CC  C0 5E 02 40 */	lfs f2, 0x240(r30)
/* 807DC2D0  C0 7E 02 44 */	lfs f3, 0x244(r30)
/* 807DC2D4  48 00 61 F5 */	bl set__4cXyzFfff
/* 807DC2D8  38 00 80 00 */	li r0, -32768
/* 807DC2DC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807DC2E0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 807DC2E4  38 9F 04 DC */	addi r4, r31, 0x4dc
/* 807DC2E8  48 00 61 C5 */	bl __as__5csXyzFRC5csXyz
/* 807DC2EC  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 807DC2F0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DC2F4  48 00 61 75 */	bl __as__11actor_placeFRC11actor_place
/* 807DC2F8  38 00 20 00 */	li r0, 0x2000
/* 807DC2FC  B0 1F 17 04 */	sth r0, 0x1704(r31)
/* 807DC300  48 00 61 59 */	bl daPy_getPlayerActorClass__Fv
/* 807DC304  48 00 61 41 */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DC308  7F 03 C3 78 */	mr r3, r24
/* 807DC30C  48 00 66 59 */	bl changeOriginalDemo__9daHorse_cFv
/* 807DC310  3C 60 80 7E */	lis r3, s_wbdel_sub__FPvPv@ha /* 0x807DBFAC@ha */
/* 807DC314  38 63 BF AC */	addi r3, r3, s_wbdel_sub__FPvPv@l /* 0x807DBFAC@l */
/* 807DC318  7F E4 FB 78 */	mr r4, r31
/* 807DC31C  48 00 66 29 */	bl fpcM_Search__FPFPvPv_PvPv
/* 807DC320  48 00 66 15 */	bl dComIfGp_getEvent__Fv
/* 807DC324  7F E4 FB 78 */	mr r4, r31
/* 807DC328  48 00 65 E1 */	bl startCheckSkipEdge__14dEvt_control_cFPv
lbl_807DC32C:
/* 807DC32C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC330  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 807DC334  40 82 00 58 */	bne lbl_807DC38C
/* 807DC338  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC33C  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 807DC340  C0 5E 02 40 */	lfs f2, 0x240(r30)
/* 807DC344  C0 7E 02 4C */	lfs f3, 0x24c(r30)
/* 807DC348  48 00 61 81 */	bl set__4cXyzFfff
/* 807DC34C  7F 03 C3 78 */	mr r3, r24
/* 807DC350  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DC354  38 A0 80 00 */	li r5, -32768
/* 807DC358  48 00 65 89 */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
/* 807DC35C  7F 03 C3 78 */	mr r3, r24
/* 807DC360  38 80 00 04 */	li r4, 4
/* 807DC364  38 A0 00 00 */	li r5, 0
/* 807DC368  48 00 65 6D */	bl changeDemoMode__9daHorse_cFUli
/* 807DC36C  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC370  C0 3E 02 50 */	lfs f1, 0x250(r30)
/* 807DC374  C0 5E 02 54 */	lfs f2, 0x254(r30)
/* 807DC378  C0 7E 02 58 */	lfs f3, 0x258(r30)
/* 807DC37C  48 00 61 4D */	bl set__4cXyzFfff
/* 807DC380  7F 03 C3 78 */	mr r3, r24
/* 807DC384  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DC388  48 00 65 31 */	bl changeDemoPos0__9daHorse_cFPC4cXyz
lbl_807DC38C:
/* 807DC38C  38 7F 17 08 */	addi r3, r31, 0x1708
/* 807DC390  C0 3E 02 5C */	lfs f1, 0x25c(r30)
/* 807DC394  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DC398  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 807DC39C  4B A9 36 A1 */	bl cLib_addCalc2__FPffff
/* 807DC3A0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 807DC3A4  A8 1F 17 04 */	lha r0, 0x1704(r31)
/* 807DC3A8  7C 03 02 14 */	add r0, r3, r0
/* 807DC3AC  7C 03 07 34 */	extsh r3, r0
/* 807DC3B0  48 00 64 DD */	bl YrotS__14mDoMtx_stack_cFs
/* 807DC3B4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DC3B8  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DC3BC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807DC3C0  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DC3C4  C0 1F 17 08 */	lfs f0, 0x1708(r31)
/* 807DC3C8  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DC3CC  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC3D0  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DC3D4  48 00 64 85 */	bl multVec__14mDoMtx_stack_cFPC3VecP3Vec
/* 807DC3D8  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DC3DC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DC3E0  48 00 64 45 */	bl __apl__4cXyzFRC3Vec
/* 807DC3E4  38 7F 17 04 */	addi r3, r31, 0x1704
/* 807DC3E8  38 80 78 00 */	li r4, 0x7800
/* 807DC3EC  38 A0 00 20 */	li r5, 0x20
/* 807DC3F0  38 C0 00 A0 */	li r6, 0xa0
/* 807DC3F4  4B A9 42 15 */	bl cLib_addCalcAngleS2__FPssss
/* 807DC3F8  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC3FC  2C 00 00 00 */	cmpwi r0, 0
/* 807DC400  40 82 00 24 */	bne lbl_807DC424
/* 807DC404  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DC408  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DC40C  48 00 63 FD */	bl __as__4cXyzFRC4cXyz
/* 807DC410  C0 3F 16 C0 */	lfs f1, 0x16c0(r31)
/* 807DC414  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807DC418  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC41C  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DC420  48 00 00 48 */	b lbl_807DC468
lbl_807DC424:
/* 807DC424  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DC428  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807DC42C  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DC430  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DC434  4B A9 36 09 */	bl cLib_addCalc2__FPffff
/* 807DC438  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DC43C  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DC440  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807DC444  EC 03 00 2A */	fadds f0, f3, f0
/* 807DC448  EC 23 00 2A */	fadds f1, f3, f0
/* 807DC44C  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DC450  4B A9 35 ED */	bl cLib_addCalc2__FPffff
/* 807DC454  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DC458  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807DC45C  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DC460  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DC464  4B A9 35 D9 */	bl cLib_addCalc2__FPffff
lbl_807DC468:
/* 807DC468  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC46C  2C 00 00 DC */	cmpwi r0, 0xdc
/* 807DC470  40 82 32 C0 */	bne lbl_807DF730
/* 807DC474  38 00 00 03 */	li r0, 3
/* 807DC478  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DC47C  38 00 00 00 */	li r0, 0
/* 807DC480  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DC484  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 807DC488  D0 1F 17 08 */	stfs f0, 0x1708(r31)
/* 807DC48C  38 00 10 00 */	li r0, 0x1000
/* 807DC490  B0 1F 17 04 */	sth r0, 0x1704(r31)
/* 807DC494  48 00 32 9C */	b lbl_807DF730
lbl_807DC498:
/* 807DC498  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 807DC49C  A8 1F 17 04 */	lha r0, 0x1704(r31)
/* 807DC4A0  7C 03 02 14 */	add r0, r3, r0
/* 807DC4A4  7C 03 07 34 */	extsh r3, r0
/* 807DC4A8  48 00 63 E5 */	bl YrotS__14mDoMtx_stack_cFs
/* 807DC4AC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DC4B0  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DC4B4  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DC4B8  C0 1F 17 08 */	lfs f0, 0x1708(r31)
/* 807DC4BC  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DC4C0  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC4C4  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DC4C8  48 00 63 91 */	bl multVec__14mDoMtx_stack_cFPC3VecP3Vec
/* 807DC4CC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DC4D0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DC4D4  48 00 63 51 */	bl __apl__4cXyzFRC3Vec
/* 807DC4D8  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DC4DC  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DC4E0  48 00 63 29 */	bl __as__4cXyzFRC4cXyz
/* 807DC4E4  C0 3F 16 C0 */	lfs f1, 0x16c0(r31)
/* 807DC4E8  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 807DC4EC  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC4F0  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DC4F4  38 7F 17 08 */	addi r3, r31, 0x1708
/* 807DC4F8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 807DC4FC  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DC500  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 807DC504  4B A9 35 39 */	bl cLib_addCalc2__FPffff
/* 807DC508  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC50C  2C 00 00 46 */	cmpwi r0, 0x46
/* 807DC510  40 82 32 20 */	bne lbl_807DF730
/* 807DC514  38 00 00 04 */	li r0, 4
/* 807DC518  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DC51C  38 00 00 00 */	li r0, 0
/* 807DC520  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
lbl_807DC524:
/* 807DC524  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 807DC528  D0 1F 17 08 */	stfs f0, 0x1708(r31)
/* 807DC52C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 807DC530  38 03 88 00 */	addi r0, r3, -30720
/* 807DC534  7C 03 07 34 */	extsh r3, r0
/* 807DC538  48 00 63 55 */	bl YrotS__14mDoMtx_stack_cFs
/* 807DC53C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DC540  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DC544  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807DC548  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DC54C  C0 1F 17 08 */	lfs f0, 0x1708(r31)
/* 807DC550  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DC554  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC558  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DC55C  48 00 62 FD */	bl multVec__14mDoMtx_stack_cFPC3VecP3Vec
/* 807DC560  C0 3F 16 A4 */	lfs f1, 0x16a4(r31)
/* 807DC564  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807DC568  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC56C  D0 1F 16 A4 */	stfs f0, 0x16a4(r31)
/* 807DC570  C0 3F 16 A8 */	lfs f1, 0x16a8(r31)
/* 807DC574  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 807DC578  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC57C  D0 1F 16 A8 */	stfs f0, 0x16a8(r31)
/* 807DC580  C0 3F 16 AC */	lfs f1, 0x16ac(r31)
/* 807DC584  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807DC588  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC58C  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
/* 807DC590  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807DC594  D0 1F 16 BC */	stfs f0, 0x16bc(r31)
/* 807DC598  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807DC59C  D0 1F 16 C4 */	stfs f0, 0x16c4(r31)
/* 807DC5A0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC5A4  2C 00 00 00 */	cmpwi r0, 0
/* 807DC5A8  40 82 00 1C */	bne lbl_807DC5C4
/* 807DC5AC  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 807DC5B0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807DC5B4  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC5B8  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC5BC  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DC5C0  48 00 00 24 */	b lbl_807DC5E4
lbl_807DC5C4:
/* 807DC5C4  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DC5C8  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 807DC5CC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807DC5D0  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC5D4  EC 21 00 2A */	fadds f1, f1, f0
/* 807DC5D8  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 807DC5DC  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 807DC5E0  4B A9 34 5D */	bl cLib_addCalc2__FPffff
lbl_807DC5E4:
/* 807DC5E4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC5E8  2C 00 00 8C */	cmpwi r0, 0x8c
/* 807DC5EC  40 82 31 44 */	bne lbl_807DF730
/* 807DC5F0  38 00 00 05 */	li r0, 5
/* 807DC5F4  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DC5F8  38 00 00 00 */	li r0, 0
/* 807DC5FC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DC600  C0 1E 02 64 */	lfs f0, 0x264(r30)
/* 807DC604  D0 1F 17 08 */	stfs f0, 0x1708(r31)
/* 807DC608  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807DC60C  D0 1F 17 0C */	stfs f0, 0x170c(r31)
lbl_807DC610:
/* 807DC610  38 00 78 00 */	li r0, 0x7800
/* 807DC614  B0 1F 17 04 */	sth r0, 0x1704(r31)
/* 807DC618  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 807DC61C  A8 1F 17 04 */	lha r0, 0x1704(r31)
/* 807DC620  7C 03 02 14 */	add r0, r3, r0
/* 807DC624  7C 03 07 34 */	extsh r3, r0
/* 807DC628  48 00 62 65 */	bl YrotS__14mDoMtx_stack_cFs
/* 807DC62C  C0 1F 17 0C */	lfs f0, 0x170c(r31)
/* 807DC630  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DC634  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DC638  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DC63C  C0 1F 17 08 */	lfs f0, 0x1708(r31)
/* 807DC640  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DC644  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC648  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DC64C  48 00 62 0D */	bl multVec__14mDoMtx_stack_cFPC3VecP3Vec
/* 807DC650  C0 3F 16 A4 */	lfs f1, 0x16a4(r31)
/* 807DC654  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 807DC658  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC65C  D0 1F 16 A4 */	stfs f0, 0x16a4(r31)
/* 807DC660  C0 3F 16 AC */	lfs f1, 0x16ac(r31)
/* 807DC664  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 807DC668  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC66C  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
/* 807DC670  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 807DC674  D0 3F 16 A8 */	stfs f1, 0x16a8(r31)
/* 807DC678  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC67C  2C 00 00 00 */	cmpwi r0, 0
/* 807DC680  40 82 00 14 */	bne lbl_807DC694
/* 807DC684  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DC688  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DC68C  48 00 61 7D */	bl __as__4cXyzFRC4cXyz
/* 807DC690  48 00 00 40 */	b lbl_807DC6D0
lbl_807DC694:
/* 807DC694  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 807DC698  D0 1F 16 BC */	stfs f0, 0x16bc(r31)
/* 807DC69C  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 807DC6A0  D0 1F 16 C4 */	stfs f0, 0x16c4(r31)
/* 807DC6A4  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 807DC6A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807DC6AC  EC 21 00 2A */	fadds f1, f1, f0
/* 807DC6B0  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807DC6B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DC6B8  40 81 00 08 */	ble lbl_807DC6C0
/* 807DC6BC  FC 20 00 90 */	fmr f1, f0
lbl_807DC6C0:
/* 807DC6C0  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DC6C4  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DC6C8  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 807DC6CC  4B A9 33 71 */	bl cLib_addCalc2__FPffff
lbl_807DC6D0:
/* 807DC6D0  38 7F 17 08 */	addi r3, r31, 0x1708
/* 807DC6D4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807DC6D8  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DC6DC  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 807DC6E0  4B A9 33 5D */	bl cLib_addCalc2__FPffff
/* 807DC6E4  38 7F 17 0C */	addi r3, r31, 0x170c
/* 807DC6E8  C0 3E 01 E4 */	lfs f1, 0x1e4(r30)
/* 807DC6EC  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DC6F0  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 807DC6F4  4B A9 33 49 */	bl cLib_addCalc2__FPffff
/* 807DC6F8  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DC6FC  2C 00 00 05 */	cmpwi r0, 5
/* 807DC700  40 82 00 3C */	bne lbl_807DC73C
/* 807DC704  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 807DC708  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 807DC70C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DC710  40 80 00 2C */	bge lbl_807DC73C
/* 807DC714  7F 03 C3 78 */	mr r3, r24
/* 807DC718  38 80 00 07 */	li r4, 7
/* 807DC71C  38 A0 00 00 */	li r5, 0
/* 807DC720  48 00 61 B5 */	bl changeDemoMode__9daHorse_cFUli
/* 807DC724  7F 03 C3 78 */	mr r3, r24
/* 807DC728  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 807DC72C  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 807DC730  48 00 60 C9 */	bl onDemoJumpDistance__9daHorse_cFff
/* 807DC734  38 00 00 06 */	li r0, 6
/* 807DC738  B0 1F 16 9E */	sth r0, 0x169e(r31)
lbl_807DC73C:
/* 807DC73C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC740  2C 00 00 4B */	cmpwi r0, 0x4b
/* 807DC744  40 82 2F EC */	bne lbl_807DF730
/* 807DC748  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DC74C  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DC750  38 63 00 28 */	addi r3, r3, 0x28
/* 807DC754  38 80 00 01 */	li r4, 1
/* 807DC758  38 A0 00 00 */	li r5, 0
/* 807DC75C  38 C0 00 04 */	li r6, 4
/* 807DC760  4B 85 0D F5 */	bl dComIfGp_setNextStage__FPCcsScSc
/* 807DC764  48 00 2F CC */	b lbl_807DF730
lbl_807DC768:
/* 807DC768  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DC76C  48 00 5D 7D */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DC770  2C 03 00 00 */	cmpwi r3, 0
/* 807DC774  40 82 00 5C */	bne lbl_807DC7D0
/* 807DC778  7F E3 FB 78 */	mr r3, r31
/* 807DC77C  38 80 00 02 */	li r4, 2
/* 807DC780  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DC784  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DC788  38 C0 00 00 */	li r6, 0
/* 807DC78C  4B 83 F1 7D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DC790  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DC794  38 80 00 02 */	li r4, 2
/* 807DC798  48 00 5D 41 */	bl onCondition__11dEvt_info_cFUs
/* 807DC79C  38 61 01 44 */	addi r3, r1, 0x144
/* 807DC7A0  38 80 FF FF */	li r4, -1
/* 807DC7A4  4B FF 63 A5 */	bl __dt__4cXyzFv
/* 807DC7A8  38 61 01 50 */	addi r3, r1, 0x150
/* 807DC7AC  38 80 FF FF */	li r4, -1
/* 807DC7B0  4B FF 63 99 */	bl __dt__4cXyzFv
/* 807DC7B4  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC7B8  38 80 FF FF */	li r4, -1
/* 807DC7BC  4B FF 63 8D */	bl __dt__4cXyzFv
/* 807DC7C0  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC7C4  38 80 FF FF */	li r4, -1
/* 807DC7C8  4B FF 63 81 */	bl __dt__4cXyzFv
/* 807DC7CC  48 00 32 D0 */	b lbl_807DFA9C
lbl_807DC7D0:
/* 807DC7D0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DC7D4  4B 98 4C FD */	bl Stop__9dCamera_cFv
/* 807DC7D8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DC7DC  38 80 00 03 */	li r4, 3
/* 807DC7E0  4B 98 68 2D */	bl SetTrimSize__9dCamera_cFl
/* 807DC7E4  38 00 00 0B */	li r0, 0xb
/* 807DC7E8  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DC7EC  38 00 00 00 */	li r0, 0
/* 807DC7F0  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DC7F4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DC7F8  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DC7FC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DC800  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 807DC804  A8 1B 0A 0E */	lha r0, 0xa0e(r27)
/* 807DC808  7C 03 00 50 */	subf r0, r3, r0
/* 807DC80C  7C 00 0E 70 */	srawi r0, r0, 1
/* 807DC810  7C 00 01 94 */	addze r0, r0
/* 807DC814  7C 03 02 14 */	add r0, r3, r0
/* 807DC818  7C 03 07 34 */	extsh r3, r0
/* 807DC81C  48 00 60 71 */	bl YrotS__14mDoMtx_stack_cFs
/* 807DC820  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DC824  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DC828  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 807DC82C  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DC830  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807DC834  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DC838  38 61 01 68 */	addi r3, r1, 0x168
/* 807DC83C  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DC840  48 00 60 19 */	bl multVec__14mDoMtx_stack_cFPC3VecP3Vec
/* 807DC844  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DC848  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807DC84C  48 00 5F D9 */	bl __apl__4cXyzFRC3Vec
/* 807DC850  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 807DC854  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DC858  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DC85C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807DC860  48 00 5F A9 */	bl __as__4cXyzFRC4cXyz
/* 807DC864  C0 3F 16 C0 */	lfs f1, 0x16c0(r31)
/* 807DC868  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807DC86C  EC 01 00 2A */	fadds f0, f1, f0
/* 807DC870  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DC874  48 00 5B E5 */	bl daPy_getPlayerActorClass__Fv
/* 807DC878  48 00 5B CD */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DC87C  7F 03 C3 78 */	mr r3, r24
/* 807DC880  48 00 60 E5 */	bl changeOriginalDemo__9daHorse_cFv
lbl_807DC884:
/* 807DC884  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DC888  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807DC88C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DC890  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DC894  4B A9 31 A9 */	bl cLib_addCalc2__FPffff
/* 807DC898  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DC89C  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807DC8A0  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DC8A4  C0 7F 17 10 */	lfs f3, 0x1710(r31)
/* 807DC8A8  4B A9 31 95 */	bl cLib_addCalc2__FPffff
/* 807DC8AC  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DC8B0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 807DC8B4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807DC8B8  EC 21 00 2A */	fadds f1, f1, f0
/* 807DC8BC  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DC8C0  C0 7F 17 10 */	lfs f3, 0x1710(r31)
/* 807DC8C4  4B A9 31 79 */	bl cLib_addCalc2__FPffff
/* 807DC8C8  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DC8CC  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807DC8D0  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DC8D4  C0 7F 17 10 */	lfs f3, 0x1710(r31)
/* 807DC8D8  4B A9 31 65 */	bl cLib_addCalc2__FPffff
/* 807DC8DC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DC8E0  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807DC8E4  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DC8E8  C0 7E 02 68 */	lfs f3, 0x268(r30)
/* 807DC8EC  4B A9 31 51 */	bl cLib_addCalc2__FPffff
/* 807DC8F0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC8F4  2C 00 00 28 */	cmpwi r0, 0x28
/* 807DC8F8  40 82 00 C4 */	bne lbl_807DC9BC
/* 807DC8FC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807DC900  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807DC904  40 80 00 64 */	bge lbl_807DC968
/* 807DC908  2C 00 C0 00 */	cmpwi r0, -16384
/* 807DC90C  40 81 00 5C */	ble lbl_807DC968
/* 807DC910  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC914  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DC918  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 807DC91C  C0 7E 02 6C */	lfs f3, 0x26c(r30)
/* 807DC920  48 00 5B A9 */	bl set__4cXyzFfff
/* 807DC924  7F 03 C3 78 */	mr r3, r24
/* 807DC928  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DC92C  A8 B9 04 E6 */	lha r5, 0x4e6(r25)
/* 807DC930  48 00 5F B1 */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
/* 807DC934  7F 03 C3 78 */	mr r3, r24
/* 807DC938  38 80 00 03 */	li r4, 3
/* 807DC93C  38 A0 00 00 */	li r5, 0
/* 807DC940  48 00 5F 95 */	bl changeDemoMode__9daHorse_cFUli
/* 807DC944  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC948  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DC94C  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 807DC950  C0 7E 02 70 */	lfs f3, 0x270(r30)
/* 807DC954  48 00 5B 75 */	bl set__4cXyzFfff
/* 807DC958  7F 03 C3 78 */	mr r3, r24
/* 807DC95C  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DC960  48 00 5F 59 */	bl changeDemoPos0__9daHorse_cFPC4cXyz
/* 807DC964  48 00 00 58 */	b lbl_807DC9BC
lbl_807DC968:
/* 807DC968  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC96C  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DC970  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 807DC974  C0 7E 02 6C */	lfs f3, 0x26c(r30)
/* 807DC978  48 00 5B 51 */	bl set__4cXyzFfff
/* 807DC97C  7F 03 C3 78 */	mr r3, r24
/* 807DC980  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DC984  A8 B9 04 E6 */	lha r5, 0x4e6(r25)
/* 807DC988  48 00 5F 59 */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
/* 807DC98C  7F 03 C3 78 */	mr r3, r24
/* 807DC990  38 80 00 03 */	li r4, 3
/* 807DC994  38 A0 00 00 */	li r5, 0
/* 807DC998  48 00 5F 3D */	bl changeDemoMode__9daHorse_cFUli
/* 807DC99C  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DC9A0  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DC9A4  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 807DC9A8  C0 7E 02 74 */	lfs f3, 0x274(r30)
/* 807DC9AC  48 00 5B 1D */	bl set__4cXyzFfff
/* 807DC9B0  7F 03 C3 78 */	mr r3, r24
/* 807DC9B4  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DC9B8  48 00 5F 01 */	bl changeDemoPos0__9daHorse_cFPC4cXyz
lbl_807DC9BC:
/* 807DC9BC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC9C0  2C 00 00 28 */	cmpwi r0, 0x28
/* 807DC9C4  41 80 00 24 */	blt lbl_807DC9E8
/* 807DC9C8  2C 00 00 57 */	cmpwi r0, 0x57
/* 807DC9CC  40 80 00 1C */	bge lbl_807DC9E8
/* 807DC9D0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 807DC9D4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807DC9D8  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 807DC9DC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807DC9E0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DC9E4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_807DC9E8:
/* 807DC9E8  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DC9EC  2C 00 00 57 */	cmpwi r0, 0x57
/* 807DC9F0  40 82 00 40 */	bne lbl_807DCA30
/* 807DC9F4  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 807DC9F8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807DC9FC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807DCA00  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807DCA04  40 80 00 18 */	bge lbl_807DCA1C
/* 807DCA08  2C 00 C0 00 */	cmpwi r0, -16384
/* 807DCA0C  40 81 00 10 */	ble lbl_807DCA1C
/* 807DCA10  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 807DCA14  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807DCA18  48 00 00 0C */	b lbl_807DCA24
lbl_807DCA1C:
/* 807DCA1C  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 807DCA20  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_807DCA24:
/* 807DCA24  38 7A 00 50 */	addi r3, r26, 0x50
/* 807DCA28  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 807DCA2C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_807DCA30:
/* 807DCA30  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DCA34  2C 00 00 5A */	cmpwi r0, 0x5a
/* 807DCA38  40 82 00 84 */	bne lbl_807DCABC
/* 807DCA3C  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DCA40  C0 3E 02 84 */	lfs f1, 0x284(r30)
/* 807DCA44  C0 5E 02 88 */	lfs f2, 0x288(r30)
/* 807DCA48  C0 7E 02 8C */	lfs f3, 0x28c(r30)
/* 807DCA4C  48 00 5A 7D */	bl set__4cXyzFfff
/* 807DCA50  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DCA54  C0 3E 02 90 */	lfs f1, 0x290(r30)
/* 807DCA58  C0 5E 02 88 */	lfs f2, 0x288(r30)
/* 807DCA5C  C0 7E 02 94 */	lfs f3, 0x294(r30)
/* 807DCA60  48 00 5A 69 */	bl set__4cXyzFfff
/* 807DCA64  38 00 00 0C */	li r0, 0xc
/* 807DCA68  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DCA6C  38 00 00 00 */	li r0, 0
/* 807DCA70  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DCA74  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807DCA78  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DCA7C  80 7F 14 34 */	lwz r3, 0x1434(r31)
/* 807DCA80  48 00 5A B1 */	bl fopAcM_SearchByID__FUi
/* 807DCA84  7C 77 1B 78 */	mr r23, r3
/* 807DCA88  C0 1E 02 6C */	lfs f0, 0x26c(r30)
/* 807DCA8C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 807DCA90  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 807DCA94  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 807DCA98  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 807DCA9C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 807DCAA0  38 77 04 F8 */	addi r3, r23, 0x4f8
/* 807DCAA4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DCAA8  C0 5E 01 E4 */	lfs f2, 0x1e4(r30)
/* 807DCAAC  FC 60 08 90 */	fmr f3, f1
/* 807DCAB0  48 00 5A 19 */	bl set__4cXyzFfff
/* 807DCAB4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DCAB8  D0 17 05 2C */	stfs f0, 0x52c(r23)
lbl_807DCABC:
/* 807DCABC  48 00 59 9D */	bl daPy_getPlayerActorClass__Fv
/* 807DCAC0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807DCAC4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807DCAC8  7D 89 03 A6 */	mtctr r12
/* 807DCACC  4E 80 04 21 */	bctrl 
/* 807DCAD0  28 03 00 00 */	cmplwi r3, 0
/* 807DCAD4  40 82 2C 5C */	bne lbl_807DF730
/* 807DCAD8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCADC  4B 98 49 D1 */	bl Start__9dCamera_cFv
/* 807DCAE0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCAE4  38 80 00 00 */	li r4, 0
/* 807DCAE8  4B 98 65 25 */	bl SetTrimSize__9dCamera_cFl
/* 807DCAEC  48 00 59 2D */	bl dComIfGp_event_reset__Fv
/* 807DCAF0  48 00 59 69 */	bl daPy_getPlayerActorClass__Fv
/* 807DCAF4  48 00 59 11 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DCAF8  38 00 00 00 */	li r0, 0
/* 807DCAFC  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DCB00  48 00 2C 30 */	b lbl_807DF730
lbl_807DCB04:
/* 807DCB04  38 7F 17 14 */	addi r3, r31, 0x1714
/* 807DCB08  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 807DCB0C  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DCB10  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807DCB14  4B A9 2F 29 */	bl cLib_addCalc2__FPffff
/* 807DCB18  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DCB1C  2C 00 00 5A */	cmpwi r0, 0x5a
/* 807DCB20  40 82 2C 10 */	bne lbl_807DF730
/* 807DCB24  48 00 58 D1 */	bl Z2GetAudioMgr__Fv
/* 807DCB28  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000010@ha */
/* 807DCB2C  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x02000010@l */
/* 807DCB30  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DCB34  4B AD 30 61 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 807DCB38  48 00 58 BD */	bl Z2GetAudioMgr__Fv
/* 807DCB3C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DCB40  4B AD 32 D9 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 807DCB44  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 807DCB48  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 807DCB4C  A0 63 00 AA */	lhz r3, 0xaa(r3)
/* 807DCB50  48 00 58 75 */	bl dComIfGs_onEventBit__FUs
/* 807DCB54  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DCB58  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DCB5C  38 63 00 28 */	addi r3, r3, 0x28
/* 807DCB60  38 80 00 14 */	li r4, 0x14
/* 807DCB64  38 A0 00 00 */	li r5, 0
/* 807DCB68  38 C0 00 08 */	li r6, 8
/* 807DCB6C  4B 85 09 E9 */	bl dComIfGp_setNextStage__FPCcsScSc
/* 807DCB70  48 00 2B C0 */	b lbl_807DF730
lbl_807DCB74:
/* 807DCB74  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DCB78  48 00 59 71 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DCB7C  2C 03 00 00 */	cmpwi r3, 0
/* 807DCB80  40 82 00 5C */	bne lbl_807DCBDC
/* 807DCB84  7F E3 FB 78 */	mr r3, r31
/* 807DCB88  38 80 00 02 */	li r4, 2
/* 807DCB8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DCB90  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DCB94  38 C0 00 00 */	li r6, 0
/* 807DCB98  4B 83 ED 71 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DCB9C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DCBA0  38 80 00 02 */	li r4, 2
/* 807DCBA4  48 00 59 35 */	bl onCondition__11dEvt_info_cFUs
/* 807DCBA8  38 61 01 44 */	addi r3, r1, 0x144
/* 807DCBAC  38 80 FF FF */	li r4, -1
/* 807DCBB0  4B FF 5F 99 */	bl __dt__4cXyzFv
/* 807DCBB4  38 61 01 50 */	addi r3, r1, 0x150
/* 807DCBB8  38 80 FF FF */	li r4, -1
/* 807DCBBC  4B FF 5F 8D */	bl __dt__4cXyzFv
/* 807DCBC0  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DCBC4  38 80 FF FF */	li r4, -1
/* 807DCBC8  4B FF 5F 81 */	bl __dt__4cXyzFv
/* 807DCBCC  38 61 01 68 */	addi r3, r1, 0x168
/* 807DCBD0  38 80 FF FF */	li r4, -1
/* 807DCBD4  4B FF 5F 75 */	bl __dt__4cXyzFv
/* 807DCBD8  48 00 2E C4 */	b lbl_807DFA9C
lbl_807DCBDC:
/* 807DCBDC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCBE0  4B 98 48 F1 */	bl Stop__9dCamera_cFv
/* 807DCBE4  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCBE8  38 80 00 03 */	li r4, 3
/* 807DCBEC  4B 98 64 21 */	bl SetTrimSize__9dCamera_cFl
/* 807DCBF0  38 00 00 15 */	li r0, 0x15
/* 807DCBF4  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DCBF8  38 00 00 00 */	li r0, 0
/* 807DCBFC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DCC00  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DCC04  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DCC08  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DCC0C  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 807DCC10  48 00 5C 7D */	bl YrotS__14mDoMtx_stack_cFs
/* 807DCC14  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807DCC18  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DCC1C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807DCC20  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DCC24  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DCC28  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DCC2C  38 61 01 68 */	addi r3, r1, 0x168
/* 807DCC30  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DCC34  48 00 5C 25 */	bl multVec__14mDoMtx_stack_cFPC3VecP3Vec
/* 807DCC38  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DCC3C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DCC40  48 00 5B E5 */	bl __apl__4cXyzFRC3Vec
/* 807DCC44  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DCC48  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DCC4C  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DCC50  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DCC54  48 00 5B B5 */	bl __as__4cXyzFRC4cXyz
/* 807DCC58  C0 3F 16 C0 */	lfs f1, 0x16c0(r31)
/* 807DCC5C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807DCC60  EC 01 00 2A */	fadds f0, f1, f0
/* 807DCC64  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DCC68  7F 03 C3 78 */	mr r3, r24
/* 807DCC6C  48 00 5C F9 */	bl changeOriginalDemo__9daHorse_cFv
/* 807DCC70  7F 03 C3 78 */	mr r3, r24
/* 807DCC74  38 80 00 06 */	li r4, 6
/* 807DCC78  38 A0 00 00 */	li r5, 0
/* 807DCC7C  48 00 5C 59 */	bl changeDemoMode__9daHorse_cFUli
lbl_807DCC80:
/* 807DCC80  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 807DCC84  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807DCC88  40 80 00 14 */	bge lbl_807DCC9C
/* 807DCC8C  2C 00 C0 00 */	cmpwi r0, -16384
/* 807DCC90  40 81 00 0C */	ble lbl_807DCC9C
/* 807DCC94  38 A0 00 00 */	li r5, 0
/* 807DCC98  48 00 00 08 */	b lbl_807DCCA0
lbl_807DCC9C:
/* 807DCC9C  38 A0 80 00 */	li r5, -32768
lbl_807DCCA0:
/* 807DCCA0  7F 03 C3 78 */	mr r3, r24
/* 807DCCA4  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 807DCCA8  48 00 5C 39 */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
/* 807DCCAC  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DCCB0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807DCCB4  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 807DCCB8  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DCCBC  4B A9 2D 81 */	bl cLib_addCalc2__FPffff
/* 807DCCC0  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DCCC4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 807DCCC8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807DCCCC  EC 21 00 2A */	fadds f1, f1, f0
/* 807DCCD0  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 807DCCD4  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DCCD8  4B A9 2D 65 */	bl cLib_addCalc2__FPffff
/* 807DCCDC  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DCCE0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807DCCE4  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 807DCCE8  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DCCEC  4B A9 2D 51 */	bl cLib_addCalc2__FPffff
/* 807DCCF0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DCCF4  2C 00 00 14 */	cmpwi r0, 0x14
/* 807DCCF8  40 82 2A 38 */	bne lbl_807DF730
/* 807DCCFC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCD00  4B 98 47 AD */	bl Start__9dCamera_cFv
/* 807DCD04  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCD08  38 80 00 00 */	li r4, 0
/* 807DCD0C  4B 98 63 01 */	bl SetTrimSize__9dCamera_cFl
/* 807DCD10  48 00 57 09 */	bl dComIfGp_event_reset__Fv
/* 807DCD14  38 00 00 00 */	li r0, 0
/* 807DCD18  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DCD1C  48 00 2A 14 */	b lbl_807DF730
lbl_807DCD20:
/* 807DCD20  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DCD24  48 00 57 C5 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DCD28  2C 03 00 00 */	cmpwi r3, 0
/* 807DCD2C  40 82 00 5C */	bne lbl_807DCD88
/* 807DCD30  7F E3 FB 78 */	mr r3, r31
/* 807DCD34  38 80 00 02 */	li r4, 2
/* 807DCD38  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DCD3C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DCD40  38 C0 00 00 */	li r6, 0
/* 807DCD44  4B 83 EB C5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DCD48  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DCD4C  38 80 00 02 */	li r4, 2
/* 807DCD50  48 00 57 89 */	bl onCondition__11dEvt_info_cFUs
/* 807DCD54  38 61 01 44 */	addi r3, r1, 0x144
/* 807DCD58  38 80 FF FF */	li r4, -1
/* 807DCD5C  4B FF 5D ED */	bl __dt__4cXyzFv
/* 807DCD60  38 61 01 50 */	addi r3, r1, 0x150
/* 807DCD64  38 80 FF FF */	li r4, -1
/* 807DCD68  4B FF 5D E1 */	bl __dt__4cXyzFv
/* 807DCD6C  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DCD70  38 80 FF FF */	li r4, -1
/* 807DCD74  4B FF 5D D5 */	bl __dt__4cXyzFv
/* 807DCD78  38 61 01 68 */	addi r3, r1, 0x168
/* 807DCD7C  38 80 FF FF */	li r4, -1
/* 807DCD80  4B FF 5D C9 */	bl __dt__4cXyzFv
/* 807DCD84  48 00 2D 18 */	b lbl_807DFA9C
lbl_807DCD88:
/* 807DCD88  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCD8C  4B 98 47 45 */	bl Stop__9dCamera_cFv
/* 807DCD90  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCD94  38 80 00 03 */	li r4, 3
/* 807DCD98  4B 98 62 75 */	bl SetTrimSize__9dCamera_cFl
/* 807DCD9C  38 00 00 1A */	li r0, 0x1a
/* 807DCDA0  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DCDA4  38 00 00 00 */	li r0, 0
/* 807DCDA8  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DCDAC  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DCDB0  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DCDB4  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DCDB8  7F 03 C3 78 */	mr r3, r24
/* 807DCDBC  48 00 5B A9 */	bl changeOriginalDemo__9daHorse_cFv
/* 807DCDC0  7F 03 C3 78 */	mr r3, r24
/* 807DCDC4  38 80 00 06 */	li r4, 6
/* 807DCDC8  38 A0 00 00 */	li r5, 0
/* 807DCDCC  48 00 5B 09 */	bl changeDemoMode__9daHorse_cFUli
/* 807DCDD0  7F E3 FB 78 */	mr r3, r31
/* 807DCDD4  48 00 55 C5 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 807DCDD8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807DCDDC  7C 03 00 50 */	subf r0, r3, r0
/* 807DCDE0  7C 00 07 35 */	extsh. r0, r0
/* 807DCDE4  40 80 00 10 */	bge lbl_807DCDF4
/* 807DCDE8  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807DCDEC  D0 1F 17 0C */	stfs f0, 0x170c(r31)
/* 807DCDF0  48 00 00 0C */	b lbl_807DCDFC
lbl_807DCDF4:
/* 807DCDF4  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 807DCDF8  D0 1F 17 0C */	stfs f0, 0x170c(r31)
lbl_807DCDFC:
/* 807DCDFC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 807DCE00  48 00 5A 8D */	bl YrotS__14mDoMtx_stack_cFs
/* 807DCE04  C0 1F 17 0C */	lfs f0, 0x170c(r31)
/* 807DCE08  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DCE0C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807DCE10  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DCE14  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DCE18  38 61 01 68 */	addi r3, r1, 0x168
/* 807DCE1C  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DCE20  48 00 5A 39 */	bl multVec__14mDoMtx_stack_cFPC3VecP3Vec
/* 807DCE24  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DCE28  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DCE2C  48 00 59 F9 */	bl __apl__4cXyzFRC3Vec
/* 807DCE30  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DCE34  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DCE38  48 00 59 D1 */	bl __as__4cXyzFRC4cXyz
/* 807DCE3C  C0 3F 16 C0 */	lfs f1, 0x16c0(r31)
/* 807DCE40  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807DCE44  EC 01 00 2A */	fadds f0, f1, f0
/* 807DCE48  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DCE4C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DCE50  2C 00 00 0F */	cmpwi r0, 0xf
/* 807DCE54  40 82 28 DC */	bne lbl_807DF730
/* 807DCE58  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DCE5C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DCE60  80 63 00 00 */	lwz r3, 0(r3)
/* 807DCE64  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 807DCE68  48 00 55 11 */	bl cMtx_YrotS__FPA4_fs
/* 807DCE6C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DCE70  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DCE74  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807DCE78  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DCE7C  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 807DCE80  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DCE84  38 61 01 68 */	addi r3, r1, 0x168
/* 807DCE88  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DCE8C  4B A9 40 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DCE90  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DCE94  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DCE98  48 00 59 8D */	bl __apl__4cXyzFRC3Vec
/* 807DCE9C  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DCEA0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DCEA4  48 00 59 65 */	bl __as__4cXyzFRC4cXyz
/* 807DCEA8  C0 3F 16 C0 */	lfs f1, 0x16c0(r31)
/* 807DCEAC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 807DCEB0  EC 01 00 2A */	fadds f0, f1, f0
/* 807DCEB4  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DCEB8  38 61 01 20 */	addi r3, r1, 0x120
/* 807DCEBC  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DCEC0  48 00 54 9D */	bl __ct__4cXyzFRC4cXyz
/* 807DCEC4  38 61 01 14 */	addi r3, r1, 0x114
/* 807DCEC8  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DCECC  48 00 54 91 */	bl __ct__4cXyzFRC4cXyz
/* 807DCED0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCED4  38 81 01 20 */	addi r4, r1, 0x120
/* 807DCED8  38 A1 01 14 */	addi r5, r1, 0x114
/* 807DCEDC  C0 3F 17 14 */	lfs f1, 0x1714(r31)
/* 807DCEE0  38 C0 00 00 */	li r6, 0
/* 807DCEE4  4B 9A 3C BD */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 807DCEE8  38 61 01 14 */	addi r3, r1, 0x114
/* 807DCEEC  38 80 FF FF */	li r4, -1
/* 807DCEF0  4B FF 5C 59 */	bl __dt__4cXyzFv
/* 807DCEF4  38 61 01 20 */	addi r3, r1, 0x120
/* 807DCEF8  38 80 FF FF */	li r4, -1
/* 807DCEFC  4B FF 5C 4D */	bl __dt__4cXyzFv
/* 807DCF00  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCF04  4B 98 45 A9 */	bl Start__9dCamera_cFv
/* 807DCF08  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCF0C  38 80 00 00 */	li r4, 0
/* 807DCF10  4B 98 60 FD */	bl SetTrimSize__9dCamera_cFl
/* 807DCF14  48 00 55 05 */	bl dComIfGp_event_reset__Fv
/* 807DCF18  38 00 00 00 */	li r0, 0
/* 807DCF1C  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DCF20  48 00 28 10 */	b lbl_807DF730
lbl_807DCF24:
/* 807DCF24  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DCF28  48 00 55 C1 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DCF2C  2C 03 00 00 */	cmpwi r3, 0
/* 807DCF30  40 82 00 5C */	bne lbl_807DCF8C
/* 807DCF34  7F E3 FB 78 */	mr r3, r31
/* 807DCF38  38 80 00 02 */	li r4, 2
/* 807DCF3C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DCF40  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DCF44  38 C0 00 00 */	li r6, 0
/* 807DCF48  4B 83 E9 C1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DCF4C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DCF50  38 80 00 02 */	li r4, 2
/* 807DCF54  48 00 55 85 */	bl onCondition__11dEvt_info_cFUs
/* 807DCF58  38 61 01 44 */	addi r3, r1, 0x144
/* 807DCF5C  38 80 FF FF */	li r4, -1
/* 807DCF60  4B FF 5B E9 */	bl __dt__4cXyzFv
/* 807DCF64  38 61 01 50 */	addi r3, r1, 0x150
/* 807DCF68  38 80 FF FF */	li r4, -1
/* 807DCF6C  4B FF 5B DD */	bl __dt__4cXyzFv
/* 807DCF70  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DCF74  38 80 FF FF */	li r4, -1
/* 807DCF78  4B FF 5B D1 */	bl __dt__4cXyzFv
/* 807DCF7C  38 61 01 68 */	addi r3, r1, 0x168
/* 807DCF80  38 80 FF FF */	li r4, -1
/* 807DCF84  4B FF 5B C5 */	bl __dt__4cXyzFv
/* 807DCF88  48 00 2B 14 */	b lbl_807DFA9C
lbl_807DCF8C:
/* 807DCF8C  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCF90  4B 98 45 41 */	bl Stop__9dCamera_cFv
/* 807DCF94  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DCF98  38 80 00 03 */	li r4, 3
/* 807DCF9C  4B 98 60 71 */	bl SetTrimSize__9dCamera_cFl
/* 807DCFA0  38 00 00 1F */	li r0, 0x1f
/* 807DCFA4  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DCFA8  38 00 00 00 */	li r0, 0
/* 807DCFAC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DCFB0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DCFB4  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DCFB8  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DCFBC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DCFC0  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DCFC4  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DCFC8  C0 3E 02 A4 */	lfs f1, 0x2a4(r30)
/* 807DCFCC  C0 5E 02 A8 */	lfs f2, 0x2a8(r30)
/* 807DCFD0  C0 7E 02 AC */	lfs f3, 0x2ac(r30)
/* 807DCFD4  48 00 54 F5 */	bl set__4cXyzFfff
/* 807DCFD8  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DCFDC  C0 3E 02 B0 */	lfs f1, 0x2b0(r30)
/* 807DCFE0  C0 5E 02 B4 */	lfs f2, 0x2b4(r30)
/* 807DCFE4  C0 7E 02 B8 */	lfs f3, 0x2b8(r30)
/* 807DCFE8  48 00 54 E1 */	bl set__4cXyzFfff
/* 807DCFEC  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DCFF0  C0 3E 02 BC */	lfs f1, 0x2bc(r30)
/* 807DCFF4  C0 5E 02 C0 */	lfs f2, 0x2c0(r30)
/* 807DCFF8  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 807DCFFC  48 00 54 CD */	bl set__4cXyzFfff
/* 807DD000  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DD004  C0 3E 02 C4 */	lfs f1, 0x2c4(r30)
/* 807DD008  C0 5E 02 C8 */	lfs f2, 0x2c8(r30)
/* 807DD00C  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 807DD010  48 00 54 B9 */	bl set__4cXyzFfff
/* 807DD014  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DD018  C0 1F 16 A4 */	lfs f0, 0x16a4(r31)
/* 807DD01C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD020  48 00 53 31 */	bl fabsf__3stdFf
/* 807DD024  D0 3F 16 EC */	stfs f1, 0x16ec(r31)
/* 807DD028  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DD02C  C0 1F 16 A8 */	lfs f0, 0x16a8(r31)
/* 807DD030  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD034  48 00 53 1D */	bl fabsf__3stdFf
/* 807DD038  D0 3F 16 F0 */	stfs f1, 0x16f0(r31)
/* 807DD03C  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DD040  C0 1F 16 AC */	lfs f0, 0x16ac(r31)
/* 807DD044  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD048  48 00 53 09 */	bl fabsf__3stdFf
/* 807DD04C  D0 3F 16 F4 */	stfs f1, 0x16f4(r31)
/* 807DD050  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DD054  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DD058  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD05C  48 00 52 F5 */	bl fabsf__3stdFf
/* 807DD060  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DD064  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DD068  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DD06C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD070  48 00 52 E1 */	bl fabsf__3stdFf
/* 807DD074  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DD078  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DD07C  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DD080  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD084  48 00 52 CD */	bl fabsf__3stdFf
/* 807DD088  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DD08C  48 00 53 CD */	bl daPy_getPlayerActorClass__Fv
/* 807DD090  48 00 53 B5 */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DD094  7F 03 C3 78 */	mr r3, r24
/* 807DD098  48 00 58 CD */	bl changeOriginalDemo__9daHorse_cFv
/* 807DD09C  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DD0A0  C0 3E 02 CC */	lfs f1, 0x2cc(r30)
/* 807DD0A4  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 807DD0A8  C0 7E 02 D0 */	lfs f3, 0x2d0(r30)
/* 807DD0AC  48 00 54 1D */	bl set__4cXyzFfff
/* 807DD0B0  7F 03 C3 78 */	mr r3, r24
/* 807DD0B4  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DD0B8  A8 B8 04 E6 */	lha r5, 0x4e6(r24)
/* 807DD0BC  48 00 58 25 */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
/* 807DD0C0  7F 03 C3 78 */	mr r3, r24
/* 807DD0C4  38 80 00 03 */	li r4, 3
/* 807DD0C8  38 A0 00 00 */	li r5, 0
/* 807DD0CC  48 00 58 09 */	bl changeDemoMode__9daHorse_cFUli
/* 807DD0D0  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DD0D4  C0 3E 02 D4 */	lfs f1, 0x2d4(r30)
/* 807DD0D8  C0 5E 02 D8 */	lfs f2, 0x2d8(r30)
/* 807DD0DC  C0 7E 02 D0 */	lfs f3, 0x2d0(r30)
/* 807DD0E0  48 00 53 E9 */	bl set__4cXyzFfff
/* 807DD0E4  7F 03 C3 78 */	mr r3, r24
/* 807DD0E8  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DD0EC  48 00 57 CD */	bl changeDemoPos0__9daHorse_cFPC4cXyz
/* 807DD0F0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 807DD0F4  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 807DD0F8  A0 63 00 AC */	lhz r3, 0xac(r3)
/* 807DD0FC  48 00 52 C9 */	bl dComIfGs_onEventBit__FUs
/* 807DD100  48 00 52 F5 */	bl Z2GetAudioMgr__Fv
/* 807DD104  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200000F@ha */
/* 807DD108  38 84 00 0F */	addi r4, r4, 0x000F /* 0x0200000F@l */
/* 807DD10C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DD110  4B AD 2A 85 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 807DD114  48 00 52 E1 */	bl Z2GetAudioMgr__Fv
/* 807DD118  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DD11C  4B AD 2C FD */	bl bgmStreamPlay__8Z2SeqMgrFv
lbl_807DD120:
/* 807DD120  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD124  2C 00 00 32 */	cmpwi r0, 0x32
/* 807DD128  40 81 00 24 */	ble lbl_807DD14C
/* 807DD12C  7F E3 FB 78 */	mr r3, r31
/* 807DD130  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807DD134  4B FF EF 51 */	bl cam_3d_morf__FP10e_wb_classf
/* 807DD138  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DD13C  C0 3E 02 DC */	lfs f1, 0x2dc(r30)
/* 807DD140  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DD144  C0 7E 02 E0 */	lfs f3, 0x2e0(r30)
/* 807DD148  4B A9 28 F5 */	bl cLib_addCalc2__FPffff
lbl_807DD14C:
/* 807DD14C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD150  2C 00 00 28 */	cmpwi r0, 0x28
/* 807DD154  40 82 00 20 */	bne lbl_807DD174
/* 807DD158  7F 03 C3 78 */	mr r3, r24
/* 807DD15C  38 80 00 08 */	li r4, 8
/* 807DD160  38 A0 00 00 */	li r5, 0
/* 807DD164  48 00 57 71 */	bl changeDemoMode__9daHorse_cFUli
/* 807DD168  48 00 57 CD */	bl dComIfGp_getEvent__Fv
/* 807DD16C  7F E4 FB 78 */	mr r4, r31
/* 807DD170  48 00 57 99 */	bl startCheckSkipEdge__14dEvt_control_cFPv
lbl_807DD174:
/* 807DD174  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD178  2C 00 00 50 */	cmpwi r0, 0x50
/* 807DD17C  40 82 00 14 */	bne lbl_807DD190
/* 807DD180  7F 03 C3 78 */	mr r3, r24
/* 807DD184  38 80 00 09 */	li r4, 9
/* 807DD188  38 A0 00 00 */	li r5, 0
/* 807DD18C  48 00 57 49 */	bl changeDemoMode__9daHorse_cFUli
lbl_807DD190:
/* 807DD190  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD194  2C 00 00 8F */	cmpwi r0, 0x8f
/* 807DD198  40 82 00 0C */	bne lbl_807DD1A4
/* 807DD19C  38 60 00 04 */	li r3, 4
/* 807DD1A0  4B 9C B6 45 */	bl dKy_change_colpat__FUc
lbl_807DD1A4:
/* 807DD1A4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD1A8  2C 00 00 90 */	cmpwi r0, 0x90
/* 807DD1AC  40 82 25 84 */	bne lbl_807DF730
/* 807DD1B0  38 00 00 20 */	li r0, 0x20
/* 807DD1B4  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD1B8  38 00 00 00 */	li r0, 0
/* 807DD1BC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DD1C0  7F 03 C3 78 */	mr r3, r24
/* 807DD1C4  38 80 00 01 */	li r4, 1
/* 807DD1C8  38 A0 00 00 */	li r5, 0
/* 807DD1CC  48 00 57 09 */	bl changeDemoMode__9daHorse_cFUli
/* 807DD1D0  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD1D4  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 807DD1D8  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 807DD1DC  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 807DD1E0  48 00 52 E9 */	bl set__4cXyzFfff
/* 807DD1E4  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DD1E8  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 807DD1EC  C0 5E 02 EC */	lfs f2, 0x2ec(r30)
/* 807DD1F0  C0 7E 02 F0 */	lfs f3, 0x2f0(r30)
/* 807DD1F4  48 00 52 D5 */	bl set__4cXyzFfff
/* 807DD1F8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807DD1FC  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DD200  48 00 25 30 */	b lbl_807DF730
lbl_807DD204:
/* 807DD204  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD208  2C 00 00 0A */	cmpwi r0, 0xa
/* 807DD20C  40 82 00 10 */	bne lbl_807DD21C
/* 807DD210  7F 23 CB 78 */	mr r3, r25
/* 807DD214  38 80 00 01 */	li r4, 1
/* 807DD218  48 00 51 31 */	bl changeDemoParam2__9daPy_py_cFs
lbl_807DD21C:
/* 807DD21C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD220  2C 00 00 23 */	cmpwi r0, 0x23
/* 807DD224  40 82 25 0C */	bne lbl_807DF730
/* 807DD228  38 00 00 21 */	li r0, 0x21
/* 807DD22C  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD230  38 00 00 00 */	li r0, 0
/* 807DD234  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DD238  C0 1E 02 F4 */	lfs f0, 0x2f4(r30)
/* 807DD23C  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DD240  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DD244  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DD248  38 60 00 05 */	li r3, 5
/* 807DD24C  4B 9C B5 99 */	bl dKy_change_colpat__FUc
lbl_807DD250:
/* 807DD250  38 7F 16 B0 */	addi r3, r31, 0x16b0
/* 807DD254  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807DD258  FC 40 08 90 */	fmr f2, f1
/* 807DD25C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 807DD260  48 00 52 69 */	bl set__4cXyzFfff
/* 807DD264  38 7F 16 C8 */	addi r3, r31, 0x16c8
/* 807DD268  C0 3E 02 F8 */	lfs f1, 0x2f8(r30)
/* 807DD26C  C0 5E 01 20 */	lfs f2, 0x120(r30)
/* 807DD270  C0 7E 02 FC */	lfs f3, 0x2fc(r30)
/* 807DD274  48 00 52 55 */	bl set__4cXyzFfff
/* 807DD278  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DD27C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DD280  80 63 00 00 */	lwz r3, 0(r3)
/* 807DD284  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807DD288  48 00 50 F1 */	bl cMtx_YrotS__FPA4_fs
/* 807DD28C  38 7F 16 B0 */	addi r3, r31, 0x16b0
/* 807DD290  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DD294  4B A9 3C 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DD298  38 61 01 08 */	addi r3, r1, 0x108
/* 807DD29C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DD2A0  38 A1 01 5C */	addi r5, r1, 0x15c
/* 807DD2A4  4B A8 98 41 */	bl __pl__4cXyzCFRC3Vec
/* 807DD2A8  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DD2AC  38 81 01 08 */	addi r4, r1, 0x108
/* 807DD2B0  48 00 55 59 */	bl __as__4cXyzFRC4cXyz
/* 807DD2B4  38 61 01 08 */	addi r3, r1, 0x108
/* 807DD2B8  38 80 FF FF */	li r4, -1
/* 807DD2BC  4B FF 58 8D */	bl __dt__4cXyzFv
/* 807DD2C0  38 7F 16 C8 */	addi r3, r31, 0x16c8
/* 807DD2C4  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DD2C8  4B A9 3C 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DD2CC  38 61 00 FC */	addi r3, r1, 0xfc
/* 807DD2D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DD2D4  38 A1 01 5C */	addi r5, r1, 0x15c
/* 807DD2D8  4B A8 98 0D */	bl __pl__4cXyzCFRC3Vec
/* 807DD2DC  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD2E0  38 81 00 FC */	addi r4, r1, 0xfc
/* 807DD2E4  48 00 55 25 */	bl __as__4cXyzFRC4cXyz
/* 807DD2E8  38 61 00 FC */	addi r3, r1, 0xfc
/* 807DD2EC  38 80 FF FF */	li r4, -1
/* 807DD2F0  4B FF 58 59 */	bl __dt__4cXyzFv
/* 807DD2F4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD2F8  2C 00 00 19 */	cmpwi r0, 0x19
/* 807DD2FC  40 81 00 18 */	ble lbl_807DD314
/* 807DD300  38 7F 17 14 */	addi r3, r31, 0x1714
/* 807DD304  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807DD308  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 807DD30C  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 807DD310  4B A9 27 2D */	bl cLib_addCalc2__FPffff
lbl_807DD314:
/* 807DD314  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD318  2C 00 00 5F */	cmpwi r0, 0x5f
/* 807DD31C  40 82 24 14 */	bne lbl_807DF730
/* 807DD320  38 00 00 22 */	li r0, 0x22
/* 807DD324  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD328  38 00 00 00 */	li r0, 0
/* 807DD32C  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DD330  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DD334  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 807DD338  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 807DD33C  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 807DD340  48 00 51 89 */	bl set__4cXyzFfff
/* 807DD344  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DD348  C0 3E 02 F8 */	lfs f1, 0x2f8(r30)
/* 807DD34C  C0 5E 02 64 */	lfs f2, 0x264(r30)
/* 807DD350  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807DD354  48 00 51 75 */	bl set__4cXyzFfff
/* 807DD358  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DD35C  C0 1F 16 B0 */	lfs f0, 0x16b0(r31)
/* 807DD360  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD364  48 00 4F ED */	bl fabsf__3stdFf
/* 807DD368  D0 3F 16 EC */	stfs f1, 0x16ec(r31)
/* 807DD36C  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DD370  C0 1F 16 B4 */	lfs f0, 0x16b4(r31)
/* 807DD374  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD378  48 00 4F D9 */	bl fabsf__3stdFf
/* 807DD37C  D0 3F 16 F0 */	stfs f1, 0x16f0(r31)
/* 807DD380  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DD384  C0 1F 16 B8 */	lfs f0, 0x16b8(r31)
/* 807DD388  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD38C  48 00 4F C5 */	bl fabsf__3stdFf
/* 807DD390  D0 3F 16 F4 */	stfs f1, 0x16f4(r31)
/* 807DD394  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DD398  C0 1F 16 C8 */	lfs f0, 0x16c8(r31)
/* 807DD39C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD3A0  48 00 4F B1 */	bl fabsf__3stdFf
/* 807DD3A4  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DD3A8  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DD3AC  C0 1F 16 CC */	lfs f0, 0x16cc(r31)
/* 807DD3B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD3B4  48 00 4F 9D */	bl fabsf__3stdFf
/* 807DD3B8  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DD3BC  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DD3C0  C0 1F 16 D0 */	lfs f0, 0x16d0(r31)
/* 807DD3C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD3C8  48 00 4F 89 */	bl fabsf__3stdFf
/* 807DD3CC  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DD3D0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DD3D4  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DD3D8  48 00 23 58 */	b lbl_807DF730
lbl_807DD3DC:
/* 807DD3DC  38 7F 17 14 */	addi r3, r31, 0x1714
/* 807DD3E0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 807DD3E4  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DD3E8  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 807DD3EC  4B A9 26 51 */	bl cLib_addCalc2__FPffff
/* 807DD3F0  38 7F 16 C8 */	addi r3, r31, 0x16c8
/* 807DD3F4  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DD3F8  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DD3FC  C0 7F 16 F8 */	lfs f3, 0x16f8(r31)
/* 807DD400  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DD404  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DD408  4B A9 26 35 */	bl cLib_addCalc2__FPffff
/* 807DD40C  38 7F 16 CC */	addi r3, r31, 0x16cc
/* 807DD410  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DD414  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DD418  C0 7F 16 FC */	lfs f3, 0x16fc(r31)
/* 807DD41C  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DD420  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DD424  4B A9 26 19 */	bl cLib_addCalc2__FPffff
/* 807DD428  38 7F 16 D0 */	addi r3, r31, 0x16d0
/* 807DD42C  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DD430  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DD434  C0 7F 17 00 */	lfs f3, 0x1700(r31)
/* 807DD438  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DD43C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DD440  4B A9 25 FD */	bl cLib_addCalc2__FPffff
/* 807DD444  38 7F 16 B0 */	addi r3, r31, 0x16b0
/* 807DD448  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DD44C  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DD450  C0 7F 16 EC */	lfs f3, 0x16ec(r31)
/* 807DD454  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DD458  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DD45C  4B A9 25 E1 */	bl cLib_addCalc2__FPffff
/* 807DD460  38 7F 16 B4 */	addi r3, r31, 0x16b4
/* 807DD464  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DD468  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DD46C  C0 7F 16 F0 */	lfs f3, 0x16f0(r31)
/* 807DD470  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DD474  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DD478  4B A9 25 C5 */	bl cLib_addCalc2__FPffff
/* 807DD47C  38 7F 16 B8 */	addi r3, r31, 0x16b8
/* 807DD480  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DD484  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DD488  C0 7F 16 F4 */	lfs f3, 0x16f4(r31)
/* 807DD48C  C0 1F 17 10 */	lfs f0, 0x1710(r31)
/* 807DD490  EC 63 00 32 */	fmuls f3, f3, f0
/* 807DD494  4B A9 25 A9 */	bl cLib_addCalc2__FPffff
/* 807DD498  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DD49C  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 807DD4A0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DD4A4  C0 7E 03 00 */	lfs f3, 0x300(r30)
/* 807DD4A8  4B A9 25 95 */	bl cLib_addCalc2__FPffff
/* 807DD4AC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DD4B0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DD4B4  80 63 00 00 */	lwz r3, 0(r3)
/* 807DD4B8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807DD4BC  48 00 4E BD */	bl cMtx_YrotS__FPA4_fs
/* 807DD4C0  38 7F 16 B0 */	addi r3, r31, 0x16b0
/* 807DD4C4  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DD4C8  4B A9 3A 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DD4CC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DD4D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DD4D4  48 00 53 51 */	bl __apl__4cXyzFRC3Vec
/* 807DD4D8  38 7F 16 C8 */	addi r3, r31, 0x16c8
/* 807DD4DC  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DD4E0  4B A9 3A 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DD4E4  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD4E8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DD4EC  48 00 53 39 */	bl __apl__4cXyzFRC3Vec
/* 807DD4F0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD4F4  2C 00 00 82 */	cmpwi r0, 0x82
/* 807DD4F8  40 82 00 1C */	bne lbl_807DD514
/* 807DD4FC  A8 7B 05 B4 */	lha r3, 0x5b4(r27)
/* 807DD500  38 03 00 01 */	addi r0, r3, 1
/* 807DD504  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807DD508  7F 23 CB 78 */	mr r3, r25
/* 807DD50C  38 80 00 00 */	li r4, 0
/* 807DD510  48 00 4E 39 */	bl changeDemoParam2__9daPy_py_cFs
lbl_807DD514:
/* 807DD514  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD518  2C 00 00 DC */	cmpwi r0, 0xdc
/* 807DD51C  40 82 22 14 */	bne lbl_807DF730
/* 807DD520  38 00 00 23 */	li r0, 0x23
/* 807DD524  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD528  38 00 00 00 */	li r0, 0
/* 807DD52C  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DD530  38 60 00 04 */	li r3, 4
/* 807DD534  4B 9C B2 B1 */	bl dKy_change_colpat__FUc
/* 807DD538  48 00 21 F8 */	b lbl_807DF730
lbl_807DD53C:
/* 807DD53C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DD540  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DD544  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD548  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 807DD54C  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 807DD550  C0 7E 03 0C */	lfs f3, 0x30c(r30)
/* 807DD554  48 00 4F 75 */	bl set__4cXyzFfff
/* 807DD558  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DD55C  C0 3E 03 10 */	lfs f1, 0x310(r30)
/* 807DD560  C0 5E 03 14 */	lfs f2, 0x314(r30)
/* 807DD564  C0 7E 03 18 */	lfs f3, 0x318(r30)
/* 807DD568  48 00 4F 61 */	bl set__4cXyzFfff
/* 807DD56C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD570  2C 00 00 0A */	cmpwi r0, 0xa
/* 807DD574  40 82 00 1C */	bne lbl_807DD590
/* 807DD578  48 00 4E E1 */	bl daPy_getPlayerActorClass__Fv
/* 807DD57C  38 80 00 17 */	li r4, 0x17
/* 807DD580  38 A0 00 01 */	li r5, 1
/* 807DD584  38 C0 00 02 */	li r6, 2
/* 807DD588  38 E0 00 00 */	li r7, 0
/* 807DD58C  48 00 4D A9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DD590:
/* 807DD590  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD594  2C 00 00 32 */	cmpwi r0, 0x32
/* 807DD598  40 82 21 98 */	bne lbl_807DF730
/* 807DD59C  38 00 00 24 */	li r0, 0x24
/* 807DD5A0  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD5A4  38 00 00 00 */	li r0, 0
/* 807DD5A8  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DD5AC  48 00 21 84 */	b lbl_807DF730
lbl_807DD5B0:
/* 807DD5B0  38 7F 16 B0 */	addi r3, r31, 0x16b0
/* 807DD5B4  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 807DD5B8  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 807DD5BC  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 807DD5C0  48 00 4F 09 */	bl set__4cXyzFfff
/* 807DD5C4  38 7F 16 C8 */	addi r3, r31, 0x16c8
/* 807DD5C8  C0 3E 02 F8 */	lfs f1, 0x2f8(r30)
/* 807DD5CC  C0 5E 02 64 */	lfs f2, 0x264(r30)
/* 807DD5D0  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807DD5D4  48 00 4E F5 */	bl set__4cXyzFfff
/* 807DD5D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DD5DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DD5E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807DD5E4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807DD5E8  48 00 4D 91 */	bl cMtx_YrotS__FPA4_fs
/* 807DD5EC  38 7F 16 B0 */	addi r3, r31, 0x16b0
/* 807DD5F0  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DD5F4  4B A9 38 F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DD5F8  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DD5FC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DD600  48 00 52 25 */	bl __apl__4cXyzFRC3Vec
/* 807DD604  38 7F 16 C8 */	addi r3, r31, 0x16c8
/* 807DD608  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DD60C  4B A9 38 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DD610  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD614  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DD618  48 00 52 0D */	bl __apl__4cXyzFRC3Vec
/* 807DD61C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD620  2C 00 00 14 */	cmpwi r0, 0x14
/* 807DD624  40 82 00 10 */	bne lbl_807DD634
/* 807DD628  A8 7B 05 B4 */	lha r3, 0x5b4(r27)
/* 807DD62C  38 03 00 01 */	addi r0, r3, 1
/* 807DD630  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
lbl_807DD634:
/* 807DD634  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD638  2C 00 00 5C */	cmpwi r0, 0x5c
/* 807DD63C  40 82 20 F4 */	bne lbl_807DF730
/* 807DD640  38 00 00 25 */	li r0, 0x25
/* 807DD644  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD648  38 00 00 00 */	li r0, 0
/* 807DD64C  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DD650  3C 60 80 7D */	lis r3, s_wbstart_sub__FPvPv@ha /* 0x807D53AC@ha */
/* 807DD654  38 63 53 AC */	addi r3, r3, s_wbstart_sub__FPvPv@l /* 0x807D53AC@l */
/* 807DD658  7F E4 FB 78 */	mr r4, r31
/* 807DD65C  48 00 52 E9 */	bl fpcM_Search__FPFPvPv_PvPv
/* 807DD660  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD664  C0 3E 03 1C */	lfs f1, 0x31c(r30)
/* 807DD668  C0 5E 03 20 */	lfs f2, 0x320(r30)
/* 807DD66C  C0 7E 03 24 */	lfs f3, 0x324(r30)
/* 807DD670  48 00 4E 59 */	bl set__4cXyzFfff
/* 807DD674  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DD678  C0 3E 03 28 */	lfs f1, 0x328(r30)
/* 807DD67C  C0 5E 01 7C */	lfs f2, 0x17c(r30)
/* 807DD680  C0 7E 03 24 */	lfs f3, 0x324(r30)
/* 807DD684  48 00 4E 45 */	bl set__4cXyzFfff
/* 807DD688  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DD68C  C0 3E 03 2C */	lfs f1, 0x32c(r30)
/* 807DD690  C0 5E 03 30 */	lfs f2, 0x330(r30)
/* 807DD694  C0 7E 02 9C */	lfs f3, 0x29c(r30)
/* 807DD698  48 00 4E 31 */	bl set__4cXyzFfff
/* 807DD69C  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DD6A0  C0 3E 03 34 */	lfs f1, 0x334(r30)
/* 807DD6A4  C0 5E 03 38 */	lfs f2, 0x338(r30)
/* 807DD6A8  C0 7E 03 3C */	lfs f3, 0x33c(r30)
/* 807DD6AC  48 00 4E 1D */	bl set__4cXyzFfff
/* 807DD6B0  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DD6B4  C0 1F 16 A4 */	lfs f0, 0x16a4(r31)
/* 807DD6B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD6BC  48 00 4C 95 */	bl fabsf__3stdFf
/* 807DD6C0  D0 3F 16 EC */	stfs f1, 0x16ec(r31)
/* 807DD6C4  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DD6C8  C0 1F 16 A8 */	lfs f0, 0x16a8(r31)
/* 807DD6CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD6D0  48 00 4C 81 */	bl fabsf__3stdFf
/* 807DD6D4  D0 3F 16 F0 */	stfs f1, 0x16f0(r31)
/* 807DD6D8  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DD6DC  C0 1F 16 AC */	lfs f0, 0x16ac(r31)
/* 807DD6E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD6E4  48 00 4C 6D */	bl fabsf__3stdFf
/* 807DD6E8  D0 3F 16 F4 */	stfs f1, 0x16f4(r31)
/* 807DD6EC  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DD6F0  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DD6F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD6F8  48 00 4C 59 */	bl fabsf__3stdFf
/* 807DD6FC  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DD700  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DD704  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DD708  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD70C  48 00 4C 45 */	bl fabsf__3stdFf
/* 807DD710  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DD714  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DD718  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DD71C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DD720  48 00 4C 31 */	bl fabsf__3stdFf
/* 807DD724  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DD728  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DD72C  D0 1F 17 10 */	stfs f0, 0x1710(r31)
lbl_807DD730:
/* 807DD730  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD734  2C 00 00 6E */	cmpwi r0, 0x6e
/* 807DD738  40 80 00 14 */	bge lbl_807DD74C
/* 807DD73C  3C 60 80 7E */	lis r3, s_spd0_sub__FPvPv@ha /* 0x807DBF50@ha */
/* 807DD740  38 63 BF 50 */	addi r3, r3, s_spd0_sub__FPvPv@l /* 0x807DBF50@l */
/* 807DD744  7F E4 FB 78 */	mr r4, r31
/* 807DD748  48 00 51 FD */	bl fpcM_Search__FPFPvPv_PvPv
lbl_807DD74C:
/* 807DD74C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD750  2C 00 00 D2 */	cmpwi r0, 0xd2
/* 807DD754  40 80 00 14 */	bge lbl_807DD768
/* 807DD758  3C 60 80 7E */	lis r3, s_rdArrowWait_sub__FPvPv@ha /* 0x807DC004@ha */
/* 807DD75C  38 63 C0 04 */	addi r3, r3, s_rdArrowWait_sub__FPvPv@l /* 0x807DC004@l */
/* 807DD760  7F E4 FB 78 */	mr r4, r31
/* 807DD764  48 00 51 E1 */	bl fpcM_Search__FPFPvPv_PvPv
lbl_807DD768:
/* 807DD768  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD76C  2C 00 00 A5 */	cmpwi r0, 0xa5
/* 807DD770  40 81 00 24 */	ble lbl_807DD794
/* 807DD774  7F E3 FB 78 */	mr r3, r31
/* 807DD778  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807DD77C  4B FF E9 09 */	bl cam_3d_morf__FP10e_wb_classf
/* 807DD780  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DD784  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 807DD788  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DD78C  C0 7E 03 40 */	lfs f3, 0x340(r30)
/* 807DD790  4B A9 22 AD */	bl cLib_addCalc2__FPffff
lbl_807DD794:
/* 807DD794  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD798  2C 00 00 F5 */	cmpwi r0, 0xf5
/* 807DD79C  40 82 00 38 */	bne lbl_807DD7D4
/* 807DD7A0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 807DD7A4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DD7A8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DD7AC  FC 60 08 90 */	fmr f3, f1
/* 807DD7B0  48 00 50 39 */	bl __ct__4cXyzFfff
/* 807DD7B4  48 00 50 25 */	bl dComIfGp_getVibration__Fv
/* 807DD7B8  38 80 00 04 */	li r4, 4
/* 807DD7BC  38 A0 00 1F */	li r5, 0x1f
/* 807DD7C0  38 C1 00 F0 */	addi r6, r1, 0xf0
/* 807DD7C4  4B 89 23 4D */	bl StartQuake__12dVibration_cFii4cXyz
/* 807DD7C8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 807DD7CC  38 80 FF FF */	li r4, -1
/* 807DD7D0  4B FF 53 79 */	bl __dt__4cXyzFv
lbl_807DD7D4:
/* 807DD7D4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD7D8  2C 00 01 27 */	cmpwi r0, 0x127
/* 807DD7DC  40 82 00 10 */	bne lbl_807DD7EC
/* 807DD7E0  48 00 4F F9 */	bl dComIfGp_getVibration__Fv
/* 807DD7E4  38 80 00 1F */	li r4, 0x1f
/* 807DD7E8  4B 89 25 AD */	bl StopQuake__12dVibration_cFi
lbl_807DD7EC:
/* 807DD7EC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD7F0  2C 00 00 FA */	cmpwi r0, 0xfa
/* 807DD7F4  40 81 00 20 */	ble lbl_807DD814
/* 807DD7F8  2C 00 01 1D */	cmpwi r0, 0x11d
/* 807DD7FC  40 80 00 18 */	bge lbl_807DD814
/* 807DD800  38 7F 17 1C */	addi r3, r31, 0x171c
/* 807DD804  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807DD808  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DD80C  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 807DD810  4B A9 22 2D */	bl cLib_addCalc2__FPffff
lbl_807DD814:
/* 807DD814  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD818  2C 00 01 45 */	cmpwi r0, 0x145
/* 807DD81C  40 82 00 14 */	bne lbl_807DD830
/* 807DD820  3C 60 80 7E */	lis r3, s_wbZrevise_sub__FPvPv@ha /* 0x807DBEE8@ha */
/* 807DD824  38 63 BE E8 */	addi r3, r3, s_wbZrevise_sub__FPvPv@l /* 0x807DBEE8@l */
/* 807DD828  7F E4 FB 78 */	mr r4, r31
/* 807DD82C  48 00 51 19 */	bl fpcM_Search__FPFPvPv_PvPv
lbl_807DD830:
/* 807DD830  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD834  2C 00 01 4F */	cmpwi r0, 0x14f
/* 807DD838  40 82 1E F8 */	bne lbl_807DF730
/* 807DD83C  38 00 00 26 */	li r0, 0x26
/* 807DD840  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD844  38 60 00 00 */	li r3, 0
/* 807DD848  B0 7F 16 A0 */	sth r3, 0x16a0(r31)
/* 807DD84C  98 7F 07 A2 */	stb r3, 0x7a2(r31)
/* 807DD850  38 00 00 0A */	li r0, 0xa
/* 807DD854  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807DD858  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 807DD85C  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD860  C0 3E 02 BC */	lfs f1, 0x2bc(r30)
/* 807DD864  C0 5E 02 C0 */	lfs f2, 0x2c0(r30)
/* 807DD868  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 807DD86C  48 00 4C 5D */	bl set__4cXyzFfff
/* 807DD870  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DD874  C0 3E 02 C4 */	lfs f1, 0x2c4(r30)
/* 807DD878  C0 5E 02 C8 */	lfs f2, 0x2c8(r30)
/* 807DD87C  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 807DD880  48 00 4C 49 */	bl set__4cXyzFfff
/* 807DD884  38 61 00 20 */	addi r3, r1, 0x20
/* 807DD888  3C 80 00 07 */	lis r4, 0x0007 /* 0x000700F8@ha */
/* 807DD88C  38 84 00 F8 */	addi r4, r4, 0x00F8 /* 0x000700F8@l */
/* 807DD890  48 00 4F 41 */	bl __ct__10JAISoundIDFUl
/* 807DD894  7C 64 1B 78 */	mr r4, r3
/* 807DD898  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807DD89C  38 A0 FF FF */	li r5, -1
/* 807DD8A0  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807DD8A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DD8A8  7D 89 03 A6 */	mtctr r12
/* 807DD8AC  4E 80 04 21 */	bctrl 
/* 807DD8B0  38 00 02 BC */	li r0, 0x2bc
/* 807DD8B4  B0 1B 09 96 */	sth r0, 0x996(r27)
/* 807DD8B8  48 00 1E 78 */	b lbl_807DF730
lbl_807DD8BC:
/* 807DD8BC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DD8C0  2C 00 00 32 */	cmpwi r0, 0x32
/* 807DD8C4  40 82 1E 6C */	bne lbl_807DF730
/* 807DD8C8  38 61 00 E4 */	addi r3, r1, 0xe4
/* 807DD8CC  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DD8D0  48 00 4A 8D */	bl __ct__4cXyzFRC4cXyz
/* 807DD8D4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 807DD8D8  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DD8DC  48 00 4A 81 */	bl __ct__4cXyzFRC4cXyz
/* 807DD8E0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DD8E4  38 81 00 E4 */	addi r4, r1, 0xe4
/* 807DD8E8  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 807DD8EC  4B 9A 33 2D */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 807DD8F0  38 61 00 D8 */	addi r3, r1, 0xd8
/* 807DD8F4  38 80 FF FF */	li r4, -1
/* 807DD8F8  4B FF 52 51 */	bl __dt__4cXyzFv
/* 807DD8FC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 807DD900  38 80 FF FF */	li r4, -1
/* 807DD904  4B FF 52 45 */	bl __dt__4cXyzFv
/* 807DD908  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DD90C  4B 98 3B A1 */	bl Start__9dCamera_cFv
/* 807DD910  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DD914  38 80 00 00 */	li r4, 0
/* 807DD918  4B 98 56 F5 */	bl SetTrimSize__9dCamera_cFl
/* 807DD91C  48 00 4A FD */	bl dComIfGp_event_reset__Fv
/* 807DD920  48 00 4B 39 */	bl daPy_getPlayerActorClass__Fv
/* 807DD924  48 00 4A E1 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DD928  7F 03 C3 78 */	mr r3, r24
/* 807DD92C  48 00 4E 91 */	bl cancelOriginalDemo__9daHorse_cFv
/* 807DD930  38 00 00 00 */	li r0, 0
/* 807DD934  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD938  48 00 4A BD */	bl Z2GetAudioMgr__Fv
/* 807DD93C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000004@ha */
/* 807DD940  38 84 00 04 */	addi r4, r4, 0x0004 /* 0x01000004@l */
/* 807DD944  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DD948  4B AD 1B 55 */	bl subBgmStart__8Z2SeqMgrFUl
/* 807DD94C  38 60 00 03 */	li r3, 3
/* 807DD950  4B 9C AE 95 */	bl dKy_change_colpat__FUc
/* 807DD954  48 00 1D DC */	b lbl_807DF730
lbl_807DD958:
/* 807DD958  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DD95C  48 00 4B 8D */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DD960  2C 03 00 00 */	cmpwi r3, 0
/* 807DD964  40 82 00 5C */	bne lbl_807DD9C0
/* 807DD968  7F E3 FB 78 */	mr r3, r31
/* 807DD96C  38 80 00 02 */	li r4, 2
/* 807DD970  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DD974  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DD978  38 C0 00 00 */	li r6, 0
/* 807DD97C  4B 83 DF 8D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DD980  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DD984  38 80 00 02 */	li r4, 2
/* 807DD988  48 00 4B 51 */	bl onCondition__11dEvt_info_cFUs
/* 807DD98C  38 61 01 44 */	addi r3, r1, 0x144
/* 807DD990  38 80 FF FF */	li r4, -1
/* 807DD994  4B FF 51 B5 */	bl __dt__4cXyzFv
/* 807DD998  38 61 01 50 */	addi r3, r1, 0x150
/* 807DD99C  38 80 FF FF */	li r4, -1
/* 807DD9A0  4B FF 51 A9 */	bl __dt__4cXyzFv
/* 807DD9A4  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DD9A8  38 80 FF FF */	li r4, -1
/* 807DD9AC  4B FF 51 9D */	bl __dt__4cXyzFv
/* 807DD9B0  38 61 01 68 */	addi r3, r1, 0x168
/* 807DD9B4  38 80 FF FF */	li r4, -1
/* 807DD9B8  4B FF 51 91 */	bl __dt__4cXyzFv
/* 807DD9BC  48 00 20 E0 */	b lbl_807DFA9C
lbl_807DD9C0:
/* 807DD9C0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DD9C4  4B 98 3B 0D */	bl Stop__9dCamera_cFv
/* 807DD9C8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DD9CC  38 80 00 03 */	li r4, 3
/* 807DD9D0  4B 98 56 3D */	bl SetTrimSize__9dCamera_cFl
/* 807DD9D4  38 00 00 29 */	li r0, 0x29
/* 807DD9D8  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DD9DC  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DD9E0  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DD9E4  38 00 00 00 */	li r0, 0
/* 807DD9E8  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DD9EC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DD9F0  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DD9F4  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DD9F8  C0 3E 03 44 */	lfs f1, 0x344(r30)
/* 807DD9FC  C0 5E 03 48 */	lfs f2, 0x348(r30)
/* 807DDA00  C0 7E 03 4C */	lfs f3, 0x34c(r30)
/* 807DDA04  48 00 4A C5 */	bl set__4cXyzFfff
/* 807DDA08  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DDA0C  C0 3E 03 50 */	lfs f1, 0x350(r30)
/* 807DDA10  C0 5E 03 54 */	lfs f2, 0x354(r30)
/* 807DDA14  C0 7E 03 58 */	lfs f3, 0x358(r30)
/* 807DDA18  48 00 4A B1 */	bl set__4cXyzFfff
/* 807DDA1C  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DDA20  C0 3E 03 5C */	lfs f1, 0x35c(r30)
/* 807DDA24  C0 5E 03 60 */	lfs f2, 0x360(r30)
/* 807DDA28  C0 7E 03 64 */	lfs f3, 0x364(r30)
/* 807DDA2C  48 00 4A 9D */	bl set__4cXyzFfff
/* 807DDA30  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DDA34  C0 3E 03 68 */	lfs f1, 0x368(r30)
/* 807DDA38  C0 5E 03 6C */	lfs f2, 0x36c(r30)
/* 807DDA3C  C0 7E 03 70 */	lfs f3, 0x370(r30)
/* 807DDA40  48 00 4A 89 */	bl set__4cXyzFfff
/* 807DDA44  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DDA48  C0 1F 16 A4 */	lfs f0, 0x16a4(r31)
/* 807DDA4C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDA50  48 00 49 01 */	bl fabsf__3stdFf
/* 807DDA54  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807DDA58  EC 00 00 72 */	fmuls f0, f0, f1
/* 807DDA5C  D0 1F 16 EC */	stfs f0, 0x16ec(r31)
/* 807DDA60  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DDA64  C0 1F 16 A8 */	lfs f0, 0x16a8(r31)
/* 807DDA68  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDA6C  48 00 48 E5 */	bl fabsf__3stdFf
/* 807DDA70  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807DDA74  EC 00 00 72 */	fmuls f0, f0, f1
/* 807DDA78  D0 1F 16 F0 */	stfs f0, 0x16f0(r31)
/* 807DDA7C  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DDA80  C0 1F 16 AC */	lfs f0, 0x16ac(r31)
/* 807DDA84  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDA88  48 00 48 C9 */	bl fabsf__3stdFf
/* 807DDA8C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807DDA90  EC 00 00 72 */	fmuls f0, f0, f1
/* 807DDA94  D0 1F 16 F4 */	stfs f0, 0x16f4(r31)
/* 807DDA98  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DDA9C  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DDAA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDAA4  48 00 48 AD */	bl fabsf__3stdFf
/* 807DDAA8  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DDAAC  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DDAB0  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DDAB4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDAB8  48 00 48 99 */	bl fabsf__3stdFf
/* 807DDABC  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DDAC0  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DDAC4  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DDAC8  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDACC  48 00 48 85 */	bl fabsf__3stdFf
/* 807DDAD0  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DDAD4  48 00 49 85 */	bl daPy_getPlayerActorClass__Fv
/* 807DDAD8  48 00 49 6D */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DDADC  7F 03 C3 78 */	mr r3, r24
/* 807DDAE0  48 00 4E 85 */	bl changeOriginalDemo__9daHorse_cFv
/* 807DDAE4  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DDAE8  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DDAEC  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 807DDAF0  C0 7E 03 74 */	lfs f3, 0x374(r30)
/* 807DDAF4  48 00 49 D5 */	bl set__4cXyzFfff
/* 807DDAF8  7F 03 C3 78 */	mr r3, r24
/* 807DDAFC  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DDB00  38 A0 80 00 */	li r5, -32768
/* 807DDB04  48 00 4D DD */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
/* 807DDB08  7F 03 C3 78 */	mr r3, r24
/* 807DDB0C  38 80 00 03 */	li r4, 3
/* 807DDB10  38 A0 00 00 */	li r5, 0
/* 807DDB14  48 00 4D C1 */	bl changeDemoMode__9daHorse_cFUli
/* 807DDB18  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DDB1C  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DDB20  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 807DDB24  C0 7E 03 78 */	lfs f3, 0x378(r30)
/* 807DDB28  48 00 49 A1 */	bl set__4cXyzFfff
/* 807DDB2C  7F 03 C3 78 */	mr r3, r24
/* 807DDB30  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DDB34  48 00 4D 85 */	bl changeDemoPos0__9daHorse_cFPC4cXyz
/* 807DDB38  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 807DDB3C  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 807DDB40  A0 63 00 AE */	lhz r3, 0xae(r3)
/* 807DDB44  48 00 48 81 */	bl dComIfGs_onEventBit__FUs
/* 807DDB48  48 00 48 AD */	bl Z2GetAudioMgr__Fv
/* 807DDB4C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000015@ha */
/* 807DDB50  38 84 00 15 */	addi r4, r4, 0x0015 /* 0x01000015@l */
/* 807DDB54  38 A0 00 00 */	li r5, 0
/* 807DDB58  38 C0 00 00 */	li r6, 0
/* 807DDB5C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DDB60  4B AD 14 B1 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 807DDB64  48 00 4D D1 */	bl dComIfGp_getEvent__Fv
/* 807DDB68  7F E4 FB 78 */	mr r4, r31
/* 807DDB6C  48 00 4D 9D */	bl startCheckSkipEdge__14dEvt_control_cFPv
lbl_807DDB70:
/* 807DDB70  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDB74  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807DDB78  40 82 00 14 */	bne lbl_807DDB8C
/* 807DDB7C  7F 03 C3 78 */	mr r3, r24
/* 807DDB80  38 80 00 08 */	li r4, 8
/* 807DDB84  38 A0 00 00 */	li r5, 0
/* 807DDB88  48 00 4D 4D */	bl changeDemoMode__9daHorse_cFUli
lbl_807DDB8C:
/* 807DDB8C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDB90  2C 00 00 46 */	cmpwi r0, 0x46
/* 807DDB94  40 81 1B 9C */	ble lbl_807DF730
/* 807DDB98  7F E3 FB 78 */	mr r3, r31
/* 807DDB9C  C0 3E 01 84 */	lfs f1, 0x184(r30)
/* 807DDBA0  4B FF E4 E5 */	bl cam_3d_morf__FP10e_wb_classf
/* 807DDBA4  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DDBA8  C0 3E 01 84 */	lfs f1, 0x184(r30)
/* 807DDBAC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DDBB0  C0 7E 00 E4 */	lfs f3, 0xe4(r30)
/* 807DDBB4  4B A9 1E 89 */	bl cLib_addCalc2__FPffff
/* 807DDBB8  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDBBC  2C 00 00 96 */	cmpwi r0, 0x96
/* 807DDBC0  40 82 1B 70 */	bne lbl_807DF730
/* 807DDBC4  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DDBC8  C0 3E 03 7C */	lfs f1, 0x37c(r30)
/* 807DDBCC  C0 5E 03 80 */	lfs f2, 0x380(r30)
/* 807DDBD0  C0 7E 03 84 */	lfs f3, 0x384(r30)
/* 807DDBD4  48 00 48 F5 */	bl set__4cXyzFfff
/* 807DDBD8  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DDBDC  C0 3E 03 88 */	lfs f1, 0x388(r30)
/* 807DDBE0  C0 5E 03 8C */	lfs f2, 0x38c(r30)
/* 807DDBE4  C0 7E 03 90 */	lfs f3, 0x390(r30)
/* 807DDBE8  48 00 48 E1 */	bl set__4cXyzFfff
/* 807DDBEC  38 7F 16 EC */	addi r3, r31, 0x16ec
/* 807DDBF0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DDBF4  FC 40 08 90 */	fmr f2, f1
/* 807DDBF8  FC 60 08 90 */	fmr f3, f1
/* 807DDBFC  48 00 48 CD */	bl set__4cXyzFfff
/* 807DDC00  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DDC04  C0 3E 03 94 */	lfs f1, 0x394(r30)
/* 807DDC08  C0 5E 03 98 */	lfs f2, 0x398(r30)
/* 807DDC0C  C0 7E 03 9C */	lfs f3, 0x39c(r30)
/* 807DDC10  48 00 48 B9 */	bl set__4cXyzFfff
/* 807DDC14  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DDC18  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DDC1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDC20  48 00 47 31 */	bl fabsf__3stdFf
/* 807DDC24  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DDC28  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DDC2C  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DDC30  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDC34  48 00 47 1D */	bl fabsf__3stdFf
/* 807DDC38  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DDC3C  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DDC40  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DDC44  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDC48  48 00 47 09 */	bl fabsf__3stdFf
/* 807DDC4C  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DDC50  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DDC54  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DDC58  38 00 00 2A */	li r0, 0x2a
/* 807DDC5C  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DDC60  38 00 00 00 */	li r0, 0
/* 807DDC64  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DDC68  48 00 1A C8 */	b lbl_807DF730
lbl_807DDC6C:
/* 807DDC6C  C0 1E 03 A0 */	lfs f0, 0x3a0(r30)
/* 807DDC70  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DDC74  7F E3 FB 78 */	mr r3, r31
/* 807DDC78  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 807DDC7C  4B FF E4 09 */	bl cam_3d_morf__FP10e_wb_classf
/* 807DDC80  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDC84  2C 00 00 14 */	cmpwi r0, 0x14
/* 807DDC88  40 82 00 94 */	bne lbl_807DDD1C
/* 807DDC8C  38 00 00 01 */	li r0, 1
/* 807DDC90  98 1F 17 22 */	stb r0, 0x1722(r31)
/* 807DDC94  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DDC98  D0 1F 17 18 */	stfs f0, 0x1718(r31)
/* 807DDC9C  38 61 00 1C */	addi r3, r1, 0x1c
/* 807DDCA0  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800D2@ha */
/* 807DDCA4  38 84 00 D2 */	addi r4, r4, 0x00D2 /* 0x000800D2@l */
/* 807DDCA8  48 00 4B 29 */	bl __ct__10JAISoundIDFUl
/* 807DDCAC  7C 77 1B 78 */	mr r23, r3
/* 807DDCB0  48 00 47 45 */	bl Z2GetAudioMgr__Fv
/* 807DDCB4  7E E4 BB 78 */	mr r4, r23
/* 807DDCB8  38 BA 01 AC */	addi r5, r26, 0x1ac
/* 807DDCBC  38 C0 00 00 */	li r6, 0
/* 807DDCC0  38 E0 00 00 */	li r7, 0
/* 807DDCC4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DDCC8  FC 40 08 90 */	fmr f2, f1
/* 807DDCCC  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 807DDCD0  FC 80 18 90 */	fmr f4, f3
/* 807DDCD4  39 00 00 00 */	li r8, 0
/* 807DDCD8  4B AC DC AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807DDCDC  38 61 00 18 */	addi r3, r1, 0x18
/* 807DDCE0  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800D2@ha */
/* 807DDCE4  38 84 00 D2 */	addi r4, r4, 0x00D2 /* 0x000800D2@l */
/* 807DDCE8  48 00 4A E9 */	bl __ct__10JAISoundIDFUl
/* 807DDCEC  7C 77 1B 78 */	mr r23, r3
/* 807DDCF0  48 00 47 05 */	bl Z2GetAudioMgr__Fv
/* 807DDCF4  7E E4 BB 78 */	mr r4, r23
/* 807DDCF8  38 BA 01 C4 */	addi r5, r26, 0x1c4
/* 807DDCFC  38 C0 00 00 */	li r6, 0
/* 807DDD00  38 E0 00 00 */	li r7, 0
/* 807DDD04  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DDD08  FC 40 08 90 */	fmr f2, f1
/* 807DDD0C  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 807DDD10  FC 80 18 90 */	fmr f4, f3
/* 807DDD14  39 00 00 00 */	li r8, 0
/* 807DDD18  4B AC DC 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807DDD1C:
/* 807DDD1C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDD20  2C 00 00 17 */	cmpwi r0, 0x17
/* 807DDD24  40 82 00 14 */	bne lbl_807DDD38
/* 807DDD28  7F 03 C3 78 */	mr r3, r24
/* 807DDD2C  38 80 00 09 */	li r4, 9
/* 807DDD30  38 A0 00 00 */	li r5, 0
/* 807DDD34  48 00 4B A1 */	bl changeDemoMode__9daHorse_cFUli
lbl_807DDD38:
/* 807DDD38  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDD3C  2C 00 00 53 */	cmpwi r0, 0x53
/* 807DDD40  40 82 19 F0 */	bne lbl_807DF730
/* 807DDD44  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DDD48  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DDD4C  C0 5E 03 A4 */	lfs f2, 0x3a4(r30)
/* 807DDD50  C0 7E 03 A8 */	lfs f3, 0x3a8(r30)
/* 807DDD54  48 00 47 75 */	bl set__4cXyzFfff
/* 807DDD58  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DDD5C  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DDD60  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 807DDD64  C0 7E 03 AC */	lfs f3, 0x3ac(r30)
/* 807DDD68  48 00 47 61 */	bl set__4cXyzFfff
/* 807DDD6C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DDD70  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DDD74  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DDD78  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DDD7C  38 00 00 2B */	li r0, 0x2b
/* 807DDD80  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DDD84  38 00 00 00 */	li r0, 0
/* 807DDD88  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DDD8C  38 00 FF 9C */	li r0, -100
/* 807DDD90  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807DDD94  48 00 19 9C */	b lbl_807DF730
lbl_807DDD98:
/* 807DDD98  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDD9C  2C 00 00 05 */	cmpwi r0, 5
/* 807DDDA0  40 82 00 3C */	bne lbl_807DDDDC
/* 807DDDA4  7F 03 C3 78 */	mr r3, r24
/* 807DDDA8  38 80 00 01 */	li r4, 1
/* 807DDDAC  38 A0 00 00 */	li r5, 0
/* 807DDDB0  48 00 4B 25 */	bl changeDemoMode__9daHorse_cFUli
/* 807DDDB4  48 00 46 A5 */	bl daPy_getPlayerActorClass__Fv
/* 807DDDB8  38 80 00 17 */	li r4, 0x17
/* 807DDDBC  38 A0 00 01 */	li r5, 1
/* 807DDDC0  38 C0 00 02 */	li r6, 2
/* 807DDDC4  38 E0 00 00 */	li r7, 0
/* 807DDDC8  48 00 45 6D */	bl changeDemoMode__9daPy_py_cFUliis
/* 807DDDCC  3C 60 80 7E */	lis r3, s_rddel_sub__FPvPv@ha /* 0x807DA798@ha */
/* 807DDDD0  38 63 A7 98 */	addi r3, r3, s_rddel_sub__FPvPv@l /* 0x807DA798@l */
/* 807DDDD4  7F E4 FB 78 */	mr r4, r31
/* 807DDDD8  48 00 4B 6D */	bl fpcM_Search__FPFPvPv_PvPv
lbl_807DDDDC:
/* 807DDDDC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDDE0  2C 00 00 28 */	cmpwi r0, 0x28
/* 807DDDE4  40 81 19 4C */	ble lbl_807DF730
/* 807DDDE8  38 7F 17 14 */	addi r3, r31, 0x1714
/* 807DDDEC  C0 3E 03 B0 */	lfs f1, 0x3b0(r30)
/* 807DDDF0  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 807DDDF4  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 807DDDF8  4B A9 1C 45 */	bl cLib_addCalc2__FPffff
/* 807DDDFC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDE00  2C 00 00 82 */	cmpwi r0, 0x82
/* 807DDE04  40 82 19 2C */	bne lbl_807DF730
/* 807DDE08  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DDE0C  C0 3E 03 B4 */	lfs f1, 0x3b4(r30)
/* 807DDE10  C0 5E 03 B8 */	lfs f2, 0x3b8(r30)
/* 807DDE14  C0 7E 03 BC */	lfs f3, 0x3bc(r30)
/* 807DDE18  48 00 46 B1 */	bl set__4cXyzFfff
/* 807DDE1C  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DDE20  C0 3E 03 C0 */	lfs f1, 0x3c0(r30)
/* 807DDE24  C0 5E 03 C4 */	lfs f2, 0x3c4(r30)
/* 807DDE28  C0 7E 03 C8 */	lfs f3, 0x3c8(r30)
/* 807DDE2C  48 00 46 9D */	bl set__4cXyzFfff
/* 807DDE30  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DDE34  C0 3E 03 CC */	lfs f1, 0x3cc(r30)
/* 807DDE38  C0 5E 03 B8 */	lfs f2, 0x3b8(r30)
/* 807DDE3C  C0 7E 03 D0 */	lfs f3, 0x3d0(r30)
/* 807DDE40  48 00 46 89 */	bl set__4cXyzFfff
/* 807DDE44  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DDE48  C0 3E 03 D4 */	lfs f1, 0x3d4(r30)
/* 807DDE4C  C0 5E 03 C4 */	lfs f2, 0x3c4(r30)
/* 807DDE50  C0 7E 03 D8 */	lfs f3, 0x3d8(r30)
/* 807DDE54  48 00 46 75 */	bl set__4cXyzFfff
/* 807DDE58  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DDE5C  C0 1F 16 A4 */	lfs f0, 0x16a4(r31)
/* 807DDE60  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDE64  48 00 44 ED */	bl fabsf__3stdFf
/* 807DDE68  D0 3F 16 EC */	stfs f1, 0x16ec(r31)
/* 807DDE6C  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DDE70  C0 1F 16 A8 */	lfs f0, 0x16a8(r31)
/* 807DDE74  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDE78  48 00 44 D9 */	bl fabsf__3stdFf
/* 807DDE7C  D0 3F 16 F0 */	stfs f1, 0x16f0(r31)
/* 807DDE80  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DDE84  C0 1F 16 AC */	lfs f0, 0x16ac(r31)
/* 807DDE88  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDE8C  48 00 44 C5 */	bl fabsf__3stdFf
/* 807DDE90  D0 3F 16 F4 */	stfs f1, 0x16f4(r31)
/* 807DDE94  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DDE98  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DDE9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDEA0  48 00 44 B1 */	bl fabsf__3stdFf
/* 807DDEA4  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DDEA8  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DDEAC  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DDEB0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDEB4  48 00 44 9D */	bl fabsf__3stdFf
/* 807DDEB8  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DDEBC  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DDEC0  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DDEC4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DDEC8  48 00 44 89 */	bl fabsf__3stdFf
/* 807DDECC  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DDED0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DDED4  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DDED8  38 00 00 2C */	li r0, 0x2c
/* 807DDEDC  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DDEE0  38 00 00 00 */	li r0, 0
/* 807DDEE4  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DDEE8  38 00 00 14 */	li r0, 0x14
/* 807DDEEC  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 807DDEF0  48 00 18 40 */	b lbl_807DF730
lbl_807DDEF4:
/* 807DDEF4  7F E3 FB 78 */	mr r3, r31
/* 807DDEF8  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807DDEFC  4B FF E1 89 */	bl cam_3d_morf__FP10e_wb_classf
/* 807DDF00  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DDF04  C0 3E 03 DC */	lfs f1, 0x3dc(r30)
/* 807DDF08  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DDF0C  C0 7E 03 E0 */	lfs f3, 0x3e0(r30)
/* 807DDF10  4B A9 1B 2D */	bl cLib_addCalc2__FPffff
/* 807DDF14  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDF18  2C 00 00 AA */	cmpwi r0, 0xaa
/* 807DDF1C  40 82 00 10 */	bne lbl_807DDF2C
/* 807DDF20  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 807DDF24  38 03 00 01 */	addi r0, r3, 1
/* 807DDF28  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_807DDF2C:
/* 807DDF2C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDF30  2C 00 01 02 */	cmpwi r0, 0x102
/* 807DDF34  40 82 00 28 */	bne lbl_807DDF5C
/* 807DDF38  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DDF3C  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 807DDF40  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 807DDF44  C0 7E 03 E4 */	lfs f3, 0x3e4(r30)
/* 807DDF48  48 00 45 81 */	bl set__4cXyzFfff
/* 807DDF4C  7F 03 C3 78 */	mr r3, r24
/* 807DDF50  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DDF54  A8 B8 04 E6 */	lha r5, 0x4e6(r24)
/* 807DDF58  48 00 49 89 */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
lbl_807DDF5C:
/* 807DDF5C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DDF60  2C 00 01 32 */	cmpwi r0, 0x132
/* 807DDF64  40 82 17 CC */	bne lbl_807DF730
/* 807DDF68  38 61 00 CC */	addi r3, r1, 0xcc
/* 807DDF6C  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DDF70  48 00 43 ED */	bl __ct__4cXyzFRC4cXyz
/* 807DDF74  38 61 00 C0 */	addi r3, r1, 0xc0
/* 807DDF78  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DDF7C  48 00 43 E1 */	bl __ct__4cXyzFRC4cXyz
/* 807DDF80  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DDF84  38 81 00 CC */	addi r4, r1, 0xcc
/* 807DDF88  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 807DDF8C  4B 9A 2C 8D */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 807DDF90  38 61 00 C0 */	addi r3, r1, 0xc0
/* 807DDF94  38 80 FF FF */	li r4, -1
/* 807DDF98  4B FF 4B B1 */	bl __dt__4cXyzFv
/* 807DDF9C  38 61 00 CC */	addi r3, r1, 0xcc
/* 807DDFA0  38 80 FF FF */	li r4, -1
/* 807DDFA4  4B FF 4B A5 */	bl __dt__4cXyzFv
/* 807DDFA8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DDFAC  4B 98 35 01 */	bl Start__9dCamera_cFv
/* 807DDFB0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DDFB4  38 80 00 00 */	li r4, 0
/* 807DDFB8  4B 98 50 55 */	bl SetTrimSize__9dCamera_cFl
/* 807DDFBC  48 00 44 5D */	bl dComIfGp_event_reset__Fv
/* 807DDFC0  48 00 44 99 */	bl daPy_getPlayerActorClass__Fv
/* 807DDFC4  48 00 44 41 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DDFC8  7F 03 C3 78 */	mr r3, r24
/* 807DDFCC  48 00 47 F1 */	bl cancelOriginalDemo__9daHorse_cFv
/* 807DDFD0  38 00 00 00 */	li r0, 0
/* 807DDFD4  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DDFD8  48 00 44 1D */	bl Z2GetAudioMgr__Fv
/* 807DDFDC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000096@ha */
/* 807DDFE0  38 84 00 96 */	addi r4, r4, 0x0096 /* 0x01000096@l */
/* 807DDFE4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DDFE8  4B AD 14 B5 */	bl subBgmStart__8Z2SeqMgrFUl
/* 807DDFEC  48 00 17 44 */	b lbl_807DF730
lbl_807DDFF0:
/* 807DDFF0  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 807DDFF4  48 00 44 F5 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DDFF8  2C 03 00 00 */	cmpwi r3, 0
/* 807DDFFC  40 82 00 5C */	bne lbl_807DE058
/* 807DE000  7F 83 E3 78 */	mr r3, r28
/* 807DE004  38 80 00 02 */	li r4, 2
/* 807DE008  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DE00C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DE010  38 C0 00 00 */	li r6, 0
/* 807DE014  4B 83 D8 F5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DE018  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 807DE01C  38 80 00 02 */	li r4, 2
/* 807DE020  48 00 44 B9 */	bl onCondition__11dEvt_info_cFUs
/* 807DE024  38 61 01 44 */	addi r3, r1, 0x144
/* 807DE028  38 80 FF FF */	li r4, -1
/* 807DE02C  4B FF 4B 1D */	bl __dt__4cXyzFv
/* 807DE030  38 61 01 50 */	addi r3, r1, 0x150
/* 807DE034  38 80 FF FF */	li r4, -1
/* 807DE038  4B FF 4B 11 */	bl __dt__4cXyzFv
/* 807DE03C  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DE040  38 80 FF FF */	li r4, -1
/* 807DE044  4B FF 4B 05 */	bl __dt__4cXyzFv
/* 807DE048  38 61 01 68 */	addi r3, r1, 0x168
/* 807DE04C  38 80 FF FF */	li r4, -1
/* 807DE050  4B FF 4A F9 */	bl __dt__4cXyzFv
/* 807DE054  48 00 1A 48 */	b lbl_807DFA9C
lbl_807DE058:
/* 807DE058  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DE05C  4B 98 34 75 */	bl Stop__9dCamera_cFv
/* 807DE060  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DE064  38 80 00 03 */	li r4, 3
/* 807DE068  4B 98 4F A5 */	bl SetTrimSize__9dCamera_cFl
/* 807DE06C  38 00 00 33 */	li r0, 0x33
/* 807DE070  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DE074  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DE078  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DE07C  38 00 00 00 */	li r0, 0
/* 807DE080  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DE084  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DE088  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DE08C  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DE090  C0 3E 03 E8 */	lfs f1, 0x3e8(r30)
/* 807DE094  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 807DE098  C0 7E 03 EC */	lfs f3, 0x3ec(r30)
/* 807DE09C  48 00 44 2D */	bl set__4cXyzFfff
/* 807DE0A0  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DE0A4  C0 3E 03 F0 */	lfs f1, 0x3f0(r30)
/* 807DE0A8  C0 5E 03 F4 */	lfs f2, 0x3f4(r30)
/* 807DE0AC  C0 7E 03 F8 */	lfs f3, 0x3f8(r30)
/* 807DE0B0  48 00 44 19 */	bl set__4cXyzFfff
/* 807DE0B4  48 00 43 A5 */	bl daPy_getPlayerActorClass__Fv
/* 807DE0B8  48 00 43 8D */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DE0BC  48 00 48 79 */	bl dComIfGp_getEvent__Fv
/* 807DE0C0  7F E4 FB 78 */	mr r4, r31
/* 807DE0C4  48 00 48 45 */	bl startCheckSkipEdge__14dEvt_control_cFPv
/* 807DE0C8  38 60 00 04 */	li r3, 4
/* 807DE0CC  38 80 FF FF */	li r4, -1
/* 807DE0D0  4B 84 F9 CD */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_807DE0D4:
/* 807DE0D4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE0D8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807DE0DC  40 80 00 38 */	bge lbl_807DE114
/* 807DE0E0  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DE0E4  C0 3E 03 FC */	lfs f1, 0x3fc(r30)
/* 807DE0E8  C0 5E 04 00 */	lfs f2, 0x400(r30)
/* 807DE0EC  C0 7E 04 04 */	lfs f3, 0x404(r30)
/* 807DE0F0  48 00 43 D9 */	bl set__4cXyzFfff
/* 807DE0F4  7F 23 CB 78 */	mr r3, r25
/* 807DE0F8  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DE0FC  38 A0 ED 3D */	li r5, -4803
/* 807DE100  38 C0 00 00 */	li r6, 0
/* 807DE104  81 99 06 28 */	lwz r12, 0x628(r25)
/* 807DE108  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807DE10C  7D 89 03 A6 */	mtctr r12
/* 807DE110  4E 80 04 21 */	bctrl 
lbl_807DE114:
/* 807DE114  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE118  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807DE11C  40 82 00 3C */	bne lbl_807DE158
/* 807DE120  7F 23 CB 78 */	mr r3, r25
/* 807DE124  38 80 00 02 */	li r4, 2
/* 807DE128  38 A0 00 01 */	li r5, 1
/* 807DE12C  38 C0 00 00 */	li r6, 0
/* 807DE130  38 E0 00 00 */	li r7, 0
/* 807DE134  48 00 42 01 */	bl changeDemoMode__9daPy_py_cFUliis
/* 807DE138  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DE13C  C0 3E 04 08 */	lfs f1, 0x408(r30)
/* 807DE140  C0 5E 01 D8 */	lfs f2, 0x1d8(r30)
/* 807DE144  C0 7E 04 0C */	lfs f3, 0x40c(r30)
/* 807DE148  48 00 43 81 */	bl set__4cXyzFfff
/* 807DE14C  7F 23 CB 78 */	mr r3, r25
/* 807DE150  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DE154  48 00 41 C5 */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
lbl_807DE158:
/* 807DE158  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE15C  2C 00 00 8B */	cmpwi r0, 0x8b
/* 807DE160  40 82 00 0C */	bne lbl_807DE16C
/* 807DE164  38 00 00 02 */	li r0, 2
/* 807DE168  98 1C 06 D8 */	stb r0, 0x6d8(r28)
lbl_807DE16C:
/* 807DE16C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE170  2C 00 00 8C */	cmpwi r0, 0x8c
/* 807DE174  40 82 15 BC */	bne lbl_807DF730
/* 807DE178  38 00 00 34 */	li r0, 0x34
/* 807DE17C  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DE180  38 00 00 00 */	li r0, 0
/* 807DE184  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DE188  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DE18C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DE190  80 63 00 00 */	lwz r3, 0(r3)
/* 807DE194  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807DE198  48 00 41 E1 */	bl cMtx_YrotS__FPA4_fs
/* 807DE19C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DE1A0  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DE1A4  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807DE1A8  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DE1AC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807DE1B0  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DE1B4  38 61 01 68 */	addi r3, r1, 0x168
/* 807DE1B8  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DE1BC  4B A9 2D 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DE1C0  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DE1C4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807DE1C8  48 00 46 5D */	bl __apl__4cXyzFRC3Vec
/* 807DE1CC  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DE1D0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807DE1D4  48 00 46 35 */	bl __as__4cXyzFRC4cXyz
/* 807DE1D8  C0 3F 16 C0 */	lfs f1, 0x16c0(r31)
/* 807DE1DC  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807DE1E0  EC 01 00 2A */	fadds f0, f1, f0
/* 807DE1E4  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DE1E8  38 00 00 02 */	li r0, 2
/* 807DE1EC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807DE1F0  38 00 00 28 */	li r0, 0x28
/* 807DE1F4  B0 1C 06 B8 */	sth r0, 0x6b8(r28)
lbl_807DE1F8:
/* 807DE1F8  38 7C 06 E0 */	addi r3, r28, 0x6e0
/* 807DE1FC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DE200  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 807DE204  4B A9 18 7D */	bl cLib_addCalc0__FPfff
/* 807DE208  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE20C  2C 00 00 91 */	cmpwi r0, 0x91
/* 807DE210  40 82 00 0C */	bne lbl_807DE21C
/* 807DE214  38 00 00 03 */	li r0, 3
/* 807DE218  98 1C 06 D8 */	stb r0, 0x6d8(r28)
lbl_807DE21C:
/* 807DE21C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE220  2C 00 00 AF */	cmpwi r0, 0xaf
/* 807DE224  40 82 00 0C */	bne lbl_807DE230
/* 807DE228  38 00 00 04 */	li r0, 4
/* 807DE22C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_807DE230:
/* 807DE230  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE234  2C 00 01 38 */	cmpwi r0, 0x138
/* 807DE238  40 82 00 84 */	bne lbl_807DE2BC
/* 807DE23C  38 00 00 18 */	li r0, 0x18
/* 807DE240  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807DE244  38 00 00 00 */	li r0, 0
/* 807DE248  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807DE24C  38 61 00 14 */	addi r3, r1, 0x14
/* 807DE250  3C 80 00 05 */	lis r4, 0x0005 /* 0x0005007D@ha */
/* 807DE254  38 84 00 7D */	addi r4, r4, 0x007D /* 0x0005007D@l */
/* 807DE258  48 00 45 79 */	bl __ct__10JAISoundIDFUl
/* 807DE25C  7C 64 1B 78 */	mr r4, r3
/* 807DE260  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807DE264  38 A0 FF FF */	li r5, -1
/* 807DE268  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807DE26C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807DE270  7D 89 03 A6 */	mtctr r12
/* 807DE274  4E 80 04 21 */	bctrl 
/* 807DE278  38 61 01 38 */	addi r3, r1, 0x138
/* 807DE27C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DE280  48 00 40 DD */	bl __ct__4cXyzFRC4cXyz
/* 807DE284  C0 21 01 3C */	lfs f1, 0x13c(r1)
/* 807DE288  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807DE28C  EC 01 00 2A */	fadds f0, f1, f0
/* 807DE290  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 807DE294  38 60 00 03 */	li r3, 3
/* 807DE298  38 80 00 00 */	li r4, 0
/* 807DE29C  38 A1 01 38 */	addi r5, r1, 0x138
/* 807DE2A0  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 807DE2A4  38 E0 00 00 */	li r7, 0
/* 807DE2A8  39 00 00 00 */	li r8, 0
/* 807DE2AC  48 00 40 0D */	bl dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807DE2B0  38 61 01 38 */	addi r3, r1, 0x138
/* 807DE2B4  38 80 FF FF */	li r4, -1
/* 807DE2B8  4B FF 48 91 */	bl __dt__4cXyzFv
lbl_807DE2BC:
/* 807DE2BC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE2C0  2C 00 01 3B */	cmpwi r0, 0x13b
/* 807DE2C4  40 82 00 FC */	bne lbl_807DE3C0
/* 807DE2C8  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DE2CC  C0 3E 04 10 */	lfs f1, 0x410(r30)
/* 807DE2D0  C0 5E 04 14 */	lfs f2, 0x414(r30)
/* 807DE2D4  C0 7E 04 18 */	lfs f3, 0x418(r30)
/* 807DE2D8  48 00 41 F1 */	bl set__4cXyzFfff
/* 807DE2DC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DE2E0  C0 3E 04 1C */	lfs f1, 0x41c(r30)
/* 807DE2E4  C0 5E 04 20 */	lfs f2, 0x420(r30)
/* 807DE2E8  C0 7E 04 24 */	lfs f3, 0x424(r30)
/* 807DE2EC  48 00 41 DD */	bl set__4cXyzFfff
/* 807DE2F0  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DE2F4  C0 3E 04 28 */	lfs f1, 0x428(r30)
/* 807DE2F8  C0 5E 04 2C */	lfs f2, 0x42c(r30)
/* 807DE2FC  C0 7E 04 30 */	lfs f3, 0x430(r30)
/* 807DE300  48 00 41 C9 */	bl set__4cXyzFfff
/* 807DE304  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DE308  C0 3E 04 34 */	lfs f1, 0x434(r30)
/* 807DE30C  C0 5E 04 38 */	lfs f2, 0x438(r30)
/* 807DE310  C0 7E 04 3C */	lfs f3, 0x43c(r30)
/* 807DE314  48 00 41 B5 */	bl set__4cXyzFfff
/* 807DE318  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DE31C  C0 1F 16 A4 */	lfs f0, 0x16a4(r31)
/* 807DE320  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE324  48 00 40 2D */	bl fabsf__3stdFf
/* 807DE328  D0 3F 16 EC */	stfs f1, 0x16ec(r31)
/* 807DE32C  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DE330  C0 1F 16 A8 */	lfs f0, 0x16a8(r31)
/* 807DE334  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE338  48 00 40 19 */	bl fabsf__3stdFf
/* 807DE33C  D0 3F 16 F0 */	stfs f1, 0x16f0(r31)
/* 807DE340  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DE344  C0 1F 16 AC */	lfs f0, 0x16ac(r31)
/* 807DE348  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE34C  48 00 40 05 */	bl fabsf__3stdFf
/* 807DE350  D0 3F 16 F4 */	stfs f1, 0x16f4(r31)
/* 807DE354  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DE358  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DE35C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE360  48 00 3F F1 */	bl fabsf__3stdFf
/* 807DE364  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DE368  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DE36C  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DE370  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE374  48 00 3F DD */	bl fabsf__3stdFf
/* 807DE378  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DE37C  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DE380  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DE384  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE388  48 00 3F C9 */	bl fabsf__3stdFf
/* 807DE38C  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DE390  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DE394  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DE398  7F 23 CB 78 */	mr r3, r25
/* 807DE39C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DE3A0  A8 B9 04 E6 */	lha r5, 0x4e6(r25)
/* 807DE3A4  38 05 F0 60 */	addi r0, r5, -4000
/* 807DE3A8  7C 05 07 34 */	extsh r5, r0
/* 807DE3AC  38 C0 00 00 */	li r6, 0
/* 807DE3B0  81 99 06 28 */	lwz r12, 0x628(r25)
/* 807DE3B4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807DE3B8  7D 89 03 A6 */	mtctr r12
/* 807DE3BC  4E 80 04 21 */	bctrl 
lbl_807DE3C0:
/* 807DE3C0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE3C4  2C 00 01 59 */	cmpwi r0, 0x159
/* 807DE3C8  40 82 00 94 */	bne lbl_807DE45C
/* 807DE3CC  48 00 40 8D */	bl daPy_getPlayerActorClass__Fv
/* 807DE3D0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807DE3D4  38 04 E0 C0 */	addi r0, r4, -8000
/* 807DE3D8  7C 04 07 34 */	extsh r4, r0
/* 807DE3DC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807DE3E0  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 807DE3E4  38 A0 00 00 */	li r5, 0
/* 807DE3E8  38 C0 00 01 */	li r6, 1
/* 807DE3EC  38 E0 00 00 */	li r7, 0
/* 807DE3F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807DE3F4  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 807DE3F8  7D 89 03 A6 */	mtctr r12
/* 807DE3FC  4E 80 04 21 */	bctrl 
/* 807DE400  48 00 40 59 */	bl daPy_getPlayerActorClass__Fv
/* 807DE404  38 80 00 01 */	li r4, 1
/* 807DE408  38 A0 00 00 */	li r5, 0
/* 807DE40C  38 C0 00 00 */	li r6, 0
/* 807DE410  38 E0 00 00 */	li r7, 0
/* 807DE414  48 00 3F 21 */	bl changeDemoMode__9daPy_py_cFUliis
/* 807DE418  38 61 01 2C */	addi r3, r1, 0x12c
/* 807DE41C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DE420  48 00 3F 3D */	bl __ct__4cXyzFRC4cXyz
/* 807DE424  C0 21 01 30 */	lfs f1, 0x130(r1)
/* 807DE428  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807DE42C  EC 01 00 2A */	fadds f0, f1, f0
/* 807DE430  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 807DE434  38 60 00 03 */	li r3, 3
/* 807DE438  38 80 00 00 */	li r4, 0
/* 807DE43C  38 A1 01 2C */	addi r5, r1, 0x12c
/* 807DE440  38 D9 04 E4 */	addi r6, r25, 0x4e4
/* 807DE444  38 E0 00 00 */	li r7, 0
/* 807DE448  39 00 00 00 */	li r8, 0
/* 807DE44C  48 00 3E 6D */	bl dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807DE450  38 61 01 2C */	addi r3, r1, 0x12c
/* 807DE454  38 80 FF FF */	li r4, -1
/* 807DE458  4B FF 46 F1 */	bl __dt__4cXyzFv
lbl_807DE45C:
/* 807DE45C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE460  2C 00 01 A2 */	cmpwi r0, 0x1a2
/* 807DE464  40 82 00 1C */	bne lbl_807DE480
/* 807DE468  48 00 3F F1 */	bl daPy_getPlayerActorClass__Fv
/* 807DE46C  38 80 00 17 */	li r4, 0x17
/* 807DE470  38 A0 00 01 */	li r5, 1
/* 807DE474  38 C0 00 02 */	li r6, 2
/* 807DE478  38 E0 00 00 */	li r7, 0
/* 807DE47C  48 00 3E B9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DE480:
/* 807DE480  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE484  2C 00 01 7A */	cmpwi r0, 0x17a
/* 807DE488  41 80 00 24 */	blt lbl_807DE4AC
/* 807DE48C  7F E3 FB 78 */	mr r3, r31
/* 807DE490  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807DE494  4B FF DB F1 */	bl cam_3d_morf__FP10e_wb_classf
/* 807DE498  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DE49C  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807DE4A0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DE4A4  C0 7E 02 E0 */	lfs f3, 0x2e0(r30)
/* 807DE4A8  4B A9 15 95 */	bl cLib_addCalc2__FPffff
lbl_807DE4AC:
/* 807DE4AC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE4B0  2C 00 01 EA */	cmpwi r0, 0x1ea
/* 807DE4B4  41 80 12 7C */	blt lbl_807DF730
/* 807DE4B8  38 61 00 B4 */	addi r3, r1, 0xb4
/* 807DE4BC  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DE4C0  48 00 3E 9D */	bl __ct__4cXyzFRC4cXyz
/* 807DE4C4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 807DE4C8  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DE4CC  48 00 3E 91 */	bl __ct__4cXyzFRC4cXyz
/* 807DE4D0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DE4D4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 807DE4D8  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 807DE4DC  4B 9A 27 3D */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 807DE4E0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 807DE4E4  38 80 FF FF */	li r4, -1
/* 807DE4E8  4B FF 46 61 */	bl __dt__4cXyzFv
/* 807DE4EC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 807DE4F0  38 80 FF FF */	li r4, -1
/* 807DE4F4  4B FF 46 55 */	bl __dt__4cXyzFv
/* 807DE4F8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DE4FC  4B 98 2F B1 */	bl Start__9dCamera_cFv
/* 807DE500  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DE504  38 80 00 00 */	li r4, 0
/* 807DE508  4B 98 4B 05 */	bl SetTrimSize__9dCamera_cFl
/* 807DE50C  48 00 3F 0D */	bl dComIfGp_event_reset__Fv
/* 807DE510  48 00 3F 49 */	bl daPy_getPlayerActorClass__Fv
/* 807DE514  48 00 3E F1 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DE518  38 00 00 00 */	li r0, 0
/* 807DE51C  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DE520  38 00 00 07 */	li r0, 7
/* 807DE524  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807DE528  48 00 3E CD */	bl Z2GetAudioMgr__Fv
/* 807DE52C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000097@ha */
/* 807DE530  38 84 00 97 */	addi r4, r4, 0x0097 /* 0x01000097@l */
/* 807DE534  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DE538  4B AD 0F 65 */	bl subBgmStart__8Z2SeqMgrFUl
/* 807DE53C  48 00 11 F4 */	b lbl_807DF730
lbl_807DE540:
/* 807DE540  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 807DE544  48 00 3F A5 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DE548  2C 03 00 00 */	cmpwi r3, 0
/* 807DE54C  40 82 00 5C */	bne lbl_807DE5A8
/* 807DE550  7F 83 E3 78 */	mr r3, r28
/* 807DE554  38 80 00 02 */	li r4, 2
/* 807DE558  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DE55C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DE560  38 C0 00 00 */	li r6, 0
/* 807DE564  4B 83 D3 A5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DE568  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 807DE56C  38 80 00 02 */	li r4, 2
/* 807DE570  48 00 3F 69 */	bl onCondition__11dEvt_info_cFUs
/* 807DE574  38 61 01 44 */	addi r3, r1, 0x144
/* 807DE578  38 80 FF FF */	li r4, -1
/* 807DE57C  4B FF 45 CD */	bl __dt__4cXyzFv
/* 807DE580  38 61 01 50 */	addi r3, r1, 0x150
/* 807DE584  38 80 FF FF */	li r4, -1
/* 807DE588  4B FF 45 C1 */	bl __dt__4cXyzFv
/* 807DE58C  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DE590  38 80 FF FF */	li r4, -1
/* 807DE594  4B FF 45 B5 */	bl __dt__4cXyzFv
/* 807DE598  38 61 01 68 */	addi r3, r1, 0x168
/* 807DE59C  38 80 FF FF */	li r4, -1
/* 807DE5A0  4B FF 45 A9 */	bl __dt__4cXyzFv
/* 807DE5A4  48 00 14 F8 */	b lbl_807DFA9C
lbl_807DE5A8:
/* 807DE5A8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DE5AC  4B 98 2F 25 */	bl Stop__9dCamera_cFv
/* 807DE5B0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DE5B4  38 80 00 03 */	li r4, 3
/* 807DE5B8  4B 98 4A 55 */	bl SetTrimSize__9dCamera_cFl
/* 807DE5BC  38 00 00 3D */	li r0, 0x3d
/* 807DE5C0  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DE5C4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DE5C8  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DE5CC  38 00 00 00 */	li r0, 0
/* 807DE5D0  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DE5D4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DE5D8  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DE5DC  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DE5E0  C0 3E 04 40 */	lfs f1, 0x440(r30)
/* 807DE5E4  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 807DE5E8  C0 7E 04 48 */	lfs f3, 0x448(r30)
/* 807DE5EC  48 00 3E DD */	bl set__4cXyzFfff
/* 807DE5F0  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DE5F4  C0 3E 04 4C */	lfs f1, 0x44c(r30)
/* 807DE5F8  C0 5E 04 50 */	lfs f2, 0x450(r30)
/* 807DE5FC  C0 7E 04 34 */	lfs f3, 0x434(r30)
/* 807DE600  48 00 3E C9 */	bl set__4cXyzFfff
/* 807DE604  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807DE608  C0 3E 04 54 */	lfs f1, 0x454(r30)
/* 807DE60C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DE610  C0 7E 04 58 */	lfs f3, 0x458(r30)
/* 807DE614  48 00 3E B5 */	bl set__4cXyzFfff
/* 807DE618  38 00 09 58 */	li r0, 0x958
/* 807DE61C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807DE620  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 807DE624  48 00 3E 35 */	bl daPy_getPlayerActorClass__Fv
/* 807DE628  48 00 3E 1D */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DE62C  48 00 3E 2D */	bl daPy_getPlayerActorClass__Fv
/* 807DE630  38 80 00 17 */	li r4, 0x17
/* 807DE634  38 A0 00 01 */	li r5, 1
/* 807DE638  38 C0 00 02 */	li r6, 2
/* 807DE63C  38 E0 00 00 */	li r7, 0
/* 807DE640  48 00 3C F5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 807DE644  38 60 00 05 */	li r3, 5
/* 807DE648  38 80 FF FF */	li r4, -1
/* 807DE64C  4B 84 F4 51 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_807DE650:
/* 807DE650  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE654  2C 00 00 AA */	cmpwi r0, 0xaa
/* 807DE658  40 82 00 1C */	bne lbl_807DE674
/* 807DE65C  48 00 3D FD */	bl daPy_getPlayerActorClass__Fv
/* 807DE660  38 80 00 0C */	li r4, 0xc
/* 807DE664  38 A0 00 00 */	li r5, 0
/* 807DE668  38 C0 00 00 */	li r6, 0
/* 807DE66C  38 E0 00 00 */	li r7, 0
/* 807DE670  48 00 3C C5 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DE674:
/* 807DE674  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DE678  C0 3E 04 5C */	lfs f1, 0x45c(r30)
/* 807DE67C  C0 59 04 D4 */	lfs f2, 0x4d4(r25)
/* 807DE680  C0 7E 02 5C */	lfs f3, 0x25c(r30)
/* 807DE684  48 00 3E 45 */	bl set__4cXyzFfff
/* 807DE688  7F 23 CB 78 */	mr r3, r25
/* 807DE68C  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DE690  38 A0 14 B4 */	li r5, 0x14b4
/* 807DE694  38 C0 00 00 */	li r6, 0
/* 807DE698  81 99 06 28 */	lwz r12, 0x628(r25)
/* 807DE69C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807DE6A0  7D 89 03 A6 */	mtctr r12
/* 807DE6A4  4E 80 04 21 */	bctrl 
/* 807DE6A8  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 807DE6AC  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 807DE6B0  C0 1E 04 44 */	lfs f0, 0x444(r30)
/* 807DE6B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DE6B8  40 80 00 08 */	bge lbl_807DE6C0
/* 807DE6BC  D0 01 01 48 */	stfs f0, 0x148(r1)
lbl_807DE6C0:
/* 807DE6C0  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 807DE6C4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 807DE6C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DE6CC  40 81 00 08 */	ble lbl_807DE6D4
/* 807DE6D0  D0 01 01 48 */	stfs f0, 0x148(r1)
lbl_807DE6D4:
/* 807DE6D4  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DE6D8  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 807DE6DC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 807DE6E0  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 807DE6E4  4B A9 13 59 */	bl cLib_addCalc2__FPffff
/* 807DE6E8  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE6EC  2C 00 01 04 */	cmpwi r0, 0x104
/* 807DE6F0  40 82 00 0C */	bne lbl_807DE6FC
/* 807DE6F4  38 00 00 03 */	li r0, 3
/* 807DE6F8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_807DE6FC:
/* 807DE6FC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE700  2C 00 02 76 */	cmpwi r0, 0x276
/* 807DE704  40 82 10 2C */	bne lbl_807DF730
/* 807DE708  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DE70C  C0 3E 04 60 */	lfs f1, 0x460(r30)
/* 807DE710  C0 5E 04 64 */	lfs f2, 0x464(r30)
/* 807DE714  C0 7E 04 68 */	lfs f3, 0x468(r30)
/* 807DE718  48 00 3D B1 */	bl set__4cXyzFfff
/* 807DE71C  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DE720  C0 3E 04 6C */	lfs f1, 0x46c(r30)
/* 807DE724  C0 5E 04 70 */	lfs f2, 0x470(r30)
/* 807DE728  C0 7E 04 74 */	lfs f3, 0x474(r30)
/* 807DE72C  48 00 3D 9D */	bl set__4cXyzFfff
/* 807DE730  38 00 00 3E */	li r0, 0x3e
/* 807DE734  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DE738  38 00 00 00 */	li r0, 0
/* 807DE73C  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DE740  48 00 0F F0 */	b lbl_807DF730
lbl_807DE744:
/* 807DE744  38 60 00 72 */	li r3, 0x72
/* 807DE748  48 00 3D B9 */	bl fopAcM_SearchByName__Fs
/* 807DE74C  7C 76 1B 78 */	mr r22, r3
/* 807DE750  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE754  2C 00 00 14 */	cmpwi r0, 0x14
/* 807DE758  40 82 00 50 */	bne lbl_807DE7A8
/* 807DE75C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 807DE760  C0 5E 02 64 */	lfs f2, 0x264(r30)
/* 807DE764  48 3F 74 99 */	bl OpenSet__15daObjCRVSTEEL_cFff
/* 807DE768  38 61 00 10 */	addi r3, r1, 0x10
/* 807DE76C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000802C6@ha */
/* 807DE770  38 84 02 C6 */	addi r4, r4, 0x02C6 /* 0x000802C6@l */
/* 807DE774  48 00 40 5D */	bl __ct__10JAISoundIDFUl
/* 807DE778  7C 77 1B 78 */	mr r23, r3
/* 807DE77C  48 00 3C 79 */	bl Z2GetAudioMgr__Fv
/* 807DE780  7E E4 BB 78 */	mr r4, r23
/* 807DE784  38 B6 04 D0 */	addi r5, r22, 0x4d0
/* 807DE788  38 C0 00 00 */	li r6, 0
/* 807DE78C  38 E0 00 00 */	li r7, 0
/* 807DE790  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DE794  FC 40 08 90 */	fmr f2, f1
/* 807DE798  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 807DE79C  FC 80 18 90 */	fmr f4, f3
/* 807DE7A0  39 00 00 00 */	li r8, 0
/* 807DE7A4  4B AC D1 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807DE7A8:
/* 807DE7A8  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE7AC  2C 00 00 82 */	cmpwi r0, 0x82
/* 807DE7B0  40 82 00 10 */	bne lbl_807DE7C0
/* 807DE7B4  7E C3 B3 78 */	mr r3, r22
/* 807DE7B8  C0 3E 04 78 */	lfs f1, 0x478(r30)
/* 807DE7BC  48 3F 74 5D */	bl CloseSet__15daObjCRVSTEEL_cFf
lbl_807DE7C0:
/* 807DE7C0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE7C4  2C 00 00 8C */	cmpwi r0, 0x8c
/* 807DE7C8  40 82 00 38 */	bne lbl_807DE800
/* 807DE7CC  38 61 00 9C */	addi r3, r1, 0x9c
/* 807DE7D0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DE7D4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DE7D8  FC 60 08 90 */	fmr f3, f1
/* 807DE7DC  48 00 40 0D */	bl __ct__4cXyzFfff
/* 807DE7E0  48 00 3F F9 */	bl dComIfGp_getVibration__Fv
/* 807DE7E4  38 80 00 05 */	li r4, 5
/* 807DE7E8  38 A0 00 4F */	li r5, 0x4f
/* 807DE7EC  38 C1 00 9C */	addi r6, r1, 0x9c
/* 807DE7F0  4B 89 12 35 */	bl StartShock__12dVibration_cFii4cXyz
/* 807DE7F4  38 61 00 9C */	addi r3, r1, 0x9c
/* 807DE7F8  38 80 FF FF */	li r4, -1
/* 807DE7FC  4B FF 43 4D */	bl __dt__4cXyzFv
lbl_807DE800:
/* 807DE800  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE804  2C 00 00 AA */	cmpwi r0, 0xaa
/* 807DE808  40 82 0F 28 */	bne lbl_807DF730
/* 807DE80C  38 00 00 0A */	li r0, 0xa
/* 807DE810  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807DE814  38 00 00 00 */	li r0, 0
/* 807DE818  98 1C 06 80 */	stb r0, 0x680(r28)
/* 807DE81C  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DE820  C0 3E 04 7C */	lfs f1, 0x47c(r30)
/* 807DE824  C0 5E 04 80 */	lfs f2, 0x480(r30)
/* 807DE828  C0 7E 04 84 */	lfs f3, 0x484(r30)
/* 807DE82C  48 00 3C 9D */	bl set__4cXyzFfff
/* 807DE830  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DE834  C0 3E 04 88 */	lfs f1, 0x488(r30)
/* 807DE838  C0 5E 04 8C */	lfs f2, 0x48c(r30)
/* 807DE83C  C0 7E 04 90 */	lfs f3, 0x490(r30)
/* 807DE840  48 00 3C 89 */	bl set__4cXyzFfff
/* 807DE844  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DE848  C0 1F 16 A4 */	lfs f0, 0x16a4(r31)
/* 807DE84C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE850  48 00 3B 01 */	bl fabsf__3stdFf
/* 807DE854  D0 3F 16 EC */	stfs f1, 0x16ec(r31)
/* 807DE858  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DE85C  C0 1F 16 A8 */	lfs f0, 0x16a8(r31)
/* 807DE860  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE864  48 00 3A ED */	bl fabsf__3stdFf
/* 807DE868  D0 3F 16 F0 */	stfs f1, 0x16f0(r31)
/* 807DE86C  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DE870  C0 1F 16 AC */	lfs f0, 0x16ac(r31)
/* 807DE874  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE878  48 00 3A D9 */	bl fabsf__3stdFf
/* 807DE87C  D0 3F 16 F4 */	stfs f1, 0x16f4(r31)
/* 807DE880  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DE884  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DE888  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE88C  48 00 3A C5 */	bl fabsf__3stdFf
/* 807DE890  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DE894  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DE898  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DE89C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE8A0  48 00 3A B1 */	bl fabsf__3stdFf
/* 807DE8A4  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DE8A8  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DE8AC  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DE8B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE8B4  48 00 3A 9D */	bl fabsf__3stdFf
/* 807DE8B8  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DE8BC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DE8C0  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DE8C4  38 00 00 3F */	li r0, 0x3f
/* 807DE8C8  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DE8CC  38 00 00 00 */	li r0, 0
/* 807DE8D0  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
lbl_807DE8D4:
/* 807DE8D4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE8D8  2C 00 00 28 */	cmpwi r0, 0x28
/* 807DE8DC  40 82 00 28 */	bne lbl_807DE904
/* 807DE8E0  38 00 00 01 */	li r0, 1
/* 807DE8E4  98 1C 0F E4 */	stb r0, 0xfe4(r28)
/* 807DE8E8  48 00 3B 0D */	bl Z2GetAudioMgr__Fv
/* 807DE8EC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002F@ha */
/* 807DE8F0  38 84 00 2F */	addi r4, r4, 0x002F /* 0x0100002F@l */
/* 807DE8F4  38 A0 00 00 */	li r5, 0
/* 807DE8F8  38 C0 00 00 */	li r6, 0
/* 807DE8FC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DE900  4B AD 07 11 */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_807DE904:
/* 807DE904  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE908  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807DE90C  40 82 00 0C */	bne lbl_807DE918
/* 807DE910  38 00 00 04 */	li r0, 4
/* 807DE914  98 1C 06 D8 */	stb r0, 0x6d8(r28)
lbl_807DE918:
/* 807DE918  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE91C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807DE920  40 81 00 24 */	ble lbl_807DE944
/* 807DE924  7F E3 FB 78 */	mr r3, r31
/* 807DE928  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807DE92C  4B FF D7 59 */	bl cam_3d_morf__FP10e_wb_classf
/* 807DE930  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DE934  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807DE938  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DE93C  C0 7E 03 E0 */	lfs f3, 0x3e0(r30)
/* 807DE940  4B A9 10 FD */	bl cLib_addCalc2__FPffff
lbl_807DE944:
/* 807DE944  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE948  2C 00 00 6E */	cmpwi r0, 0x6e
/* 807DE94C  40 82 00 1C */	bne lbl_807DE968
/* 807DE950  48 00 3B 09 */	bl daPy_getPlayerActorClass__Fv
/* 807DE954  38 80 00 14 */	li r4, 0x14
/* 807DE958  38 A0 00 00 */	li r5, 0
/* 807DE95C  38 C0 00 00 */	li r6, 0
/* 807DE960  38 E0 00 00 */	li r7, 0
/* 807DE964  48 00 39 D1 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DE968:
/* 807DE968  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DE96C  2C 00 00 DC */	cmpwi r0, 0xdc
/* 807DE970  40 82 0D C0 */	bne lbl_807DF730
/* 807DE974  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DE978  C0 3E 04 94 */	lfs f1, 0x494(r30)
/* 807DE97C  C0 5E 04 98 */	lfs f2, 0x498(r30)
/* 807DE980  C0 7E 04 9C */	lfs f3, 0x49c(r30)
/* 807DE984  48 00 3B 45 */	bl set__4cXyzFfff
/* 807DE988  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DE98C  C0 3E 04 A0 */	lfs f1, 0x4a0(r30)
/* 807DE990  C0 5E 04 A4 */	lfs f2, 0x4a4(r30)
/* 807DE994  C0 7E 04 A8 */	lfs f3, 0x4a8(r30)
/* 807DE998  48 00 3B 31 */	bl set__4cXyzFfff
/* 807DE99C  38 7F 16 E0 */	addi r3, r31, 0x16e0
/* 807DE9A0  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 807DE9A4  C0 5E 04 98 */	lfs f2, 0x498(r30)
/* 807DE9A8  C0 7E 04 B0 */	lfs f3, 0x4b0(r30)
/* 807DE9AC  48 00 3B 1D */	bl set__4cXyzFfff
/* 807DE9B0  38 7F 16 D4 */	addi r3, r31, 0x16d4
/* 807DE9B4  C0 3E 04 A0 */	lfs f1, 0x4a0(r30)
/* 807DE9B8  C0 5E 04 A4 */	lfs f2, 0x4a4(r30)
/* 807DE9BC  C0 7E 04 A8 */	lfs f3, 0x4a8(r30)
/* 807DE9C0  48 00 3B 09 */	bl set__4cXyzFfff
/* 807DE9C4  C0 3F 16 D4 */	lfs f1, 0x16d4(r31)
/* 807DE9C8  C0 1F 16 A4 */	lfs f0, 0x16a4(r31)
/* 807DE9CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE9D0  48 00 39 81 */	bl fabsf__3stdFf
/* 807DE9D4  D0 3F 16 EC */	stfs f1, 0x16ec(r31)
/* 807DE9D8  C0 3F 16 D8 */	lfs f1, 0x16d8(r31)
/* 807DE9DC  C0 1F 16 A8 */	lfs f0, 0x16a8(r31)
/* 807DE9E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE9E4  48 00 39 6D */	bl fabsf__3stdFf
/* 807DE9E8  D0 3F 16 F0 */	stfs f1, 0x16f0(r31)
/* 807DE9EC  C0 3F 16 DC */	lfs f1, 0x16dc(r31)
/* 807DE9F0  C0 1F 16 AC */	lfs f0, 0x16ac(r31)
/* 807DE9F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DE9F8  48 00 39 59 */	bl fabsf__3stdFf
/* 807DE9FC  D0 3F 16 F4 */	stfs f1, 0x16f4(r31)
/* 807DEA00  C0 3F 16 E0 */	lfs f1, 0x16e0(r31)
/* 807DEA04  C0 1F 16 BC */	lfs f0, 0x16bc(r31)
/* 807DEA08  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DEA0C  48 00 39 45 */	bl fabsf__3stdFf
/* 807DEA10  D0 3F 16 F8 */	stfs f1, 0x16f8(r31)
/* 807DEA14  C0 3F 16 E4 */	lfs f1, 0x16e4(r31)
/* 807DEA18  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DEA1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DEA20  48 00 39 31 */	bl fabsf__3stdFf
/* 807DEA24  D0 3F 16 FC */	stfs f1, 0x16fc(r31)
/* 807DEA28  C0 3F 16 E8 */	lfs f1, 0x16e8(r31)
/* 807DEA2C  C0 1F 16 C4 */	lfs f0, 0x16c4(r31)
/* 807DEA30  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DEA34  48 00 39 1D */	bl fabsf__3stdFf
/* 807DEA38  D0 3F 17 00 */	stfs f1, 0x1700(r31)
/* 807DEA3C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DEA40  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DEA44  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807DEA48  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DEA4C  38 00 00 40 */	li r0, 0x40
/* 807DEA50  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DEA54  38 00 00 00 */	li r0, 0
/* 807DEA58  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DEA5C  48 00 39 FD */	bl daPy_getPlayerActorClass__Fv
/* 807DEA60  38 80 00 14 */	li r4, 0x14
/* 807DEA64  38 A0 00 00 */	li r5, 0
/* 807DEA68  38 C0 00 00 */	li r6, 0
/* 807DEA6C  38 E0 00 00 */	li r7, 0
/* 807DEA70  48 00 38 C5 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DEA74:
/* 807DEA74  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEA78  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807DEA7C  40 81 00 24 */	ble lbl_807DEAA0
/* 807DEA80  7F E3 FB 78 */	mr r3, r31
/* 807DEA84  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807DEA88  4B FF D5 FD */	bl cam_3d_morf__FP10e_wb_classf
/* 807DEA8C  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DEA90  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 807DEA94  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DEA98  C0 7E 03 E0 */	lfs f3, 0x3e0(r30)
/* 807DEA9C  4B A9 0F A1 */	bl cLib_addCalc2__FPffff
lbl_807DEAA0:
/* 807DEAA0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEAA4  2C 00 00 AA */	cmpwi r0, 0xaa
/* 807DEAA8  40 82 00 0C */	bne lbl_807DEAB4
/* 807DEAAC  38 00 00 00 */	li r0, 0
/* 807DEAB0  98 1F 17 20 */	stb r0, 0x1720(r31)
lbl_807DEAB4:
/* 807DEAB4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEAB8  2C 00 00 FA */	cmpwi r0, 0xfa
/* 807DEABC  40 82 0C 74 */	bne lbl_807DF730
/* 807DEAC0  38 61 00 90 */	addi r3, r1, 0x90
/* 807DEAC4  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DEAC8  48 00 38 95 */	bl __ct__4cXyzFRC4cXyz
/* 807DEACC  38 61 00 84 */	addi r3, r1, 0x84
/* 807DEAD0  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DEAD4  48 00 38 89 */	bl __ct__4cXyzFRC4cXyz
/* 807DEAD8  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DEADC  38 81 00 90 */	addi r4, r1, 0x90
/* 807DEAE0  38 A1 00 84 */	addi r5, r1, 0x84
/* 807DEAE4  4B 9A 21 35 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 807DEAE8  38 61 00 84 */	addi r3, r1, 0x84
/* 807DEAEC  38 80 FF FF */	li r4, -1
/* 807DEAF0  4B FF 40 59 */	bl __dt__4cXyzFv
/* 807DEAF4  38 61 00 90 */	addi r3, r1, 0x90
/* 807DEAF8  38 80 FF FF */	li r4, -1
/* 807DEAFC  4B FF 40 4D */	bl __dt__4cXyzFv
/* 807DEB00  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DEB04  4B 98 29 A9 */	bl Start__9dCamera_cFv
/* 807DEB08  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DEB0C  38 80 00 00 */	li r4, 0
/* 807DEB10  4B 98 44 FD */	bl SetTrimSize__9dCamera_cFl
/* 807DEB14  48 00 39 05 */	bl dComIfGp_event_reset__Fv
/* 807DEB18  48 00 39 41 */	bl daPy_getPlayerActorClass__Fv
/* 807DEB1C  48 00 38 E9 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DEB20  38 00 00 00 */	li r0, 0
/* 807DEB24  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DEB28  48 00 0C 08 */	b lbl_807DF730
lbl_807DEB2C:
/* 807DEB2C  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 807DEB30  48 00 39 B9 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DEB34  2C 03 00 00 */	cmpwi r3, 0
/* 807DEB38  40 82 00 5C */	bne lbl_807DEB94
/* 807DEB3C  7F 83 E3 78 */	mr r3, r28
/* 807DEB40  38 80 00 02 */	li r4, 2
/* 807DEB44  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DEB48  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DEB4C  38 C0 00 00 */	li r6, 0
/* 807DEB50  4B 83 CD B9 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DEB54  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 807DEB58  38 80 00 02 */	li r4, 2
/* 807DEB5C  48 00 39 7D */	bl onCondition__11dEvt_info_cFUs
/* 807DEB60  38 61 01 44 */	addi r3, r1, 0x144
/* 807DEB64  38 80 FF FF */	li r4, -1
/* 807DEB68  4B FF 3F E1 */	bl __dt__4cXyzFv
/* 807DEB6C  38 61 01 50 */	addi r3, r1, 0x150
/* 807DEB70  38 80 FF FF */	li r4, -1
/* 807DEB74  4B FF 3F D5 */	bl __dt__4cXyzFv
/* 807DEB78  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DEB7C  38 80 FF FF */	li r4, -1
/* 807DEB80  4B FF 3F C9 */	bl __dt__4cXyzFv
/* 807DEB84  38 61 01 68 */	addi r3, r1, 0x168
/* 807DEB88  38 80 FF FF */	li r4, -1
/* 807DEB8C  4B FF 3F BD */	bl __dt__4cXyzFv
/* 807DEB90  48 00 0F 0C */	b lbl_807DFA9C
lbl_807DEB94:
/* 807DEB94  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DEB98  4B 98 29 39 */	bl Stop__9dCamera_cFv
/* 807DEB9C  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DEBA0  38 80 00 03 */	li r4, 3
/* 807DEBA4  4B 98 44 69 */	bl SetTrimSize__9dCamera_cFl
/* 807DEBA8  38 00 00 47 */	li r0, 0x47
/* 807DEBAC  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DEBB0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DEBB4  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DEBB8  38 00 00 00 */	li r0, 0
/* 807DEBBC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DEBC0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DEBC4  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DEBC8  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DEBCC  C0 3E 04 B4 */	lfs f1, 0x4b4(r30)
/* 807DEBD0  C0 5E 04 B8 */	lfs f2, 0x4b8(r30)
/* 807DEBD4  C0 7E 04 BC */	lfs f3, 0x4bc(r30)
/* 807DEBD8  48 00 38 F1 */	bl set__4cXyzFfff
/* 807DEBDC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DEBE0  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 807DEBE4  C0 5E 04 C4 */	lfs f2, 0x4c4(r30)
/* 807DEBE8  C0 7E 04 C8 */	lfs f3, 0x4c8(r30)
/* 807DEBEC  48 00 38 DD */	bl set__4cXyzFfff
/* 807DEBF0  48 00 38 69 */	bl daPy_getPlayerActorClass__Fv
/* 807DEBF4  48 00 38 51 */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DEBF8  3C 60 80 7E */	lis r3, s_rddel_sub__FPvPv@ha /* 0x807DA798@ha */
/* 807DEBFC  38 63 A7 98 */	addi r3, r3, s_rddel_sub__FPvPv@l /* 0x807DA798@l */
/* 807DEC00  7F E4 FB 78 */	mr r4, r31
/* 807DEC04  48 00 3D 41 */	bl fpcM_Search__FPFPvPv_PvPv
/* 807DEC08  38 00 00 01 */	li r0, 1
/* 807DEC0C  98 1C 06 D8 */	stb r0, 0x6d8(r28)
lbl_807DEC10:
/* 807DEC10  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DEC14  C0 3E 04 CC */	lfs f1, 0x4cc(r30)
/* 807DEC18  C0 59 04 D4 */	lfs f2, 0x4d4(r25)
/* 807DEC1C  C0 7E 04 D0 */	lfs f3, 0x4d0(r30)
/* 807DEC20  48 00 38 A9 */	bl set__4cXyzFfff
/* 807DEC24  7F 23 CB 78 */	mr r3, r25
/* 807DEC28  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DEC2C  38 A0 00 00 */	li r5, 0
/* 807DEC30  38 C0 00 00 */	li r6, 0
/* 807DEC34  81 99 06 28 */	lwz r12, 0x628(r25)
/* 807DEC38  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807DEC3C  7D 89 03 A6 */	mtctr r12
/* 807DEC40  4E 80 04 21 */	bctrl 
/* 807DEC44  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEC48  2C 00 00 02 */	cmpwi r0, 2
/* 807DEC4C  40 82 00 10 */	bne lbl_807DEC5C
/* 807DEC50  38 60 00 6F */	li r3, 0x6f
/* 807DEC54  48 00 38 AD */	bl fopAcM_SearchByName__Fs
/* 807DEC58  48 3F 38 05 */	bl SetB_Close__14daObjCRVGATE_cFv
lbl_807DEC5C:
/* 807DEC5C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEC60  2C 00 00 19 */	cmpwi r0, 0x19
/* 807DEC64  40 82 00 1C */	bne lbl_807DEC80
/* 807DEC68  48 00 37 F1 */	bl daPy_getPlayerActorClass__Fv
/* 807DEC6C  38 80 00 19 */	li r4, 0x19
/* 807DEC70  38 A0 00 00 */	li r5, 0
/* 807DEC74  38 C0 00 00 */	li r6, 0
/* 807DEC78  38 E0 00 00 */	li r7, 0
/* 807DEC7C  48 00 36 B9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DEC80:
/* 807DEC80  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEC84  2C 00 00 49 */	cmpwi r0, 0x49
/* 807DEC88  40 82 0A A8 */	bne lbl_807DF730
/* 807DEC8C  38 61 00 78 */	addi r3, r1, 0x78
/* 807DEC90  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DEC94  48 00 36 C9 */	bl __ct__4cXyzFRC4cXyz
/* 807DEC98  38 61 00 6C */	addi r3, r1, 0x6c
/* 807DEC9C  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DECA0  48 00 36 BD */	bl __ct__4cXyzFRC4cXyz
/* 807DECA4  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DECA8  38 81 00 78 */	addi r4, r1, 0x78
/* 807DECAC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 807DECB0  4B 9A 1F 69 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 807DECB4  38 61 00 6C */	addi r3, r1, 0x6c
/* 807DECB8  38 80 FF FF */	li r4, -1
/* 807DECBC  4B FF 3E 8D */	bl __dt__4cXyzFv
/* 807DECC0  38 61 00 78 */	addi r3, r1, 0x78
/* 807DECC4  38 80 FF FF */	li r4, -1
/* 807DECC8  4B FF 3E 81 */	bl __dt__4cXyzFv
/* 807DECCC  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DECD0  4B 98 27 DD */	bl Start__9dCamera_cFv
/* 807DECD4  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DECD8  38 80 00 00 */	li r4, 0
/* 807DECDC  4B 98 43 31 */	bl SetTrimSize__9dCamera_cFl
/* 807DECE0  48 00 37 39 */	bl dComIfGp_event_reset__Fv
/* 807DECE4  48 00 37 75 */	bl daPy_getPlayerActorClass__Fv
/* 807DECE8  48 00 37 1D */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DECEC  38 00 00 00 */	li r0, 0
/* 807DECF0  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DECF4  48 00 0A 3C */	b lbl_807DF730
lbl_807DECF8:
/* 807DECF8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DECFC  48 00 37 ED */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DED00  2C 03 00 00 */	cmpwi r3, 0
/* 807DED04  40 82 00 5C */	bne lbl_807DED60
/* 807DED08  7F E3 FB 78 */	mr r3, r31
/* 807DED0C  38 80 00 02 */	li r4, 2
/* 807DED10  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DED14  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DED18  38 C0 00 00 */	li r6, 0
/* 807DED1C  4B 83 CB ED */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DED20  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DED24  38 80 00 02 */	li r4, 2
/* 807DED28  48 00 37 B1 */	bl onCondition__11dEvt_info_cFUs
/* 807DED2C  38 61 01 44 */	addi r3, r1, 0x144
/* 807DED30  38 80 FF FF */	li r4, -1
/* 807DED34  4B FF 3E 15 */	bl __dt__4cXyzFv
/* 807DED38  38 61 01 50 */	addi r3, r1, 0x150
/* 807DED3C  38 80 FF FF */	li r4, -1
/* 807DED40  4B FF 3E 09 */	bl __dt__4cXyzFv
/* 807DED44  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DED48  38 80 FF FF */	li r4, -1
/* 807DED4C  4B FF 3D FD */	bl __dt__4cXyzFv
/* 807DED50  38 61 01 68 */	addi r3, r1, 0x168
/* 807DED54  38 80 FF FF */	li r4, -1
/* 807DED58  4B FF 3D F1 */	bl __dt__4cXyzFv
/* 807DED5C  48 00 0D 40 */	b lbl_807DFA9C
lbl_807DED60:
/* 807DED60  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DED64  4B 98 27 6D */	bl Stop__9dCamera_cFv
/* 807DED68  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DED6C  38 80 00 03 */	li r4, 3
/* 807DED70  4B 98 42 9D */	bl SetTrimSize__9dCamera_cFl
/* 807DED74  38 00 00 51 */	li r0, 0x51
/* 807DED78  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DED7C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DED80  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DED84  38 00 00 00 */	li r0, 0
/* 807DED88  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DED8C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DED90  D0 3F 17 10 */	stfs f1, 0x1710(r31)
/* 807DED94  C0 1E 04 CC */	lfs f0, 0x4cc(r30)
/* 807DED98  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807DED9C  D0 3F 04 D8 */	stfs f1, 0x4d8(r31)
/* 807DEDA0  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DEDA4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 807DEDA8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807DEDAC  C0 7E 04 DC */	lfs f3, 0x4dc(r30)
/* 807DEDB0  48 00 37 19 */	bl set__4cXyzFfff
/* 807DEDB4  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DEDB8  C0 3E 04 E0 */	lfs f1, 0x4e0(r30)
/* 807DEDBC  C0 5E 04 E4 */	lfs f2, 0x4e4(r30)
/* 807DEDC0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 807DEDC4  48 00 37 05 */	bl set__4cXyzFfff
/* 807DEDC8  48 00 36 91 */	bl daPy_getPlayerActorClass__Fv
/* 807DEDCC  48 00 36 79 */	bl changeOriginalDemo__9daPy_py_cFv
lbl_807DEDD0:
/* 807DEDD0  38 00 80 00 */	li r0, -32768
/* 807DEDD4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807DEDD8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807DEDDC  38 00 00 00 */	li r0, 0
/* 807DEDE0  B0 1F 06 D2 */	sth r0, 0x6d2(r31)
/* 807DEDE4  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DEDE8  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 807DEDEC  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DEDF0  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DEDF4  4B A9 0C 49 */	bl cLib_addCalc2__FPffff
/* 807DEDF8  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DEDFC  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 807DEE00  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DEE04  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DEE08  4B A9 0C 35 */	bl cLib_addCalc2__FPffff
/* 807DEE0C  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DEE10  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 807DEE14  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DEE18  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DEE1C  4B A9 0C 21 */	bl cLib_addCalc2__FPffff
/* 807DEE20  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEE24  2C 00 00 14 */	cmpwi r0, 0x14
/* 807DEE28  40 81 00 7C */	ble lbl_807DEEA4
/* 807DEE2C  2C 00 00 34 */	cmpwi r0, 0x34
/* 807DEE30  41 80 00 48 */	blt lbl_807DEE78
/* 807DEE34  40 82 00 70 */	bne lbl_807DEEA4
/* 807DEE38  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DEE3C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DEE40  48 00 39 C9 */	bl __as__4cXyzFRC4cXyz
/* 807DEE44  C0 3F 16 A4 */	lfs f1, 0x16a4(r31)
/* 807DEE48  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807DEE4C  EC 01 00 2A */	fadds f0, f1, f0
/* 807DEE50  D0 1F 16 A4 */	stfs f0, 0x16a4(r31)
/* 807DEE54  C0 3F 16 A8 */	lfs f1, 0x16a8(r31)
/* 807DEE58  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807DEE5C  EC 01 00 2A */	fadds f0, f1, f0
/* 807DEE60  D0 1F 16 A8 */	stfs f0, 0x16a8(r31)
/* 807DEE64  C0 3F 16 AC */	lfs f1, 0x16ac(r31)
/* 807DEE68  C0 1E 04 E8 */	lfs f0, 0x4e8(r30)
/* 807DEE6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807DEE70  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
/* 807DEE74  48 00 00 30 */	b lbl_807DEEA4
lbl_807DEE78:
/* 807DEE78  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DEE7C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DEE80  48 00 39 89 */	bl __as__4cXyzFRC4cXyz
/* 807DEE84  C0 3F 16 A8 */	lfs f1, 0x16a8(r31)
/* 807DEE88  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807DEE8C  EC 01 00 2A */	fadds f0, f1, f0
/* 807DEE90  D0 1F 16 A8 */	stfs f0, 0x16a8(r31)
/* 807DEE94  C0 3F 16 AC */	lfs f1, 0x16ac(r31)
/* 807DEE98  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 807DEE9C  EC 01 00 2A */	fadds f0, f1, f0
/* 807DEEA0  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
lbl_807DEEA4:
/* 807DEEA4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DEEA8  2C 00 00 8C */	cmpwi r0, 0x8c
/* 807DEEAC  40 82 08 84 */	bne lbl_807DF730
/* 807DEEB0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 807DEEB4  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 807DEEB8  A0 63 00 B4 */	lhz r3, 0xb4(r3)
/* 807DEEBC  48 00 35 09 */	bl dComIfGs_onEventBit__FUs
/* 807DEEC0  38 00 00 01 */	li r0, 1
/* 807DEEC4  90 01 00 08 */	stw r0, 8(r1)
/* 807DEEC8  38 00 00 00 */	li r0, 0
/* 807DEECC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807DEED0  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DEED4  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DEED8  38 80 00 00 */	li r4, 0
/* 807DEEDC  38 A0 00 03 */	li r5, 3
/* 807DEEE0  38 C0 00 00 */	li r6, 0
/* 807DEEE4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DEEE8  38 E0 00 00 */	li r7, 0
/* 807DEEEC  39 00 00 01 */	li r8, 1
/* 807DEEF0  39 20 00 00 */	li r9, 0
/* 807DEEF4  39 40 00 00 */	li r10, 0
/* 807DEEF8  4B 84 E4 05 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 807DEEFC  48 00 08 34 */	b lbl_807DF730
lbl_807DEF00:
/* 807DEF00  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DEF04  48 00 35 E5 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 807DEF08  2C 03 00 00 */	cmpwi r3, 0
/* 807DEF0C  40 82 00 5C */	bne lbl_807DEF68
/* 807DEF10  7F E3 FB 78 */	mr r3, r31
/* 807DEF14  38 80 00 02 */	li r4, 2
/* 807DEF18  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807DEF1C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807DEF20  38 C0 00 00 */	li r6, 0
/* 807DEF24  4B 83 C9 E5 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807DEF28  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 807DEF2C  38 80 00 02 */	li r4, 2
/* 807DEF30  48 00 35 A9 */	bl onCondition__11dEvt_info_cFUs
/* 807DEF34  38 61 01 44 */	addi r3, r1, 0x144
/* 807DEF38  38 80 FF FF */	li r4, -1
/* 807DEF3C  4B FF 3C 0D */	bl __dt__4cXyzFv
/* 807DEF40  38 61 01 50 */	addi r3, r1, 0x150
/* 807DEF44  38 80 FF FF */	li r4, -1
/* 807DEF48  4B FF 3C 01 */	bl __dt__4cXyzFv
/* 807DEF4C  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DEF50  38 80 FF FF */	li r4, -1
/* 807DEF54  4B FF 3B F5 */	bl __dt__4cXyzFv
/* 807DEF58  38 61 01 68 */	addi r3, r1, 0x168
/* 807DEF5C  38 80 FF FF */	li r4, -1
/* 807DEF60  4B FF 3B E9 */	bl __dt__4cXyzFv
/* 807DEF64  48 00 0B 38 */	b lbl_807DFA9C
lbl_807DEF68:
/* 807DEF68  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DEF6C  4B 98 25 65 */	bl Stop__9dCamera_cFv
/* 807DEF70  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DEF74  38 80 00 03 */	li r4, 3
/* 807DEF78  4B 98 40 95 */	bl SetTrimSize__9dCamera_cFl
/* 807DEF7C  38 00 00 5B */	li r0, 0x5b
/* 807DEF80  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DEF84  38 00 00 00 */	li r0, 0
/* 807DEF88  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DEF8C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DEF90  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DEF94  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DEF98  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DEF9C  D0 1F 17 10 */	stfs f0, 0x1710(r31)
/* 807DEFA0  48 00 34 B9 */	bl daPy_getPlayerActorClass__Fv
/* 807DEFA4  48 00 34 A1 */	bl changeOriginalDemo__9daPy_py_cFv
/* 807DEFA8  7F 03 C3 78 */	mr r3, r24
/* 807DEFAC  48 00 39 B9 */	bl changeOriginalDemo__9daHorse_cFv
/* 807DEFB0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807DEFB4  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 807DEFB8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807DEFBC  C0 7E 04 F0 */	lfs f3, 0x4f0(r30)
/* 807DEFC0  48 00 35 09 */	bl set__4cXyzFfff
/* 807DEFC4  38 00 80 00 */	li r0, -32768
/* 807DEFC8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807DEFCC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807DEFD0  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DEFD4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DEFD8  48 00 38 31 */	bl __as__4cXyzFRC4cXyz
/* 807DEFDC  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 807DEFE0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807DEFE4  EC 01 00 2A */	fadds f0, f1, f0
/* 807DEFE8  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DEFEC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DEFF0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DEFF4  48 00 38 15 */	bl __as__4cXyzFRC4cXyz
/* 807DEFF8  C0 3F 16 A8 */	lfs f1, 0x16a8(r31)
/* 807DEFFC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807DF000  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF004  D0 1F 16 A8 */	stfs f0, 0x16a8(r31)
/* 807DF008  C0 3F 16 AC */	lfs f1, 0x16ac(r31)
/* 807DF00C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 807DF010  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF014  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
/* 807DF018  7F 03 C3 78 */	mr r3, r24
/* 807DF01C  38 80 00 01 */	li r4, 1
/* 807DF020  38 A0 00 00 */	li r5, 0
/* 807DF024  48 00 38 B1 */	bl changeDemoMode__9daHorse_cFUli
/* 807DF028  48 00 34 31 */	bl daPy_getPlayerActorClass__Fv
/* 807DF02C  38 80 00 01 */	li r4, 1
/* 807DF030  38 A0 00 00 */	li r5, 0
/* 807DF034  38 C0 00 00 */	li r6, 0
/* 807DF038  38 E0 00 00 */	li r7, 0
/* 807DF03C  48 00 32 F9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DF040:
/* 807DF040  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DF044  C0 3E 04 F4 */	lfs f1, 0x4f4(r30)
/* 807DF048  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 807DF04C  C0 7E 04 F8 */	lfs f3, 0x4f8(r30)
/* 807DF050  48 00 34 79 */	bl set__4cXyzFfff
/* 807DF054  7F 03 C3 78 */	mr r3, r24
/* 807DF058  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DF05C  38 A0 00 00 */	li r5, 0
/* 807DF060  48 00 38 81 */	bl setHorsePosAndAngle__9daHorse_cFPC4cXyzs
/* 807DF064  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DF068  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 807DF06C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF070  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DF074  4B A9 09 C9 */	bl cLib_addCalc2__FPffff
/* 807DF078  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DF07C  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 807DF080  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807DF084  EC 21 00 2A */	fadds f1, f1, f0
/* 807DF088  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF08C  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DF090  4B A9 09 AD */	bl cLib_addCalc2__FPffff
/* 807DF094  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DF098  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 807DF09C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF0A0  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DF0A4  4B A9 09 99 */	bl cLib_addCalc2__FPffff
/* 807DF0A8  C0 5F 16 AC */	lfs f2, 0x16ac(r31)
/* 807DF0AC  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 807DF0B0  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 807DF0B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 807DF0B8  EC 02 00 2A */	fadds f0, f2, f0
/* 807DF0BC  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
/* 807DF0C0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF0C4  2C 00 00 6F */	cmpwi r0, 0x6f
/* 807DF0C8  40 82 00 50 */	bne lbl_807DF118
/* 807DF0CC  38 00 00 5C */	li r0, 0x5c
/* 807DF0D0  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF0D4  38 00 00 00 */	li r0, 0
/* 807DF0D8  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DF0DC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DF0E0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DF0E4  48 00 37 25 */	bl __as__4cXyzFRC4cXyz
/* 807DF0E8  C0 3F 16 A4 */	lfs f1, 0x16a4(r31)
/* 807DF0EC  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 807DF0F0  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF0F4  D0 1F 16 A4 */	stfs f0, 0x16a4(r31)
/* 807DF0F8  C0 3F 16 A8 */	lfs f1, 0x16a8(r31)
/* 807DF0FC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807DF100  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF104  D0 1F 16 A8 */	stfs f0, 0x16a8(r31)
/* 807DF108  C0 3F 16 AC */	lfs f1, 0x16ac(r31)
/* 807DF10C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 807DF110  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF114  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
lbl_807DF118:
/* 807DF118  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807DF11C  D0 1F 17 1C */	stfs f0, 0x171c(r31)
/* 807DF120  48 00 33 39 */	bl daPy_getPlayerActorClass__Fv
/* 807DF124  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807DF128  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807DF12C  7D 89 03 A6 */	mtctr r12
/* 807DF130  4E 80 04 21 */	bctrl 
/* 807DF134  28 03 00 00 */	cmplwi r3, 0
/* 807DF138  40 82 05 F8 */	bne lbl_807DF730
/* 807DF13C  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DF140  4B 98 23 6D */	bl Start__9dCamera_cFv
/* 807DF144  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DF148  38 80 00 00 */	li r4, 0
/* 807DF14C  4B 98 3E C1 */	bl SetTrimSize__9dCamera_cFl
/* 807DF150  48 00 32 C9 */	bl dComIfGp_event_reset__Fv
/* 807DF154  48 00 33 05 */	bl daPy_getPlayerActorClass__Fv
/* 807DF158  48 00 32 AD */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DF15C  38 00 00 00 */	li r0, 0
/* 807DF160  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF164  48 00 05 CC */	b lbl_807DF730
lbl_807DF168:
/* 807DF168  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DF16C  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 807DF170  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF174  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DF178  4B A9 08 C5 */	bl cLib_addCalc2__FPffff
/* 807DF17C  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DF180  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807DF184  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807DF188  EC 21 00 2A */	fadds f1, f1, f0
/* 807DF18C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF190  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DF194  4B A9 08 A9 */	bl cLib_addCalc2__FPffff
/* 807DF198  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DF19C  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 807DF1A0  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF1A4  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 807DF1A8  4B A9 08 95 */	bl cLib_addCalc2__FPffff
/* 807DF1AC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF1B0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807DF1B4  40 82 05 7C */	bne lbl_807DF730
/* 807DF1B8  38 00 00 5D */	li r0, 0x5d
/* 807DF1BC  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF1C0  38 00 00 00 */	li r0, 0
/* 807DF1C4  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DF1C8  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DF1CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807DF1D0  48 00 36 39 */	bl __as__4cXyzFRC4cXyz
/* 807DF1D4  C0 3F 16 A4 */	lfs f1, 0x16a4(r31)
/* 807DF1D8  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807DF1DC  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF1E0  D0 1F 16 A4 */	stfs f0, 0x16a4(r31)
/* 807DF1E4  C0 3F 16 A8 */	lfs f1, 0x16a8(r31)
/* 807DF1E8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 807DF1EC  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF1F0  D0 1F 16 A8 */	stfs f0, 0x16a8(r31)
/* 807DF1F4  C0 3F 16 AC */	lfs f1, 0x16ac(r31)
/* 807DF1F8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807DF1FC  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF200  D0 1F 16 AC */	stfs f0, 0x16ac(r31)
/* 807DF204  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DF208  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807DF20C  48 00 35 FD */	bl __as__4cXyzFRC4cXyz
/* 807DF210  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807DF214  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807DF218  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF21C  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
lbl_807DF220:
/* 807DF220  28 1B 00 00 */	cmplwi r27, 0
/* 807DF224  41 82 05 0C */	beq lbl_807DF730
/* 807DF228  38 7F 17 10 */	addi r3, r31, 0x1710
/* 807DF22C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807DF230  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DF234  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DF238  4B A9 08 05 */	bl cLib_addCalc2__FPffff
/* 807DF23C  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DF240  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807DF244  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DF248  C0 7F 17 10 */	lfs f3, 0x1710(r31)
/* 807DF24C  4B A9 07 F1 */	bl cLib_addCalc2__FPffff
/* 807DF250  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DF254  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807DF258  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 807DF25C  EC 21 00 2A */	fadds f1, f1, f0
/* 807DF260  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DF264  C0 7F 17 10 */	lfs f3, 0x1710(r31)
/* 807DF268  4B A9 07 D5 */	bl cLib_addCalc2__FPffff
/* 807DF26C  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DF270  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807DF274  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 807DF278  C0 7F 17 10 */	lfs f3, 0x1710(r31)
/* 807DF27C  4B A9 07 C1 */	bl cLib_addCalc2__FPffff
/* 807DF280  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DF284  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807DF288  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 807DF28C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807DF290  C0 5E 01 08 */	lfs f2, 0x108(r30)
/* 807DF294  C0 7E 02 68 */	lfs f3, 0x268(r30)
/* 807DF298  4B A9 07 A5 */	bl cLib_addCalc2__FPffff
/* 807DF29C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF2A0  2C 00 00 28 */	cmpwi r0, 0x28
/* 807DF2A4  41 80 01 0C */	blt lbl_807DF3B0
/* 807DF2A8  40 82 00 10 */	bne lbl_807DF2B8
/* 807DF2AC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 807DF2B0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807DF2B4  48 00 35 55 */	bl __as__4cXyzFRC4cXyz
lbl_807DF2B8:
/* 807DF2B8  3A A0 00 00 */	li r21, 0
/* 807DF2BC  3B 00 00 00 */	li r24, 0
/* 807DF2C0  3B 40 00 00 */	li r26, 0
/* 807DF2C4  3C 60 80 7E */	lis r3, key_eno_8737@ha /* 0x807E323C@ha */
/* 807DF2C8  3A E3 32 3C */	addi r23, r3, key_eno_8737@l /* 0x807E323C@l */
lbl_807DF2CC:
/* 807DF2CC  3A DA 17 D0 */	addi r22, r26, 0x17d0
/* 807DF2D0  7C 7F B0 2E */	lwzx r3, r31, r22
/* 807DF2D4  7C 97 C2 2E */	lhzx r4, r23, r24
/* 807DF2D8  38 BF 05 C4 */	addi r5, r31, 0x5c4
/* 807DF2DC  38 C0 00 00 */	li r6, 0
/* 807DF2E0  38 E0 00 00 */	li r7, 0
/* 807DF2E4  48 00 34 59 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 807DF2E8  7C 7F B1 2E */	stwx r3, r31, r22
/* 807DF2EC  3A B5 00 01 */	addi r21, r21, 1
/* 807DF2F0  2C 15 00 02 */	cmpwi r21, 2
/* 807DF2F4  3B 18 00 02 */	addi r24, r24, 2
/* 807DF2F8  3B 5A 00 04 */	addi r26, r26, 4
/* 807DF2FC  41 80 FF D0 */	blt lbl_807DF2CC
/* 807DF300  38 61 00 60 */	addi r3, r1, 0x60
/* 807DF304  38 99 05 38 */	addi r4, r25, 0x538
/* 807DF308  38 BF 05 C4 */	addi r5, r31, 0x5c4
/* 807DF30C  4B A8 78 29 */	bl __mi__4cXyzCFRC3Vec
/* 807DF310  38 61 01 68 */	addi r3, r1, 0x168
/* 807DF314  38 81 00 60 */	addi r4, r1, 0x60
/* 807DF318  48 00 34 F1 */	bl __as__4cXyzFRC4cXyz
/* 807DF31C  38 61 00 60 */	addi r3, r1, 0x60
/* 807DF320  38 80 FF FF */	li r4, -1
/* 807DF324  4B FF 38 25 */	bl __dt__4cXyzFv
/* 807DF328  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 807DF32C  C0 41 01 70 */	lfs f2, 0x170(r1)
/* 807DF330  4B A8 83 45 */	bl cM_atan2s__Fff
/* 807DF334  7C 64 1B 78 */	mr r4, r3
/* 807DF338  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DF33C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DF340  80 63 00 00 */	lwz r3, 0(r3)
/* 807DF344  48 00 30 35 */	bl cMtx_YrotS__FPA4_fs
/* 807DF348  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 807DF34C  EC 20 00 32 */	fmuls f1, f0, f0
/* 807DF350  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 807DF354  EC 00 00 32 */	fmuls f0, f0, f0
/* 807DF358  EC 21 00 2A */	fadds f1, f1, f0
/* 807DF35C  48 00 33 C5 */	bl JMAFastSqrt__Ff
/* 807DF360  FC 40 08 90 */	fmr f2, f1
/* 807DF364  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 807DF368  4B A8 83 0D */	bl cM_atan2s__Fff
/* 807DF36C  7C 03 00 D0 */	neg r0, r3
/* 807DF370  7C 04 07 34 */	extsh r4, r0
/* 807DF374  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DF378  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DF37C  80 63 00 00 */	lwz r3, 0(r3)
/* 807DF380  48 00 33 81 */	bl cMtx_XrotM__FPA4_fs
/* 807DF384  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DF388  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DF38C  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DF390  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807DF394  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DF398  38 61 01 68 */	addi r3, r1, 0x168
/* 807DF39C  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DF3A0  4B A9 1B 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DF3A4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 807DF3A8  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DF3AC  48 00 34 79 */	bl __apl__4cXyzFRC3Vec
lbl_807DF3B0:
/* 807DF3B0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF3B4  2C 00 00 64 */	cmpwi r0, 0x64
/* 807DF3B8  40 82 03 78 */	bne lbl_807DF730
/* 807DF3BC  38 00 00 5E */	li r0, 0x5e
/* 807DF3C0  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF3C4  38 00 00 00 */	li r0, 0
/* 807DF3C8  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DF3CC  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DF3D0  C0 3E 05 04 */	lfs f1, 0x504(r30)
/* 807DF3D4  C0 5E 05 08 */	lfs f2, 0x508(r30)
/* 807DF3D8  C0 7E 05 0C */	lfs f3, 0x50c(r30)
/* 807DF3DC  48 00 30 ED */	bl set__4cXyzFfff
/* 807DF3E0  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DF3E4  C0 3E 05 10 */	lfs f1, 0x510(r30)
/* 807DF3E8  C0 5E 05 14 */	lfs f2, 0x514(r30)
/* 807DF3EC  C0 7E 05 18 */	lfs f3, 0x518(r30)
/* 807DF3F0  48 00 30 D9 */	bl set__4cXyzFfff
/* 807DF3F4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 807DF3F8  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DF3FC  48 00 34 0D */	bl __as__4cXyzFRC4cXyz
/* 807DF400  38 00 00 01 */	li r0, 1
/* 807DF404  98 1F 14 30 */	stb r0, 0x1430(r31)
/* 807DF408  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 807DF40C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807DF410  7F 63 DB 78 */	mr r3, r27
/* 807DF414  4B 83 A8 69 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807DF418  48 00 03 18 */	b lbl_807DF730
lbl_807DF41C:
/* 807DF41C  3A A0 00 00 */	li r21, 0
/* 807DF420  3B 00 00 00 */	li r24, 0
/* 807DF424  3B 40 00 00 */	li r26, 0
/* 807DF428  3C 60 80 7E */	lis r3, key_eno_8748@ha /* 0x807E3240@ha */
/* 807DF42C  3B 63 32 40 */	addi r27, r3, key_eno_8748@l /* 0x807E3240@l */
lbl_807DF430:
/* 807DF430  3A DA 17 D0 */	addi r22, r26, 0x17d0
/* 807DF434  7C 7F B0 2E */	lwzx r3, r31, r22
/* 807DF438  7C 9B C2 2E */	lhzx r4, r27, r24
/* 807DF43C  38 BF 05 C4 */	addi r5, r31, 0x5c4
/* 807DF440  38 C0 00 00 */	li r6, 0
/* 807DF444  38 E0 00 00 */	li r7, 0
/* 807DF448  48 00 32 F5 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 807DF44C  7C 7F B1 2E */	stwx r3, r31, r22
/* 807DF450  3A B5 00 01 */	addi r21, r21, 1
/* 807DF454  2C 15 00 02 */	cmpwi r21, 2
/* 807DF458  3B 18 00 02 */	addi r24, r24, 2
/* 807DF45C  3B 5A 00 04 */	addi r26, r26, 4
/* 807DF460  41 80 FF D0 */	blt lbl_807DF430
/* 807DF464  38 61 00 54 */	addi r3, r1, 0x54
/* 807DF468  38 99 05 38 */	addi r4, r25, 0x538
/* 807DF46C  38 BF 05 C4 */	addi r5, r31, 0x5c4
/* 807DF470  4B A8 76 C5 */	bl __mi__4cXyzCFRC3Vec
/* 807DF474  38 61 01 68 */	addi r3, r1, 0x168
/* 807DF478  38 81 00 54 */	addi r4, r1, 0x54
/* 807DF47C  48 00 33 8D */	bl __as__4cXyzFRC4cXyz
/* 807DF480  38 61 00 54 */	addi r3, r1, 0x54
/* 807DF484  38 80 FF FF */	li r4, -1
/* 807DF488  4B FF 36 C1 */	bl __dt__4cXyzFv
/* 807DF48C  38 61 01 68 */	addi r3, r1, 0x168
/* 807DF490  48 00 31 5D */	bl abs__4cXyzCFv
/* 807DF494  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807DF498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DF49C  40 80 00 3C */	bge lbl_807DF4D8
/* 807DF4A0  38 00 00 5F */	li r0, 0x5f
/* 807DF4A4  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF4A8  38 00 00 00 */	li r0, 0
/* 807DF4AC  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DF4B0  48 00 2F A9 */	bl daPy_getPlayerActorClass__Fv
/* 807DF4B4  38 80 00 3B */	li r4, 0x3b
/* 807DF4B8  38 A0 00 00 */	li r5, 0
/* 807DF4BC  38 C0 00 00 */	li r6, 0
/* 807DF4C0  38 E0 00 00 */	li r7, 0
/* 807DF4C4  48 00 2E 71 */	bl changeDemoMode__9daPy_py_cFUliis
/* 807DF4C8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 807DF4CC  38 99 05 38 */	addi r4, r25, 0x538
/* 807DF4D0  48 00 33 39 */	bl __as__4cXyzFRC4cXyz
/* 807DF4D4  48 00 00 8C */	b lbl_807DF560
lbl_807DF4D8:
/* 807DF4D8  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 807DF4DC  C0 41 01 70 */	lfs f2, 0x170(r1)
/* 807DF4E0  4B A8 81 95 */	bl cM_atan2s__Fff
/* 807DF4E4  7C 64 1B 78 */	mr r4, r3
/* 807DF4E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DF4EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DF4F0  80 63 00 00 */	lwz r3, 0(r3)
/* 807DF4F4  48 00 2E 85 */	bl cMtx_YrotS__FPA4_fs
/* 807DF4F8  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 807DF4FC  EC 20 00 32 */	fmuls f1, f0, f0
/* 807DF500  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 807DF504  EC 00 00 32 */	fmuls f0, f0, f0
/* 807DF508  EC 21 00 2A */	fadds f1, f1, f0
/* 807DF50C  48 00 32 15 */	bl JMAFastSqrt__Ff
/* 807DF510  FC 40 08 90 */	fmr f2, f1
/* 807DF514  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 807DF518  4B A8 81 5D */	bl cM_atan2s__Fff
/* 807DF51C  7C 03 00 D0 */	neg r0, r3
/* 807DF520  7C 04 07 34 */	extsh r4, r0
/* 807DF524  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807DF528  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807DF52C  80 63 00 00 */	lwz r3, 0(r3)
/* 807DF530  48 00 31 D1 */	bl cMtx_XrotM__FPA4_fs
/* 807DF534  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DF538  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 807DF53C  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 807DF540  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807DF544  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 807DF548  38 61 01 68 */	addi r3, r1, 0x168
/* 807DF54C  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DF550  4B A9 19 9D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807DF554  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 807DF558  38 81 01 5C */	addi r4, r1, 0x15c
/* 807DF55C  48 00 32 C9 */	bl __apl__4cXyzFRC3Vec
lbl_807DF560:
/* 807DF560  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DF564  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 807DF568  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF56C  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DF570  4B A9 04 CD */	bl cLib_addCalc2__FPffff
/* 807DF574  38 7F 16 C0 */	addi r3, r31, 0x16c0
/* 807DF578  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 807DF57C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF580  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DF584  4B A9 04 B9 */	bl cLib_addCalc2__FPffff
/* 807DF588  38 7F 16 C4 */	addi r3, r31, 0x16c4
/* 807DF58C  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 807DF590  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF594  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807DF598  4B A9 04 A5 */	bl cLib_addCalc2__FPffff
/* 807DF59C  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DF5A0  2C 00 00 5F */	cmpwi r0, 0x5f
/* 807DF5A4  40 82 01 8C */	bne lbl_807DF730
/* 807DF5A8  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF5AC  2C 00 00 32 */	cmpwi r0, 0x32
/* 807DF5B0  40 82 00 1C */	bne lbl_807DF5CC
/* 807DF5B4  48 00 2E A5 */	bl daPy_getPlayerActorClass__Fv
/* 807DF5B8  38 80 00 0B */	li r4, 0xb
/* 807DF5BC  38 A0 00 F3 */	li r5, 0xf3
/* 807DF5C0  38 C0 00 00 */	li r6, 0
/* 807DF5C4  38 E0 00 00 */	li r7, 0
/* 807DF5C8  48 00 2D 6D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807DF5CC:
/* 807DF5CC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF5D0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807DF5D4  41 80 00 18 */	blt lbl_807DF5EC
/* 807DF5D8  38 7F 17 14 */	addi r3, r31, 0x1714
/* 807DF5DC  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 807DF5E0  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 807DF5E4  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 807DF5E8  4B A9 04 55 */	bl cLib_addCalc2__FPffff
lbl_807DF5EC:
/* 807DF5EC  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF5F0  2C 00 00 78 */	cmpwi r0, 0x78
/* 807DF5F4  41 80 01 3C */	blt lbl_807DF730
/* 807DF5F8  48 00 2F C5 */	bl dMsgObject_isTalkNowCheck__Fv
/* 807DF5FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807DF600  40 82 01 30 */	bne lbl_807DF730
/* 807DF604  38 00 00 60 */	li r0, 0x60
/* 807DF608  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF60C  38 00 00 00 */	li r0, 0
/* 807DF610  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DF614  48 00 2E 45 */	bl daPy_getPlayerActorClass__Fv
/* 807DF618  38 80 00 01 */	li r4, 1
/* 807DF61C  38 A0 00 01 */	li r5, 1
/* 807DF620  38 C0 00 00 */	li r6, 0
/* 807DF624  38 E0 00 00 */	li r7, 0
/* 807DF628  48 00 2D 0D */	bl changeDemoMode__9daPy_py_cFUliis
/* 807DF62C  38 7F 16 BC */	addi r3, r31, 0x16bc
/* 807DF630  C0 3E 05 1C */	lfs f1, 0x51c(r30)
/* 807DF634  C0 5E 05 20 */	lfs f2, 0x520(r30)
/* 807DF638  C0 7E 05 24 */	lfs f3, 0x524(r30)
/* 807DF63C  48 00 2E 8D */	bl set__4cXyzFfff
/* 807DF640  38 7F 16 A4 */	addi r3, r31, 0x16a4
/* 807DF644  C0 3E 05 28 */	lfs f1, 0x528(r30)
/* 807DF648  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 807DF64C  C0 7E 05 30 */	lfs f3, 0x530(r30)
/* 807DF650  48 00 2E 79 */	bl set__4cXyzFfff
/* 807DF654  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807DF658  D0 1F 17 14 */	stfs f0, 0x1714(r31)
/* 807DF65C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807DF660  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807DF664  48 00 31 A5 */	bl __as__4cXyzFRC4cXyz
/* 807DF668  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807DF66C  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 807DF670  EC 01 00 2A */	fadds f0, f1, f0
/* 807DF674  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807DF678  48 00 00 B8 */	b lbl_807DF730
lbl_807DF67C:
/* 807DF67C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF680  2C 00 00 64 */	cmpwi r0, 0x64
/* 807DF684  41 80 00 1C */	blt lbl_807DF6A0
/* 807DF688  38 60 00 56 */	li r3, 0x56
/* 807DF68C  48 00 2E 75 */	bl fopAcM_SearchByName__Fs
/* 807DF690  7C 64 1B 78 */	mr r4, r3
/* 807DF694  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807DF698  38 84 05 38 */	addi r4, r4, 0x538
/* 807DF69C  48 00 31 6D */	bl __as__4cXyzFRC4cXyz
lbl_807DF6A0:
/* 807DF6A0  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF6A4  2C 00 00 DC */	cmpwi r0, 0xdc
/* 807DF6A8  41 80 00 88 */	blt lbl_807DF730
/* 807DF6AC  48 00 2F 11 */	bl dMsgObject_isTalkNowCheck__Fv
/* 807DF6B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807DF6B4  40 82 00 7C */	bne lbl_807DF730
/* 807DF6B8  38 00 00 61 */	li r0, 0x61
/* 807DF6BC  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF6C0  38 00 00 00 */	li r0, 0
/* 807DF6C4  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DF6C8  48 00 00 68 */	b lbl_807DF730
lbl_807DF6CC:
/* 807DF6CC  38 60 00 56 */	li r3, 0x56
/* 807DF6D0  48 00 2E 31 */	bl fopAcM_SearchByName__Fs
/* 807DF6D4  7C 64 1B 78 */	mr r4, r3
/* 807DF6D8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807DF6DC  38 84 05 38 */	addi r4, r4, 0x538
/* 807DF6E0  48 00 31 29 */	bl __as__4cXyzFRC4cXyz
/* 807DF6E4  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF6E8  2C 00 00 78 */	cmpwi r0, 0x78
/* 807DF6EC  40 82 00 44 */	bne lbl_807DF730
/* 807DF6F0  38 00 00 01 */	li r0, 1
/* 807DF6F4  90 01 00 08 */	stw r0, 8(r1)
/* 807DF6F8  38 00 00 00 */	li r0, 0
/* 807DF6FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807DF700  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DF704  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DF708  38 63 00 30 */	addi r3, r3, 0x30
/* 807DF70C  38 80 00 63 */	li r4, 0x63
/* 807DF710  38 A0 00 0D */	li r5, 0xd
/* 807DF714  38 C0 00 02 */	li r6, 2
/* 807DF718  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DF71C  38 E0 00 00 */	li r7, 0
/* 807DF720  39 00 00 01 */	li r8, 1
/* 807DF724  39 20 00 00 */	li r9, 0
/* 807DF728  39 40 00 00 */	li r10, 0
/* 807DF72C  4B 84 DB D1 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
lbl_807DF730:
/* 807DF730  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DF734  2C 00 00 00 */	cmpwi r0, 0
/* 807DF738  41 82 03 34 */	beq lbl_807DFA6C
/* 807DF73C  38 61 01 44 */	addi r3, r1, 0x144
/* 807DF740  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DF744  48 00 30 C5 */	bl __as__4cXyzFRC4cXyz
/* 807DF748  38 61 01 50 */	addi r3, r1, 0x150
/* 807DF74C  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DF750  48 00 30 B9 */	bl __as__4cXyzFRC4cXyz
/* 807DF754  3A A0 00 00 */	li r21, 0
/* 807DF758  C0 3F 17 1C */	lfs f1, 0x171c(r31)
/* 807DF75C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DF760  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DF764  40 81 00 64 */	ble lbl_807DF7C8
/* 807DF768  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF76C  1C 00 24 00 */	mulli r0, r0, 0x2400
/* 807DF770  7C 03 07 34 */	extsh r3, r0
/* 807DF774  48 00 03 91 */	bl cM_ssin__Fs
/* 807DF778  C0 1F 17 1C */	lfs f0, 0x171c(r31)
/* 807DF77C  EC 20 00 72 */	fmuls f1, f0, f1
/* 807DF780  C0 1F 16 C0 */	lfs f0, 0x16c0(r31)
/* 807DF784  EC 00 08 2A */	fadds f0, f0, f1
/* 807DF788  D0 1F 16 C0 */	stfs f0, 0x16c0(r31)
/* 807DF78C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF790  1C 00 21 00 */	mulli r0, r0, 0x2100
/* 807DF794  7C 03 07 34 */	extsh r3, r0
/* 807DF798  48 00 03 55 */	bl cM_scos__Fs
/* 807DF79C  C0 1F 17 1C */	lfs f0, 0x171c(r31)
/* 807DF7A0  EC 20 00 72 */	fmuls f1, f0, f1
/* 807DF7A4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 807DF7A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 807DF7AC  FC 00 00 1E */	fctiwz f0, f0
/* 807DF7B0  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 807DF7B4  82 A1 01 7C */	lwz r21, 0x17c(r1)
/* 807DF7B8  38 7F 17 1C */	addi r3, r31, 0x171c
/* 807DF7BC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807DF7C0  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 807DF7C4  4B A9 02 BD */	bl cLib_addCalc0__FPfff
lbl_807DF7C8:
/* 807DF7C8  38 61 00 48 */	addi r3, r1, 0x48
/* 807DF7CC  38 81 01 44 */	addi r4, r1, 0x144
/* 807DF7D0  48 00 2B 8D */	bl __ct__4cXyzFRC4cXyz
/* 807DF7D4  38 61 00 3C */	addi r3, r1, 0x3c
/* 807DF7D8  38 81 01 50 */	addi r4, r1, 0x150
/* 807DF7DC  48 00 2B 81 */	bl __ct__4cXyzFRC4cXyz
/* 807DF7E0  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DF7E4  38 81 00 48 */	addi r4, r1, 0x48
/* 807DF7E8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 807DF7EC  7E A6 AB 78 */	mr r6, r21
/* 807DF7F0  C0 3F 17 14 */	lfs f1, 0x1714(r31)
/* 807DF7F4  4B 9A 13 4D */	bl Set__9dCamera_cF4cXyz4cXyzsf
/* 807DF7F8  38 61 00 3C */	addi r3, r1, 0x3c
/* 807DF7FC  38 80 FF FF */	li r4, -1
/* 807DF800  4B FF 33 49 */	bl __dt__4cXyzFv
/* 807DF804  38 61 00 48 */	addi r3, r1, 0x48
/* 807DF808  38 80 FF FF */	li r4, -1
/* 807DF80C  4B FF 33 3D */	bl __dt__4cXyzFv
/* 807DF810  A8 7F 16 A0 */	lha r3, 0x16a0(r31)
/* 807DF814  38 03 00 01 */	addi r0, r3, 1
/* 807DF818  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
/* 807DF81C  A8 1F 16 A0 */	lha r0, 0x16a0(r31)
/* 807DF820  2C 00 27 10 */	cmpwi r0, 0x2710
/* 807DF824  40 81 00 0C */	ble lbl_807DF830
/* 807DF828  38 00 27 10 */	li r0, 0x2710
/* 807DF82C  B0 1F 16 A0 */	sth r0, 0x16a0(r31)
lbl_807DF830:
/* 807DF830  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DF834  2C 00 00 0A */	cmpwi r0, 0xa
/* 807DF838  41 80 00 14 */	blt lbl_807DF84C
/* 807DF83C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807DF840  41 80 02 2C */	blt lbl_807DFA6C
/* 807DF844  2C 00 00 3C */	cmpwi r0, 0x3c
/* 807DF848  40 80 02 24 */	bge lbl_807DFA6C
lbl_807DF84C:
/* 807DF84C  48 00 30 E9 */	bl dComIfGp_getEvent__Fv
/* 807DF850  48 00 02 89 */	bl checkSkipEdge__14dEvt_control_cFv
/* 807DF854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807DF858  41 82 02 14 */	beq lbl_807DFA6C
/* 807DF85C  38 00 00 28 */	li r0, 0x28
/* 807DF860  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807DF864  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 807DF868  48 00 2B 8D */	bl Z2GetAudioMgr__Fv
/* 807DF86C  38 80 00 00 */	li r4, 0
/* 807DF870  38 A0 00 00 */	li r5, 0
/* 807DF874  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DF878  4B AC FB 91 */	bl bgmStop__8Z2SeqMgrFUll
/* 807DF87C  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DF880  2C 00 00 0A */	cmpwi r0, 0xa
/* 807DF884  41 80 00 14 */	blt lbl_807DF898
/* 807DF888  38 60 00 00 */	li r3, 0
/* 807DF88C  4B 84 D0 F1 */	bl getLayerNo__14dComIfG_play_cFi
/* 807DF890  2C 03 00 04 */	cmpwi r3, 4
/* 807DF894  40 82 00 78 */	bne lbl_807DF90C
lbl_807DF898:
/* 807DF898  38 00 00 01 */	li r0, 1
/* 807DF89C  90 01 00 08 */	stw r0, 8(r1)
/* 807DF8A0  38 00 00 00 */	li r0, 0
/* 807DF8A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807DF8A8  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DF8AC  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DF8B0  38 63 00 28 */	addi r3, r3, 0x28
/* 807DF8B4  38 80 00 01 */	li r4, 1
/* 807DF8B8  38 A0 00 00 */	li r5, 0
/* 807DF8BC  38 C0 00 04 */	li r6, 4
/* 807DF8C0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DF8C4  38 E0 00 00 */	li r7, 0
/* 807DF8C8  39 00 00 01 */	li r8, 1
/* 807DF8CC  39 20 00 0D */	li r9, 0xd
/* 807DF8D0  39 40 00 00 */	li r10, 0
/* 807DF8D4  4B 84 DA 29 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 807DF8D8  48 00 2B 1D */	bl Z2GetAudioMgr__Fv
/* 807DF8DC  38 80 00 1E */	li r4, 0x1e
/* 807DF8E0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DF8E4  4B AD 05 F9 */	bl bgmStreamStop__8Z2SeqMgrFUl
/* 807DF8E8  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DF8EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 807DF8F0  40 80 00 10 */	bge lbl_807DF900
/* 807DF8F4  38 00 00 00 */	li r0, 0
/* 807DF8F8  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807DF8FC  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
lbl_807DF900:
/* 807DF900  38 00 03 E8 */	li r0, 0x3e8
/* 807DF904  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF908  48 00 01 64 */	b lbl_807DFA6C
lbl_807DF90C:
/* 807DF90C  A8 1F 16 9E */	lha r0, 0x169e(r31)
/* 807DF910  2C 00 00 32 */	cmpwi r0, 0x32
/* 807DF914  40 80 00 60 */	bge lbl_807DF974
/* 807DF918  38 00 00 01 */	li r0, 1
/* 807DF91C  90 01 00 08 */	stw r0, 8(r1)
/* 807DF920  38 00 00 00 */	li r0, 0
/* 807DF924  90 01 00 0C */	stw r0, 0xc(r1)
/* 807DF928  3C 60 80 7E */	lis r3, d_a_e_wb__stringBase0@ha /* 0x807E2F0C@ha */
/* 807DF92C  38 63 2F 0C */	addi r3, r3, d_a_e_wb__stringBase0@l /* 0x807E2F0C@l */
/* 807DF930  38 63 00 28 */	addi r3, r3, 0x28
/* 807DF934  38 80 00 00 */	li r4, 0
/* 807DF938  38 A0 00 00 */	li r5, 0
/* 807DF93C  38 C0 00 00 */	li r6, 0
/* 807DF940  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DF944  38 E0 00 00 */	li r7, 0
/* 807DF948  39 00 00 01 */	li r8, 1
/* 807DF94C  39 20 00 0D */	li r9, 0xd
/* 807DF950  39 40 00 00 */	li r10, 0
/* 807DF954  4B 84 D9 A9 */	bl dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 807DF958  48 00 2A 9D */	bl Z2GetAudioMgr__Fv
/* 807DF95C  38 80 00 1E */	li r4, 0x1e
/* 807DF960  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DF964  4B AD 05 79 */	bl bgmStreamStop__8Z2SeqMgrFUl
/* 807DF968  38 00 03 E8 */	li r0, 0x3e8
/* 807DF96C  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DF970  48 00 00 FC */	b lbl_807DFA6C
lbl_807DF974:
/* 807DF974  38 00 00 00 */	li r0, 0
/* 807DF978  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 807DF97C  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 807DF980  C0 3E 05 34 */	lfs f1, 0x534(r30)
/* 807DF984  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 807DF988  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 807DF98C  48 00 01 29 */	bl fadeIn__13mDoGph_gInf_cFfR8_GXColor
/* 807DF990  38 00 00 18 */	li r0, 0x18
/* 807DF994  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807DF998  7F E3 FB 78 */	mr r3, r31
/* 807DF99C  38 80 00 12 */	li r4, 0x12
/* 807DF9A0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807DF9A4  38 A0 00 02 */	li r5, 2
/* 807DF9A8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807DF9AC  4B FF 2B 9D */	bl anm_init__FP10e_wb_classifUcf
/* 807DF9B0  38 60 00 03 */	li r3, 3
/* 807DF9B4  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 807DF9B8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 807DF9BC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807DF9C0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 807DF9C4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807DF9C8  38 00 08 00 */	li r0, 0x800
/* 807DF9CC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807DF9D0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807DF9D4  38 00 00 07 */	li r0, 7
/* 807DF9D8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807DF9DC  38 00 00 00 */	li r0, 0
/* 807DF9E0  98 1C 0F CF */	stb r0, 0xfcf(r28)
/* 807DF9E4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807DF9E8  D0 1C 06 E0 */	stfs f0, 0x6e0(r28)
/* 807DF9EC  98 7C 06 D8 */	stb r3, 0x6d8(r28)
/* 807DF9F0  38 61 00 30 */	addi r3, r1, 0x30
/* 807DF9F4  38 9F 16 BC */	addi r4, r31, 0x16bc
/* 807DF9F8  48 00 29 65 */	bl __ct__4cXyzFRC4cXyz
/* 807DF9FC  38 61 00 24 */	addi r3, r1, 0x24
/* 807DFA00  38 9F 16 A4 */	addi r4, r31, 0x16a4
/* 807DFA04  48 00 29 59 */	bl __ct__4cXyzFRC4cXyz
/* 807DFA08  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DFA0C  38 81 00 30 */	addi r4, r1, 0x30
/* 807DFA10  38 A1 00 24 */	addi r5, r1, 0x24
/* 807DFA14  4B 9A 12 05 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 807DFA18  38 61 00 24 */	addi r3, r1, 0x24
/* 807DFA1C  38 80 FF FF */	li r4, -1
/* 807DFA20  4B FF 31 29 */	bl __dt__4cXyzFv
/* 807DFA24  38 61 00 30 */	addi r3, r1, 0x30
/* 807DFA28  38 80 FF FF */	li r4, -1
/* 807DFA2C  4B FF 31 1D */	bl __dt__4cXyzFv
/* 807DFA30  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DFA34  4B 98 1A 79 */	bl Start__9dCamera_cFv
/* 807DFA38  38 7D 02 48 */	addi r3, r29, 0x248
/* 807DFA3C  38 80 00 00 */	li r4, 0
/* 807DFA40  4B 98 35 CD */	bl SetTrimSize__9dCamera_cFl
/* 807DFA44  48 00 29 D5 */	bl dComIfGp_event_reset__Fv
/* 807DFA48  48 00 2A 11 */	bl daPy_getPlayerActorClass__Fv
/* 807DFA4C  48 00 29 B9 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807DFA50  38 00 00 00 */	li r0, 0
/* 807DFA54  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807DFA58  48 00 29 9D */	bl Z2GetAudioMgr__Fv
/* 807DFA5C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000097@ha */
/* 807DFA60  38 84 00 97 */	addi r4, r4, 0x0097 /* 0x01000097@l */
/* 807DFA64  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807DFA68  4B AC FA 35 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_807DFA6C:
/* 807DFA6C  38 61 01 44 */	addi r3, r1, 0x144
/* 807DFA70  38 80 FF FF */	li r4, -1
/* 807DFA74  4B FF 30 D5 */	bl __dt__4cXyzFv
/* 807DFA78  38 61 01 50 */	addi r3, r1, 0x150
/* 807DFA7C  38 80 FF FF */	li r4, -1
/* 807DFA80  4B FF 30 C9 */	bl __dt__4cXyzFv
/* 807DFA84  38 61 01 5C */	addi r3, r1, 0x15c
/* 807DFA88  38 80 FF FF */	li r4, -1
/* 807DFA8C  4B FF 30 BD */	bl __dt__4cXyzFv
/* 807DFA90  38 61 01 68 */	addi r3, r1, 0x168
/* 807DFA94  38 80 FF FF */	li r4, -1
/* 807DFA98  4B FF 30 B1 */	bl __dt__4cXyzFv
lbl_807DFA9C:
/* 807DFA9C  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 807DFAA0  4B B8 27 69 */	bl _restgpr_21
/* 807DFAA4  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 807DFAA8  7C 08 03 A6 */	mtlr r0
/* 807DFAAC  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 807DFAB0  4E 80 00 20 */	blr 
