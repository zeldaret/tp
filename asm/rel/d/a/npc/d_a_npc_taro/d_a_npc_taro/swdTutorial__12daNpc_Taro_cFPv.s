lbl_8056F2A8:
/* 8056F2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F2AC  7C 08 02 A6 */	mflr r0
/* 8056F2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F2B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F2B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8056F2BC  7C 7F 1B 78 */	mr r31, r3
/* 8056F2C0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8056F2C4  2C 00 00 02 */	cmpwi r0, 2
/* 8056F2C8  41 82 00 8C */	beq lbl_8056F354
/* 8056F2CC  40 80 01 30 */	bge lbl_8056F3FC
/* 8056F2D0  2C 00 00 00 */	cmpwi r0, 0
/* 8056F2D4  40 80 00 0C */	bge lbl_8056F2E0
/* 8056F2D8  48 00 01 24 */	b lbl_8056F3FC
/* 8056F2DC  48 00 01 20 */	b lbl_8056F3FC
lbl_8056F2E0:
/* 8056F2E0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8056F2E4  2C 00 00 00 */	cmpwi r0, 0
/* 8056F2E8  40 82 00 6C */	bne lbl_8056F354
/* 8056F2EC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056F2F0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056F2F4  41 82 00 28 */	beq lbl_8056F31C
/* 8056F2F8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8056F2FC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056F300  4B BD 65 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F304  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8056F308  38 00 00 1F */	li r0, 0x1f
/* 8056F30C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056F310  3C 60 80 57 */	lis r3, lit_5232@ha
/* 8056F314  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)
/* 8056F318  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056F31C:
/* 8056F31C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056F320  2C 00 00 0B */	cmpwi r0, 0xb
/* 8056F324  41 82 00 28 */	beq lbl_8056F34C
/* 8056F328  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8056F32C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056F330  4B BD 65 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F334  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8056F338  38 00 00 0B */	li r0, 0xb
/* 8056F33C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056F340  3C 60 80 57 */	lis r3, lit_5232@ha
/* 8056F344  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)
/* 8056F348  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056F34C:
/* 8056F34C  38 00 00 02 */	li r0, 2
/* 8056F350  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8056F354:
/* 8056F354  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8056F358  2C 00 00 00 */	cmpwi r0, 0
/* 8056F35C  40 82 00 98 */	bne lbl_8056F3F4
/* 8056F360  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056F364  2C 00 00 01 */	cmpwi r0, 1
/* 8056F368  41 82 00 2C */	beq lbl_8056F394
/* 8056F36C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056F370  4B BD 63 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 8056F374  38 00 00 00 */	li r0, 0
/* 8056F378  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056F37C  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056F380  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056F384  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056F388  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056F38C  38 00 00 01 */	li r0, 1
/* 8056F390  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056F394:
/* 8056F394  38 00 00 00 */	li r0, 0
/* 8056F398  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056F39C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8056F3A0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 8056F3A4  7C 04 00 00 */	cmpw r4, r0
/* 8056F3A8  41 82 00 4C */	beq lbl_8056F3F4
/* 8056F3AC  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 8056F3B0  28 00 00 00 */	cmplwi r0, 0
/* 8056F3B4  41 82 00 30 */	beq lbl_8056F3E4
/* 8056F3B8  7F E3 FB 78 */	mr r3, r31
/* 8056F3BC  38 A0 00 1F */	li r5, 0x1f
/* 8056F3C0  38 C0 00 24 */	li r6, 0x24
/* 8056F3C4  38 E0 00 0F */	li r7, 0xf
/* 8056F3C8  39 00 00 00 */	li r8, 0
/* 8056F3CC  4B BD C2 7C */	b step__8daNpcT_cFsiiii
/* 8056F3D0  2C 03 00 00 */	cmpwi r3, 0
/* 8056F3D4  41 82 00 20 */	beq lbl_8056F3F4
/* 8056F3D8  38 00 00 01 */	li r0, 1
/* 8056F3DC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 8056F3E0  48 00 00 14 */	b lbl_8056F3F4
lbl_8056F3E4:
/* 8056F3E4  7F E3 FB 78 */	mr r3, r31
/* 8056F3E8  4B BD B6 30 */	b setAngle__8daNpcT_cFs
/* 8056F3EC  38 00 00 01 */	li r0, 1
/* 8056F3F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8056F3F4:
/* 8056F3F4  38 00 00 00 */	li r0, 0
/* 8056F3F8  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8056F3FC:
/* 8056F3FC  38 60 00 01 */	li r3, 1
/* 8056F400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F404  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056F408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F40C  7C 08 03 A6 */	mtlr r0
/* 8056F410  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F414  4E 80 00 20 */	blr 
