lbl_809E08FC:
/* 809E08FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E0900  7C 08 02 A6 */	mflr r0
/* 809E0904  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E0908  39 61 00 20 */	addi r11, r1, 0x20
/* 809E090C  4B 98 18 D1 */	bl _savegpr_29
/* 809E0910  7C 7E 1B 78 */	mr r30, r3
/* 809E0914  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha /* 0x809E3BF0@ha */
/* 809E0918  3B E4 3B F0 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809E3BF0@l */
/* 809E091C  48 00 18 81 */	bl doEvent__11daNpc_grR_cFv
/* 809E0920  2C 03 00 00 */	cmpwi r3, 0
/* 809E0924  40 82 00 10 */	bne lbl_809E0934
/* 809E0928  7F C3 F3 78 */	mr r3, r30
/* 809E092C  38 80 00 01 */	li r4, 1
/* 809E0930  48 00 17 59 */	bl doNormalAction__11daNpc_grR_cFi
lbl_809E0934:
/* 809E0934  3B A0 00 00 */	li r29, 0
/* 809E0938  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809E093C  28 00 00 00 */	cmplwi r0, 0
/* 809E0940  40 82 00 1C */	bne lbl_809E095C
/* 809E0944  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809E0948  28 00 00 00 */	cmplwi r0, 0
/* 809E094C  41 82 00 14 */	beq lbl_809E0960
/* 809E0950  4B 64 F1 05 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809E0954  2C 03 00 00 */	cmpwi r3, 0
/* 809E0958  40 82 00 08 */	bne lbl_809E0960
lbl_809E095C:
/* 809E095C  3B A0 00 01 */	li r29, 1
lbl_809E0960:
/* 809E0960  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 809E0964  41 82 00 0C */	beq lbl_809E0970
/* 809E0968  38 00 00 00 */	li r0, 0
/* 809E096C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809E0970:
/* 809E0970  3C 60 80 9E */	lis r3, m__17daNpc_grR_Param_c@ha /* 0x809E38D8@ha */
/* 809E0974  38 63 38 D8 */	addi r3, r3, m__17daNpc_grR_Param_c@l /* 0x809E38D8@l */
/* 809E0978  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 809E097C  28 00 00 00 */	cmplwi r0, 0
/* 809E0980  40 82 00 AC */	bne lbl_809E0A2C
/* 809E0984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E0988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E098C  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 809E0990  28 03 00 00 */	cmplwi r3, 0
/* 809E0994  41 82 00 30 */	beq lbl_809E09C4
/* 809E0998  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 809E099C  28 00 00 00 */	cmplwi r0, 0
/* 809E09A0  41 82 00 8C */	beq lbl_809E0A2C
/* 809E09A4  38 00 00 00 */	li r0, 0
/* 809E09A8  28 03 00 00 */	cmplwi r3, 0
/* 809E09AC  41 82 00 0C */	beq lbl_809E09B8
/* 809E09B0  28 03 00 02 */	cmplwi r3, 2
/* 809E09B4  40 82 00 08 */	bne lbl_809E09BC
lbl_809E09B8:
/* 809E09B8  38 00 00 01 */	li r0, 1
lbl_809E09BC:
/* 809E09BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809E09C0  41 82 00 6C */	beq lbl_809E0A2C
lbl_809E09C4:
/* 809E09C4  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809E09C8  28 00 00 00 */	cmplwi r0, 0
/* 809E09CC  41 82 00 24 */	beq lbl_809E09F0
/* 809E09D0  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 809E09D4  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809E09D8  7C 63 02 14 */	add r3, r3, r0
/* 809E09DC  80 03 00 04 */	lwz r0, 4(r3)
/* 809E09E0  54 00 10 3A */	slwi r0, r0, 2
/* 809E09E4  38 7F 01 40 */	addi r3, r31, 0x140
/* 809E09E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 809E09EC  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_809E09F0:
/* 809E09F0  7F C3 F3 78 */	mr r3, r30
/* 809E09F4  88 9E 0E 18 */	lbz r4, 0xe18(r30)
/* 809E09F8  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809E09FC  54 00 18 38 */	slwi r0, r0, 3
/* 809E0A00  38 BF 00 F8 */	addi r5, r31, 0xf8
/* 809E0A04  7C 05 00 2E */	lwzx r0, r5, r0
/* 809E0A08  54 00 10 3A */	slwi r0, r0, 2
/* 809E0A0C  38 BF 01 48 */	addi r5, r31, 0x148
/* 809E0A10  7C A5 00 2E */	lwzx r5, r5, r0
/* 809E0A14  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809E0A18  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809E0A1C  38 E0 00 28 */	li r7, 0x28
/* 809E0A20  39 00 00 FF */	li r8, 0xff
/* 809E0A24  39 20 00 01 */	li r9, 1
/* 809E0A28  4B 77 2E 55 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809E0A2C:
/* 809E0A2C  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 809E0A30  28 00 00 00 */	cmplwi r0, 0
/* 809E0A34  41 82 00 1C */	beq lbl_809E0A50
/* 809E0A38  3C 60 80 9E */	lis r3, lit_4453@ha /* 0x809E3968@ha */
/* 809E0A3C  C0 03 39 68 */	lfs f0, lit_4453@l(r3)  /* 0x809E3968@l */
/* 809E0A40  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 809E0A44  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 809E0A48  38 00 00 00 */	li r0, 0
/* 809E0A4C  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_809E0A50:
/* 809E0A50  7F C3 F3 78 */	mr r3, r30
/* 809E0A54  48 00 0E 51 */	bl playExpression__11daNpc_grR_cFv
/* 809E0A58  7F C3 F3 78 */	mr r3, r30
/* 809E0A5C  48 00 10 CD */	bl playMotion__11daNpc_grR_cFv
/* 809E0A60  38 60 00 01 */	li r3, 1
/* 809E0A64  39 61 00 20 */	addi r11, r1, 0x20
/* 809E0A68  4B 98 17 C1 */	bl _restgpr_29
/* 809E0A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E0A70  7C 08 03 A6 */	mtlr r0
/* 809E0A74  38 21 00 20 */	addi r1, r1, 0x20
/* 809E0A78  4E 80 00 20 */	blr 
