lbl_8026A7B8:
/* 8026A7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026A7BC  7C 08 02 A6 */	mflr r0
/* 8026A7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026A7C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8026A7C8  48 0F 7A 11 */	bl _savegpr_28
/* 8026A7CC  7C 7C 1B 78 */	mr r28, r3
/* 8026A7D0  7C 9D 23 78 */	mr r29, r4
/* 8026A7D4  7C BE 2B 78 */	mr r30, r5
/* 8026A7D8  7C DF 33 78 */	mr r31, r6
/* 8026A7DC  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026A7E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026A7E4  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026A7E8  C0 43 00 00 */	lfs f2, 0(r3)
/* 8026A7EC  C0 64 00 08 */	lfs f3, 8(r4)
/* 8026A7F0  C0 84 00 00 */	lfs f4, 0(r4)
/* 8026A7F4  C0 A5 00 08 */	lfs f5, 8(r5)
/* 8026A7F8  C0 C5 00 00 */	lfs f6, 0(r5)
/* 8026A7FC  C0 E6 00 08 */	lfs f7, 8(r6)
/* 8026A800  C1 06 00 00 */	lfs f8, 0(r6)
/* 8026A804  4B FF F5 61 */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026A808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026A80C  40 82 00 0C */	bne lbl_8026A818
/* 8026A810  38 60 00 00 */	li r3, 0
/* 8026A814  48 00 00 94 */	b lbl_8026A8A8
lbl_8026A818:
/* 8026A818  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8026A81C  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8026A820  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8026A824  C0 9D 00 00 */	lfs f4, 0(r29)
/* 8026A828  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A82C  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A830  4B FF E0 65 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A834  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A83C  4C 41 13 82 */	cror 2, 1, 2
/* 8026A840  40 82 00 64 */	bne lbl_8026A8A4
/* 8026A844  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8026A848  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8026A84C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8026A850  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8026A854  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A858  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A85C  4B FF E0 39 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A860  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A868  4C 41 13 82 */	cror 2, 1, 2
/* 8026A86C  40 82 00 38 */	bne lbl_8026A8A4
/* 8026A870  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8026A874  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8026A878  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8026A87C  C0 9C 00 00 */	lfs f4, 0(r28)
/* 8026A880  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8026A884  C0 DF 00 00 */	lfs f6, 0(r31)
/* 8026A888  4B FF E0 0D */	bl cM3d_VectorProduct2d__Fffffff
/* 8026A88C  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026A890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026A894  4C 41 13 82 */	cror 2, 1, 2
/* 8026A898  40 82 00 0C */	bne lbl_8026A8A4
/* 8026A89C  38 60 00 01 */	li r3, 1
/* 8026A8A0  48 00 00 08 */	b lbl_8026A8A8
lbl_8026A8A4:
/* 8026A8A4  38 60 00 00 */	li r3, 0
lbl_8026A8A8:
/* 8026A8A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8026A8AC  48 0F 79 79 */	bl _restgpr_28
/* 8026A8B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026A8B4  7C 08 03 A6 */	mtlr r0
/* 8026A8B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8026A8BC  4E 80 00 20 */	blr 
