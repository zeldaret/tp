lbl_8015A2C4:
/* 8015A2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015A2C8  7C 08 02 A6 */	mflr r0
/* 8015A2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015A2D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015A2D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8015A2D8  7C 7E 1B 78 */	mr r30, r3
/* 8015A2DC  7C 9F 23 78 */	mr r31, r4
/* 8015A2E0  4B EB EA 01 */	bl fopAc_IsActor__FPv
/* 8015A2E4  2C 03 00 00 */	cmpwi r3, 0
/* 8015A2E8  41 82 00 6C */	beq lbl_8015A354
/* 8015A2EC  A8 1E 00 08 */	lha r0, 8(r30)
/* 8015A2F0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8015A2F4  40 82 00 10 */	bne lbl_8015A304
/* 8015A2F8  48 05 22 85 */	bl dKy_darkworld_check__Fv
/* 8015A2FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015A300  41 82 00 48 */	beq lbl_8015A348
lbl_8015A304:
/* 8015A304  A8 1E 00 08 */	lha r0, 8(r30)
/* 8015A308  2C 00 02 88 */	cmpwi r0, 0x288
/* 8015A30C  41 82 00 3C */	beq lbl_8015A348
/* 8015A310  2C 00 02 8F */	cmpwi r0, 0x28f
/* 8015A314  41 82 00 34 */	beq lbl_8015A348
/* 8015A318  2C 00 02 97 */	cmpwi r0, 0x297
/* 8015A31C  41 82 00 2C */	beq lbl_8015A348
/* 8015A320  2C 00 02 94 */	cmpwi r0, 0x294
/* 8015A324  41 82 00 24 */	beq lbl_8015A348
/* 8015A328  2C 00 02 9E */	cmpwi r0, 0x29e
/* 8015A32C  41 82 00 1C */	beq lbl_8015A348
/* 8015A330  2C 00 02 A1 */	cmpwi r0, 0x2a1
/* 8015A334  41 82 00 14 */	beq lbl_8015A348
/* 8015A338  2C 00 02 A2 */	cmpwi r0, 0x2a2
/* 8015A33C  41 82 00 0C */	beq lbl_8015A348
/* 8015A340  2C 00 02 A3 */	cmpwi r0, 0x2a3
/* 8015A344  40 82 00 10 */	bne lbl_8015A354
lbl_8015A348:
/* 8015A348  7F E3 FB 78 */	mr r3, r31
/* 8015A34C  7F C4 F3 78 */	mr r4, r30
/* 8015A350  48 00 00 95 */	bl checkObstacleSub__11PathTrace_cFP10fopAc_ac_c
lbl_8015A354:
/* 8015A354  38 60 00 00 */	li r3, 0
/* 8015A358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015A35C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015A360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015A364  7C 08 03 A6 */	mtlr r0
/* 8015A368  38 21 00 10 */	addi r1, r1, 0x10
/* 8015A36C  4E 80 00 20 */	blr 
