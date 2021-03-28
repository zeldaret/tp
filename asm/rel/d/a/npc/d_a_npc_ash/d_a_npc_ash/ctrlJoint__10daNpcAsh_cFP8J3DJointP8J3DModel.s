lbl_80959238:
/* 80959238  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8095923C  7C 08 02 A6 */	mflr r0
/* 80959240  90 01 00 34 */	stw r0, 0x34(r1)
/* 80959244  39 61 00 30 */	addi r11, r1, 0x30
/* 80959248  4B A0 8F 90 */	b _savegpr_28
/* 8095924C  7C 7D 1B 78 */	mr r29, r3
/* 80959250  7C BE 2B 78 */	mr r30, r5
/* 80959254  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80959258  7C BF 2B 78 */	mr r31, r5
/* 8095925C  3C 60 80 96 */	lis r3, lit_4385@ha
/* 80959260  38 83 D6 C4 */	addi r4, r3, lit_4385@l
/* 80959264  80 64 00 00 */	lwz r3, 0(r4)
/* 80959268  80 04 00 04 */	lwz r0, 4(r4)
/* 8095926C  90 61 00 08 */	stw r3, 8(r1)
/* 80959270  90 01 00 0C */	stw r0, 0xc(r1)
/* 80959274  80 04 00 08 */	lwz r0, 8(r4)
/* 80959278  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095927C  2C 05 00 00 */	cmpwi r5, 0
/* 80959280  40 82 00 B0 */	bne lbl_80959330
/* 80959284  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80959288  80 63 00 04 */	lwz r3, 4(r3)
/* 8095928C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80959290  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80959294  38 63 00 30 */	addi r3, r3, 0x30
/* 80959298  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8095929C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809592A0  4B 9E D2 10 */	b PSMTXCopy
/* 809592A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809592A8  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 809592AC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809592B0  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 809592B4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809592B8  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 809592BC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809592C0  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 809592C4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809592C8  80 63 00 04 */	lwz r3, 4(r3)
/* 809592CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809592D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809592D4  38 63 00 90 */	addi r3, r3, 0x90
/* 809592D8  7F 84 E3 78 */	mr r4, r28
/* 809592DC  4B 9E D1 D4 */	b PSMTXCopy
/* 809592E0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809592E4  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 809592E8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809592EC  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 809592F0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809592F4  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 809592F8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809592FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80959300  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80959304  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80959308  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8095930C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80959310  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80959314  4B 9E D1 9C */	b PSMTXCopy
/* 80959318  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8095931C  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80959320  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80959324  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80959328  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8095932C  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80959330:
/* 80959330  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80959334  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80959338  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8095933C  7C 60 E2 14 */	add r3, r0, r28
/* 80959340  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80959344  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80959348  4B 9E D1 68 */	b PSMTXCopy
/* 8095934C  2C 1F 00 02 */	cmpwi r31, 2
/* 80959350  41 82 00 38 */	beq lbl_80959388
/* 80959354  40 80 00 10 */	bge lbl_80959364
/* 80959358  2C 1F 00 01 */	cmpwi r31, 1
/* 8095935C  40 80 00 10 */	bge lbl_8095936C
/* 80959360  48 00 00 28 */	b lbl_80959388
lbl_80959364:
/* 80959364  2C 1F 00 05 */	cmpwi r31, 5
/* 80959368  40 80 00 20 */	bge lbl_80959388
lbl_8095936C:
/* 8095936C  7F A3 EB 78 */	mr r3, r29
/* 80959370  7F E4 FB 78 */	mr r4, r31
/* 80959374  38 A1 00 08 */	addi r5, r1, 8
/* 80959378  3C C0 80 96 */	lis r6, m__16daNpcAsh_Param_c@ha
/* 8095937C  38 C6 D6 40 */	addi r6, r6, m__16daNpcAsh_Param_c@l
/* 80959380  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80959384  4B 7F 9F F8 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80959388:
/* 80959388  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8095938C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80959390  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80959394  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80959398  7C 80 E2 14 */	add r4, r0, r28
/* 8095939C  4B 9E D1 14 */	b PSMTXCopy
/* 809593A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809593A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809593A8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809593AC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809593B0  4B 9E D1 00 */	b PSMTXCopy
/* 809593B4  2C 1F 00 04 */	cmpwi r31, 4
/* 809593B8  41 82 00 0C */	beq lbl_809593C4
/* 809593BC  2C 1F 00 0C */	cmpwi r31, 0xc
/* 809593C0  40 82 00 2C */	bne lbl_809593EC
lbl_809593C4:
/* 809593C4  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809593C8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809593CC  41 82 00 20 */	beq lbl_809593EC
/* 809593D0  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 809593D4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809593D8  80 83 00 08 */	lwz r4, 8(r3)
/* 809593DC  38 7D 05 6C */	addi r3, r29, 0x56c
/* 809593E0  4B 6B 45 B0 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809593E4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809593E8  93 83 00 08 */	stw r28, 8(r3)
lbl_809593EC:
/* 809593EC  C0 1D 09 78 */	lfs f0, 0x978(r29)
/* 809593F0  FC 00 02 10 */	fabs f0, f0
/* 809593F4  FC 20 00 18 */	frsp f1, f0
/* 809593F8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 809593FC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80959400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80959404  7C 00 00 26 */	mfcr r0
/* 80959408  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8095940C  40 82 00 30 */	bne lbl_8095943C
/* 80959410  2C 1F 00 0C */	cmpwi r31, 0xc
/* 80959414  40 82 00 14 */	bne lbl_80959428
/* 80959418  38 00 00 01 */	li r0, 1
/* 8095941C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80959420  98 03 00 55 */	stb r0, 0x55(r3)
/* 80959424  48 00 00 18 */	b lbl_8095943C
lbl_80959428:
/* 80959428  2C 1F 00 04 */	cmpwi r31, 4
/* 8095942C  40 82 00 10 */	bne lbl_8095943C
/* 80959430  38 00 00 00 */	li r0, 0
/* 80959434  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80959438  98 03 00 55 */	stb r0, 0x55(r3)
lbl_8095943C:
/* 8095943C  38 60 00 01 */	li r3, 1
/* 80959440  39 61 00 30 */	addi r11, r1, 0x30
/* 80959444  4B A0 8D E0 */	b _restgpr_28
/* 80959448  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095944C  7C 08 03 A6 */	mtlr r0
/* 80959450  38 21 00 30 */	addi r1, r1, 0x30
/* 80959454  4E 80 00 20 */	blr 
