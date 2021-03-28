lbl_800D1268:
/* 800D1268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D126C  7C 08 02 A6 */	mflr r0
/* 800D1270  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D1274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D1278  7C 7F 1B 78 */	mr r31, r3
/* 800D127C  38 00 00 FF */	li r0, 0xff
/* 800D1280  B0 03 2F DE */	sth r0, 0x2fde(r3)
/* 800D1284  38 00 01 03 */	li r0, 0x103
/* 800D1288  B0 03 2F DC */	sth r0, 0x2fdc(r3)
/* 800D128C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800D1290  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 800D1294  38 80 00 01 */	li r4, 1
/* 800D1298  48 1E 4B ED */	bl bgmSetSwordUsing__8Z2SeqMgrFl
/* 800D129C  38 00 00 00 */	li r0, 0
/* 800D12A0  98 1F 2F 94 */	stb r0, 0x2f94(r31)
/* 800D12A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D12A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D12AC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800D12B0  28 00 00 3F */	cmplwi r0, 0x3f
/* 800D12B4  40 82 00 28 */	bne lbl_800D12DC
/* 800D12B8  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 800D12BC  80 63 00 04 */	lwz r3, 4(r3)
/* 800D12C0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800D12C4  80 63 00 04 */	lwz r3, 4(r3)
/* 800D12C8  80 63 00 08 */	lwz r3, 8(r3)
/* 800D12CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800D12D0  60 00 00 01 */	ori r0, r0, 1
/* 800D12D4  90 03 00 0C */	stw r0, 0xc(r3)
/* 800D12D8  48 00 00 24 */	b lbl_800D12FC
lbl_800D12DC:
/* 800D12DC  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 800D12E0  80 63 00 04 */	lwz r3, 4(r3)
/* 800D12E4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800D12E8  80 63 00 00 */	lwz r3, 0(r3)
/* 800D12EC  80 63 00 08 */	lwz r3, 8(r3)
/* 800D12F0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800D12F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800D12F8  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800D12FC:
/* 800D12FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D1300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D1304  7C 08 03 A6 */	mtlr r0
/* 800D1308  38 21 00 10 */	addi r1, r1, 0x10
/* 800D130C  4E 80 00 20 */	blr 
