lbl_802AA6B0:
/* 802AA6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AA6B4  7C 08 02 A6 */	mflr r0
/* 802AA6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AA6C0  93 C1 00 08 */	stw r30, 8(r1)
/* 802AA6C4  7C 7E 1B 78 */	mr r30, r3
/* 802AA6C8  7C 9F 23 78 */	mr r31, r4
/* 802AA6CC  38 7E 00 18 */	addi r3, r30, 0x18
/* 802AA6D0  4B FF 58 1D */	bl pause__16JAISeCategoryMgrFb
/* 802AA6D4  38 7E 00 84 */	addi r3, r30, 0x84
/* 802AA6D8  7F E4 FB 78 */	mr r4, r31
/* 802AA6DC  4B FF 58 11 */	bl pause__16JAISeCategoryMgrFb
/* 802AA6E0  38 7E 00 F0 */	addi r3, r30, 0xf0
/* 802AA6E4  7F E4 FB 78 */	mr r4, r31
/* 802AA6E8  4B FF 58 05 */	bl pause__16JAISeCategoryMgrFb
/* 802AA6EC  38 7E 01 5C */	addi r3, r30, 0x15c
/* 802AA6F0  7F E4 FB 78 */	mr r4, r31
/* 802AA6F4  4B FF 57 F9 */	bl pause__16JAISeCategoryMgrFb
/* 802AA6F8  38 7E 01 C8 */	addi r3, r30, 0x1c8
/* 802AA6FC  7F E4 FB 78 */	mr r4, r31
/* 802AA700  4B FF 57 ED */	bl pause__16JAISeCategoryMgrFb
/* 802AA704  38 7E 02 34 */	addi r3, r30, 0x234
/* 802AA708  7F E4 FB 78 */	mr r4, r31
/* 802AA70C  4B FF 57 E1 */	bl pause__16JAISeCategoryMgrFb
/* 802AA710  38 7E 02 A0 */	addi r3, r30, 0x2a0
/* 802AA714  7F E4 FB 78 */	mr r4, r31
/* 802AA718  4B FF 57 D5 */	bl pause__16JAISeCategoryMgrFb
/* 802AA71C  38 7E 03 0C */	addi r3, r30, 0x30c
/* 802AA720  7F E4 FB 78 */	mr r4, r31
/* 802AA724  4B FF 57 C9 */	bl pause__16JAISeCategoryMgrFb
/* 802AA728  38 7E 03 78 */	addi r3, r30, 0x378
/* 802AA72C  7F E4 FB 78 */	mr r4, r31
/* 802AA730  4B FF 57 BD */	bl pause__16JAISeCategoryMgrFb
/* 802AA734  38 7E 03 E4 */	addi r3, r30, 0x3e4
/* 802AA738  7F E4 FB 78 */	mr r4, r31
/* 802AA73C  4B FF 57 B1 */	bl pause__16JAISeCategoryMgrFb
/* 802AA740  57 E3 06 3F */	clrlwi. r3, r31, 0x18
/* 802AA744  88 1E 07 2C */	lbz r0, 0x72c(r30)
/* 802AA748  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802AA74C  98 1E 07 2C */	stb r0, 0x72c(r30)
/* 802AA750  88 1E 07 9C */	lbz r0, 0x79c(r30)
/* 802AA754  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802AA758  98 1E 07 9C */	stb r0, 0x79c(r30)
/* 802AA75C  41 82 00 38 */	beq lbl_802AA794
/* 802AA760  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802AA764  C0 22 BE 44 */	lfs f1, lit_3905(r2)
/* 802AA768  38 80 00 0A */	li r4, 0xa
/* 802AA76C  48 00 32 89 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802AA770  38 7E 07 3C */	addi r3, r30, 0x73c
/* 802AA774  C0 22 BE 44 */	lfs f1, lit_3905(r2)
/* 802AA778  38 80 00 0A */	li r4, 0xa
/* 802AA77C  4B FF 86 39 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802AA780  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 802AA784  C0 22 BE 44 */	lfs f1, lit_3905(r2)
/* 802AA788  38 80 00 0A */	li r4, 0xa
/* 802AA78C  4B FF 86 29 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802AA790  48 00 00 34 */	b lbl_802AA7C4
lbl_802AA794:
/* 802AA794  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802AA798  C0 22 BE 38 */	lfs f1, lit_3688(r2)
/* 802AA79C  38 80 00 0A */	li r4, 0xa
/* 802AA7A0  48 00 32 55 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802AA7A4  38 7E 07 3C */	addi r3, r30, 0x73c
/* 802AA7A8  C0 22 BE 38 */	lfs f1, lit_3688(r2)
/* 802AA7AC  38 80 00 0A */	li r4, 0xa
/* 802AA7B0  4B FF 86 05 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802AA7B4  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 802AA7B8  C0 22 BE 38 */	lfs f1, lit_3688(r2)
/* 802AA7BC  38 80 00 0A */	li r4, 0xa
/* 802AA7C0  4B FF 85 F5 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802AA7C4:
/* 802AA7C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AA7C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AA7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AA7D0  7C 08 03 A6 */	mtlr r0
/* 802AA7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802AA7D8  4E 80 00 20 */	blr 
