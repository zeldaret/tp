lbl_8064B69C:
/* 8064B69C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8064B6A0  7C 08 02 A6 */	mflr r0
/* 8064B6A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064B6A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8064B6AC  4B D1 6B 28 */	b _savegpr_27
/* 8064B6B0  7C 7E 1B 78 */	mr r30, r3
/* 8064B6B4  3C 80 80 65 */	lis r4, lit_3757@ha
/* 8064B6B8  3B E4 EB 1C */	addi r31, r4, lit_3757@l
/* 8064B6BC  38 00 00 00 */	li r0, 0
/* 8064B6C0  98 03 07 0F */	stb r0, 0x70f(r3)
/* 8064B6C4  90 03 06 F0 */	stw r0, 0x6f0(r3)
/* 8064B6C8  98 03 07 0E */	stb r0, 0x70e(r3)
/* 8064B6CC  98 03 07 10 */	stb r0, 0x710(r3)
/* 8064B6D0  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 8064B6D4  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 8064B6D8  4B FF 49 E5 */	bl setTgType__10daB_ZANT_cFUl
/* 8064B6DC  80 1E 0A 7C */	lwz r0, 0xa7c(r30)
/* 8064B6E0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8064B6E4  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 8064B6E8  80 1E 0B B4 */	lwz r0, 0xbb4(r30)
/* 8064B6EC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8064B6F0  90 1E 0B B4 */	stw r0, 0xbb4(r30)
/* 8064B6F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8064B6F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8064B6FC  3B 83 09 78 */	addi r28, r3, 0x978
/* 8064B700  7F 83 E3 78 */	mr r3, r28
/* 8064B704  38 80 00 14 */	li r4, 0x14
/* 8064B708  4B 9E 94 B8 */	b offSwitch__12dSv_danBit_cFi
/* 8064B70C  7F 83 E3 78 */	mr r3, r28
/* 8064B710  38 80 00 15 */	li r4, 0x15
/* 8064B714  4B 9E 94 AC */	b offSwitch__12dSv_danBit_cFi
/* 8064B718  7F 83 E3 78 */	mr r3, r28
/* 8064B71C  38 80 00 16 */	li r4, 0x16
/* 8064B720  4B 9E 94 A0 */	b offSwitch__12dSv_danBit_cFi
/* 8064B724  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 8064B728  28 00 00 06 */	cmplwi r0, 6
/* 8064B72C  41 82 00 10 */	beq lbl_8064B73C
/* 8064B730  38 00 01 18 */	li r0, 0x118
/* 8064B734  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8064B738  48 00 00 0C */	b lbl_8064B744
lbl_8064B73C:
/* 8064B73C  A8 1E 05 60 */	lha r0, 0x560(r30)
/* 8064B740  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_8064B744:
/* 8064B744  38 7E 07 8C */	addi r3, r30, 0x78c
/* 8064B748  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8064B74C  FC 40 08 90 */	fmr f2, f1
/* 8064B750  4B A2 A8 08 */	b SetWall__12dBgS_AcchCirFff
/* 8064B754  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 8064B758  28 00 00 02 */	cmplwi r0, 2
/* 8064B75C  40 82 00 10 */	bne lbl_8064B76C
/* 8064B760  38 00 00 04 */	li r0, 4
/* 8064B764  98 1E 05 46 */	stb r0, 0x546(r30)
/* 8064B768  48 00 00 0C */	b lbl_8064B774
lbl_8064B76C:
/* 8064B76C  38 00 00 18 */	li r0, 0x18
/* 8064B770  98 1E 05 46 */	stb r0, 0x546(r30)
lbl_8064B774:
/* 8064B774  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 8064B778  38 81 00 08 */	addi r4, r1, 8
/* 8064B77C  4B 9C E2 40 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8064B780  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 8064B784  28 00 00 03 */	cmplwi r0, 3
/* 8064B788  40 82 00 90 */	bne lbl_8064B818
/* 8064B78C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8064B790  64 00 00 08 */	oris r0, r0, 8
/* 8064B794  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8064B798  80 01 00 08 */	lwz r0, 8(r1)
/* 8064B79C  28 00 00 00 */	cmplwi r0, 0
/* 8064B7A0  40 82 00 9C */	bne lbl_8064B83C
/* 8064B7A4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064B7A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8064B7AC  C0 1F 03 2C */	lfs f0, 0x32c(r31)
/* 8064B7B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064B7B4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8064B7B8  3B 60 00 00 */	li r27, 0
/* 8064B7BC  3B E0 00 00 */	li r31, 0
/* 8064B7C0  3B 80 FF 00 */	li r28, -256
/* 8064B7C4  3C 60 80 65 */	lis r3, data_8064F030@ha
/* 8064B7C8  3B A3 F0 30 */	addi r29, r3, data_8064F030@l
lbl_8064B7CC:
/* 8064B7CC  38 60 00 F8 */	li r3, 0xf8
/* 8064B7D0  7F 64 E3 78 */	or r4, r27, r28
/* 8064B7D4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8064B7D8  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 8064B7DC  7C DD 00 AE */	lbzx r6, r29, r0
/* 8064B7E0  7C C6 07 74 */	extsb r6, r6
/* 8064B7E4  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 8064B7E8  39 00 00 00 */	li r8, 0
/* 8064B7EC  39 20 FF FF */	li r9, -1
/* 8064B7F0  4B 9C E5 A8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8064B7F4  38 1F 07 2C */	addi r0, r31, 0x72c
/* 8064B7F8  7C 7E 01 2E */	stwx r3, r30, r0
/* 8064B7FC  3B 7B 00 01 */	addi r27, r27, 1
/* 8064B800  2C 1B 00 04 */	cmpwi r27, 4
/* 8064B804  3B FF 00 04 */	addi r31, r31, 4
/* 8064B808  41 80 FF C4 */	blt lbl_8064B7CC
/* 8064B80C  38 00 00 00 */	li r0, 0
/* 8064B810  98 1E 07 28 */	stb r0, 0x728(r30)
/* 8064B814  48 00 00 28 */	b lbl_8064B83C
lbl_8064B818:
/* 8064B818  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8064B81C  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 8064B820  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8064B824  80 61 00 08 */	lwz r3, 8(r1)
/* 8064B828  28 03 00 00 */	cmplwi r3, 0
/* 8064B82C  41 82 00 10 */	beq lbl_8064B83C
/* 8064B830  4B 9C E4 4C */	b fopAcM_delete__FP10fopAc_ac_c
/* 8064B834  38 00 FF FF */	li r0, -1
/* 8064B838  90 1E 07 2C */	stw r0, 0x72c(r30)
lbl_8064B83C:
/* 8064B83C  88 1E 06 FB */	lbz r0, 0x6fb(r30)
/* 8064B840  3C 60 80 65 */	lis r3, data_8064F030@ha
/* 8064B844  38 63 F0 30 */	addi r3, r3, data_8064F030@l
/* 8064B848  7C 03 00 AE */	lbzx r0, r3, r0
/* 8064B84C  98 1E 04 8C */	stb r0, 0x48c(r30)
/* 8064B850  39 61 00 30 */	addi r11, r1, 0x30
/* 8064B854  4B D1 69 CC */	b _restgpr_27
/* 8064B858  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8064B85C  7C 08 03 A6 */	mtlr r0
/* 8064B860  38 21 00 30 */	addi r1, r1, 0x30
/* 8064B864  4E 80 00 20 */	blr 
