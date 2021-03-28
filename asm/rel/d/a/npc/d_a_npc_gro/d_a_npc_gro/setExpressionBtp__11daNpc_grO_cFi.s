lbl_809DBFF4:
/* 809DBFF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DBFF8  7C 08 02 A6 */	mflr r0
/* 809DBFFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DC000  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC004  4B 98 61 D8 */	b _savegpr_29
/* 809DC008  7C 7D 1B 78 */	mr r29, r3
/* 809DC00C  7C 9E 23 78 */	mr r30, r4
/* 809DC010  38 80 00 00 */	li r4, 0
/* 809DC014  3B E0 00 00 */	li r31, 0
/* 809DC018  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 809DC01C  38 00 F5 7F */	li r0, -2689
/* 809DC020  7C A0 00 38 */	and r0, r5, r0
/* 809DC024  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809DC028  57 C0 18 38 */	slwi r0, r30, 3
/* 809DC02C  3C A0 80 9E */	lis r5, l_btpGetParamList@ha
/* 809DC030  38 C5 F3 F4 */	addi r6, r5, l_btpGetParamList@l
/* 809DC034  7C A6 00 2E */	lwzx r5, r6, r0
/* 809DC038  2C 05 00 00 */	cmpwi r5, 0
/* 809DC03C  41 80 00 24 */	blt lbl_809DC060
/* 809DC040  7C 86 02 14 */	add r4, r6, r0
/* 809DC044  80 04 00 04 */	lwz r0, 4(r4)
/* 809DC048  54 00 10 3A */	slwi r0, r0, 2
/* 809DC04C  3C 80 80 9E */	lis r4, l_resNames@ha
/* 809DC050  38 84 F4 A4 */	addi r4, r4, l_resNames@l
/* 809DC054  7C 84 00 2E */	lwzx r4, r4, r0
/* 809DC058  4B 77 6B 10 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 809DC05C  7C 64 1B 78 */	mr r4, r3
lbl_809DC060:
/* 809DC060  2C 1E 00 03 */	cmpwi r30, 3
/* 809DC064  41 82 00 2C */	beq lbl_809DC090
/* 809DC068  40 80 00 14 */	bge lbl_809DC07C
/* 809DC06C  2C 1E 00 00 */	cmpwi r30, 0
/* 809DC070  41 82 00 18 */	beq lbl_809DC088
/* 809DC074  40 80 00 28 */	bge lbl_809DC09C
/* 809DC078  48 00 00 20 */	b lbl_809DC098
lbl_809DC07C:
/* 809DC07C  2C 1E 00 06 */	cmpwi r30, 6
/* 809DC080  40 80 00 18 */	bge lbl_809DC098
/* 809DC084  48 00 00 18 */	b lbl_809DC09C
lbl_809DC088:
/* 809DC088  3B E0 00 02 */	li r31, 2
/* 809DC08C  48 00 00 10 */	b lbl_809DC09C
lbl_809DC090:
/* 809DC090  3B E0 00 02 */	li r31, 2
/* 809DC094  48 00 00 08 */	b lbl_809DC09C
lbl_809DC098:
/* 809DC098  38 80 00 00 */	li r4, 0
lbl_809DC09C:
/* 809DC09C  28 04 00 00 */	cmplwi r4, 0
/* 809DC0A0  40 82 00 0C */	bne lbl_809DC0AC
/* 809DC0A4  38 60 00 01 */	li r3, 1
/* 809DC0A8  48 00 00 58 */	b lbl_809DC100
lbl_809DC0AC:
/* 809DC0AC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809DC0B0  80 63 00 04 */	lwz r3, 4(r3)
/* 809DC0B4  80 A3 00 04 */	lwz r5, 4(r3)
/* 809DC0B8  7F A3 EB 78 */	mr r3, r29
/* 809DC0BC  3C C0 80 9E */	lis r6, lit_4552@ha
/* 809DC0C0  C0 26 F0 08 */	lfs f1, lit_4552@l(r6)
/* 809DC0C4  7F E6 FB 78 */	mr r6, r31
/* 809DC0C8  4B 77 6B FC */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809DC0CC  2C 03 00 00 */	cmpwi r3, 0
/* 809DC0D0  41 82 00 2C */	beq lbl_809DC0FC
/* 809DC0D4  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809DC0D8  60 00 02 80 */	ori r0, r0, 0x280
/* 809DC0DC  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809DC0E0  2C 1E 00 00 */	cmpwi r30, 0
/* 809DC0E4  40 82 00 10 */	bne lbl_809DC0F4
/* 809DC0E8  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809DC0EC  60 00 08 00 */	ori r0, r0, 0x800
/* 809DC0F0  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_809DC0F4:
/* 809DC0F4  38 60 00 01 */	li r3, 1
/* 809DC0F8  48 00 00 08 */	b lbl_809DC100
lbl_809DC0FC:
/* 809DC0FC  38 60 00 00 */	li r3, 0
lbl_809DC100:
/* 809DC100  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC104  4B 98 61 24 */	b _restgpr_29
/* 809DC108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DC10C  7C 08 03 A6 */	mtlr r0
/* 809DC110  38 21 00 20 */	addi r1, r1, 0x20
/* 809DC114  4E 80 00 20 */	blr 
