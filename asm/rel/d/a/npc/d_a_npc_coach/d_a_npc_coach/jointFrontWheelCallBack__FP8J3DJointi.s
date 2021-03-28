lbl_8099D72C:
/* 8099D72C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099D730  7C 08 02 A6 */	mflr r0
/* 8099D734  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099D738  39 61 00 20 */	addi r11, r1, 0x20
/* 8099D73C  4B 9C 4A A0 */	b _savegpr_29
/* 8099D740  2C 04 00 00 */	cmpwi r4, 0
/* 8099D744  41 82 00 0C */	beq lbl_8099D750
/* 8099D748  38 60 00 01 */	li r3, 1
/* 8099D74C  48 00 00 A8 */	b lbl_8099D7F4
lbl_8099D750:
/* 8099D750  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8099D754  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8099D758  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8099D75C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8099D760  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8099D764  2C 04 00 02 */	cmpwi r4, 2
/* 8099D768  40 82 00 0C */	bne lbl_8099D774
/* 8099D76C  3B C3 15 9C */	addi r30, r3, 0x159c
/* 8099D770  48 00 00 08 */	b lbl_8099D778
lbl_8099D774:
/* 8099D774  3B C3 15 C0 */	addi r30, r3, 0x15c0
lbl_8099D778:
/* 8099D778  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8099D77C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8099D780  1F A4 00 30 */	mulli r29, r4, 0x30
/* 8099D784  7C 60 EA 14 */	add r3, r0, r29
/* 8099D788  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8099D78C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8099D790  4B 9A 8D 20 */	b PSMTXCopy
/* 8099D794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D79C  A8 9E 00 02 */	lha r4, 2(r30)
/* 8099D7A0  4B 66 EC 94 */	b mDoMtx_YrotM__FPA4_fs
/* 8099D7A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D7A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D7AC  A8 9E 00 04 */	lha r4, 4(r30)
/* 8099D7B0  4B 66 ED 1C */	b mDoMtx_ZrotM__FPA4_fs
/* 8099D7B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D7B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D7BC  A8 9E 00 00 */	lha r4, 0(r30)
/* 8099D7C0  4B 66 EB DC */	b mDoMtx_XrotM__FPA4_fs
/* 8099D7C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D7C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D7CC  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8099D7D0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8099D7D4  7C 80 EA 14 */	add r4, r0, r29
/* 8099D7D8  4B 9A 8C D8 */	b PSMTXCopy
/* 8099D7DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099D7E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099D7E4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8099D7E8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8099D7EC  4B 9A 8C C4 */	b PSMTXCopy
/* 8099D7F0  38 60 00 01 */	li r3, 1
lbl_8099D7F4:
/* 8099D7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8099D7F8  4B 9C 4A 30 */	b _restgpr_29
/* 8099D7FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099D800  7C 08 03 A6 */	mtlr r0
/* 8099D804  38 21 00 20 */	addi r1, r1, 0x20
/* 8099D808  4E 80 00 20 */	blr 
