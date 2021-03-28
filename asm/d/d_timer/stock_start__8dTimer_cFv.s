lbl_8025D708:
/* 8025D708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025D70C  7C 08 02 A6 */	mflr r0
/* 8025D710  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025D714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025D718  7C 7F 1B 78 */	mr r31, r3
/* 8025D71C  88 03 01 6C */	lbz r0, 0x16c(r3)
/* 8025D720  28 00 00 05 */	cmplwi r0, 5
/* 8025D724  40 82 00 84 */	bne lbl_8025D7A8
/* 8025D728  38 00 00 04 */	li r0, 4
/* 8025D72C  98 1F 01 6C */	stb r0, 0x16c(r31)
/* 8025D730  4B DD 50 D5 */	bl getTime__11dLib_time_cFv
/* 8025D734  90 9F 01 14 */	stw r4, 0x114(r31)
/* 8025D738  90 7F 01 10 */	stw r3, 0x110(r31)
/* 8025D73C  90 9F 01 1C */	stw r4, 0x11c(r31)
/* 8025D740  90 7F 01 18 */	stw r3, 0x118(r31)
/* 8025D744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025D748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025D74C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8025D750  4B DC F4 4D */	bl getTimerNowTimeMs__14dComIfG_play_cFv
/* 8025D754  80 FF 01 10 */	lwz r7, 0x110(r31)
/* 8025D758  81 1F 01 14 */	lwz r8, 0x114(r31)
/* 8025D75C  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 8025D760  80 04 00 F8 */	lwz r0, 0x00F8(r4)
/* 8025D764  54 04 F0 BE */	srwi r4, r0, 2
/* 8025D768  38 00 03 E8 */	li r0, 0x3e8
/* 8025D76C  7C C4 03 96 */	divwu r6, r4, r0
/* 8025D770  38 A0 00 00 */	li r5, 0
/* 8025D774  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 8025D778  7C 86 18 16 */	mulhwu r4, r6, r3
/* 8025D77C  7C A5 19 D6 */	mullw r5, r5, r3
/* 8025D780  7C 66 19 D6 */	mullw r3, r6, r3
/* 8025D784  7C 06 01 D6 */	mullw r0, r6, r0
/* 8025D788  7C 84 2A 14 */	add r4, r4, r5
/* 8025D78C  7C 84 02 14 */	add r4, r4, r0
/* 8025D790  7C 63 40 10 */	subfc r3, r3, r8
/* 8025D794  7C 04 39 10 */	subfe r0, r4, r7
/* 8025D798  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8025D79C  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8025D7A0  38 60 00 01 */	li r3, 1
/* 8025D7A4  48 00 00 08 */	b lbl_8025D7AC
lbl_8025D7A8:
/* 8025D7A8  38 60 00 00 */	li r3, 0
lbl_8025D7AC:
/* 8025D7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D7B4  7C 08 03 A6 */	mtlr r0
/* 8025D7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D7BC  4E 80 00 20 */	blr 
