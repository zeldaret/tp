lbl_80A0317C:
/* 80A0317C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A03180  7C 08 02 A6 */	mflr r0
/* 80A03184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A03188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0318C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A03190  7C 7F 1B 78 */	mr r31, r3
/* 80A03194  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A03198  2C 00 00 02 */	cmpwi r0, 2
/* 80A0319C  41 82 00 80 */	beq lbl_80A0321C
/* 80A031A0  40 80 01 48 */	bge lbl_80A032E8
/* 80A031A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A031A8  40 80 00 0C */	bge lbl_80A031B4
/* 80A031AC  48 00 01 3C */	b lbl_80A032E8
/* 80A031B0  48 00 01 38 */	b lbl_80A032E8
lbl_80A031B4:
/* 80A031B4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A031B8  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A031BC  41 82 00 28 */	beq lbl_80A031E4
/* 80A031C0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A031C4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A031C8  4B 74 26 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A031CC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A031D0  38 00 00 22 */	li r0, 0x22
/* 80A031D4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A031D8  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A031DC  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A031E0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A031E4:
/* 80A031E4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A031E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A031EC  41 82 00 28 */	beq lbl_80A03214
/* 80A031F0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A031F4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A031F8  4B 74 26 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A031FC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A03200  38 00 00 00 */	li r0, 0
/* 80A03204  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A03208  3C 60 80 A0 */	lis r3, lit_4832@ha
/* 80A0320C  C0 03 67 20 */	lfs f0, lit_4832@l(r3)
/* 80A03210  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A03214:
/* 80A03214  38 00 00 02 */	li r0, 2
/* 80A03218  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A0321C:
/* 80A0321C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A03220  28 00 00 00 */	cmplwi r0, 0
/* 80A03224  40 82 00 C4 */	bne lbl_80A032E8
/* 80A03228  7F E3 FB 78 */	mr r3, r31
/* 80A0322C  4B 74 81 0C */	b srchPlayerActor__8daNpcT_cFv
/* 80A03230  2C 03 00 00 */	cmpwi r3, 0
/* 80A03234  41 82 00 44 */	beq lbl_80A03278
/* 80A03238  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A0323C  2C 00 00 01 */	cmpwi r0, 1
/* 80A03240  41 82 00 2C */	beq lbl_80A0326C
/* 80A03244  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A03248  4B 74 24 B4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A0324C  38 00 00 00 */	li r0, 0
/* 80A03250  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A03254  3C 60 80 A0 */	lis r3, lit_4337@ha
/* 80A03258  C0 03 67 0C */	lfs f0, lit_4337@l(r3)
/* 80A0325C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A03260  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03264  38 00 00 01 */	li r0, 1
/* 80A03268  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A0326C:
/* 80A0326C  38 00 00 00 */	li r0, 0
/* 80A03270  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A03274  48 00 00 74 */	b lbl_80A032E8
lbl_80A03278:
/* 80A03278  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A0327C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80A03280  7C 04 00 00 */	cmpw r4, r0
/* 80A03284  41 82 00 2C */	beq lbl_80A032B0
/* 80A03288  7F E3 FB 78 */	mr r3, r31
/* 80A0328C  38 A0 FF FF */	li r5, -1
/* 80A03290  38 C0 FF FF */	li r6, -1
/* 80A03294  38 E0 00 0F */	li r7, 0xf
/* 80A03298  39 00 00 00 */	li r8, 0
/* 80A0329C  4B 74 83 AC */	b step__8daNpcT_cFsiiii
/* 80A032A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A032A4  41 82 00 0C */	beq lbl_80A032B0
/* 80A032A8  38 00 00 01 */	li r0, 1
/* 80A032AC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A032B0:
/* 80A032B0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A032B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A032B8  41 82 00 28 */	beq lbl_80A032E0
/* 80A032BC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A032C0  4B 74 24 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A032C4  38 00 00 00 */	li r0, 0
/* 80A032C8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A032CC  3C 60 80 A0 */	lis r3, lit_4337@ha
/* 80A032D0  C0 03 67 0C */	lfs f0, lit_4337@l(r3)
/* 80A032D4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A032D8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A032DC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A032E0:
/* 80A032E0  38 00 00 00 */	li r0, 0
/* 80A032E4  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A032E8:
/* 80A032E8  38 60 00 01 */	li r3, 1
/* 80A032EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A032F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A032F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A032F8  7C 08 03 A6 */	mtlr r0
/* 80A032FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A03300  4E 80 00 20 */	blr 
