lbl_803346BC:
/* 803346BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803346C0  7C 08 02 A6 */	mflr r0
/* 803346C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803346C8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 803346CC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 803346D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 803346D4  7C 9F 23 78 */	mr r31, r4
/* 803346D8  40 82 00 0C */	bne lbl_803346E4
/* 803346DC  38 60 00 00 */	li r3, 0
/* 803346E0  48 00 00 E8 */	b lbl_803347C8
lbl_803346E4:
/* 803346E4  80 9E 00 00 */	lwz r4, 0(r30)
/* 803346E8  3C 04 B5 CD */	addis r0, r4, 0xb5cd
/* 803346EC  28 00 44 31 */	cmplwi r0, 0x4431
/* 803346F0  40 82 00 1C */	bne lbl_8033470C
/* 803346F4  80 7E 00 04 */	lwz r3, 4(r30)
/* 803346F8  3C 03 9D 93 */	addis r0, r3, 0x9d93
/* 803346FC  28 00 64 31 */	cmplwi r0, 0x6431
/* 80334700  40 82 00 0C */	bne lbl_8033470C
/* 80334704  38 60 00 00 */	li r3, 0
/* 80334708  48 00 00 C0 */	b lbl_803347C8
lbl_8033470C:
/* 8033470C  3C 04 B5 CD */	addis r0, r4, 0xb5cd
/* 80334710  28 00 44 32 */	cmplwi r0, 0x4432
/* 80334714  40 82 00 54 */	bne lbl_80334768
/* 80334718  80 7E 00 04 */	lwz r3, 4(r30)
/* 8033471C  3C 03 9D 93 */	addis r0, r3, 0x9d93
/* 80334720  28 00 64 32 */	cmplwi r0, 0x6432
/* 80334724  40 82 00 44 */	bne lbl_80334768
/* 80334728  38 61 00 24 */	addi r3, r1, 0x24
/* 8033472C  4B FF FF 61 */	bl __ct__14J3DModelLoaderFv
/* 80334730  3C 60 80 3D */	lis r3, __vt__18J3DModelLoader_v21@ha
/* 80334734  38 03 F1 08 */	addi r0, r3, __vt__18J3DModelLoader_v21@l
/* 80334738  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033473C  38 61 00 24 */	addi r3, r1, 0x24
/* 80334740  7F C4 F3 78 */	mr r4, r30
/* 80334744  7F E5 FB 78 */	mr r5, r31
/* 80334748  48 00 00 99 */	bl load__14J3DModelLoaderFPCvUl
/* 8033474C  3C 80 80 3D */	lis r4, __vt__18J3DModelLoader_v21@ha
/* 80334750  38 04 F1 08 */	addi r0, r4, __vt__18J3DModelLoader_v21@l
/* 80334754  90 01 00 24 */	stw r0, 0x24(r1)
/* 80334758  3C 80 80 3D */	lis r4, __vt__14J3DModelLoader@ha
/* 8033475C  38 04 F1 F4 */	addi r0, r4, __vt__14J3DModelLoader@l
/* 80334760  90 01 00 24 */	stw r0, 0x24(r1)
/* 80334764  48 00 00 64 */	b lbl_803347C8
lbl_80334768:
/* 80334768  3C 04 B5 CD */	addis r0, r4, 0xb5cd
/* 8033476C  28 00 44 32 */	cmplwi r0, 0x4432
/* 80334770  40 82 00 54 */	bne lbl_803347C4
/* 80334774  80 7E 00 04 */	lwz r3, 4(r30)
/* 80334778  3C 03 9D 93 */	addis r0, r3, 0x9d93
/* 8033477C  28 00 64 33 */	cmplwi r0, 0x6433
/* 80334780  40 82 00 44 */	bne lbl_803347C4
/* 80334784  38 61 00 08 */	addi r3, r1, 8
/* 80334788  4B FF FF 05 */	bl __ct__14J3DModelLoaderFv
/* 8033478C  3C 60 80 3D */	lis r3, __vt__18J3DModelLoader_v26@ha
/* 80334790  38 03 F1 4C */	addi r0, r3, __vt__18J3DModelLoader_v26@l
/* 80334794  90 01 00 08 */	stw r0, 8(r1)
/* 80334798  38 61 00 08 */	addi r3, r1, 8
/* 8033479C  7F C4 F3 78 */	mr r4, r30
/* 803347A0  7F E5 FB 78 */	mr r5, r31
/* 803347A4  48 00 00 3D */	bl load__14J3DModelLoaderFPCvUl
/* 803347A8  3C 80 80 3D */	lis r4, __vt__18J3DModelLoader_v26@ha
/* 803347AC  38 04 F1 4C */	addi r0, r4, __vt__18J3DModelLoader_v26@l
/* 803347B0  90 01 00 08 */	stw r0, 8(r1)
/* 803347B4  3C 80 80 3D */	lis r4, __vt__14J3DModelLoader@ha
/* 803347B8  38 04 F1 F4 */	addi r0, r4, __vt__14J3DModelLoader@l
/* 803347BC  90 01 00 08 */	stw r0, 8(r1)
/* 803347C0  48 00 00 08 */	b lbl_803347C8
lbl_803347C4:
/* 803347C4  38 60 00 00 */	li r3, 0
lbl_803347C8:
/* 803347C8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803347CC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 803347D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803347D4  7C 08 03 A6 */	mtlr r0
/* 803347D8  38 21 00 50 */	addi r1, r1, 0x50
/* 803347DC  4E 80 00 20 */	blr 
