lbl_8048F558:
/* 8048F558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048F55C  7C 08 02 A6 */	mflr r0
/* 8048F560  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048F564  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048F568  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048F56C  7C 7F 1B 78 */	mr r31, r3
/* 8048F570  A0 03 05 A2 */	lhz r0, 0x5a2(r3)
/* 8048F574  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8048F578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048F57C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048F580  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8048F584  7C 05 07 74 */	extsb r5, r0
/* 8048F588  4B BA 5D D8 */	b isSwitch__10dSv_info_cCFii
/* 8048F58C  2C 03 00 00 */	cmpwi r3, 0
/* 8048F590  41 82 00 0C */	beq lbl_8048F59C
/* 8048F594  38 60 00 01 */	li r3, 1
/* 8048F598  48 00 00 E0 */	b lbl_8048F678
lbl_8048F59C:
/* 8048F59C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048F5A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048F5A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8048F5A8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8048F5AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8048F5B0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8048F5B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8048F5B8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8048F5BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048F5C0  38 61 00 08 */	addi r3, r1, 8
/* 8048F5C4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 8048F5C8  7C 65 1B 78 */	mr r5, r3
/* 8048F5CC  4B EB 7A E8 */	b PSVECSubtract
/* 8048F5D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8048F5D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8048F5D8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8048F5DC  7C 00 00 D0 */	neg r0, r0
/* 8048F5E0  7C 04 07 34 */	extsh r4, r0
/* 8048F5E4  4B B7 CD F8 */	b mDoMtx_YrotS__FPA4_fs
/* 8048F5E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8048F5EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8048F5F0  38 81 00 08 */	addi r4, r1, 8
/* 8048F5F4  7C 85 23 78 */	mr r5, r4
/* 8048F5F8  4B EB 77 74 */	b PSMTXMultVec
/* 8048F5FC  38 00 00 00 */	li r0, 0
/* 8048F600  C0 1F 05 70 */	lfs f0, 0x570(r31)
/* 8048F604  C0 41 00 08 */	lfs f2, 8(r1)
/* 8048F608  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8048F60C  40 80 00 30 */	bge lbl_8048F63C
/* 8048F610  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 8048F614  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8048F618  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048F61C  40 80 00 20 */	bge lbl_8048F63C
/* 8048F620  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 8048F624  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8048F628  40 81 00 14 */	ble lbl_8048F63C
/* 8048F62C  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 8048F630  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048F634  40 81 00 08 */	ble lbl_8048F63C
/* 8048F638  38 00 00 01 */	li r0, 1
lbl_8048F63C:
/* 8048F63C  54 1E 06 3F */	clrlwi. r30, r0, 0x18
/* 8048F640  41 82 00 30 */	beq lbl_8048F670
/* 8048F644  88 1F 05 A0 */	lbz r0, 0x5a0(r31)
/* 8048F648  28 00 00 00 */	cmplwi r0, 0
/* 8048F64C  40 82 00 24 */	bne lbl_8048F670
/* 8048F650  7F E3 FB 78 */	mr r3, r31
/* 8048F654  4B FF FC 05 */	bl offSw__11daTagMist_cFv
/* 8048F658  7F E3 FB 78 */	mr r3, r31
/* 8048F65C  4B FF FC 69 */	bl onMySw__11daTagMist_cFv
/* 8048F660  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8048F664  54 00 46 BE */	rlwinm r0, r0, 8, 0x1a, 0x1f
/* 8048F668  3C 60 80 45 */	lis r3, struct_80450DC0+0x0@ha
/* 8048F66C  98 03 0D C0 */	stb r0, struct_80450DC0+0x0@l(r3)
lbl_8048F670:
/* 8048F670  9B DF 05 A0 */	stb r30, 0x5a0(r31)
/* 8048F674  38 60 00 01 */	li r3, 1
lbl_8048F678:
/* 8048F678  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048F67C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8048F680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048F684  7C 08 03 A6 */	mtlr r0
/* 8048F688  38 21 00 20 */	addi r1, r1, 0x20
/* 8048F68C  4E 80 00 20 */	blr 
