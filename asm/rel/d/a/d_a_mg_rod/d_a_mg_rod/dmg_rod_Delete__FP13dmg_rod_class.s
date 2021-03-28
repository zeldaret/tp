lbl_804BA14C:
/* 804BA14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BA150  7C 08 02 A6 */	mflr r0
/* 804BA154  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BA158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BA15C  7C 7F 1B 78 */	mr r31, r3
/* 804BA160  38 7F 05 68 */	addi r3, r31, 0x568
/* 804BA164  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 804BA168  4B B7 2E A0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804BA16C  88 1F 16 8E */	lbz r0, 0x168e(r31)
/* 804BA170  28 00 00 00 */	cmplwi r0, 0
/* 804BA174  41 82 00 10 */	beq lbl_804BA184
/* 804BA178  38 00 00 00 */	li r0, 0
/* 804BA17C  3C 60 80 4C */	lis r3, struct_804BBBD4+0x1@ha
/* 804BA180  98 03 BB D5 */	stb r0, struct_804BBBD4+0x1@l(r3)
lbl_804BA184:
/* 804BA184  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 804BA188  28 00 00 00 */	cmplwi r0, 0
/* 804BA18C  41 82 00 18 */	beq lbl_804BA1A4
/* 804BA190  38 7F 10 B4 */	addi r3, r31, 0x10b4
/* 804BA194  81 9F 10 B4 */	lwz r12, 0x10b4(r31)
/* 804BA198  81 8C 00 08 */	lwz r12, 8(r12)
/* 804BA19C  7D 89 03 A6 */	mtctr r12
/* 804BA1A0  4E 80 04 21 */	bctrl 
lbl_804BA1A4:
/* 804BA1A4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 804BA1A8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 804BA1AC  A0 03 00 B4 */	lhz r0, 0xb4(r3)
/* 804BA1B0  60 00 00 04 */	ori r0, r0, 4
/* 804BA1B4  B0 03 00 B4 */	sth r0, 0xb4(r3)
/* 804BA1B8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804BA1BC  60 00 00 08 */	ori r0, r0, 8
/* 804BA1C0  B0 03 00 B4 */	sth r0, 0xb4(r3)
/* 804BA1C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804BA1C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804BA1CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804BA1D0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804BA1D4  38 80 00 00 */	li r4, 0
/* 804BA1D8  4B DF 88 B0 */	b changeFishingBgm__8Z2SeqMgrFl
/* 804BA1DC  38 60 00 01 */	li r3, 1
/* 804BA1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BA1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BA1E8  7C 08 03 A6 */	mtlr r0
/* 804BA1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804BA1F0  4E 80 00 20 */	blr 
