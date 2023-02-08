lbl_8081C7D0:
/* 8081C7D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8081C7D4  7C 08 02 A6 */	mflr r0
/* 8081C7D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8081C7DC  39 61 00 60 */	addi r11, r1, 0x60
/* 8081C7E0  4B B4 59 E1 */	bl _savegpr_22
/* 8081C7E4  7C 7B 1B 78 */	mr r27, r3
/* 8081C7E8  7C 9C 23 78 */	mr r28, r4
/* 8081C7EC  3C 60 80 82 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80821B10@ha */
/* 8081C7F0  3B C3 1B 10 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80821B10@l */
/* 8081C7F4  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081C7F8  C0 03 18 AC */	lfs f0, lit_3791@l(r3)  /* 0x808218AC@l */
/* 8081C7FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8081C800  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8081C804  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8081C808  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 8081C80C  80 63 00 04 */	lwz r3, 4(r3)
/* 8081C810  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081C814  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8081C818  57 80 10 3A */	slwi r0, r28, 2
/* 8081C81C  38 7E 01 20 */	addi r3, r30, 0x120
/* 8081C820  7C 03 00 2E */	lwzx r0, r3, r0
/* 8081C824  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8081C828  7C 64 02 14 */	add r3, r4, r0
/* 8081C82C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081C830  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081C834  4B B2 9C 7D */	bl PSMTXCopy
/* 8081C838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081C83C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8081C840  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8081C844  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081C848  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8081C84C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8081C850  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8081C854  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8081C858  1F BC 00 03 */	mulli r29, r28, 3
/* 8081C85C  3B 80 00 00 */	li r28, 0
/* 8081C860  3B 40 00 00 */	li r26, 0
/* 8081C864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081C868  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081C86C  3A FE 01 F0 */	addi r23, r30, 0x1f0
/* 8081C870  3B 1E 01 F4 */	addi r24, r30, 0x1f4
/* 8081C874  3B 3E 01 F8 */	addi r25, r30, 0x1f8
/* 8081C878  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081C87C  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
lbl_8081C880:
/* 8081C880  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8081C884  7C 05 07 74 */	extsb r5, r0
/* 8081C888  7C 1D E2 14 */	add r0, r29, r28
/* 8081C88C  54 03 10 3A */	slwi r3, r0, 2
/* 8081C890  3A C3 14 90 */	addi r22, r3, 0x1490
/* 8081C894  7C 9B B0 2E */	lwzx r4, r27, r22
/* 8081C898  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8081C89C  38 00 00 FF */	li r0, 0xff
/* 8081C8A0  90 01 00 08 */	stw r0, 8(r1)
/* 8081C8A4  38 00 00 00 */	li r0, 0
/* 8081C8A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081C8AC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8081C8B0  92 E1 00 14 */	stw r23, 0x14(r1)
/* 8081C8B4  93 01 00 18 */	stw r24, 0x18(r1)
/* 8081C8B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8081C8BC  38 A0 00 00 */	li r5, 0
/* 8081C8C0  7C D9 D2 2E */	lhzx r6, r25, r26
/* 8081C8C4  38 E1 00 20 */	addi r7, r1, 0x20
/* 8081C8C8  39 1B 01 0C */	addi r8, r27, 0x10c
/* 8081C8CC  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 8081C8D0  39 41 00 2C */	addi r10, r1, 0x2c
/* 8081C8D4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8081C8D8  4B 83 0B F5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8081C8DC  7C 7B B1 2E */	stwx r3, r27, r22
/* 8081C8E0  3B 9C 00 01 */	addi r28, r28, 1
/* 8081C8E4  2C 1C 00 03 */	cmpwi r28, 3
/* 8081C8E8  3B 5A 00 02 */	addi r26, r26, 2
/* 8081C8EC  41 80 FF 94 */	blt lbl_8081C880
/* 8081C8F0  39 61 00 60 */	addi r11, r1, 0x60
/* 8081C8F4  4B B4 59 19 */	bl _restgpr_22
/* 8081C8F8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8081C8FC  7C 08 03 A6 */	mtlr r0
/* 8081C900  38 21 00 60 */	addi r1, r1, 0x60
/* 8081C904  4E 80 00 20 */	blr 
