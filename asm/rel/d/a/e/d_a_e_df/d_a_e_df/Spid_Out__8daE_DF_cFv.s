lbl_806A8790:
/* 806A8790  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A8794  7C 08 02 A6 */	mflr r0
/* 806A8798  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A879C  39 61 00 30 */	addi r11, r1, 0x30
/* 806A87A0  4B CB 9A 3D */	bl _savegpr_29
/* 806A87A4  7C 7F 1B 78 */	mr r31, r3
/* 806A87A8  3C 60 80 6B */	lis r3, lit_3916@ha /* 0x806A9F30@ha */
/* 806A87AC  3B C3 9F 30 */	addi r30, r3, lit_3916@l /* 0x806A9F30@l */
/* 806A87B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A87B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A87B8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 806A87BC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A87C0  38 63 00 0C */	addi r3, r3, 0xc
/* 806A87C4  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 806A87C8  4B C7 FC 65 */	bl checkPass__12J3DFrameCtrlFf
/* 806A87CC  2C 03 00 00 */	cmpwi r3, 0
/* 806A87D0  41 82 00 28 */	beq lbl_806A87F8
/* 806A87D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806A87D8  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806A87DC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806A87E0  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806A87E4  7F E3 FB 78 */	mr r3, r31
/* 806A87E8  4B FF F4 55 */	bl SetReleaseCam__8daE_DF_cFv
/* 806A87EC  7F E3 FB 78 */	mr r3, r31
/* 806A87F0  4B FF F8 41 */	bl Link_Eat_Pos__8daE_DF_cFv
/* 806A87F4  48 00 01 2C */	b lbl_806A8920
lbl_806A87F8:
/* 806A87F8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A87FC  38 63 00 0C */	addi r3, r3, 0xc
/* 806A8800  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806A8804  4B C7 FC 29 */	bl checkPass__12J3DFrameCtrlFf
/* 806A8808  2C 03 00 00 */	cmpwi r3, 0
/* 806A880C  41 82 00 58 */	beq lbl_806A8864
/* 806A8810  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806A8814  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 806A8818  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806A881C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 806A8820  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806A8824  38 9F 08 28 */	addi r4, r31, 0x828
/* 806A8828  4B BC 83 DD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806A882C  7C 64 1B 78 */	mr r4, r3
/* 806A8830  7F A3 EB 78 */	mr r3, r29
/* 806A8834  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806A8838  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 806A883C  38 A0 00 02 */	li r5, 2
/* 806A8840  38 C0 00 00 */	li r6, 0
/* 806A8844  38 E0 00 00 */	li r7, 0
/* 806A8848  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806A884C  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 806A8850  7D 89 03 A6 */	mtctr r12
/* 806A8854  4E 80 04 21 */	bctrl 
/* 806A8858  38 00 00 28 */	li r0, 0x28
/* 806A885C  B0 1F 05 BE */	sth r0, 0x5be(r31)
/* 806A8860  48 00 00 C0 */	b lbl_806A8920
lbl_806A8864:
/* 806A8864  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A8868  38 63 00 0C */	addi r3, r3, 0xc
/* 806A886C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 806A8870  4B C7 FB BD */	bl checkPass__12J3DFrameCtrlFf
/* 806A8874  2C 03 00 00 */	cmpwi r3, 0
/* 806A8878  41 82 00 38 */	beq lbl_806A88B0
/* 806A887C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806A8880  D0 21 00 08 */	stfs f1, 8(r1)
/* 806A8884  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806A8888  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806A888C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806A8890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A8894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A8898  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806A889C  38 80 00 03 */	li r4, 3
/* 806A88A0  38 A0 00 1F */	li r5, 0x1f
/* 806A88A4  38 C1 00 08 */	addi r6, r1, 8
/* 806A88A8  4B 9C 72 69 */	bl StartQuake__12dVibration_cFii4cXyz
/* 806A88AC  48 00 00 74 */	b lbl_806A8920
lbl_806A88B0:
/* 806A88B0  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A88B4  38 63 00 0C */	addi r3, r3, 0xc
/* 806A88B8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 806A88BC  4B C7 FB 71 */	bl checkPass__12J3DFrameCtrlFf
/* 806A88C0  2C 03 00 00 */	cmpwi r3, 0
/* 806A88C4  41 82 00 1C */	beq lbl_806A88E0
/* 806A88C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A88CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A88D0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806A88D4  38 80 00 1F */	li r4, 0x1f
/* 806A88D8  4B 9C 74 BD */	bl StopQuake__12dVibration_cFi
/* 806A88DC  48 00 00 44 */	b lbl_806A8920
lbl_806A88E0:
/* 806A88E0  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A88E4  38 80 00 01 */	li r4, 1
/* 806A88E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806A88EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806A88F0  40 82 00 18 */	bne lbl_806A8908
/* 806A88F4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806A88F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A88FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806A8900  41 82 00 08 */	beq lbl_806A8908
/* 806A8904  38 80 00 00 */	li r4, 0
lbl_806A8908:
/* 806A8908  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806A890C  41 82 00 14 */	beq lbl_806A8920
/* 806A8910  38 00 00 00 */	li r0, 0
/* 806A8914  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 806A8918  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 806A891C  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_806A8920:
/* 806A8920  39 61 00 30 */	addi r11, r1, 0x30
/* 806A8924  4B CB 99 05 */	bl _restgpr_29
/* 806A8928  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A892C  7C 08 03 A6 */	mtlr r0
/* 806A8930  38 21 00 30 */	addi r1, r1, 0x30
/* 806A8934  4E 80 00 20 */	blr 
