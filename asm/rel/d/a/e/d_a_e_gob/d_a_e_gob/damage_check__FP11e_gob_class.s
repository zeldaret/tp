lbl_806D8624:
/* 806D8624  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D8628  7C 08 02 A6 */	mflr r0
/* 806D862C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D8630  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806D8634  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806D8638  7C 7F 1B 78 */	mr r31, r3
/* 806D863C  38 7F 09 30 */	addi r3, r31, 0x930
/* 806D8640  4B 9A B1 F0 */	b Move__10dCcD_GSttsFv
/* 806D8644  A8 1F 06 7E */	lha r0, 0x67e(r31)
/* 806D8648  2C 00 00 00 */	cmpwi r0, 0
/* 806D864C  40 82 02 08 */	bne lbl_806D8854
/* 806D8650  38 7F 0B C0 */	addi r3, r31, 0xbc0
/* 806D8654  4B 9A BE 0C */	b ChkTgHit__12dCcD_GObjInfFv
/* 806D8658  28 03 00 00 */	cmplwi r3, 0
/* 806D865C  41 82 01 F8 */	beq lbl_806D8854
/* 806D8660  38 00 00 06 */	li r0, 6
/* 806D8664  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 806D8668  38 7F 0B C0 */	addi r3, r31, 0xbc0
/* 806D866C  4B 9A BE 8C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806D8670  90 7F 0C F8 */	stw r3, 0xcf8(r31)
/* 806D8674  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 806D8678  7C 00 07 75 */	extsb. r0, r0
/* 806D867C  41 82 00 24 */	beq lbl_806D86A0
/* 806D8680  38 7F 0B C0 */	addi r3, r31, 0xbc0
/* 806D8684  4B 9A BE 74 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806D8688  7C 64 1B 78 */	mr r4, r3
/* 806D868C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806D8690  38 A0 00 2A */	li r5, 0x2a
/* 806D8694  38 C0 00 00 */	li r6, 0
/* 806D8698  4B 9A EE 7C */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806D869C  48 00 01 B8 */	b lbl_806D8854
lbl_806D86A0:
/* 806D86A0  7F E3 FB 78 */	mr r3, r31
/* 806D86A4  38 9F 0C F8 */	addi r4, r31, 0xcf8
/* 806D86A8  4B 9A F5 5C */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806D86AC  88 1F 0D 18 */	lbz r0, 0xd18(r31)
/* 806D86B0  28 00 00 10 */	cmplwi r0, 0x10
/* 806D86B4  40 82 00 6C */	bne lbl_806D8720
/* 806D86B8  38 00 00 06 */	li r0, 6
/* 806D86BC  B0 1F 06 56 */	sth r0, 0x656(r31)
/* 806D86C0  38 00 00 00 */	li r0, 0
/* 806D86C4  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806D86C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F7@ha */
/* 806D86CC  38 03 01 F7 */	addi r0, r3, 0x01F7 /* 0x000701F7@l */
/* 806D86D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D86D4  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806D86D8  38 81 00 14 */	addi r4, r1, 0x14
/* 806D86DC  38 A0 FF FF */	li r5, -1
/* 806D86E0  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806D86E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D86E8  7D 89 03 A6 */	mtctr r12
/* 806D86EC  4E 80 04 21 */	bctrl 
/* 806D86F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E6@ha */
/* 806D86F4  38 03 01 E6 */	addi r0, r3, 0x01E6 /* 0x000701E6@l */
/* 806D86F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D86FC  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806D8700  38 81 00 10 */	addi r4, r1, 0x10
/* 806D8704  38 A0 00 00 */	li r5, 0
/* 806D8708  38 C0 FF FF */	li r6, -1
/* 806D870C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806D8710  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D8714  7D 89 03 A6 */	mtctr r12
/* 806D8718  4E 80 04 21 */	bctrl 
/* 806D871C  48 00 01 38 */	b lbl_806D8854
lbl_806D8720:
/* 806D8720  38 00 00 0A */	li r0, 0xa
/* 806D8724  B0 1F 06 C4 */	sth r0, 0x6c4(r31)
/* 806D8728  A0 1F 0D 14 */	lhz r0, 0xd14(r31)
/* 806D872C  28 00 00 1E */	cmplwi r0, 0x1e
/* 806D8730  40 80 00 1C */	bge lbl_806D874C
/* 806D8734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D8738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D873C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D8740  88 03 05 69 */	lbz r0, 0x569(r3)
/* 806D8744  28 00 00 04 */	cmplwi r0, 4
/* 806D8748  41 80 00 58 */	blt lbl_806D87A0
lbl_806D874C:
/* 806D874C  38 00 00 07 */	li r0, 7
/* 806D8750  B0 1F 06 56 */	sth r0, 0x656(r31)
/* 806D8754  38 00 00 00 */	li r0, 0
/* 806D8758  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806D875C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D8760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D8764  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D8768  88 63 05 68 */	lbz r3, 0x568(r3)
/* 806D876C  4B 9A EC 44 */	b pl_cut_LRC__Fi
/* 806D8770  98 7F 0D 21 */	stb r3, 0xd21(r31)
/* 806D8774  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F8@ha */
/* 806D8778  38 03 01 F8 */	addi r0, r3, 0x01F8 /* 0x000701F8@l */
/* 806D877C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D8780  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806D8784  38 81 00 0C */	addi r4, r1, 0xc
/* 806D8788  38 A0 FF FF */	li r5, -1
/* 806D878C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806D8790  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D8794  7D 89 03 A6 */	mtctr r12
/* 806D8798  4E 80 04 21 */	bctrl 
/* 806D879C  48 00 00 2C */	b lbl_806D87C8
lbl_806D87A0:
/* 806D87A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F6@ha */
/* 806D87A4  38 03 01 F6 */	addi r0, r3, 0x01F6 /* 0x000701F6@l */
/* 806D87A8  90 01 00 08 */	stw r0, 8(r1)
/* 806D87AC  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806D87B0  38 81 00 08 */	addi r4, r1, 8
/* 806D87B4  38 A0 FF FF */	li r5, -1
/* 806D87B8  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 806D87BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D87C0  7D 89 03 A6 */	mtctr r12
/* 806D87C4  4E 80 04 21 */	bctrl 
lbl_806D87C8:
/* 806D87C8  88 1F 0D 17 */	lbz r0, 0xd17(r31)
/* 806D87CC  7C 00 07 75 */	extsb. r0, r0
/* 806D87D0  3B C0 00 01 */	li r30, 1
/* 806D87D4  41 82 00 08 */	beq lbl_806D87DC
/* 806D87D8  3B C0 00 03 */	li r30, 3
lbl_806D87DC:
/* 806D87DC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806D87E0  80 63 00 04 */	lwz r3, 4(r3)
/* 806D87E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806D87E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806D87EC  38 63 05 40 */	addi r3, r3, 0x540
/* 806D87F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806D87F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806D87F8  4B C6 DC B8 */	b PSMTXCopy
/* 806D87FC  3C 60 80 6E */	lis r3, lit_3908@ha
/* 806D8800  C0 03 EE 48 */	lfs f0, lit_3908@l(r3)
/* 806D8804  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806D8808  3C 60 80 6E */	lis r3, lit_3910@ha
/* 806D880C  C0 03 EE 50 */	lfs f0, lit_3910@l(r3)
/* 806D8810  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806D8814  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806D8818  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D881C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D8820  38 81 00 18 */	addi r4, r1, 0x18
/* 806D8824  38 A1 00 24 */	addi r5, r1, 0x24
/* 806D8828  4B C6 E5 44 */	b PSMTXMultVec
/* 806D882C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D8830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D8834  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806D8838  7F C4 F3 78 */	mr r4, r30
/* 806D883C  7F E5 FB 78 */	mr r5, r31
/* 806D8840  38 C1 00 24 */	addi r6, r1, 0x24
/* 806D8844  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 806D8848  39 00 00 00 */	li r8, 0
/* 806D884C  39 20 00 00 */	li r9, 0
/* 806D8850  4B 97 39 C8 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_806D8854:
/* 806D8854  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806D8858  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806D885C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D8860  7C 08 03 A6 */	mtlr r0
/* 806D8864  38 21 00 40 */	addi r1, r1, 0x40
/* 806D8868  4E 80 00 20 */	blr 
