lbl_8081A718:
/* 8081A718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8081A71C  7C 08 02 A6 */	mflr r0
/* 8081A720  90 01 00 24 */	stw r0, 0x24(r1)
/* 8081A724  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8081A728  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8081A72C  7C 7F 1B 78 */	mr r31, r3
/* 8081A730  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081A734  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
/* 8081A738  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081A73C  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081A740  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081A744  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8081A748  38 81 00 0C */	addi r4, r1, 0xc
/* 8081A74C  38 A0 00 00 */	li r5, 0
/* 8081A750  38 C0 FF FF */	li r6, -1
/* 8081A754  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8081A758  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081A75C  7D 89 03 A6 */	mtctr r12
/* 8081A760  4E 80 04 21 */	bctrl 
/* 8081A764  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 8081A768  2C 00 00 01 */	cmpwi r0, 1
/* 8081A76C  41 82 00 84 */	beq lbl_8081A7F0
/* 8081A770  40 80 01 04 */	bge lbl_8081A874
/* 8081A774  2C 00 00 00 */	cmpwi r0, 0
/* 8081A778  40 80 00 08 */	bge lbl_8081A780
/* 8081A77C  48 00 00 F8 */	b lbl_8081A874
lbl_8081A780:
/* 8081A780  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702BE@ha */
/* 8081A784  38 03 02 BE */	addi r0, r3, 0x02BE /* 0x000702BE@l */
/* 8081A788  90 01 00 08 */	stw r0, 8(r1)
/* 8081A78C  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8081A790  38 81 00 08 */	addi r4, r1, 8
/* 8081A794  38 A0 FF FF */	li r5, -1
/* 8081A798  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8081A79C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8081A7A0  7D 89 03 A6 */	mtctr r12
/* 8081A7A4  4E 80 04 21 */	bctrl 
/* 8081A7A8  7F E3 FB 78 */	mr r3, r31
/* 8081A7AC  38 80 00 12 */	li r4, 0x12
/* 8081A7B0  38 A0 00 00 */	li r5, 0
/* 8081A7B4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8081A7B8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081A7BC  4B FF C1 C1 */	bl setBck__9daE_YMB_cFiUcff
/* 8081A7C0  7F E3 FB 78 */	mr r3, r31
/* 8081A7C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081A7C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081A7CC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8081A7D0  4B 7F FF 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081A7D4  38 03 80 00 */	addi r0, r3, -32768
/* 8081A7D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8081A7DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8081A7E0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8081A7E4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8081A7E8  38 00 00 01 */	li r0, 1
/* 8081A7EC  90 1F 06 B8 */	stw r0, 0x6b8(r31)
lbl_8081A7F0:
/* 8081A7F0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8081A7F4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A7F8  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 8081A7FC  4B A5 5F 45 */	bl cLib_chaseF__FPfff
/* 8081A800  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 8081A804  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A808  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 8081A80C  4B A5 5F 35 */	bl cLib_chaseF__FPfff
/* 8081A810  7F E3 FB 78 */	mr r3, r31
/* 8081A814  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081A818  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081A81C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8081A820  4B 7F FE F1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081A824  7C 64 1B 78 */	mr r4, r3
/* 8081A828  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8081A82C  38 A0 04 00 */	li r5, 0x400
/* 8081A830  4B A5 63 61 */	bl cLib_chaseAngleS__FPsss
/* 8081A834  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8081A838  38 80 00 01 */	li r4, 1
/* 8081A83C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081A840  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081A844  40 82 00 18 */	bne lbl_8081A85C
/* 8081A848  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A84C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081A850  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081A854  41 82 00 08 */	beq lbl_8081A85C
/* 8081A858  38 80 00 00 */	li r4, 0
lbl_8081A85C:
/* 8081A85C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081A860  41 82 00 14 */	beq lbl_8081A874
/* 8081A864  7F E3 FB 78 */	mr r3, r31
/* 8081A868  38 80 00 01 */	li r4, 1
/* 8081A86C  38 A0 00 00 */	li r5, 0
/* 8081A870  4B FF C2 0D */	bl setActionMode__9daE_YMB_cFii
lbl_8081A874:
/* 8081A874  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8081A878  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8081A87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8081A880  7C 08 03 A6 */	mtlr r0
/* 8081A884  38 21 00 20 */	addi r1, r1, 0x20
/* 8081A888  4E 80 00 20 */	blr 
