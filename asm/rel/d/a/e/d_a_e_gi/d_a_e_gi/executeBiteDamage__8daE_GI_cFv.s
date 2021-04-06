lbl_806CF410:
/* 806CF410  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CF414  7C 08 02 A6 */	mflr r0
/* 806CF418  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CF41C  39 61 00 30 */	addi r11, r1, 0x30
/* 806CF420  4B C9 2D BD */	bl _savegpr_29
/* 806CF424  7C 7D 1B 78 */	mr r29, r3
/* 806CF428  3C 60 80 6D */	lis r3, lit_3907@ha /* 0x806D0E60@ha */
/* 806CF42C  3B E3 0E 60 */	addi r31, r3, lit_3907@l /* 0x806D0E60@l */
/* 806CF430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CF434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CF438  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 806CF43C  80 1D 06 74 */	lwz r0, 0x674(r29)
/* 806CF440  2C 00 00 01 */	cmpwi r0, 1
/* 806CF444  41 82 00 A4 */	beq lbl_806CF4E8
/* 806CF448  40 80 02 C0 */	bge lbl_806CF708
/* 806CF44C  2C 00 00 00 */	cmpwi r0, 0
/* 806CF450  40 80 00 08 */	bge lbl_806CF458
/* 806CF454  48 00 02 B4 */	b lbl_806CF708
lbl_806CF458:
/* 806CF458  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 806CF45C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 806CF460  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 806CF464  38 A0 00 1F */	li r5, 0x1f
/* 806CF468  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 806CF46C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806CF470  7D 89 03 A6 */	mtctr r12
/* 806CF474  4E 80 04 21 */	bctrl 
/* 806CF478  7F A3 EB 78 */	mr r3, r29
/* 806CF47C  38 80 00 0E */	li r4, 0xe
/* 806CF480  38 A0 00 00 */	li r5, 0
/* 806CF484  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF488  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF48C  4B FF E3 DD */	bl setBck__8daE_GI_cFiUcff
/* 806CF490  38 00 00 01 */	li r0, 1
/* 806CF494  90 1D 06 74 */	stw r0, 0x674(r29)
/* 806CF498  38 00 00 00 */	li r0, 0
/* 806CF49C  98 1D 06 A4 */	stb r0, 0x6a4(r29)
/* 806CF4A0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CF4A4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806CF4A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CF4AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CF4B0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806CF4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CF4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CF4BC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806CF4C0  38 80 00 03 */	li r4, 3
/* 806CF4C4  38 A0 00 1F */	li r5, 0x1f
/* 806CF4C8  38 C1 00 14 */	addi r6, r1, 0x14
/* 806CF4CC  4B 9A 05 59 */	bl StartShock__12dVibration_cFii4cXyz
/* 806CF4D0  7F A3 EB 78 */	mr r3, r29
/* 806CF4D4  4B FF EC B1 */	bl setDamageEffect__8daE_GI_cFv
/* 806CF4D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CF4DC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806CF4E0  38 00 00 00 */	li r0, 0
/* 806CF4E4  90 1D 06 8C */	stw r0, 0x68c(r29)
lbl_806CF4E8:
/* 806CF4E8  7F C3 F3 78 */	mr r3, r30
/* 806CF4EC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806CF4F0  38 04 E0 00 */	addi r0, r4, -8192
/* 806CF4F4  7C 04 07 34 */	extsh r4, r0
/* 806CF4F8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 806CF4FC  81 8C 01 E4 */	lwz r12, 0x1e4(r12)
/* 806CF500  7D 89 03 A6 */	mtctr r12
/* 806CF504  4E 80 04 21 */	bctrl 
/* 806CF508  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CF50C  38 80 00 01 */	li r4, 1
/* 806CF510  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CF514  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CF518  40 82 00 18 */	bne lbl_806CF530
/* 806CF51C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CF520  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CF524  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CF528  41 82 00 08 */	beq lbl_806CF530
/* 806CF52C  38 80 00 00 */	li r4, 0
lbl_806CF530:
/* 806CF530  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CF534  41 82 00 1C */	beq lbl_806CF550
/* 806CF538  7F A3 EB 78 */	mr r3, r29
/* 806CF53C  38 80 00 10 */	li r4, 0x10
/* 806CF540  38 A0 00 02 */	li r5, 2
/* 806CF544  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF548  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF54C  4B FF E3 1D */	bl setBck__8daE_GI_cFiUcff
lbl_806CF550:
/* 806CF550  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 806CF554  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 806CF558  41 82 01 50 */	beq lbl_806CF6A8
/* 806CF55C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CF560  D0 21 00 08 */	stfs f1, 8(r1)
/* 806CF564  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CF568  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806CF56C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806CF570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CF574  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CF578  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806CF57C  38 80 00 03 */	li r4, 3
/* 806CF580  38 A0 00 1F */	li r5, 0x1f
/* 806CF584  38 C1 00 08 */	addi r6, r1, 8
/* 806CF588  4B 9A 04 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 806CF58C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 806CF590  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 806CF594  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 806CF598  88 7D 06 A4 */	lbz r3, 0x6a4(r29)
/* 806CF59C  38 03 00 01 */	addi r0, r3, 1
/* 806CF5A0  98 1D 06 A4 */	stb r0, 0x6a4(r29)
/* 806CF5A4  A8 7D 05 62 */	lha r3, 0x562(r29)
/* 806CF5A8  38 03 FF EC */	addi r0, r3, -20
/* 806CF5AC  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806CF5B0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806CF5B4  2C 00 00 00 */	cmpwi r0, 0
/* 806CF5B8  40 80 00 4C */	bge lbl_806CF604
/* 806CF5BC  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 806CF5C0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 806CF5C4  90 1E 05 78 */	stw r0, 0x578(r30)
/* 806CF5C8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 806CF5CC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 806CF5D0  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 806CF5D4  38 A0 00 20 */	li r5, 0x20
/* 806CF5D8  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 806CF5DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806CF5E0  7D 89 03 A6 */	mtctr r12
/* 806CF5E4  4E 80 04 21 */	bctrl 
/* 806CF5E8  7F A3 EB 78 */	mr r3, r29
/* 806CF5EC  4B FF EB 99 */	bl setDamageEffect__8daE_GI_cFv
/* 806CF5F0  7F A3 EB 78 */	mr r3, r29
/* 806CF5F4  38 80 00 04 */	li r4, 4
/* 806CF5F8  38 A0 00 0A */	li r5, 0xa
/* 806CF5FC  4B FF E3 11 */	bl setActionMode__8daE_GI_cFii
/* 806CF600  48 00 00 A8 */	b lbl_806CF6A8
lbl_806CF604:
/* 806CF604  88 1D 06 A4 */	lbz r0, 0x6a4(r29)
/* 806CF608  28 00 00 05 */	cmplwi r0, 5
/* 806CF60C  41 80 00 64 */	blt lbl_806CF670
/* 806CF610  7F A3 EB 78 */	mr r3, r29
/* 806CF614  4B FF EB 71 */	bl setDamageEffect__8daE_GI_cFv
/* 806CF618  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 806CF61C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 806CF620  90 1E 05 78 */	stw r0, 0x578(r30)
/* 806CF624  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 806CF628  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 806CF62C  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 806CF630  38 A0 00 1F */	li r5, 0x1f
/* 806CF634  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 806CF638  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806CF63C  7D 89 03 A6 */	mtctr r12
/* 806CF640  4E 80 04 21 */	bctrl 
/* 806CF644  7F A3 EB 78 */	mr r3, r29
/* 806CF648  38 80 00 0F */	li r4, 0xf
/* 806CF64C  38 A0 00 00 */	li r5, 0
/* 806CF650  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF654  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF658  4B FF E2 11 */	bl setBck__8daE_GI_cFiUcff
/* 806CF65C  7F A3 EB 78 */	mr r3, r29
/* 806CF660  38 80 00 04 */	li r4, 4
/* 806CF664  38 A0 00 02 */	li r5, 2
/* 806CF668  4B FF E2 A5 */	bl setActionMode__8daE_GI_cFii
/* 806CF66C  48 00 00 3C */	b lbl_806CF6A8
lbl_806CF670:
/* 806CF670  7F A3 EB 78 */	mr r3, r29
/* 806CF674  38 80 00 0D */	li r4, 0xd
/* 806CF678  38 A0 00 00 */	li r5, 0
/* 806CF67C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF680  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF684  4B FF E1 E5 */	bl setBck__8daE_GI_cFiUcff
/* 806CF688  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 806CF68C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 806CF690  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 806CF694  38 A0 00 1E */	li r5, 0x1e
/* 806CF698  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 806CF69C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806CF6A0  7D 89 03 A6 */	mtctr r12
/* 806CF6A4  4E 80 04 21 */	bctrl 
lbl_806CF6A8:
/* 806CF6A8  7F C3 F3 78 */	mr r3, r30
/* 806CF6AC  7F A4 EB 78 */	mr r4, r29
/* 806CF6B0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 806CF6B4  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 806CF6B8  7D 89 03 A6 */	mtctr r12
/* 806CF6BC  4E 80 04 21 */	bctrl 
/* 806CF6C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CF6C4  40 82 00 44 */	bne lbl_806CF708
/* 806CF6C8  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 806CF6CC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 806CF6D0  90 1E 05 78 */	stw r0, 0x578(r30)
/* 806CF6D4  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 806CF6D8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 806CF6DC  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 806CF6E0  7F A3 EB 78 */	mr r3, r29
/* 806CF6E4  38 80 00 0F */	li r4, 0xf
/* 806CF6E8  38 A0 00 00 */	li r5, 0
/* 806CF6EC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CF6F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF6F4  4B FF E1 75 */	bl setBck__8daE_GI_cFiUcff
/* 806CF6F8  7F A3 EB 78 */	mr r3, r29
/* 806CF6FC  38 80 00 04 */	li r4, 4
/* 806CF700  38 A0 00 02 */	li r5, 2
/* 806CF704  4B FF E2 09 */	bl setActionMode__8daE_GI_cFii
lbl_806CF708:
/* 806CF708  39 61 00 30 */	addi r11, r1, 0x30
/* 806CF70C  4B C9 2B 1D */	bl _restgpr_29
/* 806CF710  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CF714  7C 08 03 A6 */	mtlr r0
/* 806CF718  38 21 00 30 */	addi r1, r1, 0x30
/* 806CF71C  4E 80 00 20 */	blr 
