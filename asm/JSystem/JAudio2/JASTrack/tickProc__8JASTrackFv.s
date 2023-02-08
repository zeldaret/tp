lbl_80292DA0:
/* 80292DA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80292DA4  7C 08 02 A6 */	mflr r0
/* 80292DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80292DAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80292DB0  48 0C F4 25 */	bl _savegpr_27
/* 80292DB4  7C 7B 1B 78 */	mr r27, r3
/* 80292DB8  88 03 02 16 */	lbz r0, 0x216(r3)
/* 80292DBC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80292DC0  41 82 00 0C */	beq lbl_80292DCC
/* 80292DC4  38 60 00 00 */	li r3, 0
/* 80292DC8  48 00 00 BC */	b lbl_80292E84
lbl_80292DCC:
/* 80292DCC  7F 64 DB 78 */	mr r4, r27
/* 80292DD0  48 00 0B F5 */	bl tickProc__10JASSeqCtrlFP8JASTrack
/* 80292DD4  7C 7F 1B 78 */	mr r31, r3
/* 80292DD8  7F 63 DB 78 */	mr r3, r27
/* 80292DDC  4B FF F4 FD */	bl updateTimedParam__8JASTrackFv
/* 80292DE0  38 60 00 01 */	li r3, 1
/* 80292DE4  88 1B 02 16 */	lbz r0, 0x216(r27)
/* 80292DE8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80292DEC  98 1B 02 16 */	stb r0, 0x216(r27)
/* 80292DF0  2C 1F 00 00 */	cmpwi r31, 0
/* 80292DF4  40 80 00 0C */	bge lbl_80292E00
/* 80292DF8  38 60 FF FF */	li r3, -1
/* 80292DFC  48 00 00 88 */	b lbl_80292E84
lbl_80292E00:
/* 80292E00  3B A0 00 00 */	li r29, 0
/* 80292E04  3B E0 00 00 */	li r31, 0
lbl_80292E08:
/* 80292E08  3B DF 01 30 */	addi r30, r31, 0x130
/* 80292E0C  7F 9B F0 2E */	lwzx r28, r27, r30
/* 80292E10  28 1C 00 00 */	cmplwi r28, 0
/* 80292E14  41 82 00 5C */	beq lbl_80292E70
/* 80292E18  88 1C 02 15 */	lbz r0, 0x215(r28)
/* 80292E1C  28 00 00 01 */	cmplwi r0, 1
/* 80292E20  40 82 00 50 */	bne lbl_80292E70
/* 80292E24  7F 83 E3 78 */	mr r3, r28
/* 80292E28  4B FF FF 79 */	bl tickProc__8JASTrackFv
/* 80292E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80292E30  40 80 00 40 */	bge lbl_80292E70
/* 80292E34  7F 63 DB 78 */	mr r3, r27
/* 80292E38  4B FF FF 51 */	bl getRootTrack__8JASTrackFv
/* 80292E3C  38 80 00 00 */	li r4, 0
/* 80292E40  C0 22 BB A4 */	lfs f1, lit_679(r2)
/* 80292E44  4B FF F7 3D */	bl updateSeq__8JASTrackFbf
/* 80292E48  7F 83 E3 78 */	mr r3, r28
/* 80292E4C  4B FF EC 7D */	bl close__8JASTrackFv
/* 80292E50  88 1C 02 16 */	lbz r0, 0x216(r28)
/* 80292E54  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80292E58  41 82 00 18 */	beq lbl_80292E70
/* 80292E5C  7F 83 E3 78 */	mr r3, r28
/* 80292E60  38 80 00 01 */	li r4, 1
/* 80292E64  4B FF E4 B9 */	bl __dt__8JASTrackFv
/* 80292E68  38 00 00 00 */	li r0, 0
/* 80292E6C  7C 1B F1 2E */	stwx r0, r27, r30
lbl_80292E70:
/* 80292E70  3B BD 00 01 */	addi r29, r29, 1
/* 80292E74  2C 1D 00 10 */	cmpwi r29, 0x10
/* 80292E78  3B FF 00 04 */	addi r31, r31, 4
/* 80292E7C  41 80 FF 8C */	blt lbl_80292E08
/* 80292E80  38 60 00 00 */	li r3, 0
lbl_80292E84:
/* 80292E84  39 61 00 20 */	addi r11, r1, 0x20
/* 80292E88  48 0C F3 99 */	bl _restgpr_27
/* 80292E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80292E90  7C 08 03 A6 */	mtlr r0
/* 80292E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80292E98  4E 80 00 20 */	blr 
