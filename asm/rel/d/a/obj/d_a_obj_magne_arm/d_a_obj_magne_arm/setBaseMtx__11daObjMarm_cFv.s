lbl_8058F77C:
/* 8058F77C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058F780  7C 08 02 A6 */	mflr r0
/* 8058F784  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058F788  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8058F78C  7C 7F 1B 78 */	mr r31, r3
/* 8058F790  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8058F794  4B A7 D5 D0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F79C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F7A0  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058F7A4  4B A7 CC 90 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F7A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F7AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F7B0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 8058F7B4  38 84 00 24 */	addi r4, r4, 0x24
/* 8058F7B8  4B DB 6C F8 */	b PSMTXCopy
/* 8058F7BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F7C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F7C4  38 9F 05 6C */	addi r4, r31, 0x56c
/* 8058F7C8  4B DB 6C E8 */	b PSMTXCopy
/* 8058F7CC  7F E3 FB 78 */	mr r3, r31
/* 8058F7D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8058F7D4  4B FF FB 85 */	bl getBpartsOffset__11daObjMarm_cFP4cXyz
/* 8058F7D8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8058F7DC  4B A7 D5 88 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F7E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F7E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F7E8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058F7EC  4B A7 CC 48 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F7F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F7F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F7F8  A8 9F 09 FC */	lha r4, 0x9fc(r31)
/* 8058F7FC  4B A7 CB A0 */	b mDoMtx_XrotM__FPA4_fs
/* 8058F800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F808  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 8058F80C  38 84 00 24 */	addi r4, r4, 0x24
/* 8058F810  4B DB 6C A0 */	b PSMTXCopy
/* 8058F814  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8058F818  4B A7 D5 4C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F81C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F824  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058F828  4B A7 CC 0C */	b mDoMtx_YrotM__FPA4_fs
/* 8058F82C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F830  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F834  A8 9F 09 FE */	lha r4, 0x9fe(r31)
/* 8058F838  A8 1F 0A 30 */	lha r0, 0xa30(r31)
/* 8058F83C  7C 04 02 14 */	add r0, r4, r0
/* 8058F840  7C 04 07 34 */	extsh r4, r0
/* 8058F844  4B A7 CB F0 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F848  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F84C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F850  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 8058F854  38 84 00 24 */	addi r4, r4, 0x24
/* 8058F858  4B DB 6C 58 */	b PSMTXCopy
/* 8058F85C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F864  38 9F 05 D0 */	addi r4, r31, 0x5d0
/* 8058F868  4B DB 6C 48 */	b PSMTXCopy
/* 8058F86C  7F E3 FB 78 */	mr r3, r31
/* 8058F870  38 81 00 20 */	addi r4, r1, 0x20
/* 8058F874  4B FF FB 61 */	bl getDpartsOffset__11daObjMarm_cFP4cXyz
/* 8058F878  38 61 00 20 */	addi r3, r1, 0x20
/* 8058F87C  4B A7 D4 E8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F880  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F884  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F888  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058F88C  4B A7 CB A8 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F898  A8 9F 09 FE */	lha r4, 0x9fe(r31)
/* 8058F89C  A8 1F 0A 30 */	lha r0, 0xa30(r31)
/* 8058F8A0  7C 04 02 14 */	add r0, r4, r0
/* 8058F8A4  7C 04 07 34 */	extsh r4, r0
/* 8058F8A8  4B A7 CB 8C */	b mDoMtx_YrotM__FPA4_fs
/* 8058F8AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F8B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F8B4  A8 9F 0A 00 */	lha r4, 0xa00(r31)
/* 8058F8B8  4B A7 CA E4 */	b mDoMtx_XrotM__FPA4_fs
/* 8058F8BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F8C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F8C4  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8058F8C8  38 84 00 24 */	addi r4, r4, 0x24
/* 8058F8CC  4B DB 6B E4 */	b PSMTXCopy
/* 8058F8D0  7F E3 FB 78 */	mr r3, r31
/* 8058F8D4  38 81 00 14 */	addi r4, r1, 0x14
/* 8058F8D8  4B FF FB 95 */	bl getEpartsOffset__11daObjMarm_cFP4cXyz
/* 8058F8DC  38 61 00 14 */	addi r3, r1, 0x14
/* 8058F8E0  4B A7 D4 84 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F8E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F8E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F8EC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058F8F0  4B A7 CB 44 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F8F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F8F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F8FC  A8 9F 09 FE */	lha r4, 0x9fe(r31)
/* 8058F900  A8 1F 0A 30 */	lha r0, 0xa30(r31)
/* 8058F904  7C 04 02 14 */	add r0, r4, r0
/* 8058F908  7C 04 07 34 */	extsh r4, r0
/* 8058F90C  4B A7 CB 28 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F910  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F914  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F918  A8 9F 0A 02 */	lha r4, 0xa02(r31)
/* 8058F91C  4B A7 CA 80 */	b mDoMtx_XrotM__FPA4_fs
/* 8058F920  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F924  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F928  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8058F92C  38 84 00 24 */	addi r4, r4, 0x24
/* 8058F930  4B DB 6B 80 */	b PSMTXCopy
/* 8058F934  7F E3 FB 78 */	mr r3, r31
/* 8058F938  38 81 00 08 */	addi r4, r1, 8
/* 8058F93C  4B FF FB C9 */	bl getFpartsOffset__11daObjMarm_cFP4cXyz
/* 8058F940  38 61 00 08 */	addi r3, r1, 8
/* 8058F944  4B A7 D4 20 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F94C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F950  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058F954  4B A7 CA E0 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F95C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F960  A8 9F 09 FE */	lha r4, 0x9fe(r31)
/* 8058F964  A8 1F 0A 30 */	lha r0, 0xa30(r31)
/* 8058F968  7C 04 02 14 */	add r0, r4, r0
/* 8058F96C  7C 04 07 34 */	extsh r4, r0
/* 8058F970  4B A7 CA C4 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F97C  A8 9F 0A 32 */	lha r4, 0xa32(r31)
/* 8058F980  4B A7 CB 4C */	b mDoMtx_ZrotM__FPA4_fs
/* 8058F984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F98C  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 8058F990  38 84 00 24 */	addi r4, r4, 0x24
/* 8058F994  4B DB 6B 1C */	b PSMTXCopy
/* 8058F998  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F99C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F9A0  38 9F 06 34 */	addi r4, r31, 0x634
/* 8058F9A4  4B DB 6B 0C */	b PSMTXCopy
/* 8058F9A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F9AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F9B0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8058F9B4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8058F9B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8058F9BC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8058F9C0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8058F9C4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8058F9C8  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 8058F9CC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8058F9D0  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8058F9D4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8058F9D8  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 8058F9DC  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8058F9E0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8058F9E4  4B A7 D3 80 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F9E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F9EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058F9F0  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8058F9F4  4B A7 CA 40 */	b mDoMtx_YrotM__FPA4_fs
/* 8058F9F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058F9FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058FA00  A8 9F 09 FE */	lha r4, 0x9fe(r31)
/* 8058FA04  A8 1F 0A 30 */	lha r0, 0xa30(r31)
/* 8058FA08  7C 04 02 14 */	add r0, r4, r0
/* 8058FA0C  7C 04 07 34 */	extsh r4, r0
/* 8058FA10  4B A7 CA 24 */	b mDoMtx_YrotM__FPA4_fs
/* 8058FA14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058FA18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058FA1C  38 9F 06 00 */	addi r4, r31, 0x600
/* 8058FA20  4B DB 6A 90 */	b PSMTXCopy
/* 8058FA24  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8058FA28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058FA2C  7C 08 03 A6 */	mtlr r0
/* 8058FA30  38 21 00 40 */	addi r1, r1, 0x40
/* 8058FA34  4E 80 00 20 */	blr 
