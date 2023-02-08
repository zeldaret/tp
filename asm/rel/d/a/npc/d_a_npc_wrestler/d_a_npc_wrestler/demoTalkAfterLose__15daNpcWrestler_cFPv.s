lbl_80B3D0C0:
/* 80B3D0C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B3D0C4  7C 08 02 A6 */	mflr r0
/* 80B3D0C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B3D0CC  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3D0D0  4B 82 51 0D */	bl _savegpr_29
/* 80B3D0D4  7C 7D 1B 78 */	mr r29, r3
/* 80B3D0D8  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B3D0DC  3B E4 1D F8 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B3D0E0  3B C0 00 00 */	li r30, 0
/* 80B3D0E4  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B3D0E8  2C 00 00 02 */	cmpwi r0, 2
/* 80B3D0EC  41 82 00 48 */	beq lbl_80B3D134
/* 80B3D0F0  40 80 00 10 */	bge lbl_80B3D100
/* 80B3D0F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B3D0F8  41 82 00 14 */	beq lbl_80B3D10C
/* 80B3D0FC  48 00 04 6C */	b lbl_80B3D568
lbl_80B3D100:
/* 80B3D100  2C 00 00 04 */	cmpwi r0, 4
/* 80B3D104  40 80 04 64 */	bge lbl_80B3D568
/* 80B3D108  48 00 04 34 */	b lbl_80B3D53C
lbl_80B3D10C:
/* 80B3D10C  80 9D 0E 88 */	lwz r4, 0xe88(r29)
/* 80B3D110  38 A0 00 00 */	li r5, 0
/* 80B3D114  4B 61 6C 09 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B3D118  38 00 00 00 */	li r0, 0
/* 80B3D11C  90 1D 09 50 */	stw r0, 0x950(r29)
/* 80B3D120  98 1D 0E 99 */	stb r0, 0xe99(r29)
/* 80B3D124  90 1D 0E 84 */	stw r0, 0xe84(r29)
/* 80B3D128  38 00 00 02 */	li r0, 2
/* 80B3D12C  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3D130  48 00 04 38 */	b lbl_80B3D568
lbl_80B3D134:
/* 80B3D134  80 1D 0E 84 */	lwz r0, 0xe84(r29)
/* 80B3D138  2C 00 00 01 */	cmpwi r0, 1
/* 80B3D13C  41 82 01 90 */	beq lbl_80B3D2CC
/* 80B3D140  40 80 00 10 */	bge lbl_80B3D150
/* 80B3D144  2C 00 00 00 */	cmpwi r0, 0
/* 80B3D148  40 80 00 14 */	bge lbl_80B3D15C
/* 80B3D14C  48 00 04 1C */	b lbl_80B3D568
lbl_80B3D150:
/* 80B3D150  2C 00 00 03 */	cmpwi r0, 3
/* 80B3D154  40 80 04 14 */	bge lbl_80B3D568
/* 80B3D158  48 00 01 DC */	b lbl_80B3D334
lbl_80B3D15C:
/* 80B3D15C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3D160  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3D164  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80B3D168  28 00 00 00 */	cmplwi r0, 0
/* 80B3D16C  41 82 01 40 */	beq lbl_80B3D2AC
/* 80B3D170  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80B3D174  28 00 00 01 */	cmplwi r0, 1
/* 80B3D178  40 82 01 34 */	bne lbl_80B3D2AC
/* 80B3D17C  38 80 00 00 */	li r4, 0
/* 80B3D180  38 A0 00 01 */	li r5, 1
/* 80B3D184  38 C0 00 00 */	li r6, 0
/* 80B3D188  4B 61 6B FD */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B3D18C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D190  41 82 00 38 */	beq lbl_80B3D1C8
/* 80B3D194  7F A3 EB 78 */	mr r3, r29
/* 80B3D198  38 80 00 1D */	li r4, 0x1d
/* 80B3D19C  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D1A0  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D1A4  38 A0 00 00 */	li r5, 0
/* 80B3D1A8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D1AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3D1B0  7D 89 03 A6 */	mtctr r12
/* 80B3D1B4  4E 80 04 21 */	bctrl 
/* 80B3D1B8  80 7D 0E 84 */	lwz r3, 0xe84(r29)
/* 80B3D1BC  38 03 00 01 */	addi r0, r3, 1
/* 80B3D1C0  90 1D 0E 84 */	stw r0, 0xe84(r29)
/* 80B3D1C4  48 00 03 A4 */	b lbl_80B3D568
lbl_80B3D1C8:
/* 80B3D1C8  83 FD 09 50 */	lwz r31, 0x950(r29)
/* 80B3D1CC  7F A3 EB 78 */	mr r3, r29
/* 80B3D1D0  38 81 00 14 */	addi r4, r1, 0x14
/* 80B3D1D4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80B3D1D8  7F A6 EB 78 */	mr r6, r29
/* 80B3D1DC  38 E0 00 00 */	li r7, 0
/* 80B3D1E0  4B 61 65 39 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B3D1E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D1E8  41 82 00 28 */	beq lbl_80B3D210
/* 80B3D1EC  7F A3 EB 78 */	mr r3, r29
/* 80B3D1F0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B3D1F4  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D1F8  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D1FC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D200  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D204  7D 89 03 A6 */	mtctr r12
/* 80B3D208  4E 80 04 21 */	bctrl 
/* 80B3D20C  48 00 03 5C */	b lbl_80B3D568
lbl_80B3D210:
/* 80B3D210  2C 1F 00 00 */	cmpwi r31, 0
/* 80B3D214  41 82 03 54 */	beq lbl_80B3D568
/* 80B3D218  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80B3D21C  2C 00 00 00 */	cmpwi r0, 0
/* 80B3D220  40 82 03 48 */	bne lbl_80B3D568
/* 80B3D224  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80B3D228  2C 00 00 02 */	cmpwi r0, 2
/* 80B3D22C  41 82 00 38 */	beq lbl_80B3D264
/* 80B3D230  40 80 00 58 */	bge lbl_80B3D288
/* 80B3D234  2C 00 00 01 */	cmpwi r0, 1
/* 80B3D238  40 80 00 08 */	bge lbl_80B3D240
/* 80B3D23C  48 00 00 4C */	b lbl_80B3D288
lbl_80B3D240:
/* 80B3D240  7F A3 EB 78 */	mr r3, r29
/* 80B3D244  38 80 00 03 */	li r4, 3
/* 80B3D248  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D24C  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D250  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D254  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D258  7D 89 03 A6 */	mtctr r12
/* 80B3D25C  4E 80 04 21 */	bctrl 
/* 80B3D260  48 00 03 08 */	b lbl_80B3D568
lbl_80B3D264:
/* 80B3D264  7F A3 EB 78 */	mr r3, r29
/* 80B3D268  38 80 00 04 */	li r4, 4
/* 80B3D26C  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D270  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D274  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D278  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D27C  7D 89 03 A6 */	mtctr r12
/* 80B3D280  4E 80 04 21 */	bctrl 
/* 80B3D284  48 00 02 E4 */	b lbl_80B3D568
lbl_80B3D288:
/* 80B3D288  7F A3 EB 78 */	mr r3, r29
/* 80B3D28C  38 80 00 05 */	li r4, 5
/* 80B3D290  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D294  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D298  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D29C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D2A0  7D 89 03 A6 */	mtctr r12
/* 80B3D2A4  4E 80 04 21 */	bctrl 
/* 80B3D2A8  48 00 02 C0 */	b lbl_80B3D568
lbl_80B3D2AC:
/* 80B3D2AC  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80B3D2B0  60 00 00 01 */	ori r0, r0, 1
/* 80B3D2B4  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80B3D2B8  7F A3 EB 78 */	mr r3, r29
/* 80B3D2BC  38 80 00 00 */	li r4, 0
/* 80B3D2C0  38 A0 00 00 */	li r5, 0
/* 80B3D2C4  4B 4D DE D9 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80B3D2C8  48 00 02 A0 */	b lbl_80B3D568
lbl_80B3D2CC:
/* 80B3D2CC  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80B3D2D0  38 A0 00 01 */	li r5, 1
/* 80B3D2D4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B3D2D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B3D2DC  40 82 00 1C */	bne lbl_80B3D2F8
/* 80B3D2E0  3C 60 80 B4 */	lis r3, lit_4418@ha /* 0x80B41894@ha */
/* 80B3D2E4  C0 23 18 94 */	lfs f1, lit_4418@l(r3)  /* 0x80B41894@l */
/* 80B3D2E8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80B3D2EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B3D2F0  41 82 00 08 */	beq lbl_80B3D2F8
/* 80B3D2F4  38 A0 00 00 */	li r5, 0
lbl_80B3D2F8:
/* 80B3D2F8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80B3D2FC  41 82 02 6C */	beq lbl_80B3D568
/* 80B3D300  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B3D304  2C 00 00 03 */	cmpwi r0, 3
/* 80B3D308  41 82 00 0C */	beq lbl_80B3D314
/* 80B3D30C  38 00 00 03 */	li r0, 3
/* 80B3D310  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B3D314:
/* 80B3D314  7F A3 EB 78 */	mr r3, r29
/* 80B3D318  80 9D 0E 88 */	lwz r4, 0xe88(r29)
/* 80B3D31C  38 A0 00 00 */	li r5, 0
/* 80B3D320  4B 61 69 FD */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B3D324  80 7D 0E 84 */	lwz r3, 0xe84(r29)
/* 80B3D328  38 03 00 01 */	addi r0, r3, 1
/* 80B3D32C  90 1D 0E 84 */	stw r0, 0xe84(r29)
/* 80B3D330  48 00 02 38 */	b lbl_80B3D568
lbl_80B3D334:
/* 80B3D334  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3D338  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3D33C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80B3D340  28 00 00 00 */	cmplwi r0, 0
/* 80B3D344  41 82 01 D8 */	beq lbl_80B3D51C
/* 80B3D348  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80B3D34C  28 00 00 01 */	cmplwi r0, 1
/* 80B3D350  40 82 01 CC */	bne lbl_80B3D51C
/* 80B3D354  38 80 00 00 */	li r4, 0
/* 80B3D358  38 A0 00 01 */	li r5, 1
/* 80B3D35C  38 C0 00 00 */	li r6, 0
/* 80B3D360  4B 61 6A 25 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B3D364  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D368  41 82 00 D0 */	beq lbl_80B3D438
/* 80B3D36C  38 00 00 06 */	li r0, 6
/* 80B3D370  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80B3D374  7F A3 EB 78 */	mr r3, r29
/* 80B3D378  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3D37C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3D380  38 9F 00 24 */	addi r4, r31, 0x24
/* 80B3D384  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B3D388  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80B3D38C  54 00 10 3A */	slwi r0, r0, 2
/* 80B3D390  38 BF 08 0C */	addi r5, r31, 0x80c
/* 80B3D394  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B3D398  38 C0 00 01 */	li r6, 1
/* 80B3D39C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B3D3A0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B3D3A4  4B 61 65 B1 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80B3D3A8  80 7F 0E 74 */	lwz r3, 0xe74(r31)
/* 80B3D3AC  80 1F 0E 78 */	lwz r0, 0xe78(r31)
/* 80B3D3B0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B3D3B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B3D3B8  80 1F 0E 7C */	lwz r0, 0xe7c(r31)
/* 80B3D3BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B3D3C0  38 00 00 03 */	li r0, 3
/* 80B3D3C4  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3D3C8  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B3D3CC  4B 82 4C 4D */	bl __ptmf_test
/* 80B3D3D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D3D4  41 82 00 18 */	beq lbl_80B3D3EC
/* 80B3D3D8  7F A3 EB 78 */	mr r3, r29
/* 80B3D3DC  38 80 00 00 */	li r4, 0
/* 80B3D3E0  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B3D3E4  4B 82 4C A1 */	bl __ptmf_scall
/* 80B3D3E8  60 00 00 00 */	nop 
lbl_80B3D3EC:
/* 80B3D3EC  38 00 00 00 */	li r0, 0
/* 80B3D3F0  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3D3F4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80B3D3F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B3D3FC  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B3D400  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B3D404  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80B3D408  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B3D40C  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B3D410  4B 82 4C 09 */	bl __ptmf_test
/* 80B3D414  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D418  41 82 00 18 */	beq lbl_80B3D430
/* 80B3D41C  7F A3 EB 78 */	mr r3, r29
/* 80B3D420  38 80 00 00 */	li r4, 0
/* 80B3D424  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B3D428  4B 82 4C 5D */	bl __ptmf_scall
/* 80B3D42C  60 00 00 00 */	nop 
lbl_80B3D430:
/* 80B3D430  3B C0 00 01 */	li r30, 1
/* 80B3D434  48 00 01 34 */	b lbl_80B3D568
lbl_80B3D438:
/* 80B3D438  83 FD 09 50 */	lwz r31, 0x950(r29)
/* 80B3D43C  7F A3 EB 78 */	mr r3, r29
/* 80B3D440  38 81 00 0C */	addi r4, r1, 0xc
/* 80B3D444  38 A1 00 08 */	addi r5, r1, 8
/* 80B3D448  7F A6 EB 78 */	mr r6, r29
/* 80B3D44C  38 E0 00 00 */	li r7, 0
/* 80B3D450  4B 61 62 C9 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B3D454  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D458  41 82 00 28 */	beq lbl_80B3D480
/* 80B3D45C  7F A3 EB 78 */	mr r3, r29
/* 80B3D460  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B3D464  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D468  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D46C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D470  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D474  7D 89 03 A6 */	mtctr r12
/* 80B3D478  4E 80 04 21 */	bctrl 
/* 80B3D47C  48 00 00 EC */	b lbl_80B3D568
lbl_80B3D480:
/* 80B3D480  2C 1F 00 00 */	cmpwi r31, 0
/* 80B3D484  41 82 00 E4 */	beq lbl_80B3D568
/* 80B3D488  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80B3D48C  2C 00 00 00 */	cmpwi r0, 0
/* 80B3D490  40 82 00 D8 */	bne lbl_80B3D568
/* 80B3D494  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80B3D498  2C 00 00 02 */	cmpwi r0, 2
/* 80B3D49C  41 82 00 38 */	beq lbl_80B3D4D4
/* 80B3D4A0  40 80 00 58 */	bge lbl_80B3D4F8
/* 80B3D4A4  2C 00 00 01 */	cmpwi r0, 1
/* 80B3D4A8  40 80 00 08 */	bge lbl_80B3D4B0
/* 80B3D4AC  48 00 00 4C */	b lbl_80B3D4F8
lbl_80B3D4B0:
/* 80B3D4B0  7F A3 EB 78 */	mr r3, r29
/* 80B3D4B4  38 80 00 03 */	li r4, 3
/* 80B3D4B8  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D4BC  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D4C0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D4C4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D4C8  7D 89 03 A6 */	mtctr r12
/* 80B3D4CC  4E 80 04 21 */	bctrl 
/* 80B3D4D0  48 00 00 98 */	b lbl_80B3D568
lbl_80B3D4D4:
/* 80B3D4D4  7F A3 EB 78 */	mr r3, r29
/* 80B3D4D8  38 80 00 04 */	li r4, 4
/* 80B3D4DC  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D4E0  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D4E4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D4E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D4EC  7D 89 03 A6 */	mtctr r12
/* 80B3D4F0  4E 80 04 21 */	bctrl 
/* 80B3D4F4  48 00 00 74 */	b lbl_80B3D568
lbl_80B3D4F8:
/* 80B3D4F8  7F A3 EB 78 */	mr r3, r29
/* 80B3D4FC  38 80 00 05 */	li r4, 5
/* 80B3D500  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D504  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D508  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B3D50C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D510  7D 89 03 A6 */	mtctr r12
/* 80B3D514  4E 80 04 21 */	bctrl 
/* 80B3D518  48 00 00 50 */	b lbl_80B3D568
lbl_80B3D51C:
/* 80B3D51C  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80B3D520  60 00 00 01 */	ori r0, r0, 1
/* 80B3D524  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80B3D528  7F A3 EB 78 */	mr r3, r29
/* 80B3D52C  38 80 00 00 */	li r4, 0
/* 80B3D530  38 A0 00 00 */	li r5, 0
/* 80B3D534  4B 4D DC 69 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80B3D538  48 00 00 30 */	b lbl_80B3D568
lbl_80B3D53C:
/* 80B3D53C  38 80 00 05 */	li r4, 5
/* 80B3D540  3C A0 80 B4 */	lis r5, lit_4799@ha /* 0x80B418A4@ha */
/* 80B3D544  C0 25 18 A4 */	lfs f1, lit_4799@l(r5)  /* 0x80B418A4@l */
/* 80B3D548  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B3D54C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3D550  7D 89 03 A6 */	mtctr r12
/* 80B3D554  4E 80 04 21 */	bctrl 
/* 80B3D558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3D55C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3D560  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3D564  4B 50 4F 05 */	bl reset__14dEvt_control_cFv
lbl_80B3D568:
/* 80B3D568  7F C3 F3 78 */	mr r3, r30
/* 80B3D56C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B3D570  4B 82 4C B9 */	bl _restgpr_29
/* 80B3D574  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B3D578  7C 08 03 A6 */	mtlr r0
/* 80B3D57C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B3D580  4E 80 00 20 */	blr 
