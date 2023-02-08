lbl_8003F0F8:
/* 8003F0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003F0FC  7C 08 02 A6 */	mflr r0
/* 8003F100  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003F104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003F108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003F10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003F110  AB E3 0D BA */	lha r31, 0xdba(r3)
/* 8003F114  4B FF FE 5D */	bl getConstRestartIconPointer__10dMapInfo_nFv
/* 8003F118  28 03 00 00 */	cmplwi r3, 0
/* 8003F11C  41 82 00 34 */	beq lbl_8003F150
/* 8003F120  88 03 00 13 */	lbz r0, 0x13(r3)
/* 8003F124  7C 00 07 74 */	extsb r0, r0
/* 8003F128  7C 1F 03 78 */	mr r31, r0
/* 8003F12C  7C 60 00 D0 */	neg r3, r0
/* 8003F130  7C 60 00 78 */	andc r0, r3, r0
/* 8003F134  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8003F138  41 82 00 08 */	beq lbl_8003F140
/* 8003F13C  7C 7F 1B 78 */	mr r31, r3
lbl_8003F140:
/* 8003F140  57 FF 40 2E */	slwi r31, r31, 8
/* 8003F144  28 00 00 00 */	cmplwi r0, 0
/* 8003F148  41 82 00 08 */	beq lbl_8003F150
/* 8003F14C  7F FF 00 D0 */	neg r31, r31
lbl_8003F150:
/* 8003F150  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8003F154  38 83 60 94 */	addi r4, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8003F158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8003F15C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8003F160  88 03 0D B4 */	lbz r0, 0xdb4(r3)
/* 8003F164  7C 00 07 74 */	extsb r0, r0
/* 8003F168  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8003F16C  7C 64 02 14 */	add r3, r4, r0
/* 8003F170  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8003F174  28 03 00 00 */	cmplwi r3, 0
/* 8003F178  41 82 00 0C */	beq lbl_8003F184
/* 8003F17C  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 8003F180  7F FF 02 14 */	add r31, r31, r0
lbl_8003F184:
/* 8003F184  7F E3 07 34 */	extsh r3, r31
/* 8003F188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003F18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003F190  7C 08 03 A6 */	mtlr r0
/* 8003F194  38 21 00 10 */	addi r1, r1, 0x10
/* 8003F198  4E 80 00 20 */	blr 
