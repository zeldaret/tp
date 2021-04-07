lbl_80D5C708:
/* 80D5C708  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D5C70C  7C 08 02 A6 */	mflr r0
/* 80D5C710  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D5C714  39 61 00 50 */	addi r11, r1, 0x50
/* 80D5C718  4B 60 5A C1 */	bl _savegpr_28
/* 80D5C71C  7C 7D 1B 78 */	mr r29, r3
/* 80D5C720  3C 60 80 D6 */	lis r3, lit_3743@ha /* 0x80D5CA3C@ha */
/* 80D5C724  3B C3 CA 3C */	addi r30, r3, lit_3743@l /* 0x80D5CA3C@l */
/* 80D5C728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5C72C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5C730  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80D5C734  28 00 00 00 */	cmplwi r0, 0
/* 80D5C738  40 82 02 34 */	bne lbl_80D5C96C
/* 80D5C73C  7F E3 FB 78 */	mr r3, r31
/* 80D5C740  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80D5C744  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D5C748  7C 05 07 74 */	extsb r5, r0
/* 80D5C74C  4B 2D 8C 15 */	bl isSwitch__10dSv_info_cCFii
/* 80D5C750  2C 03 00 00 */	cmpwi r3, 0
/* 80D5C754  40 82 02 18 */	bne lbl_80D5C96C
/* 80D5C758  38 61 00 20 */	addi r3, r1, 0x20
/* 80D5C75C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5C760  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5C764  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80D5C768  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D5C76C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D5C770  4B 50 A3 C5 */	bl __mi__4cXyzCFRC3Vec
/* 80D5C774  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D5C778  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D5C77C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D5C780  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D5C784  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D5C788  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D5C78C  38 61 00 14 */	addi r3, r1, 0x14
/* 80D5C790  4B 5E A9 A9 */	bl PSVECSquareMag
/* 80D5C794  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D5C798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5C79C  40 81 00 58 */	ble lbl_80D5C7F4
/* 80D5C7A0  FC 00 08 34 */	frsqrte f0, f1
/* 80D5C7A4  C8 9E 00 08 */	lfd f4, 8(r30)
/* 80D5C7A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5C7AC  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 80D5C7B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5C7B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5C7B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5C7BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5C7C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5C7C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5C7C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5C7CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5C7D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5C7D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D5C7D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D5C7DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D5C7E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D5C7E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D5C7E8  FC 21 00 32 */	fmul f1, f1, f0
/* 80D5C7EC  FC 20 08 18 */	frsp f1, f1
/* 80D5C7F0  48 00 00 88 */	b lbl_80D5C878
lbl_80D5C7F4:
/* 80D5C7F4  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 80D5C7F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5C7FC  40 80 00 10 */	bge lbl_80D5C80C
/* 80D5C800  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5C804  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D5C808  48 00 00 70 */	b lbl_80D5C878
lbl_80D5C80C:
/* 80D5C80C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D5C810  80 81 00 08 */	lwz r4, 8(r1)
/* 80D5C814  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D5C818  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D5C81C  7C 03 00 00 */	cmpw r3, r0
/* 80D5C820  41 82 00 14 */	beq lbl_80D5C834
/* 80D5C824  40 80 00 40 */	bge lbl_80D5C864
/* 80D5C828  2C 03 00 00 */	cmpwi r3, 0
/* 80D5C82C  41 82 00 20 */	beq lbl_80D5C84C
/* 80D5C830  48 00 00 34 */	b lbl_80D5C864
lbl_80D5C834:
/* 80D5C834  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5C838  41 82 00 0C */	beq lbl_80D5C844
/* 80D5C83C  38 00 00 01 */	li r0, 1
/* 80D5C840  48 00 00 28 */	b lbl_80D5C868
lbl_80D5C844:
/* 80D5C844  38 00 00 02 */	li r0, 2
/* 80D5C848  48 00 00 20 */	b lbl_80D5C868
lbl_80D5C84C:
/* 80D5C84C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D5C850  41 82 00 0C */	beq lbl_80D5C85C
/* 80D5C854  38 00 00 05 */	li r0, 5
/* 80D5C858  48 00 00 10 */	b lbl_80D5C868
lbl_80D5C85C:
/* 80D5C85C  38 00 00 03 */	li r0, 3
/* 80D5C860  48 00 00 08 */	b lbl_80D5C868
lbl_80D5C864:
/* 80D5C864  38 00 00 04 */	li r0, 4
lbl_80D5C868:
/* 80D5C868  2C 00 00 01 */	cmpwi r0, 1
/* 80D5C86C  40 82 00 0C */	bne lbl_80D5C878
/* 80D5C870  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D5C874  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D5C878:
/* 80D5C878  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 80D5C87C  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80D5C880  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5C884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D5C888  40 80 00 E4 */	bge lbl_80D5C96C
/* 80D5C88C  7F A3 EB 78 */	mr r3, r29
/* 80D5C890  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80D5C894  4B 2B DE 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D5C898  7C 60 1B 78 */	mr r0, r3
/* 80D5C89C  38 61 00 0C */	addi r3, r1, 0xc
/* 80D5C8A0  38 80 00 1E */	li r4, 0x1e
/* 80D5C8A4  7C 05 07 34 */	extsh r5, r0
/* 80D5C8A8  38 C0 00 00 */	li r6, 0
/* 80D5C8AC  4B 50 AB 49 */	bl __ct__5csXyzFsss
/* 80D5C8B0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D5C8B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D5C8B8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80D5C8BC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80D5C8C0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D5C8C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D5C8C8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80D5C8CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D5C8D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D5C8D4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D5C8D8  4B 2C 13 E5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80D5C8DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5C8E0  41 82 00 14 */	beq lbl_80D5C8F4
/* 80D5C8E4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80D5C8E8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80D5C8EC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D5C8F0  48 00 00 1C */	b lbl_80D5C90C
lbl_80D5C8F4:
/* 80D5C8F4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D5C8F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D5C8FC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D5C900  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D5C904  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D5C908  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80D5C90C:
/* 80D5C90C  A8 1D 05 70 */	lha r0, 0x570(r29)
/* 80D5C910  2C 00 00 00 */	cmpwi r0, 0
/* 80D5C914  40 82 00 58 */	bne lbl_80D5C96C
/* 80D5C918  38 60 02 86 */	li r3, 0x286
/* 80D5C91C  80 1D 05 68 */	lwz r0, 0x568(r29)
/* 80D5C920  54 00 40 2E */	slwi r0, r0, 8
/* 80D5C924  64 04 FF FF */	oris r4, r0, 0xffff
/* 80D5C928  60 84 00 01 */	ori r4, r4, 1
/* 80D5C92C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D5C930  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D5C934  7C 06 07 74 */	extsb r6, r0
/* 80D5C938  38 E1 00 0C */	addi r7, r1, 0xc
/* 80D5C93C  39 00 00 00 */	li r8, 0
/* 80D5C940  39 20 FF FF */	li r9, -1
/* 80D5C944  4B 2B D4 55 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80D5C948  3C 03 00 01 */	addis r0, r3, 1
/* 80D5C94C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D5C950  41 82 00 1C */	beq lbl_80D5C96C
/* 80D5C954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5C958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5C95C  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80D5C960  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D5C964  7C 05 07 74 */	extsb r5, r0
/* 80D5C968  4B 2D 88 99 */	bl onSwitch__10dSv_info_cFii
lbl_80D5C96C:
/* 80D5C96C  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80D5C970  28 00 00 00 */	cmplwi r0, 0
/* 80D5C974  41 82 00 10 */	beq lbl_80D5C984
/* 80D5C978  38 00 00 05 */	li r0, 5
/* 80D5C97C  B0 1D 05 70 */	sth r0, 0x570(r29)
/* 80D5C980  48 00 00 0C */	b lbl_80D5C98C
lbl_80D5C984:
/* 80D5C984  38 7D 05 70 */	addi r3, r29, 0x570
/* 80D5C988  48 00 00 91 */	bl func_80D5CA18
lbl_80D5C98C:
/* 80D5C98C  38 60 00 01 */	li r3, 1
/* 80D5C990  39 61 00 50 */	addi r11, r1, 0x50
/* 80D5C994  4B 60 58 91 */	bl _restgpr_28
/* 80D5C998  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D5C99C  7C 08 03 A6 */	mtlr r0
/* 80D5C9A0  38 21 00 50 */	addi r1, r1, 0x50
/* 80D5C9A4  4E 80 00 20 */	blr 
