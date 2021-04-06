lbl_80CF7320:
/* 80CF7320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7324  7C 08 02 A6 */	mflr r0
/* 80CF7328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF732C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7330  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF7334  7C 7E 1B 78 */	mr r30, r3
/* 80CF7338  7C 9F 23 78 */	mr r31, r4
/* 80CF733C  48 00 00 A5 */	bl action__14daObjSwLight_cFv
/* 80CF7340  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CF7344  4B 35 15 29 */	bl eventUpdate__17dEvLib_callback_cFv
/* 80CF7348  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CF734C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CF7350  7F C3 F3 78 */	mr r3, r30
/* 80CF7354  4B FF FC 81 */	bl setBaseMtx__14daObjSwLight_cFv
/* 80CF7358  38 7E 09 A0 */	addi r3, r30, 0x9a0
/* 80CF735C  4B 38 D1 05 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CF7360  28 03 00 00 */	cmplwi r3, 0
/* 80CF7364  41 82 00 38 */	beq lbl_80CF739C
/* 80CF7368  38 7E 09 A0 */	addi r3, r30, 0x9a0
/* 80CF736C  4B 38 D1 8D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CF7370  28 03 00 00 */	cmplwi r3, 0
/* 80CF7374  41 82 00 28 */	beq lbl_80CF739C
/* 80CF7378  38 7E 09 A0 */	addi r3, r30, 0x9a0
/* 80CF737C  4B 38 D2 01 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80CF7380  38 80 00 01 */	li r4, 1
/* 80CF7384  4B 38 D2 2D */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80CF7388  7C 64 1B 78 */	mr r4, r3
/* 80CF738C  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 80CF7390  38 A0 00 09 */	li r5, 9
/* 80CF7394  38 C0 00 00 */	li r6, 0
/* 80CF7398  4B 5C 71 0D */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_80CF739C:
/* 80CF739C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CF73A0  7C 03 07 74 */	extsb r3, r0
/* 80CF73A4  4B 33 5C C9 */	bl dComIfGp_getReverb__Fi
/* 80CF73A8  7C 65 1B 78 */	mr r5, r3
/* 80CF73AC  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 80CF73B0  38 80 00 00 */	li r4, 0
/* 80CF73B4  81 9E 0B 10 */	lwz r12, 0xb10(r30)
/* 80CF73B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CF73BC  7D 89 03 A6 */	mtctr r12
/* 80CF73C0  4E 80 04 21 */	bctrl 
/* 80CF73C4  38 60 00 01 */	li r3, 1
/* 80CF73C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF73CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF73D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF73D4  7C 08 03 A6 */	mtlr r0
/* 80CF73D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF73DC  4E 80 00 20 */	blr 
