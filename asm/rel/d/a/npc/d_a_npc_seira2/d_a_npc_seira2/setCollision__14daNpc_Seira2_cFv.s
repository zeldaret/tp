lbl_80AD23A8:
/* 80AD23A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD23AC  7C 08 02 A6 */	mflr r0
/* 80AD23B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD23B4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AD23B8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AD23BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD23C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD23C4  7C 7F 1B 78 */	mr r31, r3
/* 80AD23C8  3C 60 80 AD */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AD4B90@ha */
/* 80AD23CC  3B C3 4B 90 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80AD4B90@l */
/* 80AD23D0  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80AD23D4  28 00 00 00 */	cmplwi r0, 0
/* 80AD23D8  40 82 01 30 */	bne lbl_80AD2508
/* 80AD23DC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AD23E0  28 00 00 01 */	cmplwi r0, 1
/* 80AD23E4  40 82 00 24 */	bne lbl_80AD2408
/* 80AD23E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD23EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD23F0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AD23F4  28 00 00 00 */	cmplwi r0, 0
/* 80AD23F8  40 82 00 10 */	bne lbl_80AD2408
/* 80AD23FC  38 00 00 69 */	li r0, 0x69
/* 80AD2400  90 1F 0F B0 */	stw r0, 0xfb0(r31)
/* 80AD2404  48 00 00 0C */	b lbl_80AD2410
lbl_80AD2408:
/* 80AD2408  38 00 00 79 */	li r0, 0x79
/* 80AD240C  90 1F 0F B0 */	stw r0, 0xfb0(r31)
lbl_80AD2410:
/* 80AD2410  38 7E 07 64 */	addi r3, r30, 0x764
/* 80AD2414  38 9F 10 CC */	addi r4, r31, 0x10cc
/* 80AD2418  4B 88 FC 31 */	bl __ptmf_cmpr
/* 80AD241C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2420  41 82 00 2C */	beq lbl_80AD244C
/* 80AD2424  38 7E 07 70 */	addi r3, r30, 0x770
/* 80AD2428  38 9F 10 CC */	addi r4, r31, 0x10cc
/* 80AD242C  4B 88 FC 1D */	bl __ptmf_cmpr
/* 80AD2430  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2434  41 82 00 18 */	beq lbl_80AD244C
/* 80AD2438  38 7E 07 7C */	addi r3, r30, 0x77c
/* 80AD243C  38 9F 10 CC */	addi r4, r31, 0x10cc
/* 80AD2440  4B 88 FC 09 */	bl __ptmf_cmpr
/* 80AD2444  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2448  40 82 00 30 */	bne lbl_80AD2478
lbl_80AD244C:
/* 80AD244C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AD2450  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80AD2454  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AD2458  7D 89 03 A6 */	mtctr r12
/* 80AD245C  4E 80 04 21 */	bctrl 
/* 80AD2460  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AD2464  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80AD2468  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AD246C  7D 89 03 A6 */	mtctr r12
/* 80AD2470  4E 80 04 21 */	bctrl 
/* 80AD2474  48 00 00 BC */	b lbl_80AD2530
lbl_80AD2478:
/* 80AD2478  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AD247C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2480  41 82 00 14 */	beq lbl_80AD2494
/* 80AD2484  38 00 00 00 */	li r0, 0
/* 80AD2488  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 80AD248C  90 1F 0F 9C */	stw r0, 0xf9c(r31)
/* 80AD2490  48 00 00 24 */	b lbl_80AD24B4
lbl_80AD2494:
/* 80AD2494  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AD2498  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AD249C  90 1F 0F AC */	stw r0, 0xfac(r31)
/* 80AD24A0  38 00 00 1F */	li r0, 0x1f
/* 80AD24A4  90 1F 0F 9C */	stw r0, 0xf9c(r31)
/* 80AD24A8  80 1F 10 20 */	lwz r0, 0x1020(r31)
/* 80AD24AC  60 00 00 04 */	ori r0, r0, 4
/* 80AD24B0  90 1F 10 20 */	stw r0, 0x1020(r31)
lbl_80AD24B4:
/* 80AD24B4  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80AD24B8  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80AD24BC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AD24C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AD24C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AD24C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AD24CC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AD24D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AD24D4  38 7F 10 A8 */	addi r3, r31, 0x10a8
/* 80AD24D8  4B 79 CD 21 */	bl SetH__8cM3dGCylFf
/* 80AD24DC  38 7F 10 A8 */	addi r3, r31, 0x10a8
/* 80AD24E0  FC 20 F8 90 */	fmr f1, f31
/* 80AD24E4  4B 79 CD 1D */	bl SetR__8cM3dGCylFf
/* 80AD24E8  38 7F 10 A8 */	addi r3, r31, 0x10a8
/* 80AD24EC  38 81 00 08 */	addi r4, r1, 8
/* 80AD24F0  4B 79 CC ED */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AD24F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD24F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD24FC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AD2500  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80AD2504  4B 79 26 A5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AD2508:
/* 80AD2508  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AD250C  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80AD2510  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AD2514  7D 89 03 A6 */	mtctr r12
/* 80AD2518  4E 80 04 21 */	bctrl 
/* 80AD251C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AD2520  81 9F 0F C0 */	lwz r12, 0xfc0(r31)
/* 80AD2524  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AD2528  7D 89 03 A6 */	mtctr r12
/* 80AD252C  4E 80 04 21 */	bctrl 
lbl_80AD2530:
/* 80AD2530  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AD2534  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AD2538  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD253C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD2540  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD2544  7C 08 03 A6 */	mtlr r0
/* 80AD2548  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD254C  4E 80 00 20 */	blr 
