lbl_80A821E0:
/* 80A821E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A821E4  7C 08 02 A6 */	mflr r0
/* 80A821E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A821EC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A821F0  4B 8D FF ED */	bl _savegpr_29
/* 80A821F4  7C 7D 1B 78 */	mr r29, r3
/* 80A821F8  3C 60 80 A8 */	lis r3, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A821FC  3B C3 32 AC */	addi r30, r3, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A82200  A8 1D 0E 06 */	lha r0, 0xe06(r29)
/* 80A82204  2C 00 00 01 */	cmpwi r0, 1
/* 80A82208  40 82 00 34 */	bne lbl_80A8223C
/* 80A8220C  38 60 00 00 */	li r3, 0
/* 80A82210  7C 66 1B 78 */	mr r6, r3
/* 80A82214  7C 65 1B 78 */	mr r5, r3
/* 80A82218  7C 64 1B 78 */	mr r4, r3
/* 80A8221C  38 00 00 03 */	li r0, 3
/* 80A82220  7C 09 03 A6 */	mtctr r0
lbl_80A82224:
/* 80A82224  7C FD 1A 14 */	add r7, r29, r3
/* 80A82228  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80A8222C  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80A82230  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80A82234  38 63 00 06 */	addi r3, r3, 6
/* 80A82238  42 00 FF EC */	bdnz lbl_80A82224
lbl_80A8223C:
/* 80A8223C  7F A3 EB 78 */	mr r3, r29
/* 80A82240  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A82244  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A82248  7D 89 03 A6 */	mtctr r12
/* 80A8224C  4E 80 04 21 */	bctrl 
/* 80A82250  7F A3 EB 78 */	mr r3, r29
/* 80A82254  48 00 03 4D */	bl lookat__11daNpcMoiR_cFv
/* 80A82258  88 1D 0E 0B */	lbz r0, 0xe0b(r29)
/* 80A8225C  28 00 00 00 */	cmplwi r0, 0
/* 80A82260  40 82 00 20 */	bne lbl_80A82280
/* 80A82264  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80A82268  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A8226C  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80A82270  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A82274  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80A82278  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A8227C  48 00 00 1C */	b lbl_80A82298
lbl_80A82280:
/* 80A82280  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80A82284  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A82288  C0 1E 05 80 */	lfs f0, 0x580(r30)
/* 80A8228C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A82290  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80A82294  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80A82298:
/* 80A82298  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A8229C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A822A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A822A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A822A8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A822AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A822B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A822B4  4B 8C 41 FD */	bl PSMTXCopy
/* 80A822B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A822BC  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A822C0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A822C4  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80A822C8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80A822CC  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80A822D0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80A822D4  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80A822D8  7F E3 FB 78 */	mr r3, r31
/* 80A822DC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80A822E0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A822E4  4B 8C 4A 89 */	bl PSMTXMultVec
/* 80A822E8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A822EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A822F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A822F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A822F8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80A822FC  7C 85 23 78 */	mr r5, r4
/* 80A82300  4B 8C 4A 6D */	bl PSMTXMultVec
/* 80A82304  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80A82308  38 81 00 3C */	addi r4, r1, 0x3c
/* 80A8230C  4B 7E E9 69 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80A82310  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80A82314  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80A82318  38 81 00 3C */	addi r4, r1, 0x3c
/* 80A8231C  4B 7E E8 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A82320  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80A82324  80 9D 0C 10 */	lwz r4, 0xc10(r29)
/* 80A82328  28 04 00 00 */	cmplwi r4, 0
/* 80A8232C  41 82 01 9C */	beq lbl_80A824C8
/* 80A82330  38 61 00 18 */	addi r3, r1, 0x18
/* 80A82334  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A82338  4B 7E 47 FD */	bl __mi__4cXyzCFRC3Vec
/* 80A8233C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A82340  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A82344  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A82348  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A8234C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A82350  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A82354  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80A82358  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A8235C  7C 03 02 14 */	add r0, r3, r0
/* 80A82360  7C 00 00 D0 */	neg r0, r0
/* 80A82364  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A82368  4B 7E 53 0D */	bl cM_atan2s__Fff
/* 80A8236C  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80A82370  7C 00 1A 14 */	add r0, r0, r3
/* 80A82374  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A82378  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A8237C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A82380  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A82384  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A82388  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80A8238C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A82390  38 61 00 0C */	addi r3, r1, 0xc
/* 80A82394  4B 8C 4D A5 */	bl PSVECSquareMag
/* 80A82398  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A8239C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A823A0  40 81 00 58 */	ble lbl_80A823F8
/* 80A823A4  FC 00 08 34 */	frsqrte f0, f1
/* 80A823A8  C8 9E 05 48 */	lfd f4, 0x548(r30)
/* 80A823AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A823B0  C8 7E 05 50 */	lfd f3, 0x550(r30)
/* 80A823B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A823B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A823BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A823C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A823C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A823C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A823CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A823D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A823D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A823D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A823DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A823E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A823E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A823E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A823EC  FC 41 00 32 */	fmul f2, f1, f0
/* 80A823F0  FC 40 10 18 */	frsp f2, f2
/* 80A823F4  48 00 00 90 */	b lbl_80A82484
lbl_80A823F8:
/* 80A823F8  C8 1E 05 58 */	lfd f0, 0x558(r30)
/* 80A823FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A82400  40 80 00 10 */	bge lbl_80A82410
/* 80A82404  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A82408  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A8240C  48 00 00 78 */	b lbl_80A82484
lbl_80A82410:
/* 80A82410  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A82414  80 81 00 08 */	lwz r4, 8(r1)
/* 80A82418  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8241C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A82420  7C 03 00 00 */	cmpw r3, r0
/* 80A82424  41 82 00 14 */	beq lbl_80A82438
/* 80A82428  40 80 00 40 */	bge lbl_80A82468
/* 80A8242C  2C 03 00 00 */	cmpwi r3, 0
/* 80A82430  41 82 00 20 */	beq lbl_80A82450
/* 80A82434  48 00 00 34 */	b lbl_80A82468
lbl_80A82438:
/* 80A82438  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8243C  41 82 00 0C */	beq lbl_80A82448
/* 80A82440  38 00 00 01 */	li r0, 1
/* 80A82444  48 00 00 28 */	b lbl_80A8246C
lbl_80A82448:
/* 80A82448  38 00 00 02 */	li r0, 2
/* 80A8244C  48 00 00 20 */	b lbl_80A8246C
lbl_80A82450:
/* 80A82450  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A82454  41 82 00 0C */	beq lbl_80A82460
/* 80A82458  38 00 00 05 */	li r0, 5
/* 80A8245C  48 00 00 10 */	b lbl_80A8246C
lbl_80A82460:
/* 80A82460  38 00 00 03 */	li r0, 3
/* 80A82464  48 00 00 08 */	b lbl_80A8246C
lbl_80A82468:
/* 80A82468  38 00 00 04 */	li r0, 4
lbl_80A8246C:
/* 80A8246C  2C 00 00 01 */	cmpwi r0, 1
/* 80A82470  40 82 00 10 */	bne lbl_80A82480
/* 80A82474  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A82478  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A8247C  48 00 00 08 */	b lbl_80A82484
lbl_80A82480:
/* 80A82480  FC 40 08 90 */	fmr f2, f1
lbl_80A82484:
/* 80A82484  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80A82488  4B 7E 51 ED */	bl cM_atan2s__Fff
/* 80A8248C  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 80A82490  7C 03 00 50 */	subf r0, r3, r0
/* 80A82494  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80A82498  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A8249C  38 7E 00 00 */	addi r3, r30, 0
/* 80A824A0  A8 03 00 70 */	lha r0, 0x70(r3)
/* 80A824A4  7C 04 00 00 */	cmpw r4, r0
/* 80A824A8  40 81 00 0C */	ble lbl_80A824B4
/* 80A824AC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A824B0  48 00 00 24 */	b lbl_80A824D4
lbl_80A824B4:
/* 80A824B4  7C 00 00 D0 */	neg r0, r0
/* 80A824B8  7C 04 00 00 */	cmpw r4, r0
/* 80A824BC  40 80 00 18 */	bge lbl_80A824D4
/* 80A824C0  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A824C4  48 00 00 10 */	b lbl_80A824D4
lbl_80A824C8:
/* 80A824C8  38 00 00 00 */	li r0, 0
/* 80A824CC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A824D0  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80A824D4:
/* 80A824D4  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 80A824D8  C0 3D 08 E8 */	lfs f1, 0x8e8(r29)
/* 80A824DC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A824E0  EC 21 00 2A */	fadds f1, f1, f0
/* 80A824E4  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 80A824E8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80A824EC  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80A824F0  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80A824F4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A824F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80A824FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A82500  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A82504  38 63 00 60 */	addi r3, r3, 0x60
/* 80A82508  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A8250C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A82510  4B 8C 3F A1 */	bl PSMTXCopy
/* 80A82514  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A82518  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8251C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80A82520  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A82524  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80A82528  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A8252C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A82530  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A82534  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80A82538  38 81 00 24 */	addi r4, r1, 0x24
/* 80A8253C  4B 7E CC A1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A82540  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80A82544  38 9E 00 00 */	addi r4, r30, 0
/* 80A82548  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80A8254C  4B 7E CC AD */	bl SetH__8cM3dGCylFf
/* 80A82550  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80A82554  88 1D 0E 0B */	lbz r0, 0xe0b(r29)
/* 80A82558  28 00 00 00 */	cmplwi r0, 0
/* 80A8255C  40 82 00 0C */	bne lbl_80A82568
/* 80A82560  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80A82564  48 00 00 0C */	b lbl_80A82570
lbl_80A82568:
/* 80A82568  38 9E 00 00 */	addi r4, r30, 0
/* 80A8256C  C0 24 00 1C */	lfs f1, 0x1c(r4)
lbl_80A82570:
/* 80A82570  4B 7E CC 91 */	bl SetR__8cM3dGCylFf
/* 80A82574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A82578  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8257C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A82580  38 9D 0C A0 */	addi r4, r29, 0xca0
/* 80A82584  4B 7E 26 25 */	bl Set__4cCcSFP8cCcD_Obj
/* 80A82588  39 61 00 60 */	addi r11, r1, 0x60
/* 80A8258C  4B 8D FC 9D */	bl _restgpr_29
/* 80A82590  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A82594  7C 08 03 A6 */	mtlr r0
/* 80A82598  38 21 00 60 */	addi r1, r1, 0x60
/* 80A8259C  4E 80 00 20 */	blr 
