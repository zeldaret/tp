lbl_80B953CC:
/* 80B953CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B953D0  7C 08 02 A6 */	mflr r0
/* 80B953D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B953D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B953DC  4B 7C CE 01 */	bl _savegpr_29
/* 80B953E0  7C 7D 1B 78 */	mr r29, r3
/* 80B953E4  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B9B284@ha */
/* 80B953E8  3B C4 B2 84 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B9B284@l */
/* 80B953EC  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B953F0  3B E4 AF EC */	addi r31, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B953F4  48 00 16 01 */	bl doEvent__11daNpc_zrZ_cFv
/* 80B953F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B953FC  40 82 00 10 */	bne lbl_80B9540C
/* 80B95400  7F A3 EB 78 */	mr r3, r29
/* 80B95404  38 80 00 01 */	li r4, 1
/* 80B95408  48 00 14 D9 */	bl doNormalAction__11daNpc_zrZ_cFi
lbl_80B9540C:
/* 80B9540C  38 80 00 00 */	li r4, 0
/* 80B95410  90 9D 05 5C */	stw r4, 0x55c(r29)
/* 80B95414  38 7F 00 00 */	addi r3, r31, 0
/* 80B95418  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80B9541C  28 00 00 00 */	cmplwi r0, 0
/* 80B95420  40 82 00 A8 */	bne lbl_80B954C8
/* 80B95424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B95428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9542C  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80B95430  28 03 00 00 */	cmplwi r3, 0
/* 80B95434  41 82 00 2C */	beq lbl_80B95460
/* 80B95438  88 1D 09 ED */	lbz r0, 0x9ed(r29)
/* 80B9543C  28 00 00 00 */	cmplwi r0, 0
/* 80B95440  41 82 00 88 */	beq lbl_80B954C8
/* 80B95444  28 03 00 00 */	cmplwi r3, 0
/* 80B95448  41 82 00 0C */	beq lbl_80B95454
/* 80B9544C  28 03 00 02 */	cmplwi r3, 2
/* 80B95450  40 82 00 08 */	bne lbl_80B95458
lbl_80B95454:
/* 80B95454  38 80 00 01 */	li r4, 1
lbl_80B95458:
/* 80B95458  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B9545C  41 82 00 6C */	beq lbl_80B954C8
lbl_80B95460:
/* 80B95460  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80B95464  28 00 00 00 */	cmplwi r0, 0
/* 80B95468  41 82 00 24 */	beq lbl_80B9548C
/* 80B9546C  38 7E 00 A0 */	addi r3, r30, 0xa0
/* 80B95470  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 80B95474  7C 63 02 14 */	add r3, r3, r0
/* 80B95478  80 03 00 04 */	lwz r0, 4(r3)
/* 80B9547C  54 00 10 3A */	slwi r0, r0, 2
/* 80B95480  38 7E 01 10 */	addi r3, r30, 0x110
/* 80B95484  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B95488  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80B9548C:
/* 80B9548C  7F A3 EB 78 */	mr r3, r29
/* 80B95490  88 9D 09 E9 */	lbz r4, 0x9e9(r29)
/* 80B95494  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80B95498  54 00 18 38 */	slwi r0, r0, 3
/* 80B9549C  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 80B954A0  7C 05 00 2E */	lwzx r0, r5, r0
/* 80B954A4  54 00 10 3A */	slwi r0, r0, 2
/* 80B954A8  38 BE 01 18 */	addi r5, r30, 0x118
/* 80B954AC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B954B0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B954B4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B954B8  38 E0 00 04 */	li r7, 4
/* 80B954BC  39 00 00 FF */	li r8, 0xff
/* 80B954C0  39 20 00 01 */	li r9, 1
/* 80B954C4  4B 5B E3 B9 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80B954C8:
/* 80B954C8  88 1D 09 EE */	lbz r0, 0x9ee(r29)
/* 80B954CC  28 00 00 00 */	cmplwi r0, 0
/* 80B954D0  41 82 00 18 */	beq lbl_80B954E8
/* 80B954D4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B954D8  D0 1D 09 74 */	stfs f0, 0x974(r29)
/* 80B954DC  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 80B954E0  38 00 00 00 */	li r0, 0
/* 80B954E4  98 1D 09 EE */	stb r0, 0x9ee(r29)
lbl_80B954E8:
/* 80B954E8  7F A3 EB 78 */	mr r3, r29
/* 80B954EC  48 00 10 41 */	bl playExpression__11daNpc_zrZ_cFv
/* 80B954F0  7F A3 EB 78 */	mr r3, r29
/* 80B954F4  48 00 11 25 */	bl playMotion__11daNpc_zrZ_cFv
/* 80B954F8  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80B954FC  60 00 00 02 */	ori r0, r0, 2
/* 80B95500  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 80B95504  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80B95508  60 00 00 04 */	ori r0, r0, 4
/* 80B9550C  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 80B95510  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80B95514  D0 5D 05 30 */	stfs f2, 0x530(r29)
/* 80B95518  D0 5D 04 F8 */	stfs f2, 0x4f8(r29)
/* 80B9551C  D0 5D 04 FC */	stfs f2, 0x4fc(r29)
/* 80B95520  D0 5D 05 00 */	stfs f2, 0x500(r29)
/* 80B95524  D0 5D 05 2C */	stfs f2, 0x52c(r29)
/* 80B95528  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B9552C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B95530  80 1D 14 60 */	lwz r0, 0x1460(r29)
/* 80B95534  54 00 80 1E */	slwi r0, r0, 0x10
/* 80B95538  38 80 00 5A */	li r4, 0x5a
/* 80B9553C  7C 00 23 D6 */	divw r0, r0, r4
/* 80B95540  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B95544  7C 63 02 14 */	add r3, r3, r0
/* 80B95548  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B9554C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B95550  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B95554  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B95558  D0 1D 14 64 */	stfs f0, 0x1464(r29)
/* 80B9555C  80 7D 14 60 */	lwz r3, 0x1460(r29)
/* 80B95560  38 03 FF FF */	addi r0, r3, -1
/* 80B95564  90 1D 14 60 */	stw r0, 0x1460(r29)
/* 80B95568  80 1D 14 60 */	lwz r0, 0x1460(r29)
/* 80B9556C  2C 00 00 00 */	cmpwi r0, 0
/* 80B95570  41 81 00 0C */	bgt lbl_80B9557C
/* 80B95574  90 9D 14 60 */	stw r4, 0x1460(r29)
/* 80B95578  D0 5D 14 64 */	stfs f2, 0x1464(r29)
lbl_80B9557C:
/* 80B9557C  38 60 00 01 */	li r3, 1
/* 80B95580  39 61 00 20 */	addi r11, r1, 0x20
/* 80B95584  4B 7C CC A5 */	bl _restgpr_29
/* 80B95588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9558C  7C 08 03 A6 */	mtlr r0
/* 80B95590  38 21 00 20 */	addi r1, r1, 0x20
/* 80B95594  4E 80 00 20 */	blr 
