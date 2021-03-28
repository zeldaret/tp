lbl_8025E240:
/* 8025E240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E244  7C 08 02 A6 */	mflr r0
/* 8025E248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E24C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025E250  7C 7F 1B 78 */	mr r31, r3
/* 8025E254  38 60 01 18 */	li r3, 0x118
/* 8025E258  48 07 09 F5 */	bl __nw__FUl
/* 8025E25C  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E260  41 82 00 0C */	beq lbl_8025E26C
/* 8025E264  48 09 A2 35 */	bl __ct__9J2DScreenFv
/* 8025E268  7C 60 1B 78 */	mr r0, r3
lbl_8025E26C:
/* 8025E26C  90 1F 00 04 */	stw r0, 4(r31)
/* 8025E270  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E274  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha
/* 8025E278  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l
/* 8025E27C  38 84 00 46 */	addi r4, r4, 0x46
/* 8025E280  3C A0 00 02 */	lis r5, 2
/* 8025E284  80 DF 00 7C */	lwz r6, 0x7c(r31)
/* 8025E288  48 09 A3 C1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8025E28C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E290  4B FF 6E 59 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8025E294  38 00 00 00 */	li r0, 0
/* 8025E298  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8025E29C  38 60 00 6C */	li r3, 0x6c
/* 8025E2A0  48 07 09 AD */	bl __nw__FUl
/* 8025E2A4  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E2A8  41 82 00 24 */	beq lbl_8025E2CC
/* 8025E2AC  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E2B0  3C A0 6F 77 */	lis r5, 0x6F77 /* 0x6F775F6E@ha */
/* 8025E2B4  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6F775F6E@l */
/* 8025E2B8  38 A0 00 63 */	li r5, 0x63
/* 8025E2BC  38 E0 00 02 */	li r7, 2
/* 8025E2C0  39 00 00 00 */	li r8, 0
/* 8025E2C4  4B FF 56 C1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E2C8  7C 60 1B 78 */	mr r0, r3
lbl_8025E2CC:
/* 8025E2CC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8025E2D0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8025E2D4  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E2D8  4B FF 74 F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025E2DC  38 60 00 6C */	li r3, 0x6c
/* 8025E2E0  48 07 09 6D */	bl __nw__FUl
/* 8025E2E4  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E2E8  41 82 00 24 */	beq lbl_8025E30C
/* 8025E2EC  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E2F0  3C A0 6D 65 */	lis r5, 0x6D65 /* 0x6D655F6E@ha */
/* 8025E2F4  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6D655F6E@l */
/* 8025E2F8  38 A0 74 69 */	li r5, 0x7469
/* 8025E2FC  38 E0 00 02 */	li r7, 2
/* 8025E300  39 00 00 00 */	li r8, 0
/* 8025E304  4B FF 56 81 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E308  7C 60 1B 78 */	mr r0, r3
lbl_8025E30C:
/* 8025E30C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8025E310  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8025E314  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E318  4B FF 74 B9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025E31C  38 60 00 6C */	li r3, 0x6c
/* 8025E320  48 07 09 2D */	bl __nw__FUl
/* 8025E324  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E328  41 82 00 28 */	beq lbl_8025E350
/* 8025E32C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E330  3C A0 5F 69 */	lis r5, 0x5F69 /* 0x5F695F6E@ha */
/* 8025E334  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F695F6E@l */
/* 8025E338  3C A0 00 63 */	lis r5, 0x0063 /* 0x00636F77@ha */
/* 8025E33C  38 A5 6F 77 */	addi r5, r5, 0x6F77 /* 0x00636F77@l */
/* 8025E340  38 E0 00 02 */	li r7, 2
/* 8025E344  39 00 00 00 */	li r8, 0
/* 8025E348  4B FF 56 3D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E34C  7C 60 1B 78 */	mr r0, r3
lbl_8025E350:
/* 8025E350  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8025E354  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8025E358  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E35C  4B FF 74 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025E360  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E364  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F32@ha */
/* 8025E368  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x5F6E5F32@l */
/* 8025E36C  38 A0 00 63 */	li r5, 0x63
/* 8025E370  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E374  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E378  7D 89 03 A6 */	mtctr r12
/* 8025E37C  4E 80 04 21 */	bctrl 
/* 8025E380  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 8025E384  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E388  3C 80 5F 32 */	lis r4, 0x5F32 /* 0x5F325F73@ha */
/* 8025E38C  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F325F73@l */
/* 8025E390  3C 80 00 63 */	lis r4, 0x0063 /* 0x00635F6E@ha */
/* 8025E394  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00635F6E@l */
/* 8025E398  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E39C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E3A0  7D 89 03 A6 */	mtctr r12
/* 8025E3A4  4E 80 04 21 */	bctrl 
/* 8025E3A8  90 7F 00 60 */	stw r3, 0x60(r31)
/* 8025E3AC  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E3B0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F31@ha */
/* 8025E3B4  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x5F6E5F31@l */
/* 8025E3B8  38 A0 00 63 */	li r5, 0x63
/* 8025E3BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E3C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E3C4  7D 89 03 A6 */	mtctr r12
/* 8025E3C8  4E 80 04 21 */	bctrl 
/* 8025E3CC  90 7F 00 64 */	stw r3, 0x64(r31)
/* 8025E3D0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E3D4  3C 80 5F 31 */	lis r4, 0x5F31 /* 0x5F315F73@ha */
/* 8025E3D8  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F315F73@l */
/* 8025E3DC  3C 80 00 63 */	lis r4, 0x0063 /* 0x00635F6E@ha */
/* 8025E3E0  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00635F6E@l */
/* 8025E3E4  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E3E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E3EC  7D 89 03 A6 */	mtctr r12
/* 8025E3F0  4E 80 04 21 */	bctrl 
/* 8025E3F4  90 7F 00 68 */	stw r3, 0x68(r31)
/* 8025E3F8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E3FC  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F34@ha */
/* 8025E400  38 C4 5F 34 */	addi r6, r4, 0x5F34 /* 0x5F6E5F34@l */
/* 8025E404  38 A0 00 63 */	li r5, 0x63
/* 8025E408  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E40C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E410  7D 89 03 A6 */	mtctr r12
/* 8025E414  4E 80 04 21 */	bctrl 
/* 8025E418  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 8025E41C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E420  3C 80 5F 34 */	lis r4, 0x5F34 /* 0x5F345F73@ha */
/* 8025E424  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F345F73@l */
/* 8025E428  3C 80 00 63 */	lis r4, 0x0063 /* 0x00635F6E@ha */
/* 8025E42C  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00635F6E@l */
/* 8025E430  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E434  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E438  7D 89 03 A6 */	mtctr r12
/* 8025E43C  4E 80 04 21 */	bctrl 
/* 8025E440  90 7F 00 70 */	stw r3, 0x70(r31)
/* 8025E444  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E448  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F33@ha */
/* 8025E44C  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x5F6E5F33@l */
/* 8025E450  38 A0 00 63 */	li r5, 0x63
/* 8025E454  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E458  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E45C  7D 89 03 A6 */	mtctr r12
/* 8025E460  4E 80 04 21 */	bctrl 
/* 8025E464  90 7F 00 74 */	stw r3, 0x74(r31)
/* 8025E468  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E46C  3C 80 5F 33 */	lis r4, 0x5F33 /* 0x5F335F73@ha */
/* 8025E470  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F335F73@l */
/* 8025E474  3C 80 00 63 */	lis r4, 0x0063 /* 0x00635F6E@ha */
/* 8025E478  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00635F6E@l */
/* 8025E47C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E480  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E484  7D 89 03 A6 */	mtctr r12
/* 8025E488  4E 80 04 21 */	bctrl 
/* 8025E48C  90 7F 00 78 */	stw r3, 0x78(r31)
/* 8025E490  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E494  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F36@ha */
/* 8025E498  38 C4 5F 36 */	addi r6, r4, 0x5F36 /* 0x5F6E5F36@l */
/* 8025E49C  38 A0 00 74 */	li r5, 0x74
/* 8025E4A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E4A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E4A8  7D 89 03 A6 */	mtctr r12
/* 8025E4AC  4E 80 04 21 */	bctrl 
/* 8025E4B0  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8025E4B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E4B8  3C 80 5F 36 */	lis r4, 0x5F36 /* 0x5F365F73@ha */
/* 8025E4BC  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F365F73@l */
/* 8025E4C0  3C 80 00 74 */	lis r4, 0x0074 /* 0x00745F6E@ha */
/* 8025E4C4  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00745F6E@l */
/* 8025E4C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E4CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E4D0  7D 89 03 A6 */	mtctr r12
/* 8025E4D4  4E 80 04 21 */	bctrl 
/* 8025E4D8  90 7F 00 30 */	stw r3, 0x30(r31)
/* 8025E4DC  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E4E0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F35@ha */
/* 8025E4E4  38 C4 5F 35 */	addi r6, r4, 0x5F35 /* 0x5F6E5F35@l */
/* 8025E4E8  38 A0 00 74 */	li r5, 0x74
/* 8025E4EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E4F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E4F4  7D 89 03 A6 */	mtctr r12
/* 8025E4F8  4E 80 04 21 */	bctrl 
/* 8025E4FC  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8025E500  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E504  3C 80 5F 35 */	lis r4, 0x5F35 /* 0x5F355F73@ha */
/* 8025E508  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F355F73@l */
/* 8025E50C  3C 80 00 74 */	lis r4, 0x0074 /* 0x00745F6E@ha */
/* 8025E510  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00745F6E@l */
/* 8025E514  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E518  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E51C  7D 89 03 A6 */	mtctr r12
/* 8025E520  4E 80 04 21 */	bctrl 
/* 8025E524  90 7F 00 38 */	stw r3, 0x38(r31)
/* 8025E528  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E52C  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F34@ha */
/* 8025E530  38 C4 5F 34 */	addi r6, r4, 0x5F34 /* 0x5F6E5F34@l */
/* 8025E534  38 A0 00 74 */	li r5, 0x74
/* 8025E538  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E53C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E540  7D 89 03 A6 */	mtctr r12
/* 8025E544  4E 80 04 21 */	bctrl 
/* 8025E548  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8025E54C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E550  3C 80 5F 34 */	lis r4, 0x5F34 /* 0x5F345F73@ha */
/* 8025E554  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F345F73@l */
/* 8025E558  3C 80 00 74 */	lis r4, 0x0074 /* 0x00745F6E@ha */
/* 8025E55C  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00745F6E@l */
/* 8025E560  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E564  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E568  7D 89 03 A6 */	mtctr r12
/* 8025E56C  4E 80 04 21 */	bctrl 
/* 8025E570  90 7F 00 40 */	stw r3, 0x40(r31)
/* 8025E574  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E578  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F33@ha */
/* 8025E57C  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x5F6E5F33@l */
/* 8025E580  38 A0 00 74 */	li r5, 0x74
/* 8025E584  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E588  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E58C  7D 89 03 A6 */	mtctr r12
/* 8025E590  4E 80 04 21 */	bctrl 
/* 8025E594  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8025E598  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E59C  3C 80 5F 33 */	lis r4, 0x5F33 /* 0x5F335F73@ha */
/* 8025E5A0  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F335F73@l */
/* 8025E5A4  3C 80 00 74 */	lis r4, 0x0074 /* 0x00745F6E@ha */
/* 8025E5A8  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00745F6E@l */
/* 8025E5AC  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E5B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E5B4  7D 89 03 A6 */	mtctr r12
/* 8025E5B8  4E 80 04 21 */	bctrl 
/* 8025E5BC  90 7F 00 48 */	stw r3, 0x48(r31)
/* 8025E5C0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E5C4  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F32@ha */
/* 8025E5C8  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x5F6E5F32@l */
/* 8025E5CC  38 A0 00 74 */	li r5, 0x74
/* 8025E5D0  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E5D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E5D8  7D 89 03 A6 */	mtctr r12
/* 8025E5DC  4E 80 04 21 */	bctrl 
/* 8025E5E0  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8025E5E4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E5E8  3C 80 5F 32 */	lis r4, 0x5F32 /* 0x5F325F73@ha */
/* 8025E5EC  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F325F73@l */
/* 8025E5F0  3C 80 00 74 */	lis r4, 0x0074 /* 0x00745F6E@ha */
/* 8025E5F4  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00745F6E@l */
/* 8025E5F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E5FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E600  7D 89 03 A6 */	mtctr r12
/* 8025E604  4E 80 04 21 */	bctrl 
/* 8025E608  90 7F 00 50 */	stw r3, 0x50(r31)
/* 8025E60C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E610  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F31@ha */
/* 8025E614  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x5F6E5F31@l */
/* 8025E618  38 A0 00 74 */	li r5, 0x74
/* 8025E61C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E620  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E624  7D 89 03 A6 */	mtctr r12
/* 8025E628  4E 80 04 21 */	bctrl 
/* 8025E62C  90 7F 00 54 */	stw r3, 0x54(r31)
/* 8025E630  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E634  3C 80 5F 31 */	lis r4, 0x5F31 /* 0x5F315F73@ha */
/* 8025E638  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x5F315F73@l */
/* 8025E63C  3C 80 00 74 */	lis r4, 0x0074 /* 0x00745F6E@ha */
/* 8025E640  38 A4 5F 6E */	addi r5, r4, 0x5F6E /* 0x00745F6E@l */
/* 8025E644  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E648  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E64C  7D 89 03 A6 */	mtctr r12
/* 8025E650  4E 80 04 21 */	bctrl 
/* 8025E654  90 7F 00 58 */	stw r3, 0x58(r31)
/* 8025E658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E660  7C 08 03 A6 */	mtlr r0
/* 8025E664  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E668  4E 80 00 20 */	blr 
