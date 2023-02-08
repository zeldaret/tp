lbl_809980AC:
/* 809980AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809980B0  7C 08 02 A6 */	mflr r0
/* 809980B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809980B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809980BC  93 C1 00 08 */	stw r30, 8(r1)
/* 809980C0  7C 7F 1B 78 */	mr r31, r3
/* 809980C4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809980C8  2C 00 00 02 */	cmpwi r0, 2
/* 809980CC  41 82 00 8C */	beq lbl_80998158
/* 809980D0  40 80 02 3C */	bge lbl_8099830C
/* 809980D4  2C 00 00 00 */	cmpwi r0, 0
/* 809980D8  40 80 00 0C */	bge lbl_809980E4
/* 809980DC  48 00 02 30 */	b lbl_8099830C
/* 809980E0  48 00 02 2C */	b lbl_8099830C
lbl_809980E4:
/* 809980E4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809980E8  2C 00 00 00 */	cmpwi r0, 0
/* 809980EC  40 82 00 6C */	bne lbl_80998158
/* 809980F0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809980F4  2C 00 00 08 */	cmpwi r0, 8
/* 809980F8  41 82 00 28 */	beq lbl_80998120
/* 809980FC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80998100  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80998104  4B 7A D7 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80998108  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8099810C  38 00 00 08 */	li r0, 8
/* 80998110  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80998114  3C 60 80 9A */	lis r3, lit_4683@ha /* 0x80999A44@ha */
/* 80998118  C0 03 9A 44 */	lfs f0, lit_4683@l(r3)  /* 0x80999A44@l */
/* 8099811C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80998120:
/* 80998120  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80998124  2C 00 00 01 */	cmpwi r0, 1
/* 80998128  41 82 00 28 */	beq lbl_80998150
/* 8099812C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80998130  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80998134  4B 7A D7 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80998138  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8099813C  38 00 00 01 */	li r0, 1
/* 80998140  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80998144  3C 60 80 9A */	lis r3, lit_4683@ha /* 0x80999A44@ha */
/* 80998148  C0 03 9A 44 */	lfs f0, lit_4683@l(r3)  /* 0x80999A44@l */
/* 8099814C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80998150:
/* 80998150  38 00 00 02 */	li r0, 2
/* 80998154  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80998158:
/* 80998158  88 1F 11 11 */	lbz r0, 0x1111(r31)
/* 8099815C  28 00 00 00 */	cmplwi r0, 0
/* 80998160  41 82 00 1C */	beq lbl_8099817C
/* 80998164  80 1F 11 00 */	lwz r0, 0x1100(r31)
/* 80998168  2C 00 00 02 */	cmpwi r0, 2
/* 8099816C  40 82 00 10 */	bne lbl_8099817C
/* 80998170  38 00 00 01 */	li r0, 1
/* 80998174  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80998178  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_8099817C:
/* 8099817C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80998180  2C 00 00 00 */	cmpwi r0, 0
/* 80998184  40 82 01 88 */	bne lbl_8099830C
/* 80998188  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8099818C  4B 7A D5 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80998190  28 03 00 00 */	cmplwi r3, 0
/* 80998194  41 82 00 C8 */	beq lbl_8099825C
/* 80998198  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8099819C  2C 00 00 00 */	cmpwi r0, 0
/* 809981A0  41 82 00 28 */	beq lbl_809981C8
/* 809981A4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809981A8  4B 7A D5 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809981AC  38 00 00 00 */	li r0, 0
/* 809981B0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809981B4  3C 60 80 9A */	lis r3, lit_4152@ha /* 0x80999A2C@ha */
/* 809981B8  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)  /* 0x80999A2C@l */
/* 809981BC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809981C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809981C4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809981C8:
/* 809981C8  38 00 00 00 */	li r0, 0
/* 809981CC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809981D0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809981D4  4B 7A D5 35 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809981D8  7C 64 1B 78 */	mr r4, r3
/* 809981DC  7F E3 FB 78 */	mr r3, r31
/* 809981E0  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 809981E4  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 809981E8  4B 7B 29 E9 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 809981EC  2C 03 00 00 */	cmpwi r3, 0
/* 809981F0  41 82 00 40 */	beq lbl_80998230
/* 809981F4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809981F8  2C 00 00 01 */	cmpwi r0, 1
/* 809981FC  41 82 00 2C */	beq lbl_80998228
/* 80998200  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80998204  4B 7A D4 F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80998208  38 00 00 00 */	li r0, 0
/* 8099820C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80998210  3C 60 80 9A */	lis r3, lit_4152@ha /* 0x80999A2C@ha */
/* 80998214  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)  /* 0x80999A2C@l */
/* 80998218  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8099821C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80998220  38 00 00 01 */	li r0, 1
/* 80998224  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80998228:
/* 80998228  38 00 00 00 */	li r0, 0
/* 8099822C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80998230:
/* 80998230  7F E3 FB 78 */	mr r3, r31
/* 80998234  4B 7B 31 05 */	bl srchPlayerActor__8daNpcT_cFv
/* 80998238  2C 03 00 00 */	cmpwi r3, 0
/* 8099823C  40 82 00 D0 */	bne lbl_8099830C
/* 80998240  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80998244  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80998248  7C 03 00 00 */	cmpw r3, r0
/* 8099824C  40 82 00 C0 */	bne lbl_8099830C
/* 80998250  38 00 00 01 */	li r0, 1
/* 80998254  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80998258  48 00 00 B4 */	b lbl_8099830C
lbl_8099825C:
/* 8099825C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80998260  2C 00 00 00 */	cmpwi r0, 0
/* 80998264  41 82 00 28 */	beq lbl_8099828C
/* 80998268  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099826C  4B 7A D4 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80998270  38 00 00 00 */	li r0, 0
/* 80998274  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80998278  3C 60 80 9A */	lis r3, lit_4152@ha /* 0x80999A2C@ha */
/* 8099827C  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)  /* 0x80999A2C@l */
/* 80998280  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80998284  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80998288  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8099828C:
/* 8099828C  38 00 00 00 */	li r0, 0
/* 80998290  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80998294  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80998298  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 8099829C  7C 04 00 00 */	cmpw r4, r0
/* 809982A0  41 82 00 58 */	beq lbl_809982F8
/* 809982A4  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 809982A8  28 00 00 00 */	cmplwi r0, 0
/* 809982AC  40 82 00 18 */	bne lbl_809982C4
/* 809982B0  7F E3 FB 78 */	mr r3, r31
/* 809982B4  4B 7B 27 65 */	bl setAngle__8daNpcT_cFs
/* 809982B8  38 00 00 01 */	li r0, 1
/* 809982BC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 809982C0  48 00 00 2C */	b lbl_809982EC
lbl_809982C4:
/* 809982C4  7F E3 FB 78 */	mr r3, r31
/* 809982C8  38 A0 FF FF */	li r5, -1
/* 809982CC  38 C0 FF FF */	li r6, -1
/* 809982D0  38 E0 00 0F */	li r7, 0xf
/* 809982D4  39 00 00 00 */	li r8, 0
/* 809982D8  4B 7B 33 71 */	bl step__8daNpcT_cFsiiii
/* 809982DC  2C 03 00 00 */	cmpwi r3, 0
/* 809982E0  41 82 00 0C */	beq lbl_809982EC
/* 809982E4  38 00 00 01 */	li r0, 1
/* 809982E8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809982EC:
/* 809982EC  38 00 00 00 */	li r0, 0
/* 809982F0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809982F4  48 00 00 18 */	b lbl_8099830C
lbl_809982F8:
/* 809982F8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809982FC  28 00 00 00 */	cmplwi r0, 0
/* 80998300  40 82 00 0C */	bne lbl_8099830C
/* 80998304  7F E3 FB 78 */	mr r3, r31
/* 80998308  4B 7B 30 31 */	bl srchPlayerActor__8daNpcT_cFv
lbl_8099830C:
/* 8099830C  38 60 00 01 */	li r3, 1
/* 80998310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80998314  83 C1 00 08 */	lwz r30, 8(r1)
/* 80998318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099831C  7C 08 03 A6 */	mtlr r0
/* 80998320  38 21 00 10 */	addi r1, r1, 0x10
/* 80998324  4E 80 00 20 */	blr 
