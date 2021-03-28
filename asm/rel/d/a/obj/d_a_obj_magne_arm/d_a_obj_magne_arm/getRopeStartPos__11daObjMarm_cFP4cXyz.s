lbl_8058F610:
/* 8058F610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058F614  7C 08 02 A6 */	mflr r0
/* 8058F618  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058F61C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058F620  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058F624  7C 7E 1B 78 */	mr r30, r3
/* 8058F628  7C 9F 23 78 */	mr r31, r4
/* 8058F62C  4B FF FE 41 */	bl getEpartsOffset__11daObjMarm_cFP4cXyz
/* 8058F630  3C 60 80 59 */	lis r3, lit_3706@ha
/* 8058F634  C0 03 28 C8 */	lfs f0, lit_3706@l(r3)
/* 8058F638  D0 01 00 08 */	stfs f0, 8(r1)
/* 8058F63C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8058F640  3C 60 80 59 */	lis r3, lit_3707@ha
/* 8058F644  C0 03 28 CC */	lfs f0, lit_3707@l(r3)
/* 8058F648  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8058F64C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F654  A8 9E 09 FE */	lha r4, 0x9fe(r30)
/* 8058F658  A8 1E 0A 30 */	lha r0, 0xa30(r30)
/* 8058F65C  7C 04 02 14 */	add r0, r4, r0
/* 8058F660  7C 04 07 34 */	extsh r4, r0
/* 8058F664  4B A7 CD 78 */	b mDoMtx_YrotS__FPA4_fs
/* 8058F668  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F66C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F670  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8058F674  4B A7 CD C0 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F678  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F67C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F680  38 81 00 08 */	addi r4, r1, 8
/* 8058F684  7C 85 23 78 */	mr r5, r4
/* 8058F688  4B DB 76 E4 */	b PSMTXMultVec
/* 8058F68C  7F E3 FB 78 */	mr r3, r31
/* 8058F690  38 81 00 08 */	addi r4, r1, 8
/* 8058F694  7F E5 FB 78 */	mr r5, r31
/* 8058F698  4B DB 79 F8 */	b PSVECAdd
/* 8058F69C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058F6A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058F6A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058F6A8  7C 08 03 A6 */	mtlr r0
/* 8058F6AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8058F6B0  4E 80 00 20 */	blr 
