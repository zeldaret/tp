lbl_8001F3B4:
/* 8001F3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F3B8  7C 08 02 A6 */	mflr r0
/* 8001F3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F3C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F3C8  7C 7F 1B 78 */	mr r31, r3
/* 8001F3CC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8001F3D0  7C 00 07 75 */	extsb. r0, r0
/* 8001F3D4  40 82 00 6C */	bne lbl_8001F440
/* 8001F3D8  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 8001F3DC  38 6D 87 68 */	la r3, fopKy_KANKYO_TYPE(r13) /* 80450CE8-_SDA_BASE_ */
/* 8001F3E0  48 00 12 7D */	bl fpcBs_MakeOfType__FPi
/* 8001F3E4  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 8001F3E8  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8001F3EC  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 8001F3F0  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8001F3F4  7F E4 FB 78 */	mr r4, r31
/* 8001F3F8  48 00 10 FD */	bl fopDwTg_Init__FP16create_tag_classPv
/* 8001F3FC  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8001F400  28 03 00 00 */	cmplwi r3, 0
/* 8001F404  41 82 00 3C */	beq lbl_8001F440
/* 8001F408  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001F40C  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 8001F410  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001F414  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 8001F418  C0 03 00 08 */	lfs f0, 8(r3)
/* 8001F41C  D0 1F 00 E4 */	stfs f0, 0xe4(r31)
/* 8001F420  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8001F424  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 8001F428  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8001F42C  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 8001F430  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8001F434  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 8001F438  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8001F43C  90 1F 00 F4 */	stw r0, 0xf4(r31)
lbl_8001F440:
/* 8001F440  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8001F444  7F E4 FB 78 */	mr r4, r31
/* 8001F448  48 00 30 85 */	bl fpcMtd_Create__FP20process_method_classPv
/* 8001F44C  7C 7E 1B 78 */	mr r30, r3
/* 8001F450  2C 1E 00 04 */	cmpwi r30, 4
/* 8001F454  40 82 00 18 */	bne lbl_8001F46C
/* 8001F458  7F E3 FB 78 */	mr r3, r31
/* 8001F45C  48 00 25 A5 */	bl fpcLf_GetPriority__FPC14leafdraw_class
/* 8001F460  7C 64 07 34 */	extsh r4, r3
/* 8001F464  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8001F468  48 00 10 45 */	bl fopDwTg_ToDrawQ__FP16create_tag_classi
lbl_8001F46C:
/* 8001F46C  7F C3 F3 78 */	mr r3, r30
/* 8001F470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F474  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F47C  7C 08 03 A6 */	mtlr r0
/* 8001F480  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F484  4E 80 00 20 */	blr 
