lbl_80473ED8:
/* 80473ED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80473EDC  7C 08 02 A6 */	mflr r0
/* 80473EE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80473EE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80473EE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80473EEC  7C 7E 1B 78 */	mr r30, r3
/* 80473EF0  3C 60 80 48 */	lis r3, l_cyl_info@ha
/* 80473EF4  3B E3 99 0C */	addi r31, r3, l_cyl_info@l
/* 80473EF8  38 7E 05 74 */	addi r3, r30, 0x574
/* 80473EFC  4B C0 34 A8 */	b ClrMoveBGOnly__9dBgS_AcchFv
/* 80473F00  80 1E 05 A0 */	lwz r0, 0x5a0(r30)
/* 80473F04  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80473F08  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80473F0C  80 1E 07 C8 */	lwz r0, 0x7c8(r30)
/* 80473F10  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80473F14  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80473F18  80 1E 07 E0 */	lwz r0, 0x7e0(r30)
/* 80473F1C  60 00 00 01 */	ori r0, r0, 1
/* 80473F20  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80473F24  80 1E 07 F4 */	lwz r0, 0x7f4(r30)
/* 80473F28  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80473F2C  90 1E 07 F4 */	stw r0, 0x7f4(r30)
/* 80473F30  38 00 00 00 */	li r0, 0
/* 80473F34  98 1E 0D A8 */	stb r0, 0xda8(r30)
/* 80473F38  98 1E 0D B5 */	stb r0, 0xdb5(r30)
/* 80473F3C  7F C3 F3 78 */	mr r3, r30
/* 80473F40  4B FF B7 65 */	bl data__12daObjCarry_cFv
/* 80473F44  88 03 00 36 */	lbz r0, 0x36(r3)
/* 80473F48  98 1E 07 A0 */	stb r0, 0x7a0(r30)
/* 80473F4C  C0 1F 0B 28 */	lfs f0, 0xb28(r31)
/* 80473F50  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80473F54  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80473F58  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80473F5C  38 60 00 00 */	li r3, 0
/* 80473F60  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 80473F64  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80473F68  B0 7E 04 E0 */	sth r3, 0x4e0(r30)
/* 80473F6C  88 1E 0C F1 */	lbz r0, 0xcf1(r30)
/* 80473F70  28 00 00 09 */	cmplwi r0, 9
/* 80473F74  40 82 00 10 */	bne lbl_80473F84
/* 80473F78  38 00 00 01 */	li r0, 1
/* 80473F7C  98 1E 0D AA */	stb r0, 0xdaa(r30)
/* 80473F80  48 00 00 08 */	b lbl_80473F88
lbl_80473F84:
/* 80473F84  98 7E 0D AA */	stb r3, 0xdaa(r30)
lbl_80473F88:
/* 80473F88  88 1E 0D B0 */	lbz r0, 0xdb0(r30)
/* 80473F8C  28 00 00 01 */	cmplwi r0, 1
/* 80473F90  40 82 00 6C */	bne lbl_80473FFC
/* 80473F94  38 00 00 00 */	li r0, 0
/* 80473F98  98 1E 0D B0 */	stb r0, 0xdb0(r30)
/* 80473F9C  38 00 00 01 */	li r0, 1
/* 80473FA0  98 1E 0D 7A */	stb r0, 0xd7a(r30)
/* 80473FA4  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80473FA8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80473FAC  98 1E 04 9A */	stb r0, 0x49a(r30)
/* 80473FB0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80473FB4  7C 03 07 74 */	extsb r3, r0
/* 80473FB8  4B BB 90 B4 */	b dComIfGp_getReverb__Fi
/* 80473FBC  7C 67 1B 78 */	mr r7, r3
/* 80473FC0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B7@ha */
/* 80473FC4  38 03 00 B7 */	addi r0, r3, 0x00B7 /* 0x000800B7@l */
/* 80473FC8  90 01 00 08 */	stw r0, 8(r1)
/* 80473FCC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80473FD0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80473FD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80473FD8  38 81 00 08 */	addi r4, r1, 8
/* 80473FDC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80473FE0  38 C0 00 00 */	li r6, 0
/* 80473FE4  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 80473FE8  FC 40 08 90 */	fmr f2, f1
/* 80473FEC  C0 7F 0B 00 */	lfs f3, 0xb00(r31)
/* 80473FF0  FC 80 18 90 */	fmr f4, f3
/* 80473FF4  39 00 00 00 */	li r8, 0
/* 80473FF8  4B E3 79 8C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80473FFC:
/* 80473FFC  38 00 00 00 */	li r0, 0
/* 80474000  B0 1E 0D 68 */	sth r0, 0xd68(r30)
/* 80474004  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80474008  2C 00 00 03 */	cmpwi r0, 3
/* 8047400C  40 82 00 0C */	bne lbl_80474018
/* 80474010  38 7E 05 88 */	addi r3, r30, 0x588
/* 80474014  4B C0 4F 8C */	b ClrIronBall__16dBgS_PolyPassChkFv
lbl_80474018:
/* 80474018  38 00 00 00 */	li r0, 0
/* 8047401C  88 7E 0C F0 */	lbz r3, 0xcf0(r30)
/* 80474020  2C 03 00 08 */	cmpwi r3, 8
/* 80474024  41 82 00 0C */	beq lbl_80474030
/* 80474028  2C 03 00 09 */	cmpwi r3, 9
/* 8047402C  40 82 00 08 */	bne lbl_80474034
lbl_80474030:
/* 80474030  38 00 00 01 */	li r0, 1
lbl_80474034:
/* 80474034  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80474038  41 82 01 50 */	beq lbl_80474188
/* 8047403C  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80474040  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80474044  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80474048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047404C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80474050  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80474054  28 1E 00 00 */	cmplwi r30, 0
/* 80474058  41 82 00 0C */	beq lbl_80474064
/* 8047405C  83 FE 00 04 */	lwz r31, 4(r30)
/* 80474060  48 00 00 08 */	b lbl_80474068
lbl_80474064:
/* 80474064  3B E0 FF FF */	li r31, -1
lbl_80474068:
/* 80474068  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8047406C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80474070  7D 89 03 A6 */	mtctr r12
/* 80474074  4E 80 04 21 */	bctrl 
/* 80474078  7C 03 F8 40 */	cmplw r3, r31
/* 8047407C  40 82 01 0C */	bne lbl_80474188
/* 80474080  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80474084  28 00 00 08 */	cmplwi r0, 8
/* 80474088  40 82 00 84 */	bne lbl_8047410C
/* 8047408C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80474090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80474094  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80474098  7F E3 FB 78 */	mr r3, r31
/* 8047409C  38 80 26 40 */	li r4, 0x2640
/* 804740A0  4B BC 09 1C */	b isEventBit__11dSv_event_cCFUs
/* 804740A4  2C 03 00 00 */	cmpwi r3, 0
/* 804740A8  40 82 00 E0 */	bne lbl_80474188
/* 804740AC  7F E3 FB 78 */	mr r3, r31
/* 804740B0  38 80 26 10 */	li r4, 0x2610
/* 804740B4  4B BC 09 08 */	b isEventBit__11dSv_event_cCFUs
/* 804740B8  2C 03 00 00 */	cmpwi r3, 0
/* 804740BC  40 82 00 CC */	bne lbl_80474188
/* 804740C0  7F E3 FB 78 */	mr r3, r31
/* 804740C4  38 80 26 04 */	li r4, 0x2604
/* 804740C8  4B BC 08 F4 */	b isEventBit__11dSv_event_cCFUs
/* 804740CC  2C 03 00 00 */	cmpwi r3, 0
/* 804740D0  40 82 00 B8 */	bne lbl_80474188
/* 804740D4  7F E3 FB 78 */	mr r3, r31
/* 804740D8  38 80 26 01 */	li r4, 0x2601
/* 804740DC  4B BC 08 E0 */	b isEventBit__11dSv_event_cCFUs
/* 804740E0  2C 03 00 00 */	cmpwi r3, 0
/* 804740E4  40 82 00 A4 */	bne lbl_80474188
/* 804740E8  7F E3 FB 78 */	mr r3, r31
/* 804740EC  38 80 27 40 */	li r4, 0x2740
/* 804740F0  4B BC 08 CC */	b isEventBit__11dSv_event_cCFUs
/* 804740F4  2C 03 00 00 */	cmpwi r3, 0
/* 804740F8  40 82 00 90 */	bne lbl_80474188
/* 804740FC  7F E3 FB 78 */	mr r3, r31
/* 80474100  38 80 26 04 */	li r4, 0x2604
/* 80474104  4B BC 08 88 */	b onEventBit__11dSv_event_cFUs
/* 80474108  48 00 00 80 */	b lbl_80474188
lbl_8047410C:
/* 8047410C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80474110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80474114  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80474118  7F E3 FB 78 */	mr r3, r31
/* 8047411C  38 80 26 20 */	li r4, 0x2620
/* 80474120  4B BC 08 9C */	b isEventBit__11dSv_event_cCFUs
/* 80474124  2C 03 00 00 */	cmpwi r3, 0
/* 80474128  40 82 00 60 */	bne lbl_80474188
/* 8047412C  7F E3 FB 78 */	mr r3, r31
/* 80474130  38 80 26 08 */	li r4, 0x2608
/* 80474134  4B BC 08 88 */	b isEventBit__11dSv_event_cCFUs
/* 80474138  2C 03 00 00 */	cmpwi r3, 0
/* 8047413C  40 82 00 4C */	bne lbl_80474188
/* 80474140  7F E3 FB 78 */	mr r3, r31
/* 80474144  38 80 26 02 */	li r4, 0x2602
/* 80474148  4B BC 08 74 */	b isEventBit__11dSv_event_cCFUs
/* 8047414C  2C 03 00 00 */	cmpwi r3, 0
/* 80474150  40 82 00 38 */	bne lbl_80474188
/* 80474154  7F E3 FB 78 */	mr r3, r31
/* 80474158  38 80 27 80 */	li r4, 0x2780
/* 8047415C  4B BC 08 60 */	b isEventBit__11dSv_event_cCFUs
/* 80474160  2C 03 00 00 */	cmpwi r3, 0
/* 80474164  40 82 00 24 */	bne lbl_80474188
/* 80474168  7F E3 FB 78 */	mr r3, r31
/* 8047416C  38 80 27 20 */	li r4, 0x2720
/* 80474170  4B BC 08 4C */	b isEventBit__11dSv_event_cCFUs
/* 80474174  2C 03 00 00 */	cmpwi r3, 0
/* 80474178  40 82 00 10 */	bne lbl_80474188
/* 8047417C  7F E3 FB 78 */	mr r3, r31
/* 80474180  38 80 27 20 */	li r4, 0x2720
/* 80474184  4B BC 08 08 */	b onEventBit__11dSv_event_cFUs
lbl_80474188:
/* 80474188  38 00 00 02 */	li r0, 2
/* 8047418C  98 1E 0C F1 */	stb r0, 0xcf1(r30)
/* 80474190  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80474194  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80474198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047419C  7C 08 03 A6 */	mtlr r0
/* 804741A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804741A4  4E 80 00 20 */	blr 
