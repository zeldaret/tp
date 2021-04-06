lbl_807AF57C:
/* 807AF57C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807AF580  7C 08 02 A6 */	mflr r0
/* 807AF584  90 01 00 44 */	stw r0, 0x44(r1)
/* 807AF588  39 61 00 40 */	addi r11, r1, 0x40
/* 807AF58C  4B BB 2C 51 */	bl _savegpr_29
/* 807AF590  7C 7E 1B 78 */	mr r30, r3
/* 807AF594  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AF598  3B E3 FD 2C */	addi r31, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807AF59C  A8 7E 06 EA */	lha r3, 0x6ea(r30)
/* 807AF5A0  2C 03 00 00 */	cmpwi r3, 0
/* 807AF5A4  41 82 00 0C */	beq lbl_807AF5B0
/* 807AF5A8  38 03 FF FF */	addi r0, r3, -1
/* 807AF5AC  B0 1E 06 EA */	sth r0, 0x6ea(r30)
lbl_807AF5B0:
/* 807AF5B0  A8 7E 06 EC */	lha r3, 0x6ec(r30)
/* 807AF5B4  2C 03 00 00 */	cmpwi r3, 0
/* 807AF5B8  41 82 00 0C */	beq lbl_807AF5C4
/* 807AF5BC  38 03 FF FF */	addi r0, r3, -1
/* 807AF5C0  B0 1E 06 EC */	sth r0, 0x6ec(r30)
lbl_807AF5C4:
/* 807AF5C4  A8 7E 06 EE */	lha r3, 0x6ee(r30)
/* 807AF5C8  2C 03 00 00 */	cmpwi r3, 0
/* 807AF5CC  41 82 00 0C */	beq lbl_807AF5D8
/* 807AF5D0  38 03 FF FF */	addi r0, r3, -1
/* 807AF5D4  B0 1E 06 EE */	sth r0, 0x6ee(r30)
lbl_807AF5D8:
/* 807AF5D8  A8 7E 06 F0 */	lha r3, 0x6f0(r30)
/* 807AF5DC  2C 03 00 00 */	cmpwi r3, 0
/* 807AF5E0  41 82 00 0C */	beq lbl_807AF5EC
/* 807AF5E4  38 03 FF FF */	addi r0, r3, -1
/* 807AF5E8  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
lbl_807AF5EC:
/* 807AF5EC  A8 7E 06 F2 */	lha r3, 0x6f2(r30)
/* 807AF5F0  2C 03 00 00 */	cmpwi r3, 0
/* 807AF5F4  41 82 00 0C */	beq lbl_807AF600
/* 807AF5F8  38 03 FF FF */	addi r0, r3, -1
/* 807AF5FC  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
lbl_807AF600:
/* 807AF600  A8 7E 06 F6 */	lha r3, 0x6f6(r30)
/* 807AF604  2C 03 00 00 */	cmpwi r3, 0
/* 807AF608  41 82 00 0C */	beq lbl_807AF614
/* 807AF60C  38 03 FF FF */	addi r0, r3, -1
/* 807AF610  B0 1E 06 F6 */	sth r0, 0x6f6(r30)
lbl_807AF614:
/* 807AF614  7F C3 F3 78 */	mr r3, r30
/* 807AF618  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AF61C  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AF620  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807AF624  4B 86 B0 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807AF628  B0 7E 06 CC */	sth r3, 0x6cc(r30)
/* 807AF62C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807AF630  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807AF634  4B B9 7D 69 */	bl PSVECSquareDistance
/* 807AF638  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AF63C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AF640  40 81 00 58 */	ble lbl_807AF698
/* 807AF644  FC 00 08 34 */	frsqrte f0, f1
/* 807AF648  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AF64C  FC 44 00 32 */	fmul f2, f4, f0
/* 807AF650  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AF654  FC 00 00 32 */	fmul f0, f0, f0
/* 807AF658  FC 01 00 32 */	fmul f0, f1, f0
/* 807AF65C  FC 03 00 28 */	fsub f0, f3, f0
/* 807AF660  FC 02 00 32 */	fmul f0, f2, f0
/* 807AF664  FC 44 00 32 */	fmul f2, f4, f0
/* 807AF668  FC 00 00 32 */	fmul f0, f0, f0
/* 807AF66C  FC 01 00 32 */	fmul f0, f1, f0
/* 807AF670  FC 03 00 28 */	fsub f0, f3, f0
/* 807AF674  FC 02 00 32 */	fmul f0, f2, f0
/* 807AF678  FC 44 00 32 */	fmul f2, f4, f0
/* 807AF67C  FC 00 00 32 */	fmul f0, f0, f0
/* 807AF680  FC 01 00 32 */	fmul f0, f1, f0
/* 807AF684  FC 03 00 28 */	fsub f0, f3, f0
/* 807AF688  FC 02 00 32 */	fmul f0, f2, f0
/* 807AF68C  FC 21 00 32 */	fmul f1, f1, f0
/* 807AF690  FC 20 08 18 */	frsp f1, f1
/* 807AF694  48 00 00 88 */	b lbl_807AF71C
lbl_807AF698:
/* 807AF698  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AF69C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AF6A0  40 80 00 10 */	bge lbl_807AF6B0
/* 807AF6A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AF6A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807AF6AC  48 00 00 70 */	b lbl_807AF71C
lbl_807AF6B0:
/* 807AF6B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AF6B4  80 81 00 08 */	lwz r4, 8(r1)
/* 807AF6B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AF6BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AF6C0  7C 03 00 00 */	cmpw r3, r0
/* 807AF6C4  41 82 00 14 */	beq lbl_807AF6D8
/* 807AF6C8  40 80 00 40 */	bge lbl_807AF708
/* 807AF6CC  2C 03 00 00 */	cmpwi r3, 0
/* 807AF6D0  41 82 00 20 */	beq lbl_807AF6F0
/* 807AF6D4  48 00 00 34 */	b lbl_807AF708
lbl_807AF6D8:
/* 807AF6D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AF6DC  41 82 00 0C */	beq lbl_807AF6E8
/* 807AF6E0  38 00 00 01 */	li r0, 1
/* 807AF6E4  48 00 00 28 */	b lbl_807AF70C
lbl_807AF6E8:
/* 807AF6E8  38 00 00 02 */	li r0, 2
/* 807AF6EC  48 00 00 20 */	b lbl_807AF70C
lbl_807AF6F0:
/* 807AF6F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AF6F4  41 82 00 0C */	beq lbl_807AF700
/* 807AF6F8  38 00 00 05 */	li r0, 5
/* 807AF6FC  48 00 00 10 */	b lbl_807AF70C
lbl_807AF700:
/* 807AF700  38 00 00 03 */	li r0, 3
/* 807AF704  48 00 00 08 */	b lbl_807AF70C
lbl_807AF708:
/* 807AF708  38 00 00 04 */	li r0, 4
lbl_807AF70C:
/* 807AF70C  2C 00 00 01 */	cmpwi r0, 1
/* 807AF710  40 82 00 0C */	bne lbl_807AF71C
/* 807AF714  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AF718  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807AF71C:
/* 807AF71C  D0 3E 06 D0 */	stfs f1, 0x6d0(r30)
/* 807AF720  7F C3 F3 78 */	mr r3, r30
/* 807AF724  4B FF D8 D5 */	bl d_action__8daE_SW_cFv
/* 807AF728  7F C3 F3 78 */	mr r3, r30
/* 807AF72C  4B FF C1 59 */	bl mtx_set__8daE_SW_cFv
/* 807AF730  7F C3 F3 78 */	mr r3, r30
/* 807AF734  4B FF C1 FD */	bl cc_set__8daE_SW_cFv
/* 807AF738  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 807AF73C  28 00 00 00 */	cmplwi r0, 0
/* 807AF740  41 82 00 CC */	beq lbl_807AF80C
/* 807AF744  88 1E 06 E5 */	lbz r0, 0x6e5(r30)
/* 807AF748  28 00 00 00 */	cmplwi r0, 0
/* 807AF74C  41 82 00 4C */	beq lbl_807AF798
/* 807AF750  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807AF754  7F C4 F3 78 */	mr r4, r30
/* 807AF758  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807AF75C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807AF760  7D 89 03 A6 */	mtctr r12
/* 807AF764  4E 80 04 21 */	bctrl 
/* 807AF768  2C 03 00 00 */	cmpwi r3, 0
/* 807AF76C  41 82 00 1C */	beq lbl_807AF788
/* 807AF770  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807AF774  7F C4 F3 78 */	mr r4, r30
/* 807AF778  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807AF77C  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 807AF780  7D 89 03 A6 */	mtctr r12
/* 807AF784  4E 80 04 21 */	bctrl 
lbl_807AF788:
/* 807AF788  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 807AF78C  60 00 02 00 */	ori r0, r0, 0x200
/* 807AF790  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 807AF794  48 00 00 10 */	b lbl_807AF7A4
lbl_807AF798:
/* 807AF798  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 807AF79C  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 807AF7A0  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_807AF7A4:
/* 807AF7A4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AF7A8  80 63 00 04 */	lwz r3, 4(r3)
/* 807AF7AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807AF7B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807AF7B4  38 63 00 30 */	addi r3, r3, 0x30
/* 807AF7B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AF7BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AF7C0  4B B9 6C F1 */	bl PSMTXCopy
/* 807AF7C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807AF7C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807AF7CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807AF7D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807AF7D4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807AF7D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807AF7DC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807AF7E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807AF7E4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807AF7E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807AF7EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807AF7F0  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 807AF7F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807AF7F8  7F C3 F3 78 */	mr r3, r30
/* 807AF7FC  38 9E 05 B8 */	addi r4, r30, 0x5b8
/* 807AF800  38 A1 00 18 */	addi r5, r1, 0x18
/* 807AF804  38 C1 00 0C */	addi r6, r1, 0xc
/* 807AF808  48 00 00 FD */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
lbl_807AF80C:
/* 807AF80C  38 60 00 01 */	li r3, 1
/* 807AF810  39 61 00 40 */	addi r11, r1, 0x40
/* 807AF814  4B BB 2A 15 */	bl _restgpr_29
/* 807AF818  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807AF81C  7C 08 03 A6 */	mtlr r0
/* 807AF820  38 21 00 40 */	addi r1, r1, 0x40
/* 807AF824  4E 80 00 20 */	blr 
