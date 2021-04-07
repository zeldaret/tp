lbl_80A7E668:
/* 80A7E668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A7E66C  7C 08 02 A6 */	mflr r0
/* 80A7E670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7E674  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A7E678  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A7E67C  7C 7F 1B 78 */	mr r31, r3
/* 80A7E680  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A7E684  3B C4 32 AC */	addi r30, r4, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A7E688  A0 03 0E 08 */	lhz r0, 0xe08(r3)
/* 80A7E68C  2C 00 00 02 */	cmpwi r0, 2
/* 80A7E690  41 82 00 94 */	beq lbl_80A7E724
/* 80A7E694  40 80 02 10 */	bge lbl_80A7E8A4
/* 80A7E698  2C 00 00 00 */	cmpwi r0, 0
/* 80A7E69C  41 82 00 0C */	beq lbl_80A7E6A8
/* 80A7E6A0  48 00 02 04 */	b lbl_80A7E8A4
/* 80A7E6A4  48 00 02 00 */	b lbl_80A7E8A4
lbl_80A7E6A8:
/* 80A7E6A8  38 80 00 0D */	li r4, 0xd
/* 80A7E6AC  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7E6B0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A7E6B4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7E6B8  7D 89 03 A6 */	mtctr r12
/* 80A7E6BC  4E 80 04 21 */	bctrl 
/* 80A7E6C0  7F E3 FB 78 */	mr r3, r31
/* 80A7E6C4  38 80 00 23 */	li r4, 0x23
/* 80A7E6C8  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7E6CC  38 A0 00 00 */	li r5, 0
/* 80A7E6D0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A7E6D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7E6D8  7D 89 03 A6 */	mtctr r12
/* 80A7E6DC  4E 80 04 21 */	bctrl 
/* 80A7E6E0  38 00 00 00 */	li r0, 0
/* 80A7E6E4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A7E6E8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A7E6EC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A7E6F0  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 80A7E6F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7E6F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7E6FC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A7E700  4B 6D 1F BD */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A7E704  A8 1F 0E 06 */	lha r0, 0xe06(r31)
/* 80A7E708  2C 00 00 00 */	cmpwi r0, 0
/* 80A7E70C  41 82 00 0C */	beq lbl_80A7E718
/* 80A7E710  38 00 00 00 */	li r0, 0
/* 80A7E714  B0 1F 0E 06 */	sth r0, 0xe06(r31)
lbl_80A7E718:
/* 80A7E718  38 00 00 02 */	li r0, 2
/* 80A7E71C  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7E720  48 00 01 84 */	b lbl_80A7E8A4
lbl_80A7E724:
/* 80A7E724  80 1F 0E 00 */	lwz r0, 0xe00(r31)
/* 80A7E728  2C 00 00 01 */	cmpwi r0, 1
/* 80A7E72C  41 82 00 7C */	beq lbl_80A7E7A8
/* 80A7E730  40 80 00 10 */	bge lbl_80A7E740
/* 80A7E734  2C 00 00 00 */	cmpwi r0, 0
/* 80A7E738  40 80 00 14 */	bge lbl_80A7E74C
/* 80A7E73C  48 00 01 68 */	b lbl_80A7E8A4
lbl_80A7E740:
/* 80A7E740  2C 00 00 03 */	cmpwi r0, 3
/* 80A7E744  40 80 01 60 */	bge lbl_80A7E8A4
/* 80A7E748  48 00 00 BC */	b lbl_80A7E804
lbl_80A7E74C:
/* 80A7E74C  38 60 00 76 */	li r3, 0x76
/* 80A7E750  4B 6D 6F 65 */	bl daNpcF_chkTmpBit__FUl
/* 80A7E754  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E758  41 82 01 4C */	beq lbl_80A7E8A4
/* 80A7E75C  C0 1E 05 10 */	lfs f0, 0x510(r30)
/* 80A7E760  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80A7E764  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80A7E768  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80A7E76C  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 80A7E770  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80A7E774  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A7E778  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80A7E77C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A7E780  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80A7E784  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A7E788  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80A7E78C  7F E3 FB 78 */	mr r3, r31
/* 80A7E790  38 80 A0 00 */	li r4, -24576
/* 80A7E794  4B 6D 5A BD */	bl setAngle__8daNpcF_cFs
/* 80A7E798  80 7F 0E 00 */	lwz r3, 0xe00(r31)
/* 80A7E79C  38 03 00 01 */	addi r0, r3, 1
/* 80A7E7A0  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 80A7E7A4  48 00 01 00 */	b lbl_80A7E8A4
lbl_80A7E7A8:
/* 80A7E7A8  38 60 00 75 */	li r3, 0x75
/* 80A7E7AC  4B 6D 6F 09 */	bl daNpcF_chkTmpBit__FUl
/* 80A7E7B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E7B4  41 82 00 F0 */	beq lbl_80A7E8A4
/* 80A7E7B8  7F E3 FB 78 */	mr r3, r31
/* 80A7E7BC  38 80 00 0C */	li r4, 0xc
/* 80A7E7C0  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7E7C4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A7E7C8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7E7CC  7D 89 03 A6 */	mtctr r12
/* 80A7E7D0  4E 80 04 21 */	bctrl 
/* 80A7E7D4  7F E3 FB 78 */	mr r3, r31
/* 80A7E7D8  38 80 00 24 */	li r4, 0x24
/* 80A7E7DC  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7E7E0  38 A0 00 00 */	li r5, 0
/* 80A7E7E4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A7E7E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7E7EC  7D 89 03 A6 */	mtctr r12
/* 80A7E7F0  4E 80 04 21 */	bctrl 
/* 80A7E7F4  80 7F 0E 00 */	lwz r3, 0xe00(r31)
/* 80A7E7F8  38 03 00 01 */	addi r0, r3, 1
/* 80A7E7FC  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 80A7E800  48 00 00 A4 */	b lbl_80A7E8A4
lbl_80A7E804:
/* 80A7E804  38 60 00 74 */	li r3, 0x74
/* 80A7E808  4B 6D 6E AD */	bl daNpcF_chkTmpBit__FUl
/* 80A7E80C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E810  41 82 00 94 */	beq lbl_80A7E8A4
/* 80A7E814  3C 60 80 A8 */	lis r3, lit_5184@ha /* 0x80A83C20@ha */
/* 80A7E818  38 83 3C 20 */	addi r4, r3, lit_5184@l /* 0x80A83C20@l */
/* 80A7E81C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A7E820  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7E824  90 61 00 08 */	stw r3, 8(r1)
/* 80A7E828  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7E82C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7E830  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7E834  38 00 00 03 */	li r0, 3
/* 80A7E838  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7E83C  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7E840  4B 8E 37 D9 */	bl __ptmf_test
/* 80A7E844  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E848  41 82 00 18 */	beq lbl_80A7E860
/* 80A7E84C  7F E3 FB 78 */	mr r3, r31
/* 80A7E850  38 80 00 00 */	li r4, 0
/* 80A7E854  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7E858  4B 8E 38 2D */	bl __ptmf_scall
/* 80A7E85C  60 00 00 00 */	nop 
lbl_80A7E860:
/* 80A7E860  38 00 00 00 */	li r0, 0
/* 80A7E864  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7E868  80 61 00 08 */	lwz r3, 8(r1)
/* 80A7E86C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A7E870  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80A7E874  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80A7E878  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A7E87C  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80A7E880  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7E884  4B 8E 37 95 */	bl __ptmf_test
/* 80A7E888  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E88C  41 82 00 18 */	beq lbl_80A7E8A4
/* 80A7E890  7F E3 FB 78 */	mr r3, r31
/* 80A7E894  38 80 00 00 */	li r4, 0
/* 80A7E898  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7E89C  4B 8E 37 E9 */	bl __ptmf_scall
/* 80A7E8A0  60 00 00 00 */	nop 
lbl_80A7E8A4:
/* 80A7E8A4  38 60 00 01 */	li r3, 1
/* 80A7E8A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A7E8AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A7E8B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7E8B4  7C 08 03 A6 */	mtlr r0
/* 80A7E8B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A7E8BC  4E 80 00 20 */	blr 
