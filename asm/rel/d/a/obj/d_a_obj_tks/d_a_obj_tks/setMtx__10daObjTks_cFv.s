lbl_80D10100:
/* 80D10100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D10104  7C 08 02 A6 */	mflr r0
/* 80D10108  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1010C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D10110  93 C1 00 08 */	stw r30, 8(r1)
/* 80D10114  7C 7E 1B 78 */	mr r30, r3
/* 80D10118  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80D1011C  83 E3 00 04 */	lwz r31, 4(r3)
/* 80D10120  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D10124  4B 2F CC 40 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D10128  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D1012C  4B 2F CE 18 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D10130  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80D10134  4B 2F CD 3C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80D10138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1013C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D10140  38 9F 00 24 */	addi r4, r31, 0x24
/* 80D10144  4B 63 63 6C */	b PSMTXCopy
/* 80D10148  93 DF 00 14 */	stw r30, 0x14(r31)
/* 80D1014C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80D10150  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80D10154  41 82 00 10 */	beq lbl_80D10164
/* 80D10158  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80D1015C  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80D10160  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80D10164:
/* 80D10164  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D10168  4B 30 10 84 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80D1016C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D10170  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D10174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D10178  7C 08 03 A6 */	mtlr r0
/* 80D1017C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D10180  4E 80 00 20 */	blr 
