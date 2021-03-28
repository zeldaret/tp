lbl_800E10F4:
/* 800E10F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E10F8  7C 08 02 A6 */	mflr r0
/* 800E10FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E1100  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800E1104  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800E1108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E110C  7C 7F 1B 78 */	mr r31, r3
/* 800E1110  4B FD 61 D5 */	bl checkItemActorPointer__9daAlink_cFv
/* 800E1114  2C 03 00 00 */	cmpwi r3, 0
/* 800E1118  40 82 00 0C */	bne lbl_800E1124
/* 800E111C  38 60 00 01 */	li r3, 1
/* 800E1120  48 00 00 9C */	b lbl_800E11BC
lbl_800E1124:
/* 800E1124  7F E3 FB 78 */	mr r3, r31
/* 800E1128  38 80 00 00 */	li r4, 0
/* 800E112C  4B FD 8F A5 */	bl checkNextAction__9daAlink_cFi
/* 800E1130  2C 03 00 00 */	cmpwi r3, 0
/* 800E1134  40 82 00 84 */	bne lbl_800E11B8
/* 800E1138  C3 E2 92 BC */	lfs f31, lit_6041(r2)
/* 800E113C  7F E3 FB 78 */	mr r3, r31
/* 800E1140  4B FD 27 C5 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800E1144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1148  41 82 00 34 */	beq lbl_800E117C
/* 800E114C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E1150  60 00 00 01 */	ori r0, r0, 1
/* 800E1154  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800E1158  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800E115C  28 00 00 03 */	cmplwi r0, 3
/* 800E1160  41 82 00 40 */	beq lbl_800E11A0
/* 800E1164  38 00 00 03 */	li r0, 3
/* 800E1168  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800E116C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha
/* 800E1170  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l
/* 800E1174  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 800E1178  48 00 00 28 */	b lbl_800E11A0
lbl_800E117C:
/* 800E117C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E1180  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800E1184  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800E1188  80 7F 28 28 */	lwz r3, 0x2828(r31)
/* 800E118C  28 03 00 00 */	cmplwi r3, 0
/* 800E1190  41 82 00 10 */	beq lbl_800E11A0
/* 800E1194  80 03 09 64 */	lwz r0, 0x964(r3)
/* 800E1198  60 00 08 00 */	ori r0, r0, 0x800
/* 800E119C  90 03 09 64 */	stw r0, 0x964(r3)
lbl_800E11A0:
/* 800E11A0  7F E3 FB 78 */	mr r3, r31
/* 800E11A4  FC 20 F8 90 */	fmr f1, f31
/* 800E11A8  4B FC D8 C9 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800E11AC  7F E3 FB 78 */	mr r3, r31
/* 800E11B0  38 80 00 00 */	li r4, 0
/* 800E11B4  4B FD A0 FD */	bl setBodyAngleXReadyAnime__9daAlink_cFi
lbl_800E11B8:
/* 800E11B8  38 60 00 01 */	li r3, 1
lbl_800E11BC:
/* 800E11BC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800E11C0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800E11C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E11C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E11CC  7C 08 03 A6 */	mtlr r0
/* 800E11D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800E11D4  4E 80 00 20 */	blr 
