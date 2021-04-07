lbl_80026940:
/* 80026940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026944  7C 08 02 A6 */	mflr r0
/* 80026948  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002694C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80026950  93 C1 00 08 */	stw r30, 8(r1)
/* 80026954  7C 7E 1B 78 */	mr r30, r3
/* 80026958  7C 9F 23 78 */	mr r31, r4
/* 8002695C  4B FF FA 01 */	bl dStage_dt_c_offsetToPtr__FPv
/* 80026960  7F E3 FB 78 */	mr r3, r31
/* 80026964  81 9F 00 00 */	lwz r12, 0(r31)
/* 80026968  81 8C 00 08 */	lwz r12, 8(r12)
/* 8002696C  7D 89 03 A6 */	mtctr r12
/* 80026970  4E 80 04 21 */	bctrl 
/* 80026974  7F C3 F3 78 */	mr r3, r30
/* 80026978  7F E4 FB 78 */	mr r4, r31
/* 8002697C  3C A0 80 3A */	lis r5, l_funcTable_5136@ha /* 0x803A6638@ha */
/* 80026980  38 A5 66 38 */	addi r5, r5, l_funcTable_5136@l /* 0x803A6638@l */
/* 80026984  38 C0 00 01 */	li r6, 1
/* 80026988  4B FF F7 2D */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 8002698C  7F C3 F3 78 */	mr r3, r30
/* 80026990  7F E4 FB 78 */	mr r4, r31
/* 80026994  38 A0 FF FF */	li r5, -1
/* 80026998  4B FF FF 7D */	bl layerMemoryInfoLoader__FPvP11dStage_dt_ci
/* 8002699C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800269A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800269A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800269A8  7C 08 03 A6 */	mtlr r0
/* 800269AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800269B0  4E 80 00 20 */	blr 
