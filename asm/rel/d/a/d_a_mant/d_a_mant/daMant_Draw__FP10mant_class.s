lbl_808616B8:
/* 808616B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808616BC  7C 08 02 A6 */	mflr r0
/* 808616C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808616C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808616C8  7C 7F 1B 78 */	mr r31, r3
/* 808616CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808616D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 808616D4  38 80 00 00 */	li r4, 0
/* 808616D8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 808616DC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 808616E0  4B 94 20 E5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 808616E4  3C 60 80 86 */	lis r3, lit_3849@ha /* 0x80862C5C@ha */
/* 808616E8  C0 23 2C 5C */	lfs f1, lit_3849@l(r3)  /* 0x80862C5C@l */
/* 808616EC  FC 40 08 90 */	fmr f2, f1
/* 808616F0  FC 60 08 90 */	fmr f3, f1
/* 808616F4  38 60 00 00 */	li r3, 0
/* 808616F8  4B A0 F7 65 */	bl MtxTrans__FfffUc
/* 808616FC  38 BF 05 80 */	addi r5, r31, 0x580
/* 80861700  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80861704  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80861708  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8086170C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80861710  80 84 00 00 */	lwz r4, 0(r4)
/* 80861714  4B AE 4D D1 */	bl PSMTXConcat
/* 80861718  38 BF 05 B0 */	addi r5, r31, 0x5b0
/* 8086171C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80861720  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80861724  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80861728  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8086172C  80 84 00 00 */	lwz r4, 0(r4)
/* 80861730  4B AE 4D B5 */	bl PSMTXConcat
/* 80861734  38 1F 01 0C */	addi r0, r31, 0x10c
/* 80861738  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 8086173C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80861740  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80861744  80 63 00 48 */	lwz r3, 0x48(r3)
/* 80861748  38 9F 05 70 */	addi r4, r31, 0x570
/* 8086174C  38 A0 00 00 */	li r5, 0
/* 80861750  4B AC 3D 3D */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80861754  38 60 00 01 */	li r3, 1
/* 80861758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086175C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80861760  7C 08 03 A6 */	mtlr r0
/* 80861764  38 21 00 10 */	addi r1, r1, 0x10
/* 80861768  4E 80 00 20 */	blr 
