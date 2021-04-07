lbl_800238D4:
/* 800238D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800238D8  7C 08 02 A6 */	mflr r0
/* 800238DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800238E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800238E4  93 C1 00 08 */	stw r30, 8(r1)
/* 800238E8  7C 7E 1B 78 */	mr r30, r3
/* 800238EC  7C 9F 23 78 */	mr r31, r4
/* 800238F0  88 63 00 0B */	lbz r3, 0xb(r3)
/* 800238F4  20 1F 00 FF */	subfic r0, r31, 0xff
/* 800238F8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800238FC  7C 60 00 38 */	and r0, r3, r0
/* 80023900  98 1E 00 0B */	stb r0, 0xb(r30)
/* 80023904  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 80023908  80 9E 00 B4 */	lwz r4, 0xb4(r30)
/* 8002390C  4B FF CD 41 */	bl fpcBs_Is_JustOfType__Fii
/* 80023910  2C 03 00 00 */	cmpwi r3, 0
/* 80023914  41 82 00 18 */	beq lbl_8002392C
/* 80023918  38 7E 00 BC */	addi r3, r30, 0xbc
/* 8002391C  3C 80 80 02 */	lis r4, fpcPause_Disable__FPvUc@ha /* 0x800238D4@ha */
/* 80023920  38 84 38 D4 */	addi r4, r4, fpcPause_Disable__FPvUc@l /* 0x800238D4@l */
/* 80023924  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80023928  4B FF E2 61 */	bl fpcLyIt_OnlyHere__FP11layer_classPFPvPv_iPv
lbl_8002392C:
/* 8002392C  38 60 00 01 */	li r3, 1
/* 80023930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023934  83 C1 00 08 */	lwz r30, 8(r1)
/* 80023938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002393C  7C 08 03 A6 */	mtlr r0
/* 80023940  38 21 00 10 */	addi r1, r1, 0x10
/* 80023944  4E 80 00 20 */	blr 
