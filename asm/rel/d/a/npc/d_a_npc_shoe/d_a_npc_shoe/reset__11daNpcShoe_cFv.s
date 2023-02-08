lbl_80AE864C:
/* 80AE864C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE8650  7C 08 02 A6 */	mflr r0
/* 80AE8654  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE8658  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE865C  4B 87 9B 81 */	bl _savegpr_29
/* 80AE8660  7C 7E 1B 78 */	mr r30, r3
/* 80AE8664  3C 80 80 AF */	lis r4, m__17daNpcShoe_Param_c@ha /* 0x80AEA3B0@ha */
/* 80AE8668  3B E4 A3 B0 */	addi r31, r4, m__17daNpcShoe_Param_c@l /* 0x80AEA3B0@l */
/* 80AE866C  4B 66 A2 5D */	bl initialize__8daNpcF_cFv
/* 80AE8670  38 7E 0B F8 */	addi r3, r30, 0xbf8
/* 80AE8674  4B 66 89 C5 */	bl initialize__15daNpcF_Lookat_cFv
/* 80AE8678  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AE867C  4B 66 80 35 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AE8680  38 A0 00 00 */	li r5, 0
/* 80AE8684  90 BE 0E 04 */	stw r5, 0xe04(r30)
/* 80AE8688  90 BE 0E 08 */	stw r5, 0xe08(r30)
/* 80AE868C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AE8690  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AE8694  80 64 00 00 */	lwz r3, 0(r4)
/* 80AE8698  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE869C  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 80AE86A0  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80AE86A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80AE86A8  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80AE86AC  38 00 FF FF */	li r0, -1
/* 80AE86B0  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80AE86B4  B0 BE 0E 18 */	sth r5, 0xe18(r30)
/* 80AE86B8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AE86BC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80AE86C0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80AE86C4  28 05 00 FF */	cmplwi r5, 0xff
/* 80AE86C8  41 82 00 2C */	beq lbl_80AE86F4
/* 80AE86CC  38 60 00 0A */	li r3, 0xa
/* 80AE86D0  7C 05 1B D6 */	divw r0, r5, r3
/* 80AE86D4  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 80AE86D8  7C 00 19 D6 */	mullw r0, r0, r3
/* 80AE86DC  7C 00 28 50 */	subf r0, r0, r5
/* 80AE86E0  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80AE86E4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80AE86E8  1C 06 00 3C */	mulli r0, r6, 0x3c
/* 80AE86EC  7C 03 02 14 */	add r0, r3, r0
/* 80AE86F0  B0 1E 0E 12 */	sth r0, 0xe12(r30)
lbl_80AE86F4:
/* 80AE86F4  28 04 00 FF */	cmplwi r4, 0xff
/* 80AE86F8  41 82 00 2C */	beq lbl_80AE8724
/* 80AE86FC  38 60 00 0A */	li r3, 0xa
/* 80AE8700  7C 04 1B D6 */	divw r0, r4, r3
/* 80AE8704  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80AE8708  7C 00 19 D6 */	mullw r0, r0, r3
/* 80AE870C  7C 00 20 50 */	subf r0, r0, r4
/* 80AE8710  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80AE8714  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80AE8718  1C 05 00 3C */	mulli r0, r5, 0x3c
/* 80AE871C  7C 03 02 14 */	add r0, r3, r0
/* 80AE8720  B0 1E 0E 14 */	sth r0, 0xe14(r30)
lbl_80AE8724:
/* 80AE8724  38 00 00 00 */	li r0, 0
/* 80AE8728  98 1E 0E 1B */	stb r0, 0xe1b(r30)
/* 80AE872C  4B 6C 3E 51 */	bl dKy_darkworld_check__Fv
/* 80AE8730  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE8734  41 82 00 10 */	beq lbl_80AE8744
/* 80AE8738  4B 6B 73 F9 */	bl dKy_getDarktime_minute__Fv
/* 80AE873C  7C 7D 1B 78 */	mr r29, r3
/* 80AE8740  48 00 00 0C */	b lbl_80AE874C
lbl_80AE8744:
/* 80AE8744  4B 6B 72 F9 */	bl dKy_getdaytime_minute__Fv
/* 80AE8748  7C 7D 1B 78 */	mr r29, r3
lbl_80AE874C:
/* 80AE874C  4B 6C 3E 31 */	bl dKy_darkworld_check__Fv
/* 80AE8750  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE8754  41 82 00 0C */	beq lbl_80AE8760
/* 80AE8758  4B 6B 73 9D */	bl dKy_getDarktime_hour__Fv
/* 80AE875C  48 00 00 08 */	b lbl_80AE8764
lbl_80AE8760:
/* 80AE8760  4B 6B 72 B1 */	bl dKy_getdaytime_hour__Fv
lbl_80AE8764:
/* 80AE8764  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80AE8768  7C 7D 02 14 */	add r3, r29, r0
/* 80AE876C  A0 1E 0E 12 */	lhz r0, 0xe12(r30)
/* 80AE8770  7C 03 00 00 */	cmpw r3, r0
/* 80AE8774  41 80 00 1C */	blt lbl_80AE8790
/* 80AE8778  A0 1E 0E 14 */	lhz r0, 0xe14(r30)
/* 80AE877C  7C 03 00 00 */	cmpw r3, r0
/* 80AE8780  40 80 00 10 */	bge lbl_80AE8790
/* 80AE8784  38 00 00 01 */	li r0, 1
/* 80AE8788  98 1E 0E 1B */	stb r0, 0xe1b(r30)
/* 80AE878C  48 00 00 0C */	b lbl_80AE8798
lbl_80AE8790:
/* 80AE8790  38 00 00 00 */	li r0, 0
/* 80AE8794  98 1E 0E 1B */	stb r0, 0xe1b(r30)
lbl_80AE8798:
/* 80AE8798  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80AE879C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80AE87A0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80AE87A4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80AE87A8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80AE87AC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80AE87B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AE87B4  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80AE87B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AE87BC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80AE87C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AE87C4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80AE87C8  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80AE87CC  38 60 00 00 */	li r3, 0
/* 80AE87D0  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80AE87D4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80AE87D8  B0 7E 04 E0 */	sth r3, 0x4e0(r30)
/* 80AE87DC  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80AE87E0  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80AE87E4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80AE87E8  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80AE87EC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80AE87F0  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80AE87F4  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80AE87F8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80AE87FC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80AE8800  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80AE8804  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80AE8808  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80AE880C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80AE8810  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 80AE8814  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80AE8818  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80AE881C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80AE8820  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 80AE8824  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 80AE8828  B0 1E 08 F6 */	sth r0, 0x8f6(r30)
/* 80AE882C  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80AE8830  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80AE8834  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 80AE8838  B0 1E 08 FA */	sth r0, 0x8fa(r30)
/* 80AE883C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AE8840  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80AE8844  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80AE8848  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80AE884C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80AE8850  38 00 FF FF */	li r0, -1
/* 80AE8854  90 1E 0E 00 */	stw r0, 0xe00(r30)
/* 80AE8858  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
/* 80AE885C  7F C3 F3 78 */	mr r3, r30
/* 80AE8860  3C 80 80 AF */	lis r4, l_arcNames@ha /* 0x80AEA5A0@ha */
/* 80AE8864  38 84 A5 A0 */	addi r4, r4, l_arcNames@l /* 0x80AEA5A0@l */
/* 80AE8868  80 84 00 00 */	lwz r4, 0(r4)
/* 80AE886C  38 A0 00 0C */	li r5, 0xc
/* 80AE8870  4B 66 A2 F9 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80AE8874  7C 64 1B 78 */	mr r4, r3
/* 80AE8878  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80AE887C  38 00 F5 7F */	li r0, -2689
/* 80AE8880  7C 60 00 38 */	and r0, r3, r0
/* 80AE8884  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80AE8888  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AE888C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE8890  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AE8894  7F C3 F3 78 */	mr r3, r30
/* 80AE8898  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80AE889C  38 C0 00 02 */	li r6, 2
/* 80AE88A0  4B 66 A4 25 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80AE88A4  2C 03 00 00 */	cmpwi r3, 0
/* 80AE88A8  41 82 00 10 */	beq lbl_80AE88B8
/* 80AE88AC  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80AE88B0  60 00 0A 80 */	ori r0, r0, 0xa80
/* 80AE88B4  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80AE88B8:
/* 80AE88B8  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80AE88BC  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80AE88C0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80AE88C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE88C8  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80AE88CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE88D0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AE88D4  4B 52 44 91 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80AE88D8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80AE88DC  4B 52 46 69 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80AE88E0  80 7E 0B 4C */	lwz r3, 0xb4c(r30)
/* 80AE88E4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80AE88E8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80AE88EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AE88F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80AE88F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AE88F8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80AE88FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE8900  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE8904  80 9E 0B 4C */	lwz r4, 0xb4c(r30)
/* 80AE8908  38 84 00 24 */	addi r4, r4, 0x24
/* 80AE890C  4B 85 DB A5 */	bl PSMTXCopy
/* 80AE8910  3C 60 80 AF */	lis r3, lit_4424@ha /* 0x80AEA5C0@ha */
/* 80AE8914  38 83 A5 C0 */	addi r4, r3, lit_4424@l /* 0x80AEA5C0@l */
/* 80AE8918  80 64 00 00 */	lwz r3, 0(r4)
/* 80AE891C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE8920  90 61 00 08 */	stw r3, 8(r1)
/* 80AE8924  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE8928  80 04 00 08 */	lwz r0, 8(r4)
/* 80AE892C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE8930  7F C3 F3 78 */	mr r3, r30
/* 80AE8934  38 81 00 08 */	addi r4, r1, 8
/* 80AE8938  48 00 00 25 */	bl setAction__11daNpcShoe_cFM11daNpcShoe_cFPCvPvPv_b
/* 80AE893C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AE8940  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80AE8944  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE8948  4B 87 98 E1 */	bl _restgpr_29
/* 80AE894C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE8950  7C 08 03 A6 */	mtlr r0
/* 80AE8954  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE8958  4E 80 00 20 */	blr 
