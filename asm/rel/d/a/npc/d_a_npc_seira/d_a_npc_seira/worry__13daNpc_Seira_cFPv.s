lbl_80ACE220:
/* 80ACE220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACE224  7C 08 02 A6 */	mflr r0
/* 80ACE228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACE22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACE230  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACE234  7C 7F 1B 78 */	mr r31, r3
/* 80ACE238  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACE23C  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE240  41 82 01 3C */	beq lbl_80ACE37C
/* 80ACE244  40 80 02 9C */	bge lbl_80ACE4E0
/* 80ACE248  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE24C  40 80 00 0C */	bge lbl_80ACE258
/* 80ACE250  48 00 02 90 */	b lbl_80ACE4E0
/* 80ACE254  48 00 02 8C */	b lbl_80ACE4E0
lbl_80ACE258:
/* 80ACE258  38 60 00 90 */	li r3, 0x90
/* 80ACE25C  4B 67 E8 51 */	bl daNpcT_chkEvtBit__FUl
/* 80ACE260  2C 03 00 00 */	cmpwi r3, 0
/* 80ACE264  41 82 00 68 */	beq lbl_80ACE2CC
/* 80ACE268  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE26C  2C 00 00 06 */	cmpwi r0, 6
/* 80ACE270  41 82 00 28 */	beq lbl_80ACE298
/* 80ACE274  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE278  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE27C  4B 67 76 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE280  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE284  38 00 00 06 */	li r0, 6
/* 80ACE288  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE28C  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE290  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE294  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE298:
/* 80ACE298  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE29C  2C 00 00 05 */	cmpwi r0, 5
/* 80ACE2A0  41 82 00 8C */	beq lbl_80ACE32C
/* 80ACE2A4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE2A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE2AC  4B 67 75 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE2B0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE2B4  38 00 00 05 */	li r0, 5
/* 80ACE2B8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE2BC  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE2C0  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE2C4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80ACE2C8  48 00 00 64 */	b lbl_80ACE32C
lbl_80ACE2CC:
/* 80ACE2CC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACE2D0  2C 00 00 05 */	cmpwi r0, 5
/* 80ACE2D4  41 82 00 28 */	beq lbl_80ACE2FC
/* 80ACE2D8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACE2DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACE2E0  4B 67 75 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE2E4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACE2E8  38 00 00 05 */	li r0, 5
/* 80ACE2EC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACE2F0  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE2F4  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE2F8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACE2FC:
/* 80ACE2FC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACE300  2C 00 00 05 */	cmpwi r0, 5
/* 80ACE304  41 82 00 28 */	beq lbl_80ACE32C
/* 80ACE308  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACE30C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACE310  4B 67 75 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACE314  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACE318  38 00 00 05 */	li r0, 5
/* 80ACE31C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACE320  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACE324  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACE328  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACE32C:
/* 80ACE32C  38 00 00 00 */	li r0, 0
/* 80ACE330  98 1F 10 C0 */	stb r0, 0x10c0(r31)
/* 80ACE334  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE338  2C 00 00 01 */	cmpwi r0, 1
/* 80ACE33C  41 82 00 2C */	beq lbl_80ACE368
/* 80ACE340  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE344  4B 67 73 B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE348  38 00 00 00 */	li r0, 0
/* 80ACE34C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE350  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE354  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE358  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE35C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE360  38 00 00 01 */	li r0, 1
/* 80ACE364  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE368:
/* 80ACE368  38 00 00 00 */	li r0, 0
/* 80ACE36C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE370  90 1F 10 F4 */	stw r0, 0x10f4(r31)
/* 80ACE374  38 00 00 02 */	li r0, 2
/* 80ACE378  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACE37C:
/* 80ACE37C  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACE380  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE384  40 82 00 10 */	bne lbl_80ACE394
/* 80ACE388  38 00 00 01 */	li r0, 1
/* 80ACE38C  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80ACE390  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80ACE394:
/* 80ACE394  80 1F 10 F4 */	lwz r0, 0x10f4(r31)
/* 80ACE398  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE39C  40 82 01 3C */	bne lbl_80ACE4D8
/* 80ACE3A0  38 60 00 5A */	li r3, 0x5a
/* 80ACE3A4  38 80 00 5A */	li r4, 0x5a
/* 80ACE3A8  48 00 16 9D */	bl func_80ACFA44
/* 80ACE3AC  90 7F 10 F4 */	stw r3, 0x10f4(r31)
/* 80ACE3B0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE3B4  2C 00 00 01 */	cmpwi r0, 1
/* 80ACE3B8  41 82 00 3C */	beq lbl_80ACE3F4
/* 80ACE3BC  41 82 00 2C */	beq lbl_80ACE3E8
/* 80ACE3C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE3C4  4B 67 73 39 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE3C8  38 00 00 00 */	li r0, 0
/* 80ACE3CC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE3D0  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE3D4  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE3D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE3DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE3E0  38 00 00 01 */	li r0, 1
/* 80ACE3E4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE3E8:
/* 80ACE3E8  38 00 00 00 */	li r0, 0
/* 80ACE3EC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE3F0  48 00 00 F0 */	b lbl_80ACE4E0
lbl_80ACE3F4:
/* 80ACE3F4  38 7F 10 C4 */	addi r3, r31, 0x10c4
/* 80ACE3F8  4B 67 73 11 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80ACE3FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACE400  41 82 00 9C */	beq lbl_80ACE49C
/* 80ACE404  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE408  4B 67 73 01 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80ACE40C  7C 63 F0 50 */	subf r3, r3, r30
/* 80ACE410  30 03 FF FF */	addic r0, r3, -1
/* 80ACE414  7C 00 19 10 */	subfe r0, r0, r3
/* 80ACE418  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ACE41C  40 82 00 10 */	bne lbl_80ACE42C
/* 80ACE420  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE424  2C 00 00 02 */	cmpwi r0, 2
/* 80ACE428  41 82 00 34 */	beq lbl_80ACE45C
lbl_80ACE42C:
/* 80ACE42C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE430  4B 67 72 CD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE434  38 00 00 00 */	li r0, 0
/* 80ACE438  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE43C  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE440  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE444  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE448  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE44C  38 00 00 02 */	li r0, 2
/* 80ACE450  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80ACE454  38 00 00 01 */	li r0, 1
/* 80ACE458  48 00 00 08 */	b lbl_80ACE460
lbl_80ACE45C:
/* 80ACE45C  38 00 00 00 */	li r0, 0
lbl_80ACE460:
/* 80ACE460  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE464  41 82 00 2C */	beq lbl_80ACE490
/* 80ACE468  7F C3 F3 78 */	mr r3, r30
/* 80ACE46C  4B 54 A8 75 */	bl fopAc_IsActor__FPv
/* 80ACE470  2C 03 00 00 */	cmpwi r3, 0
/* 80ACE474  41 82 00 1C */	beq lbl_80ACE490
/* 80ACE478  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE47C  7F C4 F3 78 */	mr r4, r30
/* 80ACE480  4B 67 72 61 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80ACE484  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE488  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE48C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_80ACE490:
/* 80ACE490  38 00 00 00 */	li r0, 0
/* 80ACE494  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE498  48 00 00 48 */	b lbl_80ACE4E0
lbl_80ACE49C:
/* 80ACE49C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACE4A0  2C 00 00 00 */	cmpwi r0, 0
/* 80ACE4A4  41 82 00 28 */	beq lbl_80ACE4CC
/* 80ACE4A8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACE4AC  4B 67 72 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACE4B0  38 00 00 00 */	li r0, 0
/* 80ACE4B4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACE4B8  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACE4BC  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACE4C0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACE4C4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE4C8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACE4CC:
/* 80ACE4CC  38 00 00 00 */	li r0, 0
/* 80ACE4D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACE4D4  48 00 00 0C */	b lbl_80ACE4E0
lbl_80ACE4D8:
/* 80ACE4D8  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 80ACE4DC  48 00 15 4D */	bl func_80ACFA28
lbl_80ACE4E0:
/* 80ACE4E0  38 60 00 01 */	li r3, 1
/* 80ACE4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACE4E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACE4EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACE4F0  7C 08 03 A6 */	mtlr r0
/* 80ACE4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACE4F8  4E 80 00 20 */	blr 
