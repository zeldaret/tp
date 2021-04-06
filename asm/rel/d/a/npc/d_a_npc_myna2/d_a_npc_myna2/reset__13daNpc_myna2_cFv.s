lbl_80A85160:
/* 80A85160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A85164  7C 08 02 A6 */	mflr r0
/* 80A85168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8516C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A85170  93 C1 00 08 */	stw r30, 8(r1)
/* 80A85174  7C 7E 1B 78 */	mr r30, r3
/* 80A85178  3C 80 80 A9 */	lis r4, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A8517C  3B E4 84 34 */	addi r31, r4, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A85180  4B 6C D7 49 */	bl initialize__8daNpcF_cFv
/* 80A85184  38 7E 0B 4C */	addi r3, r30, 0xb4c
/* 80A85188  4B 6C BE B1 */	bl initialize__15daNpcF_Lookat_cFv
/* 80A8518C  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80A85190  4B 6C B5 21 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A85194  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A85198  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A8519C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A851A0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A851A4  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 80A851A8  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 80A851AC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A851B0  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 80A851B4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A851B8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A851BC  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80A851C0  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A851C4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A851C8  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80A851CC  38 60 00 00 */	li r3, 0
/* 80A851D0  90 7E 0D F4 */	stw r3, 0xdf4(r30)
/* 80A851D4  90 7E 0D F8 */	stw r3, 0xdf8(r30)
/* 80A851D8  90 7E 0D FC */	stw r3, 0xdfc(r30)
/* 80A851DC  90 7E 0E 00 */	stw r3, 0xe00(r30)
/* 80A851E0  38 00 FF FF */	li r0, -1
/* 80A851E4  B0 1E 0E 08 */	sth r0, 0xe08(r30)
/* 80A851E8  B0 7E 0E 0A */	sth r3, 0xe0a(r30)
/* 80A851EC  90 1E 0D F0 */	stw r0, 0xdf0(r30)
/* 80A851F0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80A851F4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A851F8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80A851FC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A85200  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80A85204  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A85208  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8520C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A85210  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A85214  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A85218  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8521C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A85220  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80A85224  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80A85228  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A8522C  B0 7E 04 E0 */	sth r3, 0x4e0(r30)
/* 80A85230  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A85234  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A85238  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8523C  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A85240  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A85244  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A85248  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A8524C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80A85250  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A85254  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A85258  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A8525C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80A85260  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A85264  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 80A85268  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8526C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80A85270  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A85274  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 80A85278  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 80A8527C  B0 1E 08 F6 */	sth r0, 0x8f6(r30)
/* 80A85280  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A85284  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80A85288  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 80A8528C  B0 1E 08 FA */	sth r0, 0x8fa(r30)
/* 80A85290  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A85294  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A85298  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A8529C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A852A0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A852A4  88 1E 0E 0C */	lbz r0, 0xe0c(r30)
/* 80A852A8  28 00 00 01 */	cmplwi r0, 1
/* 80A852AC  40 82 00 18 */	bne lbl_80A852C4
/* 80A852B0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A852B4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80A852B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A852BC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A852C0  48 00 00 24 */	b lbl_80A852E4
lbl_80A852C4:
/* 80A852C4  28 00 00 02 */	cmplwi r0, 2
/* 80A852C8  41 82 00 0C */	beq lbl_80A852D4
/* 80A852CC  28 00 00 03 */	cmplwi r0, 3
/* 80A852D0  40 82 00 14 */	bne lbl_80A852E4
lbl_80A852D4:
/* 80A852D4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A852D8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A852DC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A852E0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80A852E4:
/* 80A852E4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A852E8  D0 1E 0E 10 */	stfs f0, 0xe10(r30)
/* 80A852EC  D0 1E 0E 14 */	stfs f0, 0xe14(r30)
/* 80A852F0  D0 1E 0E 18 */	stfs f0, 0xe18(r30)
/* 80A852F4  D0 1E 0E 1C */	stfs f0, 0xe1c(r30)
/* 80A852F8  D0 1E 0E 20 */	stfs f0, 0xe20(r30)
/* 80A852FC  D0 1E 0E 24 */	stfs f0, 0xe24(r30)
/* 80A85300  38 00 00 32 */	li r0, 0x32
/* 80A85304  90 1E 0E 28 */	stw r0, 0xe28(r30)
/* 80A85308  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80A8530C  D0 1E 0E 30 */	stfs f0, 0xe30(r30)
/* 80A85310  88 1E 0E 0C */	lbz r0, 0xe0c(r30)
/* 80A85314  28 00 00 01 */	cmplwi r0, 1
/* 80A85318  40 82 00 10 */	bne lbl_80A85328
/* 80A8531C  38 60 00 4A */	li r3, 0x4a
/* 80A85320  4B 6D 04 15 */	bl daNpcF_offTmpBit__FUl
/* 80A85324  48 00 00 14 */	b lbl_80A85338
lbl_80A85328:
/* 80A85328  28 00 00 03 */	cmplwi r0, 3
/* 80A8532C  40 82 00 0C */	bne lbl_80A85338
/* 80A85330  38 60 00 4B */	li r3, 0x4b
/* 80A85334  4B 6D 04 01 */	bl daNpcF_offTmpBit__FUl
lbl_80A85338:
/* 80A85338  38 00 00 01 */	li r0, 1
/* 80A8533C  98 1E 09 EE */	stb r0, 0x9ee(r30)
/* 80A85340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A85344  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A85348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8534C  7C 08 03 A6 */	mtlr r0
/* 80A85350  38 21 00 10 */	addi r1, r1, 0x10
/* 80A85354  4E 80 00 20 */	blr 
