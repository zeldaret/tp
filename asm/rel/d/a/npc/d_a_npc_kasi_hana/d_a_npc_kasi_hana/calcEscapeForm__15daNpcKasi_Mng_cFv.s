lbl_80A1AFAC:
/* 80A1AFAC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A1AFB0  7C 08 02 A6 */	mflr r0
/* 80A1AFB4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A1AFB8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80A1AFBC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80A1AFC0  7C 7E 1B 78 */	mr r30, r3
/* 80A1AFC4  3C 80 80 A2 */	lis r4, lit_3908@ha /* 0x80A21080@ha */
/* 80A1AFC8  3B E4 10 80 */	addi r31, r4, lit_3908@l /* 0x80A21080@l */
/* 80A1AFCC  4B 73 57 21 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1AFD0  28 03 00 00 */	cmplwi r3, 0
/* 80A1AFD4  41 82 00 B0 */	beq lbl_80A1B084
/* 80A1AFD8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A1AFDC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80A1AFE0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80A1AFE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80A1AFE8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A1AFEC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A1AFF0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A1AFF4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80A1AFF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A1AFFC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A1B000  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A1B004  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A1B008  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1B00C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A1B010  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1B014  7F C3 F3 78 */	mr r3, r30
/* 80A1B018  38 81 00 44 */	addi r4, r1, 0x44
/* 80A1B01C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A1B020  48 00 03 3D */	bl getOffsetFromLeader__15daNpcKasi_Mng_cFRC4cXyzR4cXyz
/* 80A1B024  38 61 00 14 */	addi r3, r1, 0x14
/* 80A1B028  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A1B02C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A1B030  4B 84 BA B5 */	bl __pl__4cXyzCFRC3Vec
/* 80A1B034  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A1B038  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80A1B03C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A1B040  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80A1B044  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A1B048  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80A1B04C  7F C3 F3 78 */	mr r3, r30
/* 80A1B050  38 81 00 38 */	addi r4, r1, 0x38
/* 80A1B054  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A1B058  48 00 03 05 */	bl getOffsetFromLeader__15daNpcKasi_Mng_cFRC4cXyzR4cXyz
/* 80A1B05C  38 61 00 08 */	addi r3, r1, 8
/* 80A1B060  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A1B064  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A1B068  4B 84 BA 7D */	bl __pl__4cXyzCFRC3Vec
/* 80A1B06C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A1B070  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80A1B074  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A1B078  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80A1B07C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A1B080  D0 1E 00 38 */	stfs f0, 0x38(r30)
lbl_80A1B084:
/* 80A1B084  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80A1B088  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80A1B08C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A1B090  7C 08 03 A6 */	mtlr r0
/* 80A1B094  38 21 00 60 */	addi r1, r1, 0x60
/* 80A1B098  4E 80 00 20 */	blr 
