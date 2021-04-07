lbl_806AA73C:
/* 806AA73C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AA740  7C 08 02 A6 */	mflr r0
/* 806AA744  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AA748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AA74C  7C 7F 1B 78 */	mr r31, r3
/* 806AA750  A0 03 06 94 */	lhz r0, 0x694(r3)
/* 806AA754  28 00 00 00 */	cmplwi r0, 0
/* 806AA758  40 82 01 44 */	bne lbl_806AA89C
/* 806AA75C  88 1F 06 A2 */	lbz r0, 0x6a2(r31)
/* 806AA760  28 00 00 00 */	cmplwi r0, 0
/* 806AA764  40 82 01 38 */	bne lbl_806AA89C
/* 806AA768  38 7F 09 44 */	addi r3, r31, 0x944
/* 806AA76C  4B 9D 90 C5 */	bl Move__10dCcD_GSttsFv
/* 806AA770  38 7F 09 64 */	addi r3, r31, 0x964
/* 806AA774  4B 9D 9C ED */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806AA778  28 03 00 00 */	cmplwi r3, 0
/* 806AA77C  41 82 00 9C */	beq lbl_806AA818
/* 806AA780  38 00 00 0A */	li r0, 0xa
/* 806AA784  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806AA788  38 7F 09 64 */	addi r3, r31, 0x964
/* 806AA78C  4B 9D 9D 6D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806AA790  90 7F 0D 0C */	stw r3, 0xd0c(r31)
/* 806AA794  80 7F 0D 0C */	lwz r3, 0xd0c(r31)
/* 806AA798  4B BB 92 B1 */	bl GetAc__8cCcD_ObjFv
/* 806AA79C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806AA7A0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806AA7A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806AA7A8  FC 20 00 50 */	fneg f1, f0
/* 806AA7AC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806AA7B0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806AA7B4  EC 02 00 28 */	fsubs f0, f2, f0
/* 806AA7B8  FC 40 00 50 */	fneg f2, f0
/* 806AA7BC  4B BB CE B9 */	bl cM_atan2s__Fff
/* 806AA7C0  B0 7F 0D 1A */	sth r3, 0xd1a(r31)
/* 806AA7C4  88 1F 06 A3 */	lbz r0, 0x6a3(r31)
/* 806AA7C8  28 00 00 00 */	cmplwi r0, 0
/* 806AA7CC  40 82 00 38 */	bne lbl_806AA804
/* 806AA7D0  80 7F 0D 0C */	lwz r3, 0xd0c(r31)
/* 806AA7D4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806AA7D8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806AA7DC  41 82 00 18 */	beq lbl_806AA7F4
/* 806AA7E0  7F E3 FB 78 */	mr r3, r31
/* 806AA7E4  38 80 00 03 */	li r4, 3
/* 806AA7E8  38 A0 00 01 */	li r5, 1
/* 806AA7EC  4B FF FF 45 */	bl setActionMode__8daE_DK_cFii
/* 806AA7F0  48 00 00 14 */	b lbl_806AA804
lbl_806AA7F4:
/* 806AA7F4  7F E3 FB 78 */	mr r3, r31
/* 806AA7F8  38 80 00 03 */	li r4, 3
/* 806AA7FC  38 A0 00 00 */	li r5, 0
/* 806AA800  4B FF FF 31 */	bl setActionMode__8daE_DK_cFii
lbl_806AA804:
/* 806AA804  38 7F 09 64 */	addi r3, r31, 0x964
/* 806AA808  81 9F 09 A0 */	lwz r12, 0x9a0(r31)
/* 806AA80C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806AA810  7D 89 03 A6 */	mtctr r12
/* 806AA814  4E 80 04 21 */	bctrl 
lbl_806AA818:
/* 806AA818  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 806AA81C  4B 9D 9C 45 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806AA820  28 03 00 00 */	cmplwi r3, 0
/* 806AA824  41 82 00 78 */	beq lbl_806AA89C
/* 806AA828  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 806AA82C  4B 9D 9C CD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806AA830  90 7F 0D 0C */	stw r3, 0xd0c(r31)
/* 806AA834  7F E3 FB 78 */	mr r3, r31
/* 806AA838  38 9F 0D 0C */	addi r4, r31, 0xd0c
/* 806AA83C  4B 9D D3 C9 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806AA840  38 00 00 0A */	li r0, 0xa
/* 806AA844  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806AA848  80 7F 0D 0C */	lwz r3, 0xd0c(r31)
/* 806AA84C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806AA850  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806AA854  41 82 00 18 */	beq lbl_806AA86C
/* 806AA858  7F E3 FB 78 */	mr r3, r31
/* 806AA85C  38 80 00 04 */	li r4, 4
/* 806AA860  38 A0 00 01 */	li r5, 1
/* 806AA864  4B FF FE CD */	bl setActionMode__8daE_DK_cFii
/* 806AA868  48 00 00 20 */	b lbl_806AA888
lbl_806AA86C:
/* 806AA86C  88 1F 06 A3 */	lbz r0, 0x6a3(r31)
/* 806AA870  28 00 00 00 */	cmplwi r0, 0
/* 806AA874  40 82 00 14 */	bne lbl_806AA888
/* 806AA878  7F E3 FB 78 */	mr r3, r31
/* 806AA87C  38 80 00 04 */	li r4, 4
/* 806AA880  38 A0 00 00 */	li r5, 0
/* 806AA884  4B FF FE AD */	bl setActionMode__8daE_DK_cFii
lbl_806AA888:
/* 806AA888  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 806AA88C  81 9F 0C 10 */	lwz r12, 0xc10(r31)
/* 806AA890  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806AA894  7D 89 03 A6 */	mtctr r12
/* 806AA898  4E 80 04 21 */	bctrl 
lbl_806AA89C:
/* 806AA89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AA8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AA8A4  7C 08 03 A6 */	mtlr r0
/* 806AA8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 806AA8AC  4E 80 00 20 */	blr 
