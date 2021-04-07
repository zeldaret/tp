lbl_8060E820:
/* 8060E820  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060E824  7C 08 02 A6 */	mflr r0
/* 8060E828  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060E82C  39 61 00 30 */	addi r11, r1, 0x30
/* 8060E830  4B D5 39 AD */	bl _savegpr_29
/* 8060E834  7C 7E 1B 78 */	mr r30, r3
/* 8060E838  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060E83C  3B E3 FD E0 */	addi r31, r3, lit_3928@l /* 0x8060FDE0@l */
/* 8060E840  80 7E 0A 9C */	lwz r3, 0xa9c(r30)
/* 8060E844  2C 03 00 00 */	cmpwi r3, 0
/* 8060E848  41 82 00 0C */	beq lbl_8060E854
/* 8060E84C  38 03 FF FF */	addi r0, r3, -1
/* 8060E850  90 1E 0A 9C */	stw r0, 0xa9c(r30)
lbl_8060E854:
/* 8060E854  A0 7E 0A 98 */	lhz r3, 0xa98(r30)
/* 8060E858  28 03 00 00 */	cmplwi r3, 0
/* 8060E85C  41 82 00 0C */	beq lbl_8060E868
/* 8060E860  38 03 FF FF */	addi r0, r3, -1
/* 8060E864  B0 1E 0A 98 */	sth r0, 0xa98(r30)
lbl_8060E868:
/* 8060E868  80 7E 0A A0 */	lwz r3, 0xaa0(r30)
/* 8060E86C  2C 03 00 00 */	cmpwi r3, 0
/* 8060E870  41 82 00 0C */	beq lbl_8060E87C
/* 8060E874  38 03 FF FF */	addi r0, r3, -1
/* 8060E878  90 1E 0A A0 */	stw r0, 0xaa0(r30)
lbl_8060E87C:
/* 8060E87C  80 7E 0A A4 */	lwz r3, 0xaa4(r30)
/* 8060E880  2C 03 00 00 */	cmpwi r3, 0
/* 8060E884  41 82 00 0C */	beq lbl_8060E890
/* 8060E888  38 03 FF FF */	addi r0, r3, -1
/* 8060E88C  90 1E 0A A4 */	stw r0, 0xaa4(r30)
lbl_8060E890:
/* 8060E890  80 7E 0A A8 */	lwz r3, 0xaa8(r30)
/* 8060E894  2C 03 00 00 */	cmpwi r3, 0
/* 8060E898  41 82 00 0C */	beq lbl_8060E8A4
/* 8060E89C  38 03 FF FF */	addi r0, r3, -1
/* 8060E8A0  90 1E 0A A8 */	stw r0, 0xaa8(r30)
lbl_8060E8A4:
/* 8060E8A4  80 7E 0A AC */	lwz r3, 0xaac(r30)
/* 8060E8A8  2C 03 00 00 */	cmpwi r3, 0
/* 8060E8AC  41 82 00 0C */	beq lbl_8060E8B8
/* 8060E8B0  38 03 FF FF */	addi r0, r3, -1
/* 8060E8B4  90 1E 0A AC */	stw r0, 0xaac(r30)
lbl_8060E8B8:
/* 8060E8B8  7F C3 F3 78 */	mr r3, r30
/* 8060E8BC  4B FF F4 E5 */	bl action__9daB_MGN_cFv
/* 8060E8C0  7F C3 F3 78 */	mr r3, r30
/* 8060E8C4  4B FF F8 95 */	bl mtx_set__9daB_MGN_cFv
/* 8060E8C8  7F C3 F3 78 */	mr r3, r30
/* 8060E8CC  4B FF F9 05 */	bl cc_set__9daB_MGN_cFv
/* 8060E8D0  7F C3 F3 78 */	mr r3, r30
/* 8060E8D4  4B FF 8B C5 */	bl calcBloodMove__9daB_MGN_cFv
/* 8060E8D8  7F C3 F3 78 */	mr r3, r30
/* 8060E8DC  4B FF 84 85 */	bl calcHideSmokeEffect__9daB_MGN_cFv
/* 8060E8E0  88 1E 0B 09 */	lbz r0, 0xb09(r30)
/* 8060E8E4  28 00 00 00 */	cmplwi r0, 0
/* 8060E8E8  41 82 00 14 */	beq lbl_8060E8FC
/* 8060E8EC  7F C3 F3 78 */	mr r3, r30
/* 8060E8F0  4B FF 81 21 */	bl setHeadLightEffect__9daB_MGN_cFv
/* 8060E8F4  38 00 00 00 */	li r0, 0
/* 8060E8F8  98 1E 0B 09 */	stb r0, 0xb09(r30)
lbl_8060E8FC:
/* 8060E8FC  88 7E 0B 0A */	lbz r3, 0xb0a(r30)
/* 8060E900  28 03 00 00 */	cmplwi r3, 0
/* 8060E904  41 82 00 14 */	beq lbl_8060E918
/* 8060E908  38 03 FF FF */	addi r0, r3, -1
/* 8060E90C  98 1E 0B 0A */	stb r0, 0xb0a(r30)
/* 8060E910  7F C3 F3 78 */	mr r3, r30
/* 8060E914  4B FF 81 D9 */	bl setHeadHitEffect__9daB_MGN_cFv
lbl_8060E918:
/* 8060E918  88 1E 0A FD */	lbz r0, 0xafd(r30)
/* 8060E91C  28 00 00 00 */	cmplwi r0, 0
/* 8060E920  40 82 00 54 */	bne lbl_8060E974
/* 8060E924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060E928  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060E92C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8060E930  7F C4 F3 78 */	mr r4, r30
/* 8060E934  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8060E938  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8060E93C  7D 89 03 A6 */	mtctr r12
/* 8060E940  4E 80 04 21 */	bctrl 
/* 8060E944  2C 03 00 00 */	cmpwi r3, 0
/* 8060E948  41 82 00 1C */	beq lbl_8060E964
/* 8060E94C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8060E950  7F C4 F3 78 */	mr r4, r30
/* 8060E954  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8060E958  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8060E95C  7D 89 03 A6 */	mtctr r12
/* 8060E960  4E 80 04 21 */	bctrl 
lbl_8060E964:
/* 8060E964  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8060E968  60 00 02 00 */	ori r0, r0, 0x200
/* 8060E96C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 8060E970  48 00 00 10 */	b lbl_8060E980
lbl_8060E974:
/* 8060E974  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8060E978  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 8060E97C  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_8060E980:
/* 8060E980  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060E984  80 63 00 04 */	lwz r3, 4(r3)
/* 8060E988  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060E98C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060E990  38 63 00 30 */	addi r3, r3, 0x30
/* 8060E994  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060E998  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060E99C  4B D3 7B 15 */	bl PSMTXCopy
/* 8060E9A0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8060E9A4  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 8060E9A8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8060E9AC  4B 9F E3 F1 */	bl transM__14mDoMtx_stack_cFfff
/* 8060E9B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8060E9B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8060E9B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060E9BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8060E9C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060E9C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060E9C8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060E9CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060E9D0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8060E9D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8060E9D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8060E9DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8060E9E0  7F C3 F3 78 */	mr r3, r30
/* 8060E9E4  38 9E 09 E0 */	addi r4, r30, 0x9e0
/* 8060E9E8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8060E9EC  38 C1 00 08 */	addi r6, r1, 8
/* 8060E9F0  48 00 0F 75 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8060E9F4  38 60 00 01 */	li r3, 1
/* 8060E9F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8060E9FC  4B D5 38 2D */	bl _restgpr_29
/* 8060EA00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060EA04  7C 08 03 A6 */	mtlr r0
/* 8060EA08  38 21 00 30 */	addi r1, r1, 0x30
/* 8060EA0C  4E 80 00 20 */	blr 
