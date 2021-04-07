lbl_80B0E784:
/* 80B0E784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0E788  7C 08 02 A6 */	mflr r0
/* 80B0E78C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0E790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B0E794  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B0E798  7C 7F 1B 78 */	mr r31, r3
/* 80B0E79C  3C 60 80 B1 */	lis r3, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0E7A0  3B C3 08 B4 */	addi r30, r3, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0E7A4  A0 1F 0D 76 */	lhz r0, 0xd76(r31)
/* 80B0E7A8  2C 00 00 02 */	cmpwi r0, 2
/* 80B0E7AC  41 82 00 88 */	beq lbl_80B0E834
/* 80B0E7B0  40 80 01 24 */	bge lbl_80B0E8D4
/* 80B0E7B4  2C 00 00 00 */	cmpwi r0, 0
/* 80B0E7B8  41 82 00 0C */	beq lbl_80B0E7C4
/* 80B0E7BC  48 00 01 18 */	b lbl_80B0E8D4
/* 80B0E7C0  48 00 01 14 */	b lbl_80B0E8D4
lbl_80B0E7C4:
/* 80B0E7C4  A8 1F 0D 74 */	lha r0, 0xd74(r31)
/* 80B0E7C8  2C 00 00 00 */	cmpwi r0, 0
/* 80B0E7CC  41 82 00 0C */	beq lbl_80B0E7D8
/* 80B0E7D0  38 00 00 00 */	li r0, 0
/* 80B0E7D4  B0 1F 0D 74 */	sth r0, 0xd74(r31)
lbl_80B0E7D8:
/* 80B0E7D8  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0E7DC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B0E7E0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B0E7E4  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80B0E7E8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B0E7EC  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80B0E7F0  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B0E7F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0E7F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0E7FC  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B0E800  4B 4F DB DD */	bl mDoMtx_YrotS__FPA4_fs
/* 80B0E804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B0E808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B0E80C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80B0E810  7C 85 23 78 */	mr r5, r4
/* 80B0E814  4B 83 85 59 */	bl PSMTXMultVec
/* 80B0E818  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0E81C  D0 1F 0D 38 */	stfs f0, 0xd38(r31)
/* 80B0E820  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 80B0E824  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 80B0E828  38 00 00 02 */	li r0, 2
/* 80B0E82C  B0 1F 0D 76 */	sth r0, 0xd76(r31)
/* 80B0E830  48 00 00 A4 */	b lbl_80B0E8D4
lbl_80B0E834:
/* 80B0E834  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 80B0E838  38 9F 0D 38 */	addi r4, r31, 0xd38
/* 80B0E83C  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80B0E840  4B 76 1F 6D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0E844  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E848  41 82 00 8C */	beq lbl_80B0E8D4
/* 80B0E84C  3C 60 80 B1 */	lis r3, lit_5086@ha /* 0x80B10B98@ha */
/* 80B0E850  38 83 0B 98 */	addi r4, r3, lit_5086@l /* 0x80B10B98@l */
/* 80B0E854  80 64 00 00 */	lwz r3, 0(r4)
/* 80B0E858  80 04 00 04 */	lwz r0, 4(r4)
/* 80B0E85C  90 61 00 08 */	stw r3, 8(r1)
/* 80B0E860  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0E864  80 04 00 08 */	lwz r0, 8(r4)
/* 80B0E868  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0E86C  38 00 00 03 */	li r0, 3
/* 80B0E870  B0 1F 0D 76 */	sth r0, 0xd76(r31)
/* 80B0E874  38 7F 0D 20 */	addi r3, r31, 0xd20
/* 80B0E878  4B 85 37 A1 */	bl __ptmf_test
/* 80B0E87C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E880  41 82 00 14 */	beq lbl_80B0E894
/* 80B0E884  7F E3 FB 78 */	mr r3, r31
/* 80B0E888  39 9F 0D 20 */	addi r12, r31, 0xd20
/* 80B0E88C  4B 85 37 F9 */	bl __ptmf_scall
/* 80B0E890  60 00 00 00 */	nop 
lbl_80B0E894:
/* 80B0E894  38 00 00 00 */	li r0, 0
/* 80B0E898  B0 1F 0D 76 */	sth r0, 0xd76(r31)
/* 80B0E89C  80 61 00 08 */	lwz r3, 8(r1)
/* 80B0E8A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B0E8A4  90 7F 0D 20 */	stw r3, 0xd20(r31)
/* 80B0E8A8  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 80B0E8AC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B0E8B0  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 80B0E8B4  38 7F 0D 20 */	addi r3, r31, 0xd20
/* 80B0E8B8  4B 85 37 61 */	bl __ptmf_test
/* 80B0E8BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E8C0  41 82 00 14 */	beq lbl_80B0E8D4
/* 80B0E8C4  7F E3 FB 78 */	mr r3, r31
/* 80B0E8C8  39 9F 0D 20 */	addi r12, r31, 0xd20
/* 80B0E8CC  4B 85 37 B9 */	bl __ptmf_scall
/* 80B0E8D0  60 00 00 00 */	nop 
lbl_80B0E8D4:
/* 80B0E8D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B0E8D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B0E8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0E8E0  7C 08 03 A6 */	mtlr r0
/* 80B0E8E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0E8E8  4E 80 00 20 */	blr 
