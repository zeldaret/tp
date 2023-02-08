lbl_80AF8744:
/* 80AF8744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF8748  7C 08 02 A6 */	mflr r0
/* 80AF874C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF8750  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AF8754  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AF8758  7C 7F 1B 78 */	mr r31, r3
/* 80AF875C  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80AF8760  2C 00 00 02 */	cmpwi r0, 2
/* 80AF8764  41 82 00 E4 */	beq lbl_80AF8848
/* 80AF8768  40 80 03 88 */	bge lbl_80AF8AF0
/* 80AF876C  2C 00 00 00 */	cmpwi r0, 0
/* 80AF8770  41 82 00 10 */	beq lbl_80AF8780
/* 80AF8774  40 80 00 14 */	bge lbl_80AF8788
/* 80AF8778  48 00 03 78 */	b lbl_80AF8AF0
/* 80AF877C  48 00 03 74 */	b lbl_80AF8AF0
lbl_80AF8780:
/* 80AF8780  38 00 00 00 */	li r0, 0
/* 80AF8784  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_80AF8788:
/* 80AF8788  88 1F 0E 1E */	lbz r0, 0xe1e(r31)
/* 80AF878C  28 00 00 02 */	cmplwi r0, 2
/* 80AF8790  40 82 00 4C */	bne lbl_80AF87DC
/* 80AF8794  7F E3 FB 78 */	mr r3, r31
/* 80AF8798  38 80 00 08 */	li r4, 8
/* 80AF879C  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF87A0  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF87A4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF87A8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AF87AC  7D 89 03 A6 */	mtctr r12
/* 80AF87B0  4E 80 04 21 */	bctrl 
/* 80AF87B4  7F E3 FB 78 */	mr r3, r31
/* 80AF87B8  38 80 00 08 */	li r4, 8
/* 80AF87BC  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF87C0  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF87C4  38 A0 00 00 */	li r5, 0
/* 80AF87C8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF87CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF87D0  7D 89 03 A6 */	mtctr r12
/* 80AF87D4  4E 80 04 21 */	bctrl 
/* 80AF87D8  48 00 00 48 */	b lbl_80AF8820
lbl_80AF87DC:
/* 80AF87DC  7F E3 FB 78 */	mr r3, r31
/* 80AF87E0  38 80 00 0D */	li r4, 0xd
/* 80AF87E4  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF87E8  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF87EC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF87F0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AF87F4  7D 89 03 A6 */	mtctr r12
/* 80AF87F8  4E 80 04 21 */	bctrl 
/* 80AF87FC  7F E3 FB 78 */	mr r3, r31
/* 80AF8800  38 80 00 00 */	li r4, 0
/* 80AF8804  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AF8808  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AF880C  38 A0 00 00 */	li r5, 0
/* 80AF8810  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8814  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF8818  7D 89 03 A6 */	mtctr r12
/* 80AF881C  4E 80 04 21 */	bctrl 
lbl_80AF8820:
/* 80AF8820  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF8824  2C 00 00 00 */	cmpwi r0, 0
/* 80AF8828  41 82 00 0C */	beq lbl_80AF8834
/* 80AF882C  38 00 00 00 */	li r0, 0
/* 80AF8830  B0 1F 0E 18 */	sth r0, 0xe18(r31)
lbl_80AF8834:
/* 80AF8834  38 00 00 00 */	li r0, 0
/* 80AF8838  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AF883C  38 00 00 02 */	li r0, 2
/* 80AF8840  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AF8844  48 00 02 AC */	b lbl_80AF8AF0
lbl_80AF8848:
/* 80AF8848  88 1F 0E 1E */	lbz r0, 0xe1e(r31)
/* 80AF884C  28 00 00 02 */	cmplwi r0, 2
/* 80AF8850  40 82 00 4C */	bne lbl_80AF889C
/* 80AF8854  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF8858  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AF885C  7C 00 20 00 */	cmpw r0, r4
/* 80AF8860  41 82 00 24 */	beq lbl_80AF8884
/* 80AF8864  38 A0 FF FF */	li r5, -1
/* 80AF8868  38 C0 FF FF */	li r6, -1
/* 80AF886C  38 E0 00 0F */	li r7, 0xf
/* 80AF8870  4B 65 B8 35 */	bl step__8daNpcF_cFsiii
/* 80AF8874  2C 03 00 00 */	cmpwi r3, 0
/* 80AF8878  41 82 00 0C */	beq lbl_80AF8884
/* 80AF887C  38 00 00 01 */	li r0, 1
/* 80AF8880  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
lbl_80AF8884:
/* 80AF8884  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF8888  2C 00 00 00 */	cmpwi r0, 0
/* 80AF888C  41 82 02 64 */	beq lbl_80AF8AF0
/* 80AF8890  38 00 00 00 */	li r0, 0
/* 80AF8894  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AF8898  48 00 02 58 */	b lbl_80AF8AF0
lbl_80AF889C:
/* 80AF889C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF88A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF88A4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80AF88A8  3C 80 80 B0 */	lis r4, d_a_npc_the__stringBase0@ha /* 0x80AFC158@ha */
/* 80AF88AC  38 84 C1 58 */	addi r4, r4, d_a_npc_the__stringBase0@l /* 0x80AFC158@l */
/* 80AF88B0  38 84 00 54 */	addi r4, r4, 0x54
/* 80AF88B4  4B 87 00 E1 */	bl strcmp
/* 80AF88B8  2C 03 00 00 */	cmpwi r3, 0
/* 80AF88BC  40 82 00 30 */	bne lbl_80AF88EC
/* 80AF88C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF88C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF88C8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AF88CC  2C 00 00 05 */	cmpwi r0, 5
/* 80AF88D0  40 82 00 1C */	bne lbl_80AF88EC
/* 80AF88D4  38 60 00 00 */	li r3, 0
/* 80AF88D8  4B 53 40 A5 */	bl getLayerNo__14dComIfG_play_cFi
/* 80AF88DC  2C 03 00 02 */	cmpwi r3, 2
/* 80AF88E0  40 82 00 0C */	bne lbl_80AF88EC
/* 80AF88E4  38 00 00 01 */	li r0, 1
/* 80AF88E8  48 00 00 08 */	b lbl_80AF88F0
lbl_80AF88EC:
/* 80AF88EC  38 00 00 00 */	li r0, 0
lbl_80AF88F0:
/* 80AF88F0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF88F4  40 82 01 60 */	bne lbl_80AF8A54
/* 80AF88F8  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF88FC  4B 65 7D F1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AF8900  30 03 FF FF */	addic r0, r3, -1
/* 80AF8904  7F C0 19 10 */	subfe r30, r0, r3
/* 80AF8908  7F E3 FB 78 */	mr r3, r31
/* 80AF890C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80AF8910  A8 BF 08 F2 */	lha r5, 0x8f2(r31)
/* 80AF8914  4B 65 C0 CD */	bl chkFindPlayer2__8daNpcF_cFis
/* 80AF8918  2C 03 00 00 */	cmpwi r3, 0
/* 80AF891C  41 82 00 2C */	beq lbl_80AF8948
/* 80AF8920  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80AF8924  40 82 00 3C */	bne lbl_80AF8960
/* 80AF8928  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF892C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF8930  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF8934  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AF8938  4B 65 7D 85 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AF893C  38 00 00 00 */	li r0, 0
/* 80AF8940  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AF8944  48 00 00 1C */	b lbl_80AF8960
lbl_80AF8948:
/* 80AF8948  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80AF894C  41 82 00 14 */	beq lbl_80AF8960
/* 80AF8950  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF8954  4B 65 7D 8D */	bl remove__18daNpcF_ActorMngr_cFv
/* 80AF8958  38 00 00 00 */	li r0, 0
/* 80AF895C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80AF8960:
/* 80AF8960  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF8964  4B 65 7D 89 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AF8968  28 03 00 00 */	cmplwi r3, 0
/* 80AF896C  41 82 00 1C */	beq lbl_80AF8988
/* 80AF8970  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF8974  2C 00 00 02 */	cmpwi r0, 2
/* 80AF8978  41 82 00 58 */	beq lbl_80AF89D0
/* 80AF897C  38 00 00 02 */	li r0, 2
/* 80AF8980  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AF8984  48 00 00 4C */	b lbl_80AF89D0
lbl_80AF8988:
/* 80AF8988  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AF898C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AF8990  7C 00 20 00 */	cmpw r0, r4
/* 80AF8994  41 82 00 28 */	beq lbl_80AF89BC
/* 80AF8998  7F E3 FB 78 */	mr r3, r31
/* 80AF899C  38 A0 FF FF */	li r5, -1
/* 80AF89A0  38 C0 FF FF */	li r6, -1
/* 80AF89A4  38 E0 00 0F */	li r7, 0xf
/* 80AF89A8  4B 65 B6 FD */	bl step__8daNpcF_cFsiii
/* 80AF89AC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF89B0  41 82 00 0C */	beq lbl_80AF89BC
/* 80AF89B4  38 00 00 01 */	li r0, 1
/* 80AF89B8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
lbl_80AF89BC:
/* 80AF89BC  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF89C0  2C 00 00 00 */	cmpwi r0, 0
/* 80AF89C4  41 82 00 0C */	beq lbl_80AF89D0
/* 80AF89C8  38 00 00 00 */	li r0, 0
/* 80AF89CC  B0 1F 0E 18 */	sth r0, 0xe18(r31)
lbl_80AF89D0:
/* 80AF89D0  88 1F 0E 1E */	lbz r0, 0xe1e(r31)
/* 80AF89D4  28 00 00 00 */	cmplwi r0, 0
/* 80AF89D8  40 82 00 90 */	bne lbl_80AF8A68
/* 80AF89DC  38 7F 0C 88 */	addi r3, r31, 0xc88
/* 80AF89E0  4B 65 7D 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AF89E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF89E8  41 82 00 80 */	beq lbl_80AF8A68
/* 80AF89EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF89F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF89F4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AF89F8  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80AF89FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AF8A00  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80AF8A04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AF8A08  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80AF8A0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AF8A10  38 81 00 08 */	addi r4, r1, 8
/* 80AF8A14  48 00 33 29 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80AF8A18  2C 03 00 00 */	cmpwi r3, 0
/* 80AF8A1C  41 82 00 4C */	beq lbl_80AF8A68
/* 80AF8A20  38 60 00 0B */	li r3, 0xb
/* 80AF8A24  4B 65 CD 11 */	bl daNpcF_offTmpBit__FUl
/* 80AF8A28  38 60 00 0C */	li r3, 0xc
/* 80AF8A2C  4B 65 CD 09 */	bl daNpcF_offTmpBit__FUl
/* 80AF8A30  38 60 00 0D */	li r3, 0xd
/* 80AF8A34  4B 65 CD 01 */	bl daNpcF_offTmpBit__FUl
/* 80AF8A38  38 60 00 0E */	li r3, 0xe
/* 80AF8A3C  4B 65 CC F9 */	bl daNpcF_offTmpBit__FUl
/* 80AF8A40  38 00 00 03 */	li r0, 3
/* 80AF8A44  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AF8A48  7F C3 F3 78 */	mr r3, r30
/* 80AF8A4C  4B 52 12 31 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80AF8A50  48 00 00 18 */	b lbl_80AF8A68
lbl_80AF8A54:
/* 80AF8A54  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF8A58  2C 00 00 00 */	cmpwi r0, 0
/* 80AF8A5C  41 82 00 0C */	beq lbl_80AF8A68
/* 80AF8A60  38 00 00 00 */	li r0, 0
/* 80AF8A64  B0 1F 0E 18 */	sth r0, 0xe18(r31)
lbl_80AF8A68:
/* 80AF8A68  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 80AF8A6C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AF8A70  7C 03 00 00 */	cmpw r3, r0
/* 80AF8A74  40 82 00 74 */	bne lbl_80AF8AE8
/* 80AF8A78  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 80AF8A7C  4B 65 7C 71 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AF8A80  30 03 FF FF */	addic r0, r3, -1
/* 80AF8A84  7C 00 19 10 */	subfe r0, r0, r3
/* 80AF8A88  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80AF8A8C  7F E3 FB 78 */	mr r3, r31
/* 80AF8A90  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha /* 0x80152654@ha */
/* 80AF8A94  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l /* 0x80152654@l */
/* 80AF8A98  3C C0 80 B0 */	lis r6, m__16daNpcThe_Param_c@ha /* 0x80AFBE0C@ha */
/* 80AF8A9C  38 C6 BE 0C */	addi r6, r6, m__16daNpcThe_Param_c@l /* 0x80AFBE0C@l */
/* 80AF8AA0  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 80AF8AA4  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 80AF8AA8  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 80AF8AAC  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 80AF8AB0  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 80AF8AB4  38 E0 00 78 */	li r7, 0x78
/* 80AF8AB8  39 00 00 01 */	li r8, 1
/* 80AF8ABC  4B 65 B8 B1 */	bl getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 80AF8AC0  7C 64 1B 79 */	or. r4, r3, r3
/* 80AF8AC4  41 82 00 2C */	beq lbl_80AF8AF0
/* 80AF8AC8  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80AF8ACC  4B 65 7B F1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AF8AD0  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF8AD4  2C 00 00 05 */	cmpwi r0, 5
/* 80AF8AD8  41 82 00 18 */	beq lbl_80AF8AF0
/* 80AF8ADC  38 00 00 05 */	li r0, 5
/* 80AF8AE0  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AF8AE4  48 00 00 0C */	b lbl_80AF8AF0
lbl_80AF8AE8:
/* 80AF8AE8  38 00 00 00 */	li r0, 0
/* 80AF8AEC  90 1F 09 38 */	stw r0, 0x938(r31)
lbl_80AF8AF0:
/* 80AF8AF0  38 60 00 01 */	li r3, 1
/* 80AF8AF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AF8AF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AF8AFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF8B00  7C 08 03 A6 */	mtlr r0
/* 80AF8B04  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF8B08  4E 80 00 20 */	blr 
