lbl_809BD050:
/* 809BD050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD054  7C 08 02 A6 */	mflr r0
/* 809BD058  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BD060  93 C1 00 08 */	stw r30, 8(r1)
/* 809BD064  7C 7F 1B 78 */	mr r31, r3
/* 809BD068  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809BD06C  2C 00 00 02 */	cmpwi r0, 2
/* 809BD070  41 82 00 4C */	beq lbl_809BD0BC
/* 809BD074  40 80 01 B8 */	bge lbl_809BD22C
/* 809BD078  2C 00 00 00 */	cmpwi r0, 0
/* 809BD07C  40 80 00 0C */	bge lbl_809BD088
/* 809BD080  48 00 01 AC */	b lbl_809BD22C
/* 809BD084  48 00 01 A8 */	b lbl_809BD22C
lbl_809BD088:
/* 809BD088  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809BD08C  2C 00 00 00 */	cmpwi r0, 0
/* 809BD090  40 82 00 2C */	bne lbl_809BD0BC
/* 809BD094  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 809BD098  38 A0 00 00 */	li r5, 0
/* 809BD09C  4B 78 EB 55 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809BD0A0  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 809BD0A4  2C 00 00 01 */	cmpwi r0, 1
/* 809BD0A8  40 82 00 0C */	bne lbl_809BD0B4
/* 809BD0AC  38 00 00 00 */	li r0, 0
/* 809BD0B0  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
lbl_809BD0B4:
/* 809BD0B4  38 00 00 02 */	li r0, 2
/* 809BD0B8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809BD0BC:
/* 809BD0BC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809BD0C0  2C 00 00 00 */	cmpwi r0, 0
/* 809BD0C4  40 82 01 68 */	bne lbl_809BD22C
/* 809BD0C8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809BD0CC  28 00 00 00 */	cmplwi r0, 0
/* 809BD0D0  40 82 00 28 */	bne lbl_809BD0F8
/* 809BD0D4  7F E3 FB 78 */	mr r3, r31
/* 809BD0D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BD0DC  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BD0E0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809BD0E4  4B 65 D6 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809BD0E8  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 809BD0EC  7C 60 07 34 */	extsh r0, r3
/* 809BD0F0  7C 04 00 00 */	cmpw r4, r0
/* 809BD0F4  40 82 00 D4 */	bne lbl_809BD1C8
lbl_809BD0F8:
/* 809BD0F8  7F E3 FB 78 */	mr r3, r31
/* 809BD0FC  38 80 00 00 */	li r4, 0
/* 809BD100  38 A0 00 00 */	li r5, 0
/* 809BD104  38 C0 00 00 */	li r6, 0
/* 809BD108  38 E0 00 00 */	li r7, 0
/* 809BD10C  4B 78 EB 6D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809BD110  2C 03 00 00 */	cmpwi r3, 0
/* 809BD114  41 82 00 30 */	beq lbl_809BD144
/* 809BD118  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809BD11C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BD120  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BD124  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809BD128  4B 78 85 B9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809BD12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BD130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BD134  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809BD138  4B 68 53 31 */	bl reset__14dEvt_control_cFv
/* 809BD13C  38 00 00 03 */	li r0, 3
/* 809BD140  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809BD144:
/* 809BD144  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809BD148  2C 00 00 01 */	cmpwi r0, 1
/* 809BD14C  41 82 00 2C */	beq lbl_809BD178
/* 809BD150  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809BD154  4B 78 85 A9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809BD158  38 00 00 00 */	li r0, 0
/* 809BD15C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809BD160  3C 60 80 9C */	lis r3, lit_4178@ha /* 0x809BE540@ha */
/* 809BD164  C0 03 E5 40 */	lfs f0, lit_4178@l(r3)  /* 0x809BE540@l */
/* 809BD168  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809BD16C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BD170  38 00 00 01 */	li r0, 1
/* 809BD174  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809BD178:
/* 809BD178  38 00 00 00 */	li r0, 0
/* 809BD17C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BD180  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809BD184  28 00 00 00 */	cmplwi r0, 0
/* 809BD188  41 82 00 A4 */	beq lbl_809BD22C
/* 809BD18C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809BD190  2C 00 00 00 */	cmpwi r0, 0
/* 809BD194  41 82 00 28 */	beq lbl_809BD1BC
/* 809BD198  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809BD19C  4B 78 85 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809BD1A0  38 00 00 00 */	li r0, 0
/* 809BD1A4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809BD1A8  3C 60 80 9C */	lis r3, lit_4178@ha /* 0x809BE540@ha */
/* 809BD1AC  C0 03 E5 40 */	lfs f0, lit_4178@l(r3)  /* 0x809BE540@l */
/* 809BD1B0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809BD1B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BD1B8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809BD1BC:
/* 809BD1BC  38 00 00 00 */	li r0, 0
/* 809BD1C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BD1C4  48 00 00 68 */	b lbl_809BD22C
lbl_809BD1C8:
/* 809BD1C8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809BD1CC  2C 00 00 01 */	cmpwi r0, 1
/* 809BD1D0  41 82 00 2C */	beq lbl_809BD1FC
/* 809BD1D4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809BD1D8  4B 78 85 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809BD1DC  38 00 00 00 */	li r0, 0
/* 809BD1E0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809BD1E4  3C 60 80 9C */	lis r3, lit_4178@ha /* 0x809BE540@ha */
/* 809BD1E8  C0 03 E5 40 */	lfs f0, lit_4178@l(r3)  /* 0x809BE540@l */
/* 809BD1EC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809BD1F0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BD1F4  38 00 00 01 */	li r0, 1
/* 809BD1F8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809BD1FC:
/* 809BD1FC  38 00 00 00 */	li r0, 0
/* 809BD200  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809BD204  7F E3 FB 78 */	mr r3, r31
/* 809BD208  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 809BD20C  4B 65 D5 05 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809BD210  7C 64 1B 78 */	mr r4, r3
/* 809BD214  7F E3 FB 78 */	mr r3, r31
/* 809BD218  38 A0 FF FF */	li r5, -1
/* 809BD21C  38 C0 FF FF */	li r6, -1
/* 809BD220  38 E0 00 0F */	li r7, 0xf
/* 809BD224  39 00 00 00 */	li r8, 0
/* 809BD228  4B 78 E4 21 */	bl step__8daNpcT_cFsiiii
lbl_809BD22C:
/* 809BD22C  38 60 00 00 */	li r3, 0
/* 809BD230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BD234  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BD238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD23C  7C 08 03 A6 */	mtlr r0
/* 809BD240  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD244  4E 80 00 20 */	blr 
