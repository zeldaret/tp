lbl_8060E1D0:
/* 8060E1D0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8060E1D4  7C 08 02 A6 */	mflr r0
/* 8060E1D8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8060E1DC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8060E1E0  4B D5 3F D8 */	b _savegpr_20
/* 8060E1E4  7C 7E 1B 78 */	mr r30, r3
/* 8060E1E8  3C 60 80 61 */	lis r3, lit_3928@ha
/* 8060E1EC  3B E3 FD E0 */	addi r31, r3, lit_3928@l
/* 8060E1F0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060E1F4  83 83 00 04 */	lwz r28, 4(r3)
/* 8060E1F8  88 1E 0A FD */	lbz r0, 0xafd(r30)
/* 8060E1FC  28 00 00 00 */	cmplwi r0, 0
/* 8060E200  40 82 00 30 */	bne lbl_8060E230
/* 8060E204  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8060E208  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E20C  38 63 05 10 */	addi r3, r3, 0x510
/* 8060E210  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060E214  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060E218  4B D3 82 98 */	b PSMTXCopy
/* 8060E21C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8060E220  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8060E224  FC 60 10 90 */	fmr f3, f2
/* 8060E228  4B 9F EB 74 */	b transM__14mDoMtx_stack_cFfff
/* 8060E22C  48 00 00 2C */	b lbl_8060E258
lbl_8060E230:
/* 8060E230  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8060E234  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E238  38 63 00 30 */	addi r3, r3, 0x30
/* 8060E23C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060E240  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060E244  4B D3 82 6C */	b PSMTXCopy
/* 8060E248  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8060E24C  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8060E250  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8060E254  4B 9F EB 48 */	b transM__14mDoMtx_stack_cFfff
lbl_8060E258:
/* 8060E258  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8060E25C  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 8060E260  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8060E264  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8060E268  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8060E26C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8060E270  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8060E274  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8060E278  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8060E27C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8060E280  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8060E284  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8060E288  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8060E28C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8060E290  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8060E294  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8060E298  EC 01 00 2A */	fadds f0, f1, f0
/* 8060E29C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8060E2A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060E2A4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8060E2A8  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 8060E2AC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8060E2B0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8060E2B4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8060E2B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8060E2BC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8060E2C0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8060E2C4  3B 40 00 00 */	li r26, 0
/* 8060E2C8  3B 20 00 00 */	li r25, 0
/* 8060E2CC  3B 00 00 00 */	li r24, 0
/* 8060E2D0  3B 64 23 3C */	addi r27, r4, 0x233c
/* 8060E2D4  3A DF 02 58 */	addi r22, r31, 0x258
/* 8060E2D8  3A FF 02 1C */	addi r23, r31, 0x21c
lbl_8060E2DC:
/* 8060E2DC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8060E2E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E2E4  7C 16 C0 2E */	lwzx r0, r22, r24
/* 8060E2E8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8060E2EC  7C 63 02 14 */	add r3, r3, r0
/* 8060E2F0  7F A4 EB 78 */	mr r4, r29
/* 8060E2F4  4B D3 81 BC */	b PSMTXCopy
/* 8060E2F8  2C 1A 00 01 */	cmpwi r26, 1
/* 8060E2FC  40 82 00 14 */	bne lbl_8060E310
/* 8060E300  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8060E304  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8060E308  FC 60 10 90 */	fmr f3, f2
/* 8060E30C  4B 9F EA 90 */	b transM__14mDoMtx_stack_cFfff
lbl_8060E310:
/* 8060E310  2C 1A 00 0D */	cmpwi r26, 0xd
/* 8060E314  40 82 00 14 */	bne lbl_8060E328
/* 8060E318  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 8060E31C  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8060E320  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8060E324  4B 9F EA 78 */	b transM__14mDoMtx_stack_cFfff
lbl_8060E328:
/* 8060E328  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8060E32C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060E330  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8060E334  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8060E338  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8060E33C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8060E340  7E 9E CA 14 */	add r20, r30, r25
/* 8060E344  3A B4 0E 94 */	addi r21, r20, 0xe94
/* 8060E348  7E A3 AB 78 */	mr r3, r21
/* 8060E34C  38 81 00 58 */	addi r4, r1, 0x58
/* 8060E350  4B C6 12 F8 */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E354  7E A3 AB 78 */	mr r3, r21
/* 8060E358  7C 37 C4 2E */	lfsx f1, r23, r24
/* 8060E35C  4B C6 13 AC */	b SetR__8cM3dGSphFf
/* 8060E360  7F 63 DB 78 */	mr r3, r27
/* 8060E364  38 94 0D 70 */	addi r4, r20, 0xd70
/* 8060E368  4B C5 68 40 */	b Set__4cCcSFP8cCcD_Obj
/* 8060E36C  3B 5A 00 01 */	addi r26, r26, 1
/* 8060E370  2C 1A 00 0F */	cmpwi r26, 0xf
/* 8060E374  3B 39 01 38 */	addi r25, r25, 0x138
/* 8060E378  3B 18 00 04 */	addi r24, r24, 4
/* 8060E37C  41 80 FF 60 */	blt lbl_8060E2DC
/* 8060E380  88 1E 0A FD */	lbz r0, 0xafd(r30)
/* 8060E384  28 00 00 00 */	cmplwi r0, 0
/* 8060E388  40 82 00 90 */	bne lbl_8060E418
/* 8060E38C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8060E390  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E394  38 63 05 10 */	addi r3, r3, 0x510
/* 8060E398  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060E39C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060E3A0  4B D3 81 10 */	b PSMTXCopy
/* 8060E3A4  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8060E3A8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8060E3AC  FC 60 10 90 */	fmr f3, f2
/* 8060E3B0  4B 9F E9 EC */	b transM__14mDoMtx_stack_cFfff
/* 8060E3B4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8060E3B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060E3BC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8060E3C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8060E3C4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8060E3C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8060E3CC  38 7E 22 18 */	addi r3, r30, 0x2218
/* 8060E3D0  38 81 00 58 */	addi r4, r1, 0x58
/* 8060E3D4  4B C6 12 74 */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E3D8  38 7E 22 18 */	addi r3, r30, 0x2218
/* 8060E3DC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8060E3E0  4B C6 13 28 */	b SetR__8cM3dGSphFf
/* 8060E3E4  7F 63 DB 78 */	mr r3, r27
/* 8060E3E8  38 9E 20 F4 */	addi r4, r30, 0x20f4
/* 8060E3EC  4B C5 67 BC */	b Set__4cCcSFP8cCcD_Obj
/* 8060E3F0  38 7E 24 88 */	addi r3, r30, 0x2488
/* 8060E3F4  38 81 00 58 */	addi r4, r1, 0x58
/* 8060E3F8  4B C6 12 50 */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E3FC  38 7E 24 88 */	addi r3, r30, 0x2488
/* 8060E400  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8060E404  4B C6 13 04 */	b SetR__8cM3dGSphFf
/* 8060E408  7F 63 DB 78 */	mr r3, r27
/* 8060E40C  38 9E 23 64 */	addi r4, r30, 0x2364
/* 8060E410  4B C5 67 98 */	b Set__4cCcSFP8cCcD_Obj
/* 8060E414  48 00 03 90 */	b lbl_8060E7A4
lbl_8060E418:
/* 8060E418  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8060E41C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E420  38 63 00 60 */	addi r3, r3, 0x60
/* 8060E424  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060E428  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060E42C  4B D3 80 84 */	b PSMTXCopy
/* 8060E430  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8060E434  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 8060E438  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8060E43C  4B 9F E9 60 */	b transM__14mDoMtx_stack_cFfff
/* 8060E440  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8060E444  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060E448  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8060E44C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8060E450  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8060E454  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8060E458  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8060E45C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E460  38 63 00 30 */	addi r3, r3, 0x30
/* 8060E464  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060E468  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060E46C  4B D3 80 44 */	b PSMTXCopy
/* 8060E470  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8060E474  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8060E478  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8060E47C  4B 9F E9 20 */	b transM__14mDoMtx_stack_cFfff
/* 8060E480  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8060E484  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8060E488  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8060E48C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8060E490  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8060E494  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8060E498  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8060E49C  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 8060E4A0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8060E4A4  D0 1E 0A 88 */	stfs f0, 0xa88(r30)
/* 8060E4A8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8060E4AC  D0 1E 0A 8C */	stfs f0, 0xa8c(r30)
/* 8060E4B0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8060E4B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060E4B8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060E4BC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8060E4C0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8060E4C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8060E4C8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8060E4CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8060E4D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8060E4D4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8060E4D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8060E4DC  38 61 00 28 */	addi r3, r1, 0x28
/* 8060E4E0  38 81 00 34 */	addi r4, r1, 0x34
/* 8060E4E4  4B D3 8E B8 */	b PSVECSquareDistance
/* 8060E4E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060E4EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060E4F0  40 81 00 58 */	ble lbl_8060E548
/* 8060E4F4  FC 00 08 34 */	frsqrte f0, f1
/* 8060E4F8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8060E4FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8060E500  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8060E504  FC 00 00 32 */	fmul f0, f0, f0
/* 8060E508  FC 01 00 32 */	fmul f0, f1, f0
/* 8060E50C  FC 03 00 28 */	fsub f0, f3, f0
/* 8060E510  FC 02 00 32 */	fmul f0, f2, f0
/* 8060E514  FC 44 00 32 */	fmul f2, f4, f0
/* 8060E518  FC 00 00 32 */	fmul f0, f0, f0
/* 8060E51C  FC 01 00 32 */	fmul f0, f1, f0
/* 8060E520  FC 03 00 28 */	fsub f0, f3, f0
/* 8060E524  FC 02 00 32 */	fmul f0, f2, f0
/* 8060E528  FC 44 00 32 */	fmul f2, f4, f0
/* 8060E52C  FC 00 00 32 */	fmul f0, f0, f0
/* 8060E530  FC 01 00 32 */	fmul f0, f1, f0
/* 8060E534  FC 03 00 28 */	fsub f0, f3, f0
/* 8060E538  FC 02 00 32 */	fmul f0, f2, f0
/* 8060E53C  FC 21 00 32 */	fmul f1, f1, f0
/* 8060E540  FC 20 08 18 */	frsp f1, f1
/* 8060E544  48 00 00 88 */	b lbl_8060E5CC
lbl_8060E548:
/* 8060E548  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8060E54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060E550  40 80 00 10 */	bge lbl_8060E560
/* 8060E554  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8060E558  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8060E55C  48 00 00 70 */	b lbl_8060E5CC
lbl_8060E560:
/* 8060E560  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8060E564  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8060E568  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8060E56C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8060E570  7C 03 00 00 */	cmpw r3, r0
/* 8060E574  41 82 00 14 */	beq lbl_8060E588
/* 8060E578  40 80 00 40 */	bge lbl_8060E5B8
/* 8060E57C  2C 03 00 00 */	cmpwi r3, 0
/* 8060E580  41 82 00 20 */	beq lbl_8060E5A0
/* 8060E584  48 00 00 34 */	b lbl_8060E5B8
lbl_8060E588:
/* 8060E588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060E58C  41 82 00 0C */	beq lbl_8060E598
/* 8060E590  38 00 00 01 */	li r0, 1
/* 8060E594  48 00 00 28 */	b lbl_8060E5BC
lbl_8060E598:
/* 8060E598  38 00 00 02 */	li r0, 2
/* 8060E59C  48 00 00 20 */	b lbl_8060E5BC
lbl_8060E5A0:
/* 8060E5A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060E5A4  41 82 00 0C */	beq lbl_8060E5B0
/* 8060E5A8  38 00 00 05 */	li r0, 5
/* 8060E5AC  48 00 00 10 */	b lbl_8060E5BC
lbl_8060E5B0:
/* 8060E5B0  38 00 00 03 */	li r0, 3
/* 8060E5B4  48 00 00 08 */	b lbl_8060E5BC
lbl_8060E5B8:
/* 8060E5B8  38 00 00 04 */	li r0, 4
lbl_8060E5BC:
/* 8060E5BC  2C 00 00 01 */	cmpwi r0, 1
/* 8060E5C0  40 82 00 0C */	bne lbl_8060E5CC
/* 8060E5C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8060E5C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8060E5CC:
/* 8060E5CC  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 8060E5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060E5D4  41 80 01 2C */	blt lbl_8060E700
/* 8060E5D8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8060E5DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8060E5E0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060E5E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8060E5E8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8060E5EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060E5F0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8060E5F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060E5F8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8060E5FC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8060E600  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8060E604  38 61 00 10 */	addi r3, r1, 0x10
/* 8060E608  38 81 00 1C */	addi r4, r1, 0x1c
/* 8060E60C  4B D3 8D 90 */	b PSVECSquareDistance
/* 8060E610  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060E614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060E618  40 81 00 58 */	ble lbl_8060E670
/* 8060E61C  FC 00 08 34 */	frsqrte f0, f1
/* 8060E620  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8060E624  FC 44 00 32 */	fmul f2, f4, f0
/* 8060E628  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8060E62C  FC 00 00 32 */	fmul f0, f0, f0
/* 8060E630  FC 01 00 32 */	fmul f0, f1, f0
/* 8060E634  FC 03 00 28 */	fsub f0, f3, f0
/* 8060E638  FC 02 00 32 */	fmul f0, f2, f0
/* 8060E63C  FC 44 00 32 */	fmul f2, f4, f0
/* 8060E640  FC 00 00 32 */	fmul f0, f0, f0
/* 8060E644  FC 01 00 32 */	fmul f0, f1, f0
/* 8060E648  FC 03 00 28 */	fsub f0, f3, f0
/* 8060E64C  FC 02 00 32 */	fmul f0, f2, f0
/* 8060E650  FC 44 00 32 */	fmul f2, f4, f0
/* 8060E654  FC 00 00 32 */	fmul f0, f0, f0
/* 8060E658  FC 01 00 32 */	fmul f0, f1, f0
/* 8060E65C  FC 03 00 28 */	fsub f0, f3, f0
/* 8060E660  FC 02 00 32 */	fmul f0, f2, f0
/* 8060E664  FC 21 00 32 */	fmul f1, f1, f0
/* 8060E668  FC 20 08 18 */	frsp f1, f1
/* 8060E66C  48 00 00 88 */	b lbl_8060E6F4
lbl_8060E670:
/* 8060E670  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8060E674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060E678  40 80 00 10 */	bge lbl_8060E688
/* 8060E67C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8060E680  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8060E684  48 00 00 70 */	b lbl_8060E6F4
lbl_8060E688:
/* 8060E688  D0 21 00 08 */	stfs f1, 8(r1)
/* 8060E68C  80 81 00 08 */	lwz r4, 8(r1)
/* 8060E690  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8060E694  3C 00 7F 80 */	lis r0, 0x7f80
/* 8060E698  7C 03 00 00 */	cmpw r3, r0
/* 8060E69C  41 82 00 14 */	beq lbl_8060E6B0
/* 8060E6A0  40 80 00 40 */	bge lbl_8060E6E0
/* 8060E6A4  2C 03 00 00 */	cmpwi r3, 0
/* 8060E6A8  41 82 00 20 */	beq lbl_8060E6C8
/* 8060E6AC  48 00 00 34 */	b lbl_8060E6E0
lbl_8060E6B0:
/* 8060E6B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060E6B4  41 82 00 0C */	beq lbl_8060E6C0
/* 8060E6B8  38 00 00 01 */	li r0, 1
/* 8060E6BC  48 00 00 28 */	b lbl_8060E6E4
lbl_8060E6C0:
/* 8060E6C0  38 00 00 02 */	li r0, 2
/* 8060E6C4  48 00 00 20 */	b lbl_8060E6E4
lbl_8060E6C8:
/* 8060E6C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8060E6CC  41 82 00 0C */	beq lbl_8060E6D8
/* 8060E6D0  38 00 00 05 */	li r0, 5
/* 8060E6D4  48 00 00 10 */	b lbl_8060E6E4
lbl_8060E6D8:
/* 8060E6D8  38 00 00 03 */	li r0, 3
/* 8060E6DC  48 00 00 08 */	b lbl_8060E6E4
lbl_8060E6E0:
/* 8060E6E0  38 00 00 04 */	li r0, 4
lbl_8060E6E4:
/* 8060E6E4  2C 00 00 01 */	cmpwi r0, 1
/* 8060E6E8  40 82 00 0C */	bne lbl_8060E6F4
/* 8060E6EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8060E6F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8060E6F4:
/* 8060E6F4  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 8060E6F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060E6FC  40 80 00 10 */	bge lbl_8060E70C
lbl_8060E700:
/* 8060E700  7F C3 F3 78 */	mr r3, r30
/* 8060E704  4B FF 94 7D */	bl offBodyShield__9daB_MGN_cFv
/* 8060E708  48 00 00 0C */	b lbl_8060E714
lbl_8060E70C:
/* 8060E70C  7F C3 F3 78 */	mr r3, r30
/* 8060E710  4B FF 94 41 */	bl onBodyShield__9daB_MGN_cFv
lbl_8060E714:
/* 8060E714  38 7E 22 18 */	addi r3, r30, 0x2218
/* 8060E718  38 81 00 58 */	addi r4, r1, 0x58
/* 8060E71C  4B C6 0F 2C */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E720  38 7E 22 18 */	addi r3, r30, 0x2218
/* 8060E724  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8060E728  4B C6 0F E0 */	b SetR__8cM3dGSphFf
/* 8060E72C  7F 63 DB 78 */	mr r3, r27
/* 8060E730  38 9E 20 F4 */	addi r4, r30, 0x20f4
/* 8060E734  4B C5 64 74 */	b Set__4cCcSFP8cCcD_Obj
/* 8060E738  38 7E 24 88 */	addi r3, r30, 0x2488
/* 8060E73C  38 81 00 58 */	addi r4, r1, 0x58
/* 8060E740  4B C6 0F 08 */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E744  38 7E 24 88 */	addi r3, r30, 0x2488
/* 8060E748  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8060E74C  4B C6 0F BC */	b SetR__8cM3dGSphFf
/* 8060E750  7F 63 DB 78 */	mr r3, r27
/* 8060E754  38 9E 23 64 */	addi r4, r30, 0x2364
/* 8060E758  4B C5 64 50 */	b Set__4cCcSFP8cCcD_Obj
/* 8060E75C  38 7E 23 50 */	addi r3, r30, 0x2350
/* 8060E760  38 81 00 4C */	addi r4, r1, 0x4c
/* 8060E764  4B C6 0E E4 */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E768  38 7E 23 50 */	addi r3, r30, 0x2350
/* 8060E76C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8060E770  4B C6 0F 98 */	b SetR__8cM3dGSphFf
/* 8060E774  7F 63 DB 78 */	mr r3, r27
/* 8060E778  38 9E 22 2C */	addi r4, r30, 0x222c
/* 8060E77C  4B C5 64 2C */	b Set__4cCcSFP8cCcD_Obj
/* 8060E780  38 7E 25 C0 */	addi r3, r30, 0x25c0
/* 8060E784  38 81 00 4C */	addi r4, r1, 0x4c
/* 8060E788  4B C6 0E C0 */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E78C  38 7E 25 C0 */	addi r3, r30, 0x25c0
/* 8060E790  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8060E794  4B C6 0F 74 */	b SetR__8cM3dGSphFf
/* 8060E798  7F 63 DB 78 */	mr r3, r27
/* 8060E79C  38 9E 24 9C */	addi r4, r30, 0x249c
/* 8060E7A0  4B C5 64 08 */	b Set__4cCcSFP8cCcD_Obj
lbl_8060E7A4:
/* 8060E7A4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8060E7A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E7AC  38 63 05 10 */	addi r3, r3, 0x510
/* 8060E7B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060E7B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060E7B8  4B D3 7C F8 */	b PSMTXCopy
/* 8060E7BC  C0 3F 02 98 */	lfs f1, 0x298(r31)
/* 8060E7C0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8060E7C4  FC 60 10 90 */	fmr f3, f2
/* 8060E7C8  4B 9F E5 D4 */	b transM__14mDoMtx_stack_cFfff
/* 8060E7CC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8060E7D0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060E7D4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8060E7D8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8060E7DC  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8060E7E0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8060E7E4  38 7E 20 E0 */	addi r3, r30, 0x20e0
/* 8060E7E8  38 81 00 58 */	addi r4, r1, 0x58
/* 8060E7EC  4B C6 0E 5C */	b SetC__8cM3dGSphFRC4cXyz
/* 8060E7F0  38 7E 20 E0 */	addi r3, r30, 0x20e0
/* 8060E7F4  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 8060E7F8  4B C6 0F 10 */	b SetR__8cM3dGSphFf
/* 8060E7FC  7F 63 DB 78 */	mr r3, r27
/* 8060E800  38 9E 1F BC */	addi r4, r30, 0x1fbc
/* 8060E804  4B C5 63 A4 */	b Set__4cCcSFP8cCcD_Obj
/* 8060E808  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8060E80C  4B D5 39 F8 */	b _restgpr_20
/* 8060E810  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8060E814  7C 08 03 A6 */	mtlr r0
/* 8060E818  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8060E81C  4E 80 00 20 */	blr 
