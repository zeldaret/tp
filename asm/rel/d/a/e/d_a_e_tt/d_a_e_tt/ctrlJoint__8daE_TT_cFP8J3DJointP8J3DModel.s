lbl_807BD7EC:
/* 807BD7EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BD7F0  7C 08 02 A6 */	mflr r0
/* 807BD7F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BD7F8  39 61 00 20 */	addi r11, r1, 0x20
/* 807BD7FC  4B BA 49 DD */	bl _savegpr_28
/* 807BD800  7C 7D 1B 78 */	mr r29, r3
/* 807BD804  7C BE 2B 78 */	mr r30, r5
/* 807BD808  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 807BD80C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 807BD810  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807BD814  1F FC 00 30 */	mulli r31, r28, 0x30
/* 807BD818  7C 60 FA 14 */	add r3, r0, r31
/* 807BD81C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD820  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD824  4B B8 8C 8D */	bl PSMTXCopy
/* 807BD828  38 1C FF FC */	addi r0, r28, -4
/* 807BD82C  28 00 00 0D */	cmplwi r0, 0xd
/* 807BD830  41 81 00 68 */	bgt lbl_807BD898
/* 807BD834  3C 60 80 7C */	lis r3, lit_3973@ha /* 0x807C2180@ha */
/* 807BD838  38 63 21 80 */	addi r3, r3, lit_3973@l /* 0x807C2180@l */
/* 807BD83C  54 00 10 3A */	slwi r0, r0, 2
/* 807BD840  7C 03 00 2E */	lwzx r0, r3, r0
/* 807BD844  7C 09 03 A6 */	mtctr r0
/* 807BD848  4E 80 04 20 */	bctr 
lbl_807BD84C:
/* 807BD84C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD854  A8 9D 06 D8 */	lha r4, 0x6d8(r29)
/* 807BD858  4B 84 EC 75 */	bl mDoMtx_ZrotM__FPA4_fs
/* 807BD85C  48 00 00 3C */	b lbl_807BD898
lbl_807BD860:
/* 807BD860  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD864  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD868  A8 9D 06 DA */	lha r4, 0x6da(r29)
/* 807BD86C  4B 84 EC 61 */	bl mDoMtx_ZrotM__FPA4_fs
/* 807BD870  48 00 00 28 */	b lbl_807BD898
lbl_807BD874:
/* 807BD874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD87C  A8 9D 06 DC */	lha r4, 0x6dc(r29)
/* 807BD880  4B 84 EC 4D */	bl mDoMtx_ZrotM__FPA4_fs
/* 807BD884  48 00 00 14 */	b lbl_807BD898
lbl_807BD888:
/* 807BD888  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD88C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD890  A8 9D 06 DE */	lha r4, 0x6de(r29)
/* 807BD894  4B 84 EC 39 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_807BD898:
/* 807BD898  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD89C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD8A0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 807BD8A4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 807BD8A8  7C 80 FA 14 */	add r4, r0, r31
/* 807BD8AC  4B B8 8C 05 */	bl PSMTXCopy
/* 807BD8B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD8B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD8B8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 807BD8BC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 807BD8C0  4B B8 8B F1 */	bl PSMTXCopy
/* 807BD8C4  38 60 00 01 */	li r3, 1
/* 807BD8C8  39 61 00 20 */	addi r11, r1, 0x20
/* 807BD8CC  4B BA 49 59 */	bl _restgpr_28
/* 807BD8D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BD8D4  7C 08 03 A6 */	mtlr r0
/* 807BD8D8  38 21 00 20 */	addi r1, r1, 0x20
/* 807BD8DC  4E 80 00 20 */	blr 
