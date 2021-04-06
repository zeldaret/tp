lbl_80595784:
/* 80595784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80595788  7C 08 02 A6 */	mflr r0
/* 8059578C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80595790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80595794  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80595798  2C 04 00 00 */	cmpwi r4, 0
/* 8059579C  41 82 00 0C */	beq lbl_805957A8
/* 805957A0  38 60 00 01 */	li r3, 1
/* 805957A4  48 00 00 94 */	b lbl_80595838
lbl_805957A8:
/* 805957A8  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 805957AC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 805957B0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 805957B4  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 805957B8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 805957BC  1C 04 00 38 */	mulli r0, r4, 0x38
/* 805957C0  7C 63 02 14 */	add r3, r3, r0
/* 805957C4  A8 03 05 D8 */	lha r0, 0x5d8(r3)
/* 805957C8  B0 01 00 08 */	sth r0, 8(r1)
/* 805957CC  A8 03 05 DA */	lha r0, 0x5da(r3)
/* 805957D0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805957D4  A8 03 05 DC */	lha r0, 0x5dc(r3)
/* 805957D8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805957DC  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 805957E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805957E4  1F C4 00 30 */	mulli r30, r4, 0x30
/* 805957E8  7C 60 F2 14 */	add r3, r0, r30
/* 805957EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805957F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805957F4  4B DB 0C BD */	bl PSMTXCopy
/* 805957F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805957FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80595800  A8 81 00 08 */	lha r4, 8(r1)
/* 80595804  4B A7 6B 99 */	bl mDoMtx_XrotM__FPA4_fs
/* 80595808  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059580C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80595810  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80595814  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80595818  7C 80 F2 14 */	add r4, r0, r30
/* 8059581C  4B DB 0C 95 */	bl PSMTXCopy
/* 80595820  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80595824  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80595828  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8059582C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80595830  4B DB 0C 81 */	bl PSMTXCopy
/* 80595834  38 60 00 01 */	li r3, 1
lbl_80595838:
/* 80595838  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059583C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80595840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80595844  7C 08 03 A6 */	mtlr r0
/* 80595848  38 21 00 20 */	addi r1, r1, 0x20
/* 8059584C  4E 80 00 20 */	blr 
