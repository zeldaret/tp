lbl_805567AC:
/* 805567AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805567B0  7C 08 02 A6 */	mflr r0
/* 805567B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805567B8  39 61 00 30 */	addi r11, r1, 0x30
/* 805567BC  4B E0 BA 21 */	bl _savegpr_29
/* 805567C0  7C 7E 1B 78 */	mr r30, r3
/* 805567C4  7C 9F 23 78 */	mr r31, r4
/* 805567C8  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha /* 0x8055A5B4@ha */
/* 805567CC  3B A3 A5 B4 */	addi r29, r3, m__19daNpc_Kolin_Param_c@l /* 0x8055A5B4@l */
/* 805567D0  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 805567D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805567D8  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 805567DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805567E0  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 805567E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805567E8  38 7E 05 50 */	addi r3, r30, 0x550
/* 805567EC  4B AB 65 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805567F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805567F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805567F8  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 805567FC  4B AB 5C 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80556800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80556804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80556808  38 81 00 08 */	addi r4, r1, 8
/* 8055680C  38 BE 0D 6C */	addi r5, r30, 0xd6c
/* 80556810  4B DF 05 5D */	bl PSMTXMultVec
/* 80556814  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 80556818  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 8055681C  7C 63 00 50 */	subf r3, r3, r0
/* 80556820  30 03 FF FF */	addic r0, r3, -1
/* 80556824  7C 00 19 10 */	subfe r0, r0, r3
/* 80556828  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055682C  40 82 00 10 */	bne lbl_8055683C
/* 80556830  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80556834  2C 00 00 03 */	cmpwi r0, 3
/* 80556838  41 82 00 30 */	beq lbl_80556868
lbl_8055683C:
/* 8055683C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80556840  4B BE EE BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80556844  38 00 00 00 */	li r0, 0
/* 80556848  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055684C  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 80556850  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80556854  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80556858  38 00 00 03 */	li r0, 3
/* 8055685C  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80556860  38 00 00 01 */	li r0, 1
/* 80556864  48 00 00 08 */	b lbl_8055686C
lbl_80556868:
/* 80556868  38 00 00 00 */	li r0, 0
lbl_8055686C:
/* 8055686C  2C 00 00 00 */	cmpwi r0, 0
/* 80556870  41 82 00 0C */	beq lbl_8055687C
/* 80556874  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 80556878  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_8055687C:
/* 8055687C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80556880  41 82 00 10 */	beq lbl_80556890
/* 80556884  38 00 00 00 */	li r0, 0
/* 80556888  B0 1E 0C D4 */	sth r0, 0xcd4(r30)
/* 8055688C  B0 1E 0C D6 */	sth r0, 0xcd6(r30)
lbl_80556890:
/* 80556890  9B FE 0C FF */	stb r31, 0xcff(r30)
/* 80556894  39 61 00 30 */	addi r11, r1, 0x30
/* 80556898  4B E0 B9 91 */	bl _restgpr_29
/* 8055689C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805568A0  7C 08 03 A6 */	mtlr r0
/* 805568A4  38 21 00 30 */	addi r1, r1, 0x30
/* 805568A8  4E 80 00 20 */	blr 
