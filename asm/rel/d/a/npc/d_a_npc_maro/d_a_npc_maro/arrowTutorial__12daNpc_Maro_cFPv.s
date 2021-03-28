lbl_8056319C:
/* 8056319C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805631A0  7C 08 02 A6 */	mflr r0
/* 805631A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805631A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805631AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805631B0  7C 7F 1B 78 */	mr r31, r3
/* 805631B4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 805631B8  2C 00 00 02 */	cmpwi r0, 2
/* 805631BC  41 82 00 8C */	beq lbl_80563248
/* 805631C0  40 80 02 50 */	bge lbl_80563410
/* 805631C4  2C 00 00 00 */	cmpwi r0, 0
/* 805631C8  40 80 00 0C */	bge lbl_805631D4
/* 805631CC  48 00 02 44 */	b lbl_80563410
/* 805631D0  48 00 02 40 */	b lbl_80563410
lbl_805631D4:
/* 805631D4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 805631D8  2C 00 00 00 */	cmpwi r0, 0
/* 805631DC  40 82 00 6C */	bne lbl_80563248
/* 805631E0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 805631E4  2C 00 00 09 */	cmpwi r0, 9
/* 805631E8  41 82 00 28 */	beq lbl_80563210
/* 805631EC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 805631F0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805631F4  4B BE 26 A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805631F8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 805631FC  38 00 00 09 */	li r0, 9
/* 80563200  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80563204  3C 60 80 56 */	lis r3, lit_5128@ha
/* 80563208  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 8056320C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80563210:
/* 80563210  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80563214  2C 00 00 00 */	cmpwi r0, 0
/* 80563218  41 82 00 28 */	beq lbl_80563240
/* 8056321C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80563220  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80563224  4B BE 26 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80563228  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8056322C  38 00 00 00 */	li r0, 0
/* 80563230  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80563234  3C 60 80 56 */	lis r3, lit_5128@ha
/* 80563238  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 8056323C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80563240:
/* 80563240  38 00 00 02 */	li r0, 2
/* 80563244  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80563248:
/* 80563248  38 60 00 3C */	li r3, 0x3c
/* 8056324C  4B BE 99 20 */	b daNpcT_chkTmpBit__FUl
/* 80563250  7C 60 00 34 */	cntlzw r0, r3
/* 80563254  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80563258  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 8056325C  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80563260  28 00 00 00 */	cmplwi r0, 0
/* 80563264  40 82 00 F8 */	bne lbl_8056335C
/* 80563268  88 1F 11 35 */	lbz r0, 0x1135(r31)
/* 8056326C  28 00 00 00 */	cmplwi r0, 0
/* 80563270  41 82 00 18 */	beq lbl_80563288
/* 80563274  38 00 00 0C */	li r0, 0xc
/* 80563278  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8056327C  38 00 00 01 */	li r0, 1
/* 80563280  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80563284  48 00 00 80 */	b lbl_80563304
lbl_80563288:
/* 80563288  38 7F 10 F4 */	addi r3, r31, 0x10f4
/* 8056328C  4B BE 24 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80563290  28 03 00 00 */	cmplwi r3, 0
/* 80563294  41 82 00 50 */	beq lbl_805632E4
/* 80563298  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8056329C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805632A0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805632A4  A0 04 00 FA */	lhz r0, 0xfa(r4)
/* 805632A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805632AC  41 82 00 38 */	beq lbl_805632E4
/* 805632B0  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 805632B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805632B8  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 805632BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805632C0  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 805632C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805632C8  38 81 00 08 */	addi r4, r1, 8
/* 805632CC  48 00 18 6D */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 805632D0  7C 60 00 34 */	cntlzw r0, r3
/* 805632D4  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 805632D8  41 82 00 0C */	beq lbl_805632E4
/* 805632DC  38 00 00 09 */	li r0, 9
/* 805632E0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_805632E4:
/* 805632E4  88 1F 11 37 */	lbz r0, 0x1137(r31)
/* 805632E8  28 00 00 00 */	cmplwi r0, 0
/* 805632EC  40 82 00 10 */	bne lbl_805632FC
/* 805632F0  88 1F 11 36 */	lbz r0, 0x1136(r31)
/* 805632F4  28 00 00 00 */	cmplwi r0, 0
/* 805632F8  41 82 00 0C */	beq lbl_80563304
lbl_805632FC:
/* 805632FC  38 00 00 01 */	li r0, 1
/* 80563300  98 1F 0E 32 */	stb r0, 0xe32(r31)
lbl_80563304:
/* 80563304  38 60 00 47 */	li r3, 0x47
/* 80563308  4B BE 97 A4 */	b daNpcT_chkEvtBit__FUl
/* 8056330C  2C 03 00 00 */	cmpwi r3, 0
/* 80563310  40 82 00 4C */	bne lbl_8056335C
/* 80563314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80563318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056331C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80563320  7F C3 F3 78 */	mr r3, r30
/* 80563324  4B AC 98 B8 */	b getTimerPtr__14dComIfG_play_cFv
/* 80563328  28 03 00 00 */	cmplwi r3, 0
/* 8056332C  41 82 00 30 */	beq lbl_8056335C
/* 80563330  7F C3 F3 78 */	mr r3, r30
/* 80563334  4B AC 98 88 */	b getTimerMode__14dComIfG_play_cFv
/* 80563338  2C 03 00 00 */	cmpwi r3, 0
/* 8056333C  40 82 00 20 */	bne lbl_8056335C
/* 80563340  7F C3 F3 78 */	mr r3, r30
/* 80563344  4B AC 98 98 */	b getTimerPtr__14dComIfG_play_cFv
/* 80563348  4B CF A7 54 */	b getRestTimeMs__8dTimer_cFv
/* 8056334C  2C 03 00 00 */	cmpwi r3, 0
/* 80563350  40 82 00 0C */	bne lbl_8056335C
/* 80563354  38 00 00 01 */	li r0, 1
/* 80563358  98 1F 11 36 */	stb r0, 0x1136(r31)
lbl_8056335C:
/* 8056335C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80563360  2C 00 00 00 */	cmpwi r0, 0
/* 80563364  40 82 00 AC */	bne lbl_80563410
/* 80563368  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056336C  2C 00 00 01 */	cmpwi r0, 1
/* 80563370  41 82 00 2C */	beq lbl_8056339C
/* 80563374  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80563378  4B BE 23 84 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056337C  38 00 00 00 */	li r0, 0
/* 80563380  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80563384  3C 60 80 56 */	lis r3, lit_4318@ha
/* 80563388  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8056338C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80563390  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80563394  38 00 00 01 */	li r0, 1
/* 80563398  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056339C:
/* 8056339C  38 00 00 00 */	li r0, 0
/* 805633A0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 805633A4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 805633A8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 805633AC  7C 04 00 00 */	cmpw r4, r0
/* 805633B0  41 82 00 60 */	beq lbl_80563410
/* 805633B4  88 1F 11 35 */	lbz r0, 0x1135(r31)
/* 805633B8  28 00 00 00 */	cmplwi r0, 0
/* 805633BC  40 82 00 54 */	bne lbl_80563410
/* 805633C0  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 805633C4  28 00 00 00 */	cmplwi r0, 0
/* 805633C8  41 82 00 30 */	beq lbl_805633F8
/* 805633CC  7F E3 FB 78 */	mr r3, r31
/* 805633D0  38 A0 00 09 */	li r5, 9
/* 805633D4  38 C0 00 07 */	li r6, 7
/* 805633D8  38 E0 00 0F */	li r7, 0xf
/* 805633DC  39 00 00 00 */	li r8, 0
/* 805633E0  4B BE 82 68 */	b step__8daNpcT_cFsiiii
/* 805633E4  2C 03 00 00 */	cmpwi r3, 0
/* 805633E8  41 82 00 20 */	beq lbl_80563408
/* 805633EC  38 00 00 01 */	li r0, 1
/* 805633F0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 805633F4  48 00 00 14 */	b lbl_80563408
lbl_805633F8:
/* 805633F8  7F E3 FB 78 */	mr r3, r31
/* 805633FC  4B BE 76 1C */	b setAngle__8daNpcT_cFs
/* 80563400  38 00 00 01 */	li r0, 1
/* 80563404  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80563408:
/* 80563408  38 00 00 00 */	li r0, 0
/* 8056340C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80563410:
/* 80563410  38 60 00 01 */	li r3, 1
/* 80563414  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80563418  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8056341C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80563420  7C 08 03 A6 */	mtlr r0
/* 80563424  38 21 00 20 */	addi r1, r1, 0x20
/* 80563428  4E 80 00 20 */	blr 
