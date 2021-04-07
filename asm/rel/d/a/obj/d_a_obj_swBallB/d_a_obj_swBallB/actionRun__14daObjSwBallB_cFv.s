lbl_80CF4EB8:
/* 80CF4EB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CF4EBC  7C 08 02 A6 */	mflr r0
/* 80CF4EC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CF4EC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF4EC8  4B 66 D3 15 */	bl _savegpr_29
/* 80CF4ECC  7C 7F 1B 78 */	mr r31, r3
/* 80CF4ED0  3C 80 80 CF */	lis r4, l_color@ha /* 0x80CF59D0@ha */
/* 80CF4ED4  3B C4 59 D0 */	addi r30, r4, l_color@l /* 0x80CF59D0@l */
/* 80CF4ED8  83 A3 05 9C */	lwz r29, 0x59c(r3)
/* 80CF4EDC  4B FF F8 E1 */	bl search_ball__14daObjSwBallB_cFv
/* 80CF4EE0  7F E3 FB 78 */	mr r3, r31
/* 80CF4EE4  48 00 04 A5 */	bl PutCrrPos__14daObjSwBallB_cFv
/* 80CF4EE8  88 1F 05 96 */	lbz r0, 0x596(r31)
/* 80CF4EEC  2C 00 00 03 */	cmpwi r0, 3
/* 80CF4EF0  41 82 03 A8 */	beq lbl_80CF5298
/* 80CF4EF4  40 80 00 1C */	bge lbl_80CF4F10
/* 80CF4EF8  2C 00 00 01 */	cmpwi r0, 1
/* 80CF4EFC  41 82 01 14 */	beq lbl_80CF5010
/* 80CF4F00  40 80 04 6C */	bge lbl_80CF536C
/* 80CF4F04  2C 00 00 00 */	cmpwi r0, 0
/* 80CF4F08  40 80 00 18 */	bge lbl_80CF4F20
/* 80CF4F0C  48 00 04 60 */	b lbl_80CF536C
lbl_80CF4F10:
/* 80CF4F10  2C 00 00 05 */	cmpwi r0, 5
/* 80CF4F14  41 82 04 58 */	beq lbl_80CF536C
/* 80CF4F18  40 80 04 54 */	bge lbl_80CF536C
/* 80CF4F1C  48 00 03 D4 */	b lbl_80CF52F0
lbl_80CF4F20:
/* 80CF4F20  3C 1D 00 01 */	addis r0, r29, 1
/* 80CF4F24  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF4F28  40 82 00 78 */	bne lbl_80CF4FA0
/* 80CF4F2C  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80CF4F30  3C 03 00 01 */	addis r0, r3, 1
/* 80CF4F34  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF4F38  41 82 00 68 */	beq lbl_80CF4FA0
/* 80CF4F3C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF4F40  7C 03 07 74 */	extsb r3, r0
/* 80CF4F44  4B 33 81 29 */	bl dComIfGp_getReverb__Fi
/* 80CF4F48  7C 67 1B 78 */	mr r7, r3
/* 80CF4F4C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020F@ha */
/* 80CF4F50  38 03 02 0F */	addi r0, r3, 0x020F /* 0x0008020F@l */
/* 80CF4F54  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CF4F58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CF4F5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CF4F60  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF4F64  38 81 00 20 */	addi r4, r1, 0x20
/* 80CF4F68  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF4F6C  38 C0 00 00 */	li r6, 0
/* 80CF4F70  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CF4F74  FC 40 08 90 */	fmr f2, f1
/* 80CF4F78  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80CF4F7C  FC 80 18 90 */	fmr f4, f3
/* 80CF4F80  39 00 00 00 */	li r8, 0
/* 80CF4F84  4B 5B 6A 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF4F88  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CF4F8C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF4F90  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF4F94  38 00 00 01 */	li r0, 1
/* 80CF4F98  98 1F 05 96 */	stb r0, 0x596(r31)
/* 80CF4F9C  48 00 03 D0 */	b lbl_80CF536C
lbl_80CF4FA0:
/* 80CF4FA0  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80CF4FA4  28 00 00 00 */	cmplwi r0, 0
/* 80CF4FA8  41 82 03 C4 */	beq lbl_80CF536C
/* 80CF4FAC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF4FB0  7C 03 07 74 */	extsb r3, r0
/* 80CF4FB4  4B 33 80 B9 */	bl dComIfGp_getReverb__Fi
/* 80CF4FB8  7C 67 1B 78 */	mr r7, r3
/* 80CF4FBC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020F@ha */
/* 80CF4FC0  38 03 02 0F */	addi r0, r3, 0x020F /* 0x0008020F@l */
/* 80CF4FC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CF4FC8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CF4FCC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CF4FD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF4FD4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CF4FD8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF4FDC  38 C0 00 00 */	li r6, 0
/* 80CF4FE0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CF4FE4  FC 40 08 90 */	fmr f2, f1
/* 80CF4FE8  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80CF4FEC  FC 80 18 90 */	fmr f4, f3
/* 80CF4FF0  39 00 00 00 */	li r8, 0
/* 80CF4FF4  4B 5B 69 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF4FF8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CF4FFC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF5000  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF5004  38 00 00 03 */	li r0, 3
/* 80CF5008  98 1F 05 96 */	stb r0, 0x596(r31)
/* 80CF500C  48 00 03 60 */	b lbl_80CF536C
lbl_80CF5010:
/* 80CF5010  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80CF5014  3C 03 00 01 */	addis r0, r3, 1
/* 80CF5018  28 00 FF FF */	cmplwi r0, 0xffff
/* 80CF501C  40 82 00 9C */	bne lbl_80CF50B8
/* 80CF5020  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CF5024  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF5028  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF502C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80CF5030  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80CF5034  7C 00 07 75 */	extsb. r0, r0
/* 80CF5038  41 82 00 20 */	beq lbl_80CF5058
/* 80CF503C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF5040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF5044  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF5048  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF504C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF5050  7C 05 07 74 */	extsb r5, r0
/* 80CF5054  4B 34 02 5D */	bl offSwitch__10dSv_info_cFii
lbl_80CF5058:
/* 80CF5058  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF505C  7C 03 07 74 */	extsb r3, r0
/* 80CF5060  4B 33 80 0D */	bl dComIfGp_getReverb__Fi
/* 80CF5064  7C 67 1B 78 */	mr r7, r3
/* 80CF5068  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080211@ha */
/* 80CF506C  38 03 02 11 */	addi r0, r3, 0x0211 /* 0x00080211@l */
/* 80CF5070  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CF5074  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CF5078  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CF507C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF5080  38 81 00 18 */	addi r4, r1, 0x18
/* 80CF5084  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF5088  38 C0 00 00 */	li r6, 0
/* 80CF508C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CF5090  FC 40 08 90 */	fmr f2, f1
/* 80CF5094  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80CF5098  FC 80 18 90 */	fmr f4, f3
/* 80CF509C  39 00 00 00 */	li r8, 0
/* 80CF50A0  4B 5B 68 E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF50A4  38 00 FF FF */	li r0, -1
/* 80CF50A8  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80CF50AC  38 00 00 00 */	li r0, 0
/* 80CF50B0  98 1F 05 96 */	stb r0, 0x596(r31)
/* 80CF50B4  48 00 02 B8 */	b lbl_80CF536C
lbl_80CF50B8:
/* 80CF50B8  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF50BC  4B 31 83 6D */	bl play__14mDoExt_baseAnmFv
/* 80CF50C0  2C 03 00 00 */	cmpwi r3, 0
/* 80CF50C4  41 82 01 18 */	beq lbl_80CF51DC
/* 80CF50C8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80CF50CC  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80CF50D0  7C 00 07 75 */	extsb. r0, r0
/* 80CF50D4  40 82 00 CC */	bne lbl_80CF51A0
/* 80CF50D8  80 1F 05 9C */	lwz r0, 0x59c(r31)
/* 80CF50DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF50E0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80CF50E4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80CF50E8  38 81 00 24 */	addi r4, r1, 0x24
/* 80CF50EC  4B 32 47 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CF50F0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CF50F4  41 82 00 C8 */	beq lbl_80CF51BC
/* 80CF50F8  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80CF50FC  54 80 27 3E */	srwi r0, r4, 0x1c
/* 80CF5100  28 00 00 01 */	cmplwi r0, 1
/* 80CF5104  40 82 00 1C */	bne lbl_80CF5120
/* 80CF5108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF510C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF5110  54 84 C6 3E */	rlwinm r4, r4, 0x18, 0x18, 0x1f
/* 80CF5114  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF5118  7C 05 07 74 */	extsb r5, r0
/* 80CF511C  4B 34 00 E5 */	bl onSwitch__10dSv_info_cFii
lbl_80CF5120:
/* 80CF5120  88 1D 0C F0 */	lbz r0, 0xcf0(r29)
/* 80CF5124  2C 00 00 08 */	cmpwi r0, 8
/* 80CF5128  40 82 00 4C */	bne lbl_80CF5174
/* 80CF512C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF5130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF5134  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF5138  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF513C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF5140  7C 05 07 74 */	extsb r5, r0
/* 80CF5144  4B 34 00 BD */	bl onSwitch__10dSv_info_cFii
/* 80CF5148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF514C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF5150  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CF5154  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF5158  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80CF515C  38 9E 00 04 */	addi r4, r30, 4
/* 80CF5160  7C 84 02 2E */	lhzx r4, r4, r0
/* 80CF5164  4B 33 F8 29 */	bl onEventBit__11dSv_event_cFUs
/* 80CF5168  38 00 00 00 */	li r0, 0
/* 80CF516C  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80CF5170  48 00 00 4C */	b lbl_80CF51BC
lbl_80CF5174:
/* 80CF5174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF5178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF517C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CF5180  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF5184  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80CF5188  38 9E 00 10 */	addi r4, r30, 0x10
/* 80CF518C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80CF5190  4B 33 F7 FD */	bl onEventBit__11dSv_event_cFUs
/* 80CF5194  38 00 00 01 */	li r0, 1
/* 80CF5198  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80CF519C  48 00 00 20 */	b lbl_80CF51BC
lbl_80CF51A0:
/* 80CF51A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF51A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF51A8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF51AC  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF51B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF51B4  7C 05 07 74 */	extsb r5, r0
/* 80CF51B8  4B 34 00 49 */	bl onSwitch__10dSv_info_cFii
lbl_80CF51BC:
/* 80CF51BC  A0 1F 05 A2 */	lhz r0, 0x5a2(r31)
/* 80CF51C0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CF51C4  28 04 00 FF */	cmplwi r4, 0xff
/* 80CF51C8  41 82 00 14 */	beq lbl_80CF51DC
/* 80CF51CC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CF51D0  38 A0 00 FF */	li r5, 0xff
/* 80CF51D4  38 C0 00 01 */	li r6, 1
/* 80CF51D8  4B 35 37 69 */	bl orderEvent__17dEvLib_callback_cFiii
lbl_80CF51DC:
/* 80CF51DC  88 1F 05 AD */	lbz r0, 0x5ad(r31)
/* 80CF51E0  28 00 00 00 */	cmplwi r0, 0
/* 80CF51E4  41 82 00 64 */	beq lbl_80CF5248
/* 80CF51E8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF51EC  7C 03 07 74 */	extsb r3, r0
/* 80CF51F0  4B 33 7E 7D */	bl dComIfGp_getReverb__Fi
/* 80CF51F4  7C 67 1B 78 */	mr r7, r3
/* 80CF51F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080211@ha */
/* 80CF51FC  38 03 02 11 */	addi r0, r3, 0x0211 /* 0x00080211@l */
/* 80CF5200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5204  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CF5208  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CF520C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF5210  38 81 00 14 */	addi r4, r1, 0x14
/* 80CF5214  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF5218  38 C0 00 00 */	li r6, 0
/* 80CF521C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CF5220  FC 40 08 90 */	fmr f2, f1
/* 80CF5224  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80CF5228  FC 80 18 90 */	fmr f4, f3
/* 80CF522C  39 00 00 00 */	li r8, 0
/* 80CF5230  4B 5B 67 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF5234  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CF5238  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF523C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF5240  38 00 00 04 */	li r0, 4
/* 80CF5244  98 1F 05 96 */	stb r0, 0x596(r31)
lbl_80CF5248:
/* 80CF5248  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF524C  7C 03 07 74 */	extsb r3, r0
/* 80CF5250  4B 33 7E 1D */	bl dComIfGp_getReverb__Fi
/* 80CF5254  7C 67 1B 78 */	mr r7, r3
/* 80CF5258  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080210@ha */
/* 80CF525C  38 03 02 10 */	addi r0, r3, 0x0210 /* 0x00080210@l */
/* 80CF5260  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CF5264  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CF5268  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CF526C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF5270  38 81 00 10 */	addi r4, r1, 0x10
/* 80CF5274  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF5278  38 C0 00 00 */	li r6, 0
/* 80CF527C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CF5280  FC 40 08 90 */	fmr f2, f1
/* 80CF5284  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80CF5288  FC 80 18 90 */	fmr f4, f3
/* 80CF528C  39 00 00 00 */	li r8, 0
/* 80CF5290  4B 5B 72 7D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF5294  48 00 00 D8 */	b lbl_80CF536C
lbl_80CF5298:
/* 80CF5298  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF529C  4B 31 81 8D */	bl play__14mDoExt_baseAnmFv
/* 80CF52A0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF52A4  7C 03 07 74 */	extsb r3, r0
/* 80CF52A8  4B 33 7D C5 */	bl dComIfGp_getReverb__Fi
/* 80CF52AC  7C 67 1B 78 */	mr r7, r3
/* 80CF52B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080210@ha */
/* 80CF52B4  38 03 02 10 */	addi r0, r3, 0x0210 /* 0x00080210@l */
/* 80CF52B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF52BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CF52C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CF52C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF52C8  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF52CC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF52D0  38 C0 00 00 */	li r6, 0
/* 80CF52D4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CF52D8  FC 40 08 90 */	fmr f2, f1
/* 80CF52DC  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80CF52E0  FC 80 18 90 */	fmr f4, f3
/* 80CF52E4  39 00 00 00 */	li r8, 0
/* 80CF52E8  4B 5B 72 25 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF52EC  48 00 00 80 */	b lbl_80CF536C
lbl_80CF52F0:
/* 80CF52F0  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF52F4  4B 31 81 35 */	bl play__14mDoExt_baseAnmFv
/* 80CF52F8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF52FC  41 82 00 70 */	beq lbl_80CF536C
/* 80CF5300  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80CF5304  28 00 00 00 */	cmplwi r0, 0
/* 80CF5308  41 82 00 64 */	beq lbl_80CF536C
/* 80CF530C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF5310  7C 03 07 74 */	extsb r3, r0
/* 80CF5314  4B 33 7D 59 */	bl dComIfGp_getReverb__Fi
/* 80CF5318  7C 67 1B 78 */	mr r7, r3
/* 80CF531C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008020F@ha */
/* 80CF5320  38 03 02 0F */	addi r0, r3, 0x020F /* 0x0008020F@l */
/* 80CF5324  90 01 00 08 */	stw r0, 8(r1)
/* 80CF5328  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CF532C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CF5330  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF5334  38 81 00 08 */	addi r4, r1, 8
/* 80CF5338  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF533C  38 C0 00 00 */	li r6, 0
/* 80CF5340  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80CF5344  FC 40 08 90 */	fmr f2, f1
/* 80CF5348  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80CF534C  FC 80 18 90 */	fmr f4, f3
/* 80CF5350  39 00 00 00 */	li r8, 0
/* 80CF5354  4B 5B 66 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF5358  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CF535C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF5360  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF5364  38 00 00 03 */	li r0, 3
/* 80CF5368  98 1F 05 96 */	stb r0, 0x596(r31)
lbl_80CF536C:
/* 80CF536C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF5370  4B 66 CE B9 */	bl _restgpr_29
/* 80CF5374  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF5378  7C 08 03 A6 */	mtlr r0
/* 80CF537C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CF5380  4E 80 00 20 */	blr 
