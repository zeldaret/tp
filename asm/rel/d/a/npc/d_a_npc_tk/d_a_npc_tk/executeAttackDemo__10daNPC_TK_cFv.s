lbl_80B072CC:
/* 80B072CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B072D0  7C 08 02 A6 */	mflr r0
/* 80B072D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B072D8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B072DC  4B 85 AE FD */	bl _savegpr_28
/* 80B072E0  7C 7D 1B 78 */	mr r29, r3
/* 80B072E4  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B072E8  3B C3 C1 C4 */	addi r30, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B072EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B072F0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B072F4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B072F8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B072FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B07300  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80B07304  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B07308  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B0730C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B07310  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B07314  EC 01 00 2A */	fadds f0, f1, f0
/* 80B07318  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B0731C  38 61 00 18 */	addi r3, r1, 0x18
/* 80B07320  38 81 00 30 */	addi r4, r1, 0x30
/* 80B07324  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B07328  4B 75 F8 0D */	bl __mi__4cXyzCFRC3Vec
/* 80B0732C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B07330  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B07334  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B07338  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B0733C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B07340  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B07344  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 80B07348  2C 00 00 01 */	cmpwi r0, 1
/* 80B0734C  41 82 00 48 */	beq lbl_80B07394
/* 80B07350  40 80 02 A8 */	bge lbl_80B075F8
/* 80B07354  2C 00 00 00 */	cmpwi r0, 0
/* 80B07358  40 80 00 08 */	bge lbl_80B07360
/* 80B0735C  48 00 02 9C */	b lbl_80B075F8
lbl_80B07360:
/* 80B07360  38 00 00 01 */	li r0, 1
/* 80B07364  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B07368  7F A3 EB 78 */	mr r3, r29
/* 80B0736C  38 80 00 08 */	li r4, 8
/* 80B07370  38 A0 00 02 */	li r5, 2
/* 80B07374  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80B07378  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80B0737C  4B FF A1 1D */	bl setBck__10daNPC_TK_cFiUcff
/* 80B07380  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B07384  81 9D 0A 00 */	lwz r12, 0xa00(r29)
/* 80B07388  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B0738C  7D 89 03 A6 */	mtctr r12
/* 80B07390  4E 80 04 21 */	bctrl 
lbl_80B07394:
/* 80B07394  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 80B07398  60 00 00 01 */	ori r0, r0, 1
/* 80B0739C  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 80B073A0  38 60 00 01 */	li r3, 1
/* 80B073A4  98 7D 0A 3B */	stb r3, 0xa3b(r29)
/* 80B073A8  38 00 00 05 */	li r0, 5
/* 80B073AC  90 1D 09 C4 */	stw r0, 0x9c4(r29)
/* 80B073B0  98 7D 06 AE */	stb r3, 0x6ae(r29)
/* 80B073B4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B073B8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80B073BC  41 82 00 2C */	beq lbl_80B073E8
/* 80B073C0  7F A3 EB 78 */	mr r3, r29
/* 80B073C4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B073C8  4B 51 33 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B073CC  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80B073D0  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80B073D4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B073D8  38 81 00 30 */	addi r4, r1, 0x30
/* 80B073DC  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80B073E0  4B 76 93 CD */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B073E4  48 00 00 30 */	b lbl_80B07414
lbl_80B073E8:
/* 80B073E8  7F A3 EB 78 */	mr r3, r29
/* 80B073EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B073F0  4B 51 33 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B073F4  7C 64 1B 78 */	mr r4, r3
/* 80B073F8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B073FC  38 A0 00 04 */	li r5, 4
/* 80B07400  38 C0 20 00 */	li r6, 0x2000
/* 80B07404  38 E0 02 00 */	li r7, 0x200
/* 80B07408  4B 76 91 39 */	bl cLib_addCalcAngleS__FPsssss
/* 80B0740C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B07410  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_80B07414:
/* 80B07414  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B07418  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B0741C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B07420  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B07424  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B07428  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B0742C  38 61 00 0C */	addi r3, r1, 0xc
/* 80B07430  4B 83 FD 09 */	bl PSVECSquareMag
/* 80B07434  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80B07438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0743C  40 81 00 58 */	ble lbl_80B07494
/* 80B07440  FC 00 08 34 */	frsqrte f0, f1
/* 80B07444  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80B07448  FC 44 00 32 */	fmul f2, f4, f0
/* 80B0744C  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80B07450  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07454  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07458  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0745C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07460  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07464  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07468  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0746C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07470  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07474  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07478  FC 00 00 32 */	fmul f0, f0, f0
/* 80B0747C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07480  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07484  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07488  FC 21 00 32 */	fmul f1, f1, f0
/* 80B0748C  FC 20 08 18 */	frsp f1, f1
/* 80B07490  48 00 00 88 */	b lbl_80B07518
lbl_80B07494:
/* 80B07494  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80B07498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0749C  40 80 00 10 */	bge lbl_80B074AC
/* 80B074A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B074A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B074A8  48 00 00 70 */	b lbl_80B07518
lbl_80B074AC:
/* 80B074AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B074B0  80 81 00 08 */	lwz r4, 8(r1)
/* 80B074B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B074B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B074BC  7C 03 00 00 */	cmpw r3, r0
/* 80B074C0  41 82 00 14 */	beq lbl_80B074D4
/* 80B074C4  40 80 00 40 */	bge lbl_80B07504
/* 80B074C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B074CC  41 82 00 20 */	beq lbl_80B074EC
/* 80B074D0  48 00 00 34 */	b lbl_80B07504
lbl_80B074D4:
/* 80B074D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B074D8  41 82 00 0C */	beq lbl_80B074E4
/* 80B074DC  38 00 00 01 */	li r0, 1
/* 80B074E0  48 00 00 28 */	b lbl_80B07508
lbl_80B074E4:
/* 80B074E4  38 00 00 02 */	li r0, 2
/* 80B074E8  48 00 00 20 */	b lbl_80B07508
lbl_80B074EC:
/* 80B074EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B074F0  41 82 00 0C */	beq lbl_80B074FC
/* 80B074F4  38 00 00 05 */	li r0, 5
/* 80B074F8  48 00 00 10 */	b lbl_80B07508
lbl_80B074FC:
/* 80B074FC  38 00 00 03 */	li r0, 3
/* 80B07500  48 00 00 08 */	b lbl_80B07508
lbl_80B07504:
/* 80B07504  38 00 00 04 */	li r0, 4
lbl_80B07508:
/* 80B07508  2C 00 00 01 */	cmpwi r0, 1
/* 80B0750C  40 82 00 0C */	bne lbl_80B07518
/* 80B07510  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B07514  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B07518:
/* 80B07518  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80B0751C  4B 76 01 59 */	bl cM_atan2s__Fff
/* 80B07520  7C 65 07 34 */	extsh r5, r3
/* 80B07524  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B07528  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80B0752C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B07530  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B07534  54 BC 04 38 */	rlwinm r28, r5, 0, 0x10, 0x1c
/* 80B07538  7C 80 E2 14 */	add r4, r0, r28
/* 80B0753C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B07540  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B07544  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80B07548  4B 76 91 F9 */	bl cLib_chaseF__FPfff
/* 80B0754C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B07550  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80B07554  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B07558  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0755C  7C 04 E4 2E */	lfsx f0, r4, r28
/* 80B07560  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B07564  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80B07568  4B 76 91 D9 */	bl cLib_chaseF__FPfff
/* 80B0756C  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B07570  4B 57 CD 51 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80B07574  28 03 00 00 */	cmplwi r3, 0
/* 80B07578  41 82 00 80 */	beq lbl_80B075F8
/* 80B0757C  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B07580  4B 57 CD D9 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80B07584  4B 75 C4 C5 */	bl GetAc__8cCcD_ObjFv
/* 80B07588  A8 03 00 08 */	lha r0, 8(r3)
/* 80B0758C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B07590  41 82 00 14 */	beq lbl_80B075A4
/* 80B07594  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B07598  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 80B0759C  7C 00 07 35 */	extsh. r0, r0
/* 80B075A0  41 82 00 58 */	beq lbl_80B075F8
lbl_80B075A4:
/* 80B075A4  7F A3 EB 78 */	mr r3, r29
/* 80B075A8  38 80 00 07 */	li r4, 7
/* 80B075AC  4B FF A2 CD */	bl setActionMode__10daNPC_TK_cFi
/* 80B075B0  38 00 00 02 */	li r0, 2
/* 80B075B4  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B075B8  38 00 00 0F */	li r0, 0xf
/* 80B075BC  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B075C0  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B075C4  4B 57 CD 95 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80B075C8  4B 75 C4 81 */	bl GetAc__8cCcD_ObjFv
/* 80B075CC  A8 03 00 08 */	lha r0, 8(r3)
/* 80B075D0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80B075D4  40 82 00 24 */	bne lbl_80B075F8
/* 80B075D8  88 7D 06 C7 */	lbz r3, 0x6c7(r29)
/* 80B075DC  38 03 00 01 */	addi r0, r3, 1
/* 80B075E0  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 80B075E4  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 80B075E8  81 9D 0A 00 */	lwz r12, 0xa00(r29)
/* 80B075EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B075F0  7D 89 03 A6 */	mtctr r12
/* 80B075F4  4E 80 04 21 */	bctrl 
lbl_80B075F8:
/* 80B075F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B075FC  4B 85 AC 29 */	bl _restgpr_28
/* 80B07600  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B07604  7C 08 03 A6 */	mtlr r0
/* 80B07608  38 21 00 50 */	addi r1, r1, 0x50
/* 80B0760C  4E 80 00 20 */	blr 
