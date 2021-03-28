lbl_8009E7B8:
/* 8009E7B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8009E7BC  7C 08 02 A6 */	mflr r0
/* 8009E7C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8009E7C4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8009E7C8  7C 7F 1B 78 */	mr r31, r3
/* 8009E7CC  38 00 00 00 */	li r0, 0
/* 8009E7D0  88 63 2F AA */	lbz r3, 0x2faa(r3)
/* 8009E7D4  28 03 00 01 */	cmplwi r3, 1
/* 8009E7D8  41 82 00 0C */	beq lbl_8009E7E4
/* 8009E7DC  28 03 00 02 */	cmplwi r3, 2
/* 8009E7E0  40 82 00 08 */	bne lbl_8009E7E8
lbl_8009E7E4:
/* 8009E7E4  38 00 00 01 */	li r0, 1
lbl_8009E7E8:
/* 8009E7E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8009E7EC  41 82 00 14 */	beq lbl_8009E800
/* 8009E7F0  7F E3 FB 78 */	mr r3, r31
/* 8009E7F4  48 01 C7 8D */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 8009E7F8  2C 03 00 00 */	cmpwi r3, 0
/* 8009E7FC  40 82 00 30 */	bne lbl_8009E82C
lbl_8009E800:
/* 8009E800  7F E3 FB 78 */	mr r3, r31
/* 8009E804  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8009E808  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8009E80C  7D 89 03 A6 */	mtctr r12
/* 8009E810  4E 80 04 21 */	bctrl 
/* 8009E814  28 03 00 00 */	cmplwi r3, 0
/* 8009E818  41 82 00 F0 */	beq lbl_8009E908
/* 8009E81C  7F E3 FB 78 */	mr r3, r31
/* 8009E820  48 01 AA 35 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 8009E824  2C 03 00 00 */	cmpwi r3, 0
/* 8009E828  40 82 00 E0 */	bne lbl_8009E908
lbl_8009E82C:
/* 8009E82C  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8009E830  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8009E834  38 9F 2C 18 */	addi r4, r31, 0x2c18
/* 8009E838  48 2A 7C 79 */	bl PSMTXCopy
/* 8009E83C  80 7F 1F 54 */	lwz r3, 0x1f54(r31)
/* 8009E840  28 03 00 00 */	cmplwi r3, 0
/* 8009E844  41 82 00 80 */	beq lbl_8009E8C4
/* 8009E848  38 80 00 00 */	li r4, 0
/* 8009E84C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8009E850  81 83 00 00 */	lwz r12, 0(r3)
/* 8009E854  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8009E858  7D 89 03 A6 */	mtctr r12
/* 8009E85C  4E 80 04 21 */	bctrl 
/* 8009E860  A8 61 00 24 */	lha r3, 0x24(r1)
/* 8009E864  A8 81 00 26 */	lha r4, 0x26(r1)
/* 8009E868  A8 A1 00 28 */	lha r5, 0x28(r1)
/* 8009E86C  38 C1 00 08 */	addi r6, r1, 8
/* 8009E870  48 29 B0 09 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8009E878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8009E87C  38 81 00 08 */	addi r4, r1, 8
/* 8009E880  48 2A 81 69 */	bl PSMTXQuat
/* 8009E884  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8009E888  38 63 00 24 */	addi r3, r3, 0x24
/* 8009E88C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8009E890  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8009E894  3C A0 80 43 */	lis r5, mCurrentMtx__6J3DSys@ha
/* 8009E898  38 A5 4B E4 */	addi r5, r5, mCurrentMtx__6J3DSys@l
/* 8009E89C  48 2A 7C 49 */	bl PSMTXConcat
/* 8009E8A0  C0 1F 2C 24 */	lfs f0, 0x2c24(r31)
/* 8009E8A4  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8009E8A8  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8009E8AC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8009E8B0  C0 1F 2C 34 */	lfs f0, 0x2c34(r31)
/* 8009E8B4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009E8B8  C0 1F 2C 44 */	lfs f0, 0x2c44(r31)
/* 8009E8BC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8009E8C0  48 00 00 40 */	b lbl_8009E900
lbl_8009E8C4:
/* 8009E8C4  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 8009E8C8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8009E8CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8009E8D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8009E8D4  48 2A 81 15 */	bl PSMTXQuat
/* 8009E8D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8009E8DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8009E8E0  7C 64 1B 78 */	mr r4, r3
/* 8009E8E4  48 2A 7C CD */	bl PSMTXInverse
/* 8009E8E8  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha
/* 8009E8EC  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l
/* 8009E8F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8009E8F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8009E8F8  7C 65 1B 78 */	mr r5, r3
/* 8009E8FC  48 2A 7B E9 */	bl PSMTXConcat
lbl_8009E900:
/* 8009E900  38 00 00 01 */	li r0, 1
/* 8009E904  98 1F 2F 90 */	stb r0, 0x2f90(r31)
lbl_8009E908:
/* 8009E908  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8009E90C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8009E910  7C 08 03 A6 */	mtlr r0
/* 8009E914  38 21 00 40 */	addi r1, r1, 0x40
/* 8009E918  4E 80 00 20 */	blr 
