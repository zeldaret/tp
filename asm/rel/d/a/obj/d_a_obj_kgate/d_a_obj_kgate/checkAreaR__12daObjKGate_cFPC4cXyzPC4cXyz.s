lbl_805890D4:
/* 805890D4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805890D8  7C 08 02 A6 */	mflr r0
/* 805890DC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805890E0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805890E4  4B DD 90 F4 */	b _savegpr_28
/* 805890E8  7C 7D 1B 78 */	mr r29, r3
/* 805890EC  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha
/* 805890F0  3B E3 AB 30 */	addi r31, r3, l_gateBmdIdx@l
/* 805890F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805890F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805890FC  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80589100  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 80589104  28 00 00 02 */	cmplwi r0, 2
/* 80589108  40 82 02 08 */	bne lbl_80589310
/* 8058910C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80589110  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80589114  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80589118  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8058911C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80589120  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80589124  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80589128  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8058912C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80589130  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80589134  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80589138  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8058913C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80589140  3C 60 80 59 */	lis r3, search_coach__FPvPv@ha
/* 80589144  38 63 80 78 */	addi r3, r3, search_coach__FPvPv@l
/* 80589148  7F A4 EB 78 */	mr r4, r29
/* 8058914C  4B A9 06 AC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80589150  7C 7C 1B 79 */	or. r28, r3, r3
/* 80589154  41 82 00 CC */	beq lbl_80589220
/* 80589158  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8058915C  4B A8 3C 08 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80589160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80589168  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8058916C  4B A8 32 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80589170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80589178  38 81 00 2C */	addi r4, r1, 0x2c
/* 8058917C  7C 85 23 78 */	mr r5, r4
/* 80589180  4B DB DB EC */	b PSMTXMultVec
/* 80589184  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80589188  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8058918C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80589190  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80589194  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80589198  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8058919C  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 805891A0  38 63 00 24 */	addi r3, r3, 0x24
/* 805891A4  38 81 00 74 */	addi r4, r1, 0x74
/* 805891A8  4B DB D4 08 */	b PSMTXInverse
/* 805891AC  38 61 00 74 */	addi r3, r1, 0x74
/* 805891B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805891B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805891B8  4B DB D2 F8 */	b PSMTXCopy
/* 805891BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805891C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805891C4  38 81 00 38 */	addi r4, r1, 0x38
/* 805891C8  7C 85 23 78 */	mr r5, r4
/* 805891CC  4B DB DB A0 */	b PSMTXMultVec
/* 805891D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805891D4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 805891D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805891DC  4C 40 13 82 */	cror 2, 0, 2
/* 805891E0  40 82 00 40 */	bne lbl_80589220
/* 805891E4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805891E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805891EC  4C 40 13 82 */	cror 2, 0, 2
/* 805891F0  40 82 00 30 */	bne lbl_80589220
/* 805891F4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805891F8  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 805891FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80589200  4C 40 13 82 */	cror 2, 0, 2
/* 80589204  40 82 00 1C */	bne lbl_80589220
/* 80589208  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8058920C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80589210  4C 40 13 82 */	cror 2, 0, 2
/* 80589214  40 82 00 0C */	bne lbl_80589220
/* 80589218  38 60 00 02 */	li r3, 2
/* 8058921C  48 00 02 70 */	b lbl_8058948C
lbl_80589220:
/* 80589220  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80589224  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80589228  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8058922C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80589230  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80589234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80589238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058923C  83 83 5D B8 */	lwz r28, 0x5db8(r3)
/* 80589240  28 1C 00 00 */	cmplwi r28, 0
/* 80589244  41 82 00 CC */	beq lbl_80589310
/* 80589248  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8058924C  4B A8 3B 18 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80589250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80589258  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8058925C  4B A8 31 D8 */	b mDoMtx_YrotM__FPA4_fs
/* 80589260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80589268  38 81 00 2C */	addi r4, r1, 0x2c
/* 8058926C  7C 85 23 78 */	mr r5, r4
/* 80589270  4B DB DA FC */	b PSMTXMultVec
/* 80589274  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80589278  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8058927C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80589280  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80589284  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80589288  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8058928C  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80589290  38 63 00 24 */	addi r3, r3, 0x24
/* 80589294  38 81 00 74 */	addi r4, r1, 0x74
/* 80589298  4B DB D3 18 */	b PSMTXInverse
/* 8058929C  38 61 00 74 */	addi r3, r1, 0x74
/* 805892A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805892A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805892A8  4B DB D2 08 */	b PSMTXCopy
/* 805892AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805892B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805892B4  38 81 00 38 */	addi r4, r1, 0x38
/* 805892B8  7C 85 23 78 */	mr r5, r4
/* 805892BC  4B DB DA B0 */	b PSMTXMultVec
/* 805892C0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805892C4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 805892C8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805892CC  4C 40 13 82 */	cror 2, 0, 2
/* 805892D0  40 82 00 40 */	bne lbl_80589310
/* 805892D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805892D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805892DC  4C 40 13 82 */	cror 2, 0, 2
/* 805892E0  40 82 00 30 */	bne lbl_80589310
/* 805892E4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805892E8  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 805892EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805892F0  4C 40 13 82 */	cror 2, 0, 2
/* 805892F4  40 82 00 1C */	bne lbl_80589310
/* 805892F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805892FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80589300  4C 40 13 82 */	cror 2, 0, 2
/* 80589304  40 82 00 0C */	bne lbl_80589310
/* 80589308  38 60 00 03 */	li r3, 3
/* 8058930C  48 00 01 80 */	b lbl_8058948C
lbl_80589310:
/* 80589310  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 80589314  28 00 00 00 */	cmplwi r0, 0
/* 80589318  41 82 00 0C */	beq lbl_80589324
/* 8058931C  28 00 00 01 */	cmplwi r0, 1
/* 80589320  40 82 00 30 */	bne lbl_80589350
lbl_80589324:
/* 80589324  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80589328  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8058932C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80589330  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80589334  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80589338  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8058933C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80589340  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80589344  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80589348  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8058934C  48 00 00 2C */	b lbl_80589378
lbl_80589350:
/* 80589350  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80589354  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80589358  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8058935C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80589360  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80589364  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80589368  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8058936C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80589370  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80589374  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80589378:
/* 80589378  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8058937C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80589380  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80589384  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80589388  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8058938C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80589390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80589394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80589398  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8058939C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805893A0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805893A4  41 82 00 1C */	beq lbl_805893C0
/* 805893A8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805893AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805893B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805893B4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 805893B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805893BC  48 00 00 14 */	b lbl_805893D0
lbl_805893C0:
/* 805893C0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805893C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805893C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805893CC  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_805893D0:
/* 805893D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805893D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805893D8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 805893DC  4B A8 30 00 */	b mDoMtx_YrotS__FPA4_fs
/* 805893E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805893E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805893E8  38 81 00 08 */	addi r4, r1, 8
/* 805893EC  7C 85 23 78 */	mr r5, r4
/* 805893F0  4B DB D9 7C */	b PSMTXMultVec
/* 805893F4  38 61 00 38 */	addi r3, r1, 0x38
/* 805893F8  38 81 00 08 */	addi r4, r1, 8
/* 805893FC  7C 65 1B 78 */	mr r5, r3
/* 80589400  4B DB DC 90 */	b PSVECAdd
/* 80589404  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80589408  38 63 00 24 */	addi r3, r3, 0x24
/* 8058940C  38 81 00 44 */	addi r4, r1, 0x44
/* 80589410  4B DB D1 A0 */	b PSMTXInverse
/* 80589414  38 61 00 44 */	addi r3, r1, 0x44
/* 80589418  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8058941C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80589420  4B DB D0 90 */	b PSMTXCopy
/* 80589424  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80589428  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058942C  38 81 00 38 */	addi r4, r1, 0x38
/* 80589430  7C 85 23 78 */	mr r5, r4
/* 80589434  4B DB D9 38 */	b PSMTXMultVec
/* 80589438  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8058943C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80589440  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80589444  4C 40 13 82 */	cror 2, 0, 2
/* 80589448  40 82 00 40 */	bne lbl_80589488
/* 8058944C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80589450  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80589454  4C 40 13 82 */	cror 2, 0, 2
/* 80589458  40 82 00 30 */	bne lbl_80589488
/* 8058945C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80589460  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80589464  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80589468  4C 40 13 82 */	cror 2, 0, 2
/* 8058946C  40 82 00 1C */	bne lbl_80589488
/* 80589470  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80589474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80589478  4C 40 13 82 */	cror 2, 0, 2
/* 8058947C  40 82 00 0C */	bne lbl_80589488
/* 80589480  38 60 00 01 */	li r3, 1
/* 80589484  48 00 00 08 */	b lbl_8058948C
lbl_80589488:
/* 80589488  38 60 00 00 */	li r3, 0
lbl_8058948C:
/* 8058948C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80589490  4B DD 8D 94 */	b _restgpr_28
/* 80589494  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80589498  7C 08 03 A6 */	mtlr r0
/* 8058949C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 805894A0  4E 80 00 20 */	blr 
