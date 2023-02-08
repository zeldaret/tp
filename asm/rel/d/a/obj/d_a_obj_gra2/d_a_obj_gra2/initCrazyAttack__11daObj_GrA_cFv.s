lbl_80C0C84C:
/* 80C0C84C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C0C850  7C 08 02 A6 */	mflr r0
/* 80C0C854  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C0C858  39 61 00 30 */	addi r11, r1, 0x30
/* 80C0C85C  4B 75 59 7D */	bl _savegpr_28
/* 80C0C860  7C 7D 1B 78 */	mr r29, r3
/* 80C0C864  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0C868  3B C3 FA 7C */	addi r30, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0C86C  80 1D 1F F0 */	lwz r0, 0x1ff0(r29)
/* 80C0C870  2C 00 00 03 */	cmpwi r0, 3
/* 80C0C874  40 82 00 E0 */	bne lbl_80C0C954
/* 80C0C878  80 1D 1F F8 */	lwz r0, 0x1ff8(r29)
/* 80C0C87C  2C 00 00 00 */	cmpwi r0, 0
/* 80C0C880  40 82 00 D4 */	bne lbl_80C0C954
/* 80C0C884  38 00 00 04 */	li r0, 4
/* 80C0C888  90 1D 1F F0 */	stw r0, 0x1ff0(r29)
/* 80C0C88C  38 00 00 01 */	li r0, 1
/* 80C0C890  98 1D 1F E9 */	stb r0, 0x1fe9(r29)
/* 80C0C894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0C898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0C89C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80C0C8A0  88 04 05 6A */	lbz r0, 0x56a(r4)
/* 80C0C8A4  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C0C8A8  40 82 00 0C */	bne lbl_80C0C8B4
/* 80C0C8AC  38 00 00 00 */	li r0, 0
/* 80C0C8B0  98 04 05 6A */	stb r0, 0x56a(r4)
lbl_80C0C8B4:
/* 80C0C8B4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C0C8B8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80C0C8BC  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80C0C8C0  90 03 05 70 */	stw r0, 0x570(r3)
/* 80C0C8C4  88 1D 1F E8 */	lbz r0, 0x1fe8(r29)
/* 80C0C8C8  7C 00 07 75 */	extsb. r0, r0
/* 80C0C8CC  40 82 01 80 */	bne lbl_80C0CA4C
/* 80C0C8D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0C8D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0C8D8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C0C8DC  7C 00 07 74 */	extsb r0, r0
/* 80C0C8E0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C0C8E4  7C 63 02 14 */	add r3, r3, r0
/* 80C0C8E8  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80C0C8EC  38 00 00 00 */	li r0, 0
/* 80C0C8F0  B0 1D 20 54 */	sth r0, 0x2054(r29)
/* 80C0C8F4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C0C8F8  4B 55 4B B5 */	bl Start__9dCamera_cFv
/* 80C0C8FC  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C0C900  38 80 00 00 */	li r4, 0
/* 80C0C904  4B 55 67 09 */	bl SetTrimSize__9dCamera_cFl
/* 80C0C908  38 60 00 52 */	li r3, 0x52
/* 80C0C90C  4B 54 8D 69 */	bl daNpcF_onEvtBit__FUl
/* 80C0C910  C0 1E 03 10 */	lfs f0, 0x310(r30)
/* 80C0C914  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80C0C918  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 80C0C91C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C0C920  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 80C0C924  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80C0C928  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80C0C92C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80C0C930  3C 84 00 01 */	addis r4, r4, 1
/* 80C0C934  38 04 80 00 */	addi r0, r4, -32768
/* 80C0C938  7C 04 07 34 */	extsh r4, r0
/* 80C0C93C  38 A0 00 04 */	li r5, 4
/* 80C0C940  38 C0 10 00 */	li r6, 0x1000
/* 80C0C944  4B 66 3C C5 */	bl cLib_addCalcAngleS2__FPssss
/* 80C0C948  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80C0C94C  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C0C950  48 00 00 FC */	b lbl_80C0CA4C
lbl_80C0C954:
/* 80C0C954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0C958  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0C95C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80C0C960  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80C0C964  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C0C968  40 82 00 0C */	bne lbl_80C0C974
/* 80C0C96C  38 00 00 00 */	li r0, 0
/* 80C0C970  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_80C0C974:
/* 80C0C974  88 1D 1F E8 */	lbz r0, 0x1fe8(r29)
/* 80C0C978  7C 00 07 75 */	extsb. r0, r0
/* 80C0C97C  40 82 00 78 */	bne lbl_80C0C9F4
/* 80C0C980  A8 1D 20 54 */	lha r0, 0x2054(r29)
/* 80C0C984  2C 00 00 00 */	cmpwi r0, 0
/* 80C0C988  41 82 00 3C */	beq lbl_80C0C9C4
/* 80C0C98C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0C990  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0C994  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C0C998  7C 00 07 74 */	extsb r0, r0
/* 80C0C99C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C0C9A0  7C 63 02 14 */	add r3, r3, r0
/* 80C0C9A4  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 80C0C9A8  38 7C 02 48 */	addi r3, r28, 0x248
/* 80C0C9AC  4B 55 4B 01 */	bl Start__9dCamera_cFv
/* 80C0C9B0  38 7C 02 48 */	addi r3, r28, 0x248
/* 80C0C9B4  38 80 00 00 */	li r4, 0
/* 80C0C9B8  4B 55 66 55 */	bl SetTrimSize__9dCamera_cFl
/* 80C0C9BC  38 00 00 00 */	li r0, 0
/* 80C0C9C0  B0 1D 20 54 */	sth r0, 0x2054(r29)
lbl_80C0C9C4:
/* 80C0C9C4  3C 60 80 C1 */	lis r3, lit_9348@ha /* 0x80C10344@ha */
/* 80C0C9C8  38 83 03 44 */	addi r4, r3, lit_9348@l /* 0x80C10344@l */
/* 80C0C9CC  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0C9D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0C9D4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C0C9D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C0C9DC  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0C9E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C0C9E4  7F A3 EB 78 */	mr r3, r29
/* 80C0C9E8  38 81 00 14 */	addi r4, r1, 0x14
/* 80C0C9EC  4B FF 4F 09 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0C9F0  48 00 00 40 */	b lbl_80C0CA30
lbl_80C0C9F4:
/* 80C0C9F4  3C 60 80 C1 */	lis r3, lit_9351@ha /* 0x80C10350@ha */
/* 80C0C9F8  38 83 03 50 */	addi r4, r3, lit_9351@l /* 0x80C10350@l */
/* 80C0C9FC  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0CA00  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0CA04  90 61 00 08 */	stw r3, 8(r1)
/* 80C0CA08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0CA0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0CA10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C0CA14  7F A3 EB 78 */	mr r3, r29
/* 80C0CA18  38 81 00 08 */	addi r4, r1, 8
/* 80C0CA1C  4B FF 4E D9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0CA20  38 00 00 01 */	li r0, 1
/* 80C0CA24  98 1D 1F E9 */	stb r0, 0x1fe9(r29)
/* 80C0CA28  38 00 00 3C */	li r0, 0x3c
/* 80C0CA2C  B0 1D 1F D8 */	sth r0, 0x1fd8(r29)
lbl_80C0CA30:
/* 80C0CA30  C0 1E 03 14 */	lfs f0, 0x314(r30)
/* 80C0CA34  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80C0CA38  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C0CA3C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80C0CA40  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C0CA44  4B 66 41 C1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0CA48  B0 7D 04 DE */	sth r3, 0x4de(r29)
lbl_80C0CA4C:
/* 80C0CA4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C0CA50  4B 75 57 D5 */	bl _restgpr_28
/* 80C0CA54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C0CA58  7C 08 03 A6 */	mtlr r0
/* 80C0CA5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0CA60  4E 80 00 20 */	blr 
