lbl_801000F8:
/* 801000F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801000FC  7C 08 02 A6 */	mflr r0
/* 80100100  90 01 00 24 */	stw r0, 0x24(r1)
/* 80100104  39 61 00 20 */	addi r11, r1, 0x20
/* 80100108  48 26 20 D5 */	bl _savegpr_29
/* 8010010C  7C 7D 1B 78 */	mr r29, r3
/* 80100110  7C 9E 23 78 */	mr r30, r4
/* 80100114  7C BF 2B 78 */	mr r31, r5
/* 80100118  38 80 00 84 */	li r4, 0x84
/* 8010011C  4B FC 2C 89 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80100120  2C 03 00 00 */	cmpwi r3, 0
/* 80100124  40 82 00 0C */	bne lbl_80100130
/* 80100128  38 60 00 00 */	li r3, 0
/* 8010012C  48 00 01 14 */	b lbl_80100240
lbl_80100130:
/* 80100130  2C 1F 00 00 */	cmpwi r31, 0
/* 80100134  40 82 00 2C */	bne lbl_80100160
/* 80100138  7F A3 EB 78 */	mr r3, r29
/* 8010013C  38 80 00 A5 */	li r4, 0xa5
/* 80100140  4B FA C4 19 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80100144  2C 03 00 00 */	cmpwi r3, 0
/* 80100148  40 82 00 18 */	bne lbl_80100160
/* 8010014C  7F A3 EB 78 */	mr r3, r29
/* 80100150  38 80 00 A6 */	li r4, 0xa6
/* 80100154  4B FA C4 05 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80100158  2C 03 00 00 */	cmpwi r3, 0
/* 8010015C  41 82 00 18 */	beq lbl_80100174
lbl_80100160:
/* 80100160  7F A3 EB 78 */	mr r3, r29
/* 80100164  38 80 00 A5 */	li r4, 0xa5
/* 80100168  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010016C  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 80100170  4B FA CE 71 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_80100174:
/* 80100174  38 00 00 33 */	li r0, 0x33
/* 80100178  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8010017C  7F A3 EB 78 */	mr r3, r29
/* 80100180  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80100184  C0 5D 05 34 */	lfs f2, 0x534(r29)
/* 80100188  38 80 00 00 */	li r4, 0
/* 8010018C  4B FB B5 E5 */	bl setSpecialGravity__9daAlink_cFffi
/* 80100190  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80100194  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80100198  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8010019C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 801001A0  38 00 00 0A */	li r0, 0xa
/* 801001A4  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 801001A8  38 00 00 01 */	li r0, 1
/* 801001AC  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 801001B0  38 00 00 00 */	li r0, 0
/* 801001B4  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 801001B8  2C 1E 00 00 */	cmpwi r30, 0
/* 801001BC  41 82 00 6C */	beq lbl_80100228
/* 801001C0  88 1D 2F 98 */	lbz r0, 0x2f98(r29)
/* 801001C4  28 00 00 00 */	cmplwi r0, 0
/* 801001C8  40 82 00 18 */	bne lbl_801001E0
/* 801001CC  38 00 E8 00 */	li r0, -6144
/* 801001D0  B0 1D 30 A0 */	sth r0, 0x30a0(r29)
/* 801001D4  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 801001D8  D0 1D 33 F4 */	stfs f0, 0x33f4(r29)
/* 801001DC  48 00 00 4C */	b lbl_80100228
lbl_801001E0:
/* 801001E0  28 00 00 01 */	cmplwi r0, 1
/* 801001E4  40 82 00 18 */	bne lbl_801001FC
/* 801001E8  38 00 28 00 */	li r0, 0x2800
/* 801001EC  B0 1D 30 A0 */	sth r0, 0x30a0(r29)
/* 801001F0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801001F4  D0 1D 33 F4 */	stfs f0, 0x33f4(r29)
/* 801001F8  48 00 00 30 */	b lbl_80100228
lbl_801001FC:
/* 801001FC  28 00 00 03 */	cmplwi r0, 3
/* 80100200  40 82 00 18 */	bne lbl_80100218
/* 80100204  38 00 E8 00 */	li r0, -6144
/* 80100208  B0 1D 30 A2 */	sth r0, 0x30a2(r29)
/* 8010020C  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80100210  D0 1D 33 F0 */	stfs f0, 0x33f0(r29)
/* 80100214  48 00 00 14 */	b lbl_80100228
lbl_80100218:
/* 80100218  38 00 18 00 */	li r0, 0x1800
/* 8010021C  B0 1D 30 A2 */	sth r0, 0x30a2(r29)
/* 80100220  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80100224  D0 1D 33 F0 */	stfs f0, 0x33f0(r29)
lbl_80100228:
/* 80100228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010022C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80100230  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80100234  60 00 00 08 */	ori r0, r0, 8
/* 80100238  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010023C  38 60 00 01 */	li r3, 1
lbl_80100240:
/* 80100240  39 61 00 20 */	addi r11, r1, 0x20
/* 80100244  48 26 1F E5 */	bl _restgpr_29
/* 80100248  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010024C  7C 08 03 A6 */	mtlr r0
/* 80100250  38 21 00 20 */	addi r1, r1, 0x20
/* 80100254  4E 80 00 20 */	blr 
