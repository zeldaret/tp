lbl_809DB5F4:
/* 809DB5F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DB5F8  7C 08 02 A6 */	mflr r0
/* 809DB5FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DB600  39 61 00 20 */	addi r11, r1, 0x20
/* 809DB604  4B 98 6B D8 */	b _savegpr_29
/* 809DB608  7C 7E 1B 78 */	mr r30, r3
/* 809DB60C  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha
/* 809DB610  3B E4 F2 F8 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809DB614  48 00 1A 5D */	bl doEvent__11daNpc_grO_cFv
/* 809DB618  2C 03 00 00 */	cmpwi r3, 0
/* 809DB61C  40 82 00 10 */	bne lbl_809DB62C
/* 809DB620  7F C3 F3 78 */	mr r3, r30
/* 809DB624  38 80 00 01 */	li r4, 1
/* 809DB628  48 00 19 1D */	bl doNormalAction__11daNpc_grO_cFi
lbl_809DB62C:
/* 809DB62C  3B A0 00 00 */	li r29, 0
/* 809DB630  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809DB634  28 00 00 00 */	cmplwi r0, 0
/* 809DB638  40 82 00 1C */	bne lbl_809DB654
/* 809DB63C  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809DB640  28 00 00 00 */	cmplwi r0, 0
/* 809DB644  41 82 00 14 */	beq lbl_809DB658
/* 809DB648  4B 65 44 0C */	b dComIfGs_wolfeye_effect_check__Fv
/* 809DB64C  2C 03 00 00 */	cmpwi r3, 0
/* 809DB650  40 82 00 08 */	bne lbl_809DB658
lbl_809DB654:
/* 809DB654  3B A0 00 01 */	li r29, 1
lbl_809DB658:
/* 809DB658  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 809DB65C  41 82 00 0C */	beq lbl_809DB668
/* 809DB660  38 00 00 00 */	li r0, 0
/* 809DB664  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809DB668:
/* 809DB668  3C 60 80 9E */	lis r3, m__17daNpc_grO_Param_c@ha
/* 809DB66C  38 63 EF 7C */	addi r3, r3, m__17daNpc_grO_Param_c@l
/* 809DB670  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 809DB674  28 00 00 00 */	cmplwi r0, 0
/* 809DB678  40 82 00 AC */	bne lbl_809DB724
/* 809DB67C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DB680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DB684  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 809DB688  28 03 00 00 */	cmplwi r3, 0
/* 809DB68C  41 82 00 30 */	beq lbl_809DB6BC
/* 809DB690  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 809DB694  28 00 00 00 */	cmplwi r0, 0
/* 809DB698  41 82 00 8C */	beq lbl_809DB724
/* 809DB69C  38 00 00 00 */	li r0, 0
/* 809DB6A0  28 03 00 00 */	cmplwi r3, 0
/* 809DB6A4  41 82 00 0C */	beq lbl_809DB6B0
/* 809DB6A8  28 03 00 02 */	cmplwi r3, 2
/* 809DB6AC  40 82 00 08 */	bne lbl_809DB6B4
lbl_809DB6B0:
/* 809DB6B0  38 00 00 01 */	li r0, 1
lbl_809DB6B4:
/* 809DB6B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809DB6B8  41 82 00 6C */	beq lbl_809DB724
lbl_809DB6BC:
/* 809DB6BC  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809DB6C0  28 00 00 00 */	cmplwi r0, 0
/* 809DB6C4  41 82 00 24 */	beq lbl_809DB6E8
/* 809DB6C8  38 7F 01 34 */	addi r3, r31, 0x134
/* 809DB6CC  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809DB6D0  7C 63 02 14 */	add r3, r3, r0
/* 809DB6D4  80 03 00 04 */	lwz r0, 4(r3)
/* 809DB6D8  54 00 10 3A */	slwi r0, r0, 2
/* 809DB6DC  38 7F 01 AC */	addi r3, r31, 0x1ac
/* 809DB6E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 809DB6E4  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_809DB6E8:
/* 809DB6E8  7F C3 F3 78 */	mr r3, r30
/* 809DB6EC  88 9E 0E 2C */	lbz r4, 0xe2c(r30)
/* 809DB6F0  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809DB6F4  54 00 18 38 */	slwi r0, r0, 3
/* 809DB6F8  38 BF 01 34 */	addi r5, r31, 0x134
/* 809DB6FC  7C 05 00 2E */	lwzx r0, r5, r0
/* 809DB700  54 00 10 3A */	slwi r0, r0, 2
/* 809DB704  38 BF 01 B8 */	addi r5, r31, 0x1b8
/* 809DB708  7C A5 00 2E */	lwzx r5, r5, r0
/* 809DB70C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809DB710  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809DB714  38 E0 00 28 */	li r7, 0x28
/* 809DB718  39 00 00 FF */	li r8, 0xff
/* 809DB71C  39 20 00 01 */	li r9, 1
/* 809DB720  4B 77 81 5C */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809DB724:
/* 809DB724  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 809DB728  28 00 00 00 */	cmplwi r0, 0
/* 809DB72C  41 82 00 1C */	beq lbl_809DB748
/* 809DB730  3C 60 80 9E */	lis r3, lit_4553@ha
/* 809DB734  C0 03 F0 0C */	lfs f0, lit_4553@l(r3)
/* 809DB738  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 809DB73C  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 809DB740  38 00 00 00 */	li r0, 0
/* 809DB744  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_809DB748:
/* 809DB748  7F C3 F3 78 */	mr r3, r30
/* 809DB74C  48 00 0F 31 */	bl playExpression__11daNpc_grO_cFv
/* 809DB750  7F C3 F3 78 */	mr r3, r30
/* 809DB754  48 00 13 15 */	bl playMotion__11daNpc_grO_cFv
/* 809DB758  38 60 00 01 */	li r3, 1
/* 809DB75C  39 61 00 20 */	addi r11, r1, 0x20
/* 809DB760  4B 98 6A C8 */	b _restgpr_29
/* 809DB764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DB768  7C 08 03 A6 */	mtlr r0
/* 809DB76C  38 21 00 20 */	addi r1, r1, 0x20
/* 809DB770  4E 80 00 20 */	blr 
