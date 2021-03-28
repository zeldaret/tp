lbl_80990078:
/* 80990078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099007C  7C 08 02 A6 */	mflr r0
/* 80990080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80990088  7C 7F 1B 78 */	mr r31, r3
/* 8099008C  80 04 00 00 */	lwz r0, 0(r4)
/* 80990090  2C 00 00 14 */	cmpwi r0, 0x14
/* 80990094  41 82 00 58 */	beq lbl_809900EC
/* 80990098  40 80 00 C4 */	bge lbl_8099015C
/* 8099009C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809900A0  41 82 00 08 */	beq lbl_809900A8
/* 809900A4  48 00 00 B8 */	b lbl_8099015C
lbl_809900A8:
/* 809900A8  38 80 00 00 */	li r4, 0
/* 809900AC  3C A0 80 99 */	lis r5, lit_4627@ha
/* 809900B0  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 809900B4  38 A0 00 00 */	li r5, 0
/* 809900B8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809900BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809900C0  7D 89 03 A6 */	mtctr r12
/* 809900C4  4E 80 04 21 */	bctrl 
/* 809900C8  7F E3 FB 78 */	mr r3, r31
/* 809900CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809900D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809900D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809900D8  4B 68 A6 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809900DC  7C 64 1B 78 */	mr r4, r3
/* 809900E0  7F E3 FB 78 */	mr r3, r31
/* 809900E4  4B 7C 41 6C */	b setAngle__8daNpcF_cFs
/* 809900E8  48 00 00 74 */	b lbl_8099015C
lbl_809900EC:
/* 809900EC  38 00 04 3A */	li r0, 0x43a
/* 809900F0  B0 1F 0E 00 */	sth r0, 0xe00(r31)
/* 809900F4  38 00 00 00 */	li r0, 0
/* 809900F8  90 1F 09 50 */	stw r0, 0x950(r31)
/* 809900FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80990100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80990104  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80990108  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8099010C  B0 03 4F A4 */	sth r0, 0x4fa4(r3)
/* 80990110  38 60 00 0B */	li r3, 0xb
/* 80990114  4B 7C 56 20 */	b daNpcF_offTmpBit__FUl
/* 80990118  7F E3 FB 78 */	mr r3, r31
/* 8099011C  A8 9F 0E 00 */	lha r4, 0xe00(r31)
/* 80990120  38 A0 00 00 */	li r5, 0
/* 80990124  4B 7C 3B F8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80990128  38 00 00 00 */	li r0, 0
/* 8099012C  98 1F 0E 06 */	stb r0, 0xe06(r31)
/* 80990130  7F E3 FB 78 */	mr r3, r31
/* 80990134  38 80 00 00 */	li r4, 0
/* 80990138  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8099013C  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 80990140  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80990144  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80990148  7D 89 03 A6 */	mtctr r12
/* 8099014C  4E 80 04 21 */	bctrl 
/* 80990150  7F E3 FB 78 */	mr r3, r31
/* 80990154  38 80 00 03 */	li r4, 3
/* 80990158  4B FF E5 15 */	bl setLookMode__11daNpcChin_cFi
lbl_8099015C:
/* 8099015C  38 60 00 01 */	li r3, 1
/* 80990160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80990164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990168  7C 08 03 A6 */	mtlr r0
/* 8099016C  38 21 00 10 */	addi r1, r1, 0x10
/* 80990170  4E 80 00 20 */	blr 
