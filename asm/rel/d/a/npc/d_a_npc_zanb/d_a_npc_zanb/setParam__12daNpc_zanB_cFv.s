lbl_80B69B7C:
/* 80B69B7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B69B80  7C 08 02 A6 */	mflr r0
/* 80B69B84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B69B88  39 61 00 20 */	addi r11, r1, 0x20
/* 80B69B8C  4B 7F 86 51 */	bl _savegpr_29
/* 80B69B90  7C 7F 1B 78 */	mr r31, r3
/* 80B69B94  48 00 08 E9 */	bl selectAction__12daNpc_zanB_cFv
/* 80B69B98  7F E3 FB 78 */	mr r3, r31
/* 80B69B9C  48 00 01 6D */	bl srchActors__12daNpc_zanB_cFv
/* 80B69BA0  3C 60 80 B7 */	lis r3, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B69BA4  38 83 BC C4 */	addi r4, r3, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B69BA8  AB A4 00 48 */	lha r29, 0x48(r4)
/* 80B69BAC  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 80B69BB0  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80B69BB4  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80B69BB8  4B 5E 2E 61 */	bl daNpcT_getDistTableIdx__Fii
/* 80B69BBC  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80B69BC0  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80B69BC4  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80B69BC8  7F A3 07 34 */	extsh r3, r29
/* 80B69BCC  7F C4 07 34 */	extsh r4, r30
/* 80B69BD0  4B 5E 2E 49 */	bl daNpcT_getDistTableIdx__Fii
/* 80B69BD4  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80B69BD8  38 00 00 0A */	li r0, 0xa
/* 80B69BDC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B69BE0  3C 60 80 B7 */	lis r3, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B69BE4  38 63 BC C4 */	addi r3, r3, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B69BE8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B69BEC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80B69BF0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80B69BF4  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80B69BF8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B69BFC  FC 00 00 1E */	fctiwz f0, f0
/* 80B69C00  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B69C04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B69C08  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80B69C0C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B69C10  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80B69C14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B69C18  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80B69C1C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B69C20  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80B69C24  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B69C28  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80B69C2C  4B 50 C3 15 */	bl SetWallR__12dBgS_AcchCirFf
/* 80B69C30  3C 60 80 B7 */	lis r3, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B69C34  38 63 BC C4 */	addi r3, r3, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B69C38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B69C3C  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80B69C40  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B69C44  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80B69C48  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B69C4C  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80B69C50  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B69C54  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80B69C58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B69C5C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B69C60  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B69C64  28 00 00 00 */	cmplwi r0, 0
/* 80B69C68  40 82 00 28 */	bne lbl_80B69C90
/* 80B69C6C  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80B69C70  60 00 00 02 */	ori r0, r0, 2
/* 80B69C74  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80B69C78  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80B69C7C  60 00 00 04 */	ori r0, r0, 4
/* 80B69C80  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80B69C84  3C 60 80 B7 */	lis r3, lit_4190@ha /* 0x80B6BD6C@ha */
/* 80B69C88  C0 03 BD 6C */	lfs f0, lit_4190@l(r3)  /* 0x80B6BD6C@l */
/* 80B69C8C  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_80B69C90:
/* 80B69C90  39 61 00 20 */	addi r11, r1, 0x20
/* 80B69C94  4B 7F 85 95 */	bl _restgpr_29
/* 80B69C98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B69C9C  7C 08 03 A6 */	mtlr r0
/* 80B69CA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B69CA4  4E 80 00 20 */	blr 
