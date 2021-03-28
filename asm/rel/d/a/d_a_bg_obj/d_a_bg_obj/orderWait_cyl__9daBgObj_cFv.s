lbl_8045B7FC:
/* 8045B7FC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8045B800  7C 08 02 A6 */	mflr r0
/* 8045B804  90 01 00 64 */	stw r0, 0x64(r1)
/* 8045B808  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8045B80C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8045B810  7C 7F 1B 78 */	mr r31, r3
/* 8045B814  3C 60 80 46 */	lis r3, l_cyl_src@ha
/* 8045B818  3B C3 C9 B8 */	addi r30, r3, l_cyl_src@l
/* 8045B81C  38 7F 0B 88 */	addi r3, r31, 0xb88
/* 8045B820  4B C2 8C 40 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8045B824  28 03 00 00 */	cmplwi r3, 0
/* 8045B828  41 82 01 70 */	beq lbl_8045B998
/* 8045B82C  38 7F 0B 88 */	addi r3, r31, 0xb88
/* 8045B830  4B C2 8C C8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8045B834  7C 64 1B 78 */	mr r4, r3
/* 8045B838  7F E3 FB 78 */	mr r3, r31
/* 8045B83C  4B FF FC F9 */	bl checkHitAt__9daBgObj_cFP8cCcD_Obj
/* 8045B840  2C 03 00 00 */	cmpwi r3, 0
/* 8045B844  41 82 01 40 */	beq lbl_8045B984
/* 8045B848  7F E3 FB 78 */	mr r3, r31
/* 8045B84C  4B FF FB 55 */	bl setSe__9daBgObj_cFv
/* 8045B850  38 7F 0C 24 */	addi r3, r31, 0xc24
/* 8045B854  4B C2 7E 34 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8045B858  28 03 00 00 */	cmplwi r3, 0
/* 8045B85C  41 82 01 18 */	beq lbl_8045B974
/* 8045B860  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8045B864  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8045B868  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8045B86C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8045B870  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8045B874  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8045B878  38 61 00 2C */	addi r3, r1, 0x2c
/* 8045B87C  38 81 00 44 */	addi r4, r1, 0x44
/* 8045B880  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045B884  4B E0 B2 B0 */	b __mi__4cXyzCFRC3Vec
/* 8045B888  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8045B88C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8045B890  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8045B894  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8045B898  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8045B89C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8045B8A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045B8A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045B8A8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8045B8AC  7C 00 00 D0 */	neg r0, r0
/* 8045B8B0  7C 04 07 34 */	extsh r4, r0
/* 8045B8B4  4B BB 0B 28 */	b mDoMtx_YrotS__FPA4_fs
/* 8045B8B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045B8BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045B8C0  38 81 00 44 */	addi r4, r1, 0x44
/* 8045B8C4  7C 85 23 78 */	mr r5, r4
/* 8045B8C8  4B EE B4 A4 */	b PSMTXMultVec
/* 8045B8CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8045B8D0  4B BB 14 94 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8045B8D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045B8D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045B8DC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8045B8E0  4B BB 0B 54 */	b mDoMtx_YrotM__FPA4_fs
/* 8045B8E4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8045B8E8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8045B8EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045B8F0  40 81 00 24 */	ble lbl_8045B914
/* 8045B8F4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8045B8F8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8045B8FC  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8045B900  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8045B904  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045B908  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8045B90C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8045B910  48 00 00 20 */	b lbl_8045B930
lbl_8045B914:
/* 8045B914  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8045B918  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8045B91C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8045B920  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8045B924  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045B928  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8045B92C  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8045B930:
/* 8045B930  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045B934  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045B938  38 81 00 38 */	addi r4, r1, 0x38
/* 8045B93C  7C 85 23 78 */	mr r5, r4
/* 8045B940  4B EE B4 2C */	b PSMTXMultVec
/* 8045B944  38 61 00 08 */	addi r3, r1, 8
/* 8045B948  38 81 00 38 */	addi r4, r1, 0x38
/* 8045B94C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045B950  4B E0 B1 E4 */	b __mi__4cXyzCFRC3Vec
/* 8045B954  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045B958  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8045B95C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8045B960  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8045B964  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8045B968  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8045B96C  4B E0 BD 08 */	b cM_atan2s__Fff
/* 8045B970  B0 7F 0C F6 */	sth r3, 0xcf6(r31)
lbl_8045B974:
/* 8045B974  7F E3 FB 78 */	mr r3, r31
/* 8045B978  4B FF F8 05 */	bl setParticle__9daBgObj_cFv
/* 8045B97C  38 00 00 01 */	li r0, 1
/* 8045B980  98 1F 0C C5 */	stb r0, 0xcc5(r31)
lbl_8045B984:
/* 8045B984  38 7F 0B 88 */	addi r3, r31, 0xb88
/* 8045B988  81 9F 0B C4 */	lwz r12, 0xbc4(r31)
/* 8045B98C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8045B990  7D 89 03 A6 */	mtctr r12
/* 8045B994  4E 80 04 21 */	bctrl 
lbl_8045B998:
/* 8045B998  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045B99C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045B9A0  38 63 23 3C */	addi r3, r3, 0x233c
/* 8045B9A4  38 9F 0B 88 */	addi r4, r31, 0xb88
/* 8045B9A8  4B E0 92 00 */	b Set__4cCcSFP8cCcD_Obj
/* 8045B9AC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8045B9B0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8045B9B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8045B9B8  7C 08 03 A6 */	mtlr r0
/* 8045B9BC  38 21 00 60 */	addi r1, r1, 0x60
/* 8045B9C0  4E 80 00 20 */	blr 
