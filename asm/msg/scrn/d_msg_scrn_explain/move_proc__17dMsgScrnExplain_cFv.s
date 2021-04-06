lbl_8023DDB4:
/* 8023DDB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023DDB8  7C 08 02 A6 */	mflr r0
/* 8023DDBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023DDC0  A8 83 00 5E */	lha r4, 0x5e(r3)
/* 8023DDC4  2C 04 00 00 */	cmpwi r4, 0
/* 8023DDC8  40 81 00 10 */	ble lbl_8023DDD8
/* 8023DDCC  38 04 FF FF */	addi r0, r4, -1
/* 8023DDD0  B0 03 00 5E */	sth r0, 0x5e(r3)
/* 8023DDD4  48 00 00 A8 */	b lbl_8023DE7C
lbl_8023DDD8:
/* 8023DDD8  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8023DDDC  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8023DDE0  80 84 00 34 */	lwz r4, 0x34(r4)
/* 8023DDE4  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 8023DDE8  40 82 00 54 */	bne lbl_8023DE3C
/* 8023DDEC  88 03 00 58 */	lbz r0, 0x58(r3)
/* 8023DDF0  28 00 00 00 */	cmplwi r0, 0
/* 8023DDF4  41 82 00 88 */	beq lbl_8023DE7C
/* 8023DDF8  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 8023DDFC  40 82 00 40 */	bne lbl_8023DE3C
/* 8023DE00  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8023DE04  40 82 00 38 */	bne lbl_8023DE3C
/* 8023DE08  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 8023DE0C  40 82 00 30 */	bne lbl_8023DE3C
/* 8023DE10  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 8023DE14  40 82 00 28 */	bne lbl_8023DE3C
/* 8023DE18  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 8023DE1C  40 82 00 20 */	bne lbl_8023DE3C
/* 8023DE20  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8023DE24  40 82 00 18 */	bne lbl_8023DE3C
/* 8023DE28  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8023DE2C  40 82 00 10 */	bne lbl_8023DE3C
/* 8023DE30  88 03 00 65 */	lbz r0, 0x65(r3)
/* 8023DE34  28 00 00 00 */	cmplwi r0, 0
/* 8023DE38  41 82 00 44 */	beq lbl_8023DE7C
lbl_8023DE3C:
/* 8023DE3C  38 00 00 05 */	li r0, 5
/* 8023DE40  98 03 00 60 */	stb r0, 0x60(r3)
/* 8023DE44  4B FE 0B 91 */	bl dMeter2Info_set2DVibrationM__Fv
/* 8023DE48  38 00 00 52 */	li r0, 0x52
/* 8023DE4C  90 01 00 08 */	stw r0, 8(r1)
/* 8023DE50  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023DE54  38 81 00 08 */	addi r4, r1, 8
/* 8023DE58  38 A0 00 00 */	li r5, 0
/* 8023DE5C  38 C0 00 00 */	li r6, 0
/* 8023DE60  38 E0 00 00 */	li r7, 0
/* 8023DE64  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023DE68  FC 40 08 90 */	fmr f2, f1
/* 8023DE6C  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023DE70  FC 80 18 90 */	fmr f4, f3
/* 8023DE74  39 00 00 00 */	li r8, 0
/* 8023DE78  48 06 DB 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8023DE7C:
/* 8023DE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023DE80  7C 08 03 A6 */	mtlr r0
/* 8023DE84  38 21 00 10 */	addi r1, r1, 0x10
/* 8023DE88  4E 80 00 20 */	blr 
