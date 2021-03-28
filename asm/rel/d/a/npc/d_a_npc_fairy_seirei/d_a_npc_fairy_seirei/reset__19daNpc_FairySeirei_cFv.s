lbl_80540334:
/* 80540334  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80540338  7C 08 02 A6 */	mflr r0
/* 8054033C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80540340  39 61 00 20 */	addi r11, r1, 0x20
/* 80540344  4B E2 1E 98 */	b _savegpr_29
/* 80540348  7C 7F 1B 78 */	mr r31, r3
/* 8054034C  3C 60 80 54 */	lis r3, m__25daNpc_FairySeirei_Param_c@ha
/* 80540350  3B C3 1D 8C */	addi r30, r3, m__25daNpc_FairySeirei_Param_c@l
/* 80540354  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80540358  38 1F 0F AC */	addi r0, r31, 0xfac
/* 8054035C  7F A3 00 50 */	subf r29, r3, r0
/* 80540360  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80540364  28 03 00 00 */	cmplwi r3, 0
/* 80540368  41 82 00 08 */	beq lbl_80540370
/* 8054036C  4B C0 53 F8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80540370:
/* 80540370  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80540374  38 80 00 00 */	li r4, 0
/* 80540378  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8054037C  7C A3 00 50 */	subf r5, r3, r0
/* 80540380  4B AC 30 D8 */	b memset
/* 80540384  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80540388  4B C0 55 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054038C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80540390  4B C0 55 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80540394  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80540398  4B C0 53 3C */	b initialize__18daNpcT_ActorMngr_cFv
/* 8054039C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 805403A0  4B C0 53 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 805403A4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 805403A8  4B C0 68 F0 */	b initialize__15daNpcT_JntAnm_cFv
/* 805403AC  38 A0 00 00 */	li r5, 0
/* 805403B0  38 60 00 00 */	li r3, 0
/* 805403B4  7C A4 2B 78 */	mr r4, r5
/* 805403B8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805403BC  38 00 00 02 */	li r0, 2
/* 805403C0  7C 09 03 A6 */	mtctr r0
lbl_805403C4:
/* 805403C4  7C DF 22 14 */	add r6, r31, r4
/* 805403C8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 805403CC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 805403D0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 805403D4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 805403D8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 805403DC  38 63 00 04 */	addi r3, r3, 4
/* 805403E0  38 84 00 06 */	addi r4, r4, 6
/* 805403E4  42 00 FF E0 */	bdnz lbl_805403C4
/* 805403E8  38 00 00 00 */	li r0, 0
/* 805403EC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 805403F0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 805403F4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 805403F8  38 00 FF FF */	li r0, -1
/* 805403FC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80540400  38 00 00 01 */	li r0, 1
/* 80540404  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80540408  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8054040C  4B D2 75 48 */	b cM_rndF__Ff
/* 80540410  FC 00 08 1E */	fctiwz f0, f1
/* 80540414  D8 01 00 08 */	stfd f0, 8(r1)
/* 80540418  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8054041C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80540420  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80540424  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80540428  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8054042C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80540430  38 80 00 00 */	li r4, 0
/* 80540434  7F A5 EB 78 */	mr r5, r29
/* 80540438  4B AC 30 20 */	b memset
/* 8054043C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80540440  2C 00 00 00 */	cmpwi r0, 0
/* 80540444  41 82 00 24 */	beq lbl_80540468
/* 80540448  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 8054044C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80540450  4B C0 54 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80540454  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80540458  38 00 00 00 */	li r0, 0
/* 8054045C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80540460  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80540464  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80540468:
/* 80540468  7F E3 FB 78 */	mr r3, r31
/* 8054046C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80540470  4B C0 A5 A8 */	b setAngle__8daNpcT_cFs
/* 80540474  39 61 00 20 */	addi r11, r1, 0x20
/* 80540478  4B E2 1D B0 */	b _restgpr_29
/* 8054047C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80540480  7C 08 03 A6 */	mtlr r0
/* 80540484  38 21 00 20 */	addi r1, r1, 0x20
/* 80540488  4E 80 00 20 */	blr 
