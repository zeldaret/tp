lbl_80D3F740:
/* 80D3F740  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80D3F744  7C 08 02 A6 */	mflr r0
/* 80D3F748  90 01 00 94 */	stw r0, 0x94(r1)
/* 80D3F74C  39 61 00 90 */	addi r11, r1, 0x90
/* 80D3F750  4B 62 2A 81 */	bl _savegpr_26
/* 80D3F754  7C 7A 1B 78 */	mr r26, r3
/* 80D3F758  3C 60 80 D4 */	lis r3, l_cyl_data@ha /* 0x80D401EC@ha */
/* 80D3F75C  38 63 01 EC */	addi r3, r3, l_cyl_data@l /* 0x80D401EC@l */
/* 80D3F760  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 80D3F764  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D3F768  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 80D3F76C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80D3F770  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D3F774  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D3F778  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80D3F77C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80D3F780  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 80D3F784  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D3F788  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D3F78C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80D3F790  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80D3F794  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80D3F798  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80D3F79C  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 80D3F7A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D3F7A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80D3F7A8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D3F7AC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D3F7B0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80D3F7B4  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80D3F7B8  C0 03 00 B4 */	lfs f0, 0xb4(r3)
/* 80D3F7BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D3F7C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D3F7C4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D3F7C8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D3F7CC  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80D3F7D0  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80D3F7D4  3B 60 00 00 */	li r27, 0
/* 80D3F7D8  3B E0 00 00 */	li r31, 0
/* 80D3F7DC  3B C0 00 00 */	li r30, 0
/* 80D3F7E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3F7E4  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3F7E8  7F 9D E3 78 */	mr r29, r28
lbl_80D3F7EC:
/* 80D3F7EC  38 61 00 44 */	addi r3, r1, 0x44
/* 80D3F7F0  7C 63 F2 14 */	add r3, r3, r30
/* 80D3F7F4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80D3F7F8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D3F7FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D3F800  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D3F804  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D3F808  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D3F80C  7F 83 E3 78 */	mr r3, r28
/* 80D3F810  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 80D3F814  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 80D3F818  C0 7A 04 D8 */	lfs f3, 0x4d8(r26)
/* 80D3F81C  4B 60 70 CD */	bl PSMTXTrans
/* 80D3F820  7F 83 E3 78 */	mr r3, r28
/* 80D3F824  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80D3F828  4B 2C CC 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 80D3F82C  7F A3 EB 78 */	mr r3, r29
/* 80D3F830  38 81 00 38 */	addi r4, r1, 0x38
/* 80D3F834  7C 85 23 78 */	mr r5, r4
/* 80D3F838  4B 60 75 35 */	bl PSMTXMultVec
/* 80D3F83C  38 7F 09 24 */	addi r3, r31, 0x924
/* 80D3F840  7C 7A 1A 14 */	add r3, r26, r3
/* 80D3F844  38 81 00 38 */	addi r4, r1, 0x38
/* 80D3F848  4B 52 F9 95 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D3F84C  3B 7B 00 01 */	addi r27, r27, 1
/* 80D3F850  2C 1B 00 04 */	cmpwi r27, 4
/* 80D3F854  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80D3F858  3B DE 00 0C */	addi r30, r30, 0xc
/* 80D3F85C  41 80 FF 90 */	blt lbl_80D3F7EC
/* 80D3F860  38 7A 0E 14 */	addi r3, r26, 0xe14
/* 80D3F864  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80D3F868  4B 52 F9 75 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D3F86C  39 61 00 90 */	addi r11, r1, 0x90
/* 80D3F870  4B 62 29 AD */	bl _restgpr_26
/* 80D3F874  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80D3F878  7C 08 03 A6 */	mtlr r0
/* 80D3F87C  38 21 00 90 */	addi r1, r1, 0x90
/* 80D3F880  4E 80 00 20 */	blr 
