lbl_8095A6EC:
/* 8095A6EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8095A6F0  7C 08 02 A6 */	mflr r0
/* 8095A6F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095A6F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8095A6FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8095A700  7C 7F 1B 78 */	mr r31, r3
/* 8095A704  3C 80 80 96 */	lis r4, m__16daNpcAsh_Param_c@ha
/* 8095A708  3B C4 D6 40 */	addi r30, r4, m__16daNpcAsh_Param_c@l
/* 8095A70C  A0 03 0F 5C */	lhz r0, 0xf5c(r3)
/* 8095A710  2C 00 00 02 */	cmpwi r0, 2
/* 8095A714  41 82 00 A4 */	beq lbl_8095A7B8
/* 8095A718  40 80 01 B8 */	bge lbl_8095A8D0
/* 8095A71C  2C 00 00 00 */	cmpwi r0, 0
/* 8095A720  41 82 00 0C */	beq lbl_8095A72C
/* 8095A724  48 00 01 AC */	b lbl_8095A8D0
/* 8095A728  48 00 01 A8 */	b lbl_8095A8D0
lbl_8095A72C:
/* 8095A72C  38 80 00 07 */	li r4, 7
/* 8095A730  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A734  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8095A738  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095A73C  7D 89 03 A6 */	mtctr r12
/* 8095A740  4E 80 04 21 */	bctrl 
/* 8095A744  7F E3 FB 78 */	mr r3, r31
/* 8095A748  38 80 00 07 */	li r4, 7
/* 8095A74C  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8095A750  38 A0 00 00 */	li r5, 0
/* 8095A754  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8095A758  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095A75C  7D 89 03 A6 */	mtctr r12
/* 8095A760  4E 80 04 21 */	bctrl 
/* 8095A764  38 00 00 00 */	li r0, 0
/* 8095A768  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 8095A76C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8095A770  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8095A774  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 8095A778  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095A77C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095A780  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8095A784  4B 7F 5F 38 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8095A788  A8 1F 0F 5A */	lha r0, 0xf5a(r31)
/* 8095A78C  2C 00 00 00 */	cmpwi r0, 0
/* 8095A790  40 82 00 10 */	bne lbl_8095A7A0
/* 8095A794  80 1F 0C B0 */	lwz r0, 0xcb0(r31)
/* 8095A798  28 00 00 00 */	cmplwi r0, 0
/* 8095A79C  41 82 00 10 */	beq lbl_8095A7AC
lbl_8095A7A0:
/* 8095A7A0  38 00 00 00 */	li r0, 0
/* 8095A7A4  B0 1F 0F 5A */	sth r0, 0xf5a(r31)
/* 8095A7A8  90 1F 0C B0 */	stw r0, 0xcb0(r31)
lbl_8095A7AC:
/* 8095A7AC  38 00 00 02 */	li r0, 2
/* 8095A7B0  B0 1F 0F 5C */	sth r0, 0xf5c(r31)
/* 8095A7B4  48 00 01 1C */	b lbl_8095A8D0
lbl_8095A7B8:
/* 8095A7B8  80 1F 0F 54 */	lwz r0, 0xf54(r31)
/* 8095A7BC  2C 00 00 01 */	cmpwi r0, 1
/* 8095A7C0  41 82 00 70 */	beq lbl_8095A830
/* 8095A7C4  40 80 01 0C */	bge lbl_8095A8D0
/* 8095A7C8  2C 00 00 00 */	cmpwi r0, 0
/* 8095A7CC  40 80 00 08 */	bge lbl_8095A7D4
/* 8095A7D0  48 00 01 00 */	b lbl_8095A8D0
lbl_8095A7D4:
/* 8095A7D4  38 60 00 76 */	li r3, 0x76
/* 8095A7D8  4B 7F AE DC */	b daNpcF_chkTmpBit__FUl
/* 8095A7DC  2C 03 00 00 */	cmpwi r3, 0
/* 8095A7E0  41 82 00 F0 */	beq lbl_8095A8D0
/* 8095A7E4  C0 1E 02 58 */	lfs f0, 0x258(r30)
/* 8095A7E8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8095A7EC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8095A7F0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8095A7F4  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 8095A7F8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8095A7FC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8095A800  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8095A804  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8095A808  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8095A80C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8095A810  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8095A814  7F E3 FB 78 */	mr r3, r31
/* 8095A818  38 80 A0 00 */	li r4, -24576
/* 8095A81C  4B 7F 9A 34 */	b setAngle__8daNpcF_cFs
/* 8095A820  80 7F 0F 54 */	lwz r3, 0xf54(r31)
/* 8095A824  38 03 00 01 */	addi r0, r3, 1
/* 8095A828  90 1F 0F 54 */	stw r0, 0xf54(r31)
/* 8095A82C  48 00 00 A4 */	b lbl_8095A8D0
lbl_8095A830:
/* 8095A830  38 60 00 74 */	li r3, 0x74
/* 8095A834  4B 7F AE 80 */	b daNpcF_chkTmpBit__FUl
/* 8095A838  2C 03 00 00 */	cmpwi r3, 0
/* 8095A83C  41 82 00 94 */	beq lbl_8095A8D0
/* 8095A840  3C 60 80 96 */	lis r3, lit_5015@ha
/* 8095A844  38 83 DB BC */	addi r4, r3, lit_5015@l
/* 8095A848  80 64 00 00 */	lwz r3, 0(r4)
/* 8095A84C  80 04 00 04 */	lwz r0, 4(r4)
/* 8095A850  90 61 00 08 */	stw r3, 8(r1)
/* 8095A854  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095A858  80 04 00 08 */	lwz r0, 8(r4)
/* 8095A85C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095A860  38 00 00 03 */	li r0, 3
/* 8095A864  B0 1F 0F 5C */	sth r0, 0xf5c(r31)
/* 8095A868  38 7F 0F 30 */	addi r3, r31, 0xf30
/* 8095A86C  4B A0 77 AC */	b __ptmf_test
/* 8095A870  2C 03 00 00 */	cmpwi r3, 0
/* 8095A874  41 82 00 18 */	beq lbl_8095A88C
/* 8095A878  7F E3 FB 78 */	mr r3, r31
/* 8095A87C  38 80 00 00 */	li r4, 0
/* 8095A880  39 9F 0F 30 */	addi r12, r31, 0xf30
/* 8095A884  4B A0 78 00 */	b __ptmf_scall
/* 8095A888  60 00 00 00 */	nop 
lbl_8095A88C:
/* 8095A88C  38 00 00 00 */	li r0, 0
/* 8095A890  B0 1F 0F 5C */	sth r0, 0xf5c(r31)
/* 8095A894  80 61 00 08 */	lwz r3, 8(r1)
/* 8095A898  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8095A89C  90 7F 0F 30 */	stw r3, 0xf30(r31)
/* 8095A8A0  90 1F 0F 34 */	stw r0, 0xf34(r31)
/* 8095A8A4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8095A8A8  90 1F 0F 38 */	stw r0, 0xf38(r31)
/* 8095A8AC  38 7F 0F 30 */	addi r3, r31, 0xf30
/* 8095A8B0  4B A0 77 68 */	b __ptmf_test
/* 8095A8B4  2C 03 00 00 */	cmpwi r3, 0
/* 8095A8B8  41 82 00 18 */	beq lbl_8095A8D0
/* 8095A8BC  7F E3 FB 78 */	mr r3, r31
/* 8095A8C0  38 80 00 00 */	li r4, 0
/* 8095A8C4  39 9F 0F 30 */	addi r12, r31, 0xf30
/* 8095A8C8  4B A0 77 BC */	b __ptmf_scall
/* 8095A8CC  60 00 00 00 */	nop 
lbl_8095A8D0:
/* 8095A8D0  38 60 00 01 */	li r3, 1
/* 8095A8D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8095A8D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8095A8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095A8E0  7C 08 03 A6 */	mtlr r0
/* 8095A8E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8095A8E8  4E 80 00 20 */	blr 
