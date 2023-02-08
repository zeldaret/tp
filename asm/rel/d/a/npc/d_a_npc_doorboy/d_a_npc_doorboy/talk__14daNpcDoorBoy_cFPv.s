lbl_809AC114:
/* 809AC114  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809AC118  7C 08 02 A6 */	mflr r0
/* 809AC11C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809AC120  39 61 00 40 */	addi r11, r1, 0x40
/* 809AC124  4B 9B 60 B9 */	bl _savegpr_29
/* 809AC128  7C 7E 1B 78 */	mr r30, r3
/* 809AC12C  3B E0 00 00 */	li r31, 0
/* 809AC130  A0 03 0E 04 */	lhz r0, 0xe04(r3)
/* 809AC134  2C 00 00 02 */	cmpwi r0, 2
/* 809AC138  41 82 00 58 */	beq lbl_809AC190
/* 809AC13C  40 80 00 10 */	bge lbl_809AC14C
/* 809AC140  2C 00 00 00 */	cmpwi r0, 0
/* 809AC144  41 82 00 14 */	beq lbl_809AC158
/* 809AC148  48 00 03 C4 */	b lbl_809AC50C
lbl_809AC14C:
/* 809AC14C  2C 00 00 04 */	cmpwi r0, 4
/* 809AC150  40 80 03 BC */	bge lbl_809AC50C
/* 809AC154  48 00 03 9C */	b lbl_809AC4F0
lbl_809AC158:
/* 809AC158  80 9E 0D FC */	lwz r4, 0xdfc(r30)
/* 809AC15C  38 A0 00 00 */	li r5, 0
/* 809AC160  4B 7A 7B BD */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809AC164  38 00 00 00 */	li r0, 0
/* 809AC168  90 1E 09 50 */	stw r0, 0x950(r30)
/* 809AC16C  98 1E 0E 06 */	stb r0, 0xe06(r30)
/* 809AC170  A8 1E 0E 00 */	lha r0, 0xe00(r30)
/* 809AC174  2C 00 00 03 */	cmpwi r0, 3
/* 809AC178  41 82 00 0C */	beq lbl_809AC184
/* 809AC17C  38 00 00 03 */	li r0, 3
/* 809AC180  B0 1E 0E 00 */	sth r0, 0xe00(r30)
lbl_809AC184:
/* 809AC184  38 00 00 02 */	li r0, 2
/* 809AC188  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 809AC18C  48 00 03 80 */	b lbl_809AC50C
lbl_809AC190:
/* 809AC190  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AC194  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AC198  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809AC19C  4B 66 E5 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809AC1A0  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 809AC1A4  7C 60 07 34 */	extsh r0, r3
/* 809AC1A8  7C 04 00 00 */	cmpw r4, r0
/* 809AC1AC  40 82 02 48 */	bne lbl_809AC3F4
/* 809AC1B0  7F C3 F3 78 */	mr r3, r30
/* 809AC1B4  38 80 00 00 */	li r4, 0
/* 809AC1B8  38 A0 00 01 */	li r5, 1
/* 809AC1BC  38 C0 00 00 */	li r6, 0
/* 809AC1C0  4B 7A 7B C5 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809AC1C4  2C 03 00 00 */	cmpwi r3, 0
/* 809AC1C8  41 82 01 E4 */	beq lbl_809AC3AC
/* 809AC1CC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809AC1D0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809AC1D4  4B 7A 44 E9 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809AC1D8  38 00 00 00 */	li r0, 0
/* 809AC1DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AC1E0  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809AC1E4  38 81 00 10 */	addi r4, r1, 0x10
/* 809AC1E8  4B 89 E3 41 */	bl getEventId__10dMsgFlow_cFPi
/* 809AC1EC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809AC1F0  28 00 00 01 */	cmplwi r0, 1
/* 809AC1F4  40 82 01 20 */	bne lbl_809AC314
/* 809AC1F8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809AC1FC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 809AC200  38 A0 00 00 */	li r5, 0
/* 809AC204  38 C0 FF FF */	li r6, -1
/* 809AC208  38 E0 FF FF */	li r7, -1
/* 809AC20C  39 00 00 00 */	li r8, 0
/* 809AC210  39 20 00 00 */	li r9, 0
/* 809AC214  4B 66 F9 D5 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809AC218  90 7E 0D F0 */	stw r3, 0xdf0(r30)
/* 809AC21C  80 7E 0D F0 */	lwz r3, 0xdf0(r30)
/* 809AC220  3C 03 00 01 */	addis r0, r3, 1
/* 809AC224  28 00 FF FF */	cmplwi r0, 0xffff
/* 809AC228  41 82 01 7C */	beq lbl_809AC3A4
/* 809AC22C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AC230  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AC234  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 809AC238  7F C4 F3 78 */	mr r4, r30
/* 809AC23C  3C A0 80 9B */	lis r5, d_a_npc_doorboy__stringBase0@ha /* 0x809ADB04@ha */
/* 809AC240  38 A5 DB 04 */	addi r5, r5, d_a_npc_doorboy__stringBase0@l /* 0x809ADB04@l */
/* 809AC244  38 A5 00 11 */	addi r5, r5, 0x11
/* 809AC248  38 C0 00 FF */	li r6, 0xff
/* 809AC24C  4B 69 B5 0D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 809AC250  7C 7D 1B 78 */	mr r29, r3
/* 809AC254  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809AC258  7F C4 F3 78 */	mr r4, r30
/* 809AC25C  4B 69 62 BD */	bl reset__14dEvt_control_cFPv
/* 809AC260  7F C3 F3 78 */	mr r3, r30
/* 809AC264  7F A4 EB 78 */	mr r4, r29
/* 809AC268  38 A0 00 01 */	li r5, 1
/* 809AC26C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809AC270  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809AC274  4B 66 F3 71 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 809AC278  38 00 00 01 */	li r0, 1
/* 809AC27C  98 1E 09 EC */	stb r0, 0x9ec(r30)
/* 809AC280  3C 60 80 9B */	lis r3, lit_4707@ha /* 0x809ADBF4@ha */
/* 809AC284  38 83 DB F4 */	addi r4, r3, lit_4707@l /* 0x809ADBF4@l */
/* 809AC288  80 64 00 00 */	lwz r3, 0(r4)
/* 809AC28C  80 04 00 04 */	lwz r0, 4(r4)
/* 809AC290  90 61 00 20 */	stw r3, 0x20(r1)
/* 809AC294  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AC298  80 04 00 08 */	lwz r0, 8(r4)
/* 809AC29C  90 01 00 28 */	stw r0, 0x28(r1)
/* 809AC2A0  38 00 00 03 */	li r0, 3
/* 809AC2A4  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 809AC2A8  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809AC2AC  4B 9B 5D 6D */	bl __ptmf_test
/* 809AC2B0  2C 03 00 00 */	cmpwi r3, 0
/* 809AC2B4  41 82 00 18 */	beq lbl_809AC2CC
/* 809AC2B8  7F C3 F3 78 */	mr r3, r30
/* 809AC2BC  38 80 00 00 */	li r4, 0
/* 809AC2C0  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809AC2C4  4B 9B 5D C1 */	bl __ptmf_scall
/* 809AC2C8  60 00 00 00 */	nop 
lbl_809AC2CC:
/* 809AC2CC  38 00 00 00 */	li r0, 0
/* 809AC2D0  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 809AC2D4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 809AC2D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AC2DC  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 809AC2E0  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 809AC2E4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809AC2E8  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 809AC2EC  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809AC2F0  4B 9B 5D 29 */	bl __ptmf_test
/* 809AC2F4  2C 03 00 00 */	cmpwi r3, 0
/* 809AC2F8  41 82 00 AC */	beq lbl_809AC3A4
/* 809AC2FC  7F C3 F3 78 */	mr r3, r30
/* 809AC300  38 80 00 00 */	li r4, 0
/* 809AC304  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809AC308  4B 9B 5D 7D */	bl __ptmf_scall
/* 809AC30C  60 00 00 00 */	nop 
/* 809AC310  48 00 00 94 */	b lbl_809AC3A4
lbl_809AC314:
/* 809AC314  3C 60 80 9B */	lis r3, lit_4710@ha /* 0x809ADC00@ha */
/* 809AC318  38 83 DC 00 */	addi r4, r3, lit_4710@l /* 0x809ADC00@l */
/* 809AC31C  80 64 00 00 */	lwz r3, 0(r4)
/* 809AC320  80 04 00 04 */	lwz r0, 4(r4)
/* 809AC324  90 61 00 14 */	stw r3, 0x14(r1)
/* 809AC328  90 01 00 18 */	stw r0, 0x18(r1)
/* 809AC32C  80 04 00 08 */	lwz r0, 8(r4)
/* 809AC330  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809AC334  38 00 00 03 */	li r0, 3
/* 809AC338  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 809AC33C  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809AC340  4B 9B 5C D9 */	bl __ptmf_test
/* 809AC344  2C 03 00 00 */	cmpwi r3, 0
/* 809AC348  41 82 00 18 */	beq lbl_809AC360
/* 809AC34C  7F C3 F3 78 */	mr r3, r30
/* 809AC350  38 80 00 00 */	li r4, 0
/* 809AC354  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809AC358  4B 9B 5D 2D */	bl __ptmf_scall
/* 809AC35C  60 00 00 00 */	nop 
lbl_809AC360:
/* 809AC360  38 00 00 00 */	li r0, 0
/* 809AC364  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 809AC368  80 61 00 14 */	lwz r3, 0x14(r1)
/* 809AC36C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 809AC370  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 809AC374  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 809AC378  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 809AC37C  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 809AC380  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809AC384  4B 9B 5C 95 */	bl __ptmf_test
/* 809AC388  2C 03 00 00 */	cmpwi r3, 0
/* 809AC38C  41 82 00 18 */	beq lbl_809AC3A4
/* 809AC390  7F C3 F3 78 */	mr r3, r30
/* 809AC394  38 80 00 00 */	li r4, 0
/* 809AC398  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809AC39C  4B 9B 5C E9 */	bl __ptmf_scall
/* 809AC3A0  60 00 00 00 */	nop 
lbl_809AC3A4:
/* 809AC3A4  3B E0 00 01 */	li r31, 1
/* 809AC3A8  48 00 01 64 */	b lbl_809AC50C
lbl_809AC3AC:
/* 809AC3AC  7F C3 F3 78 */	mr r3, r30
/* 809AC3B0  38 81 00 0C */	addi r4, r1, 0xc
/* 809AC3B4  38 A1 00 08 */	addi r5, r1, 8
/* 809AC3B8  7F C6 F3 78 */	mr r6, r30
/* 809AC3BC  38 E0 00 00 */	li r7, 0
/* 809AC3C0  4B 7A 73 59 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809AC3C4  2C 03 00 00 */	cmpwi r3, 0
/* 809AC3C8  41 82 01 44 */	beq lbl_809AC50C
/* 809AC3CC  7F C3 F3 78 */	mr r3, r30
/* 809AC3D0  80 81 00 08 */	lwz r4, 8(r1)
/* 809AC3D4  3C A0 80 9B */	lis r5, lit_4321@ha /* 0x809ADA2C@ha */
/* 809AC3D8  C0 25 DA 2C */	lfs f1, lit_4321@l(r5)  /* 0x809ADA2C@l */
/* 809AC3DC  38 A0 00 00 */	li r5, 0
/* 809AC3E0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809AC3E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AC3E8  7D 89 03 A6 */	mtctr r12
/* 809AC3EC  4E 80 04 21 */	bctrl 
/* 809AC3F0  48 00 01 1C */	b lbl_809AC50C
lbl_809AC3F4:
/* 809AC3F4  7F C3 F3 78 */	mr r3, r30
/* 809AC3F8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809AC3FC  4B 66 E3 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809AC400  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 809AC404  2C 00 00 00 */	cmpwi r0, 0
/* 809AC408  40 82 00 4C */	bne lbl_809AC454
/* 809AC40C  B0 7E 09 96 */	sth r3, 0x996(r30)
/* 809AC410  38 00 00 00 */	li r0, 0
/* 809AC414  90 1E 09 68 */	stw r0, 0x968(r30)
/* 809AC418  A8 7E 08 F2 */	lha r3, 0x8f2(r30)
/* 809AC41C  A8 1E 09 96 */	lha r0, 0x996(r30)
/* 809AC420  7C 03 00 00 */	cmpw r3, r0
/* 809AC424  40 82 00 10 */	bne lbl_809AC434
/* 809AC428  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 809AC42C  38 03 00 01 */	addi r0, r3, 1
/* 809AC430  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_809AC434:
/* 809AC434  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809AC438  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 809AC43C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809AC440  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 809AC444  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 809AC448  38 03 00 01 */	addi r0, r3, 1
/* 809AC44C  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809AC450  48 00 00 64 */	b lbl_809AC4B4
lbl_809AC454:
/* 809AC454  2C 00 00 01 */	cmpwi r0, 1
/* 809AC458  40 82 00 5C */	bne lbl_809AC4B4
/* 809AC45C  7F C3 F3 78 */	mr r3, r30
/* 809AC460  A8 9E 09 96 */	lha r4, 0x996(r30)
/* 809AC464  3C A0 80 9B */	lis r5, lit_4678@ha /* 0x809ADADC@ha */
/* 809AC468  C0 25 DA DC */	lfs f1, lit_4678@l(r5)  /* 0x809ADADC@l */
/* 809AC46C  38 A0 00 00 */	li r5, 0
/* 809AC470  4B 7A 7A 85 */	bl turn__8daNpcF_cFsfi
/* 809AC474  2C 03 00 00 */	cmpwi r3, 0
/* 809AC478  41 82 00 2C */	beq lbl_809AC4A4
/* 809AC47C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809AC480  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 809AC484  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809AC488  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 809AC48C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809AC490  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 809AC494  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 809AC498  38 03 00 01 */	addi r0, r3, 1
/* 809AC49C  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809AC4A0  48 00 00 14 */	b lbl_809AC4B4
lbl_809AC4A4:
/* 809AC4A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809AC4A8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 809AC4AC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809AC4B0  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
lbl_809AC4B4:
/* 809AC4B4  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 809AC4B8  2C 00 00 01 */	cmpwi r0, 1
/* 809AC4BC  40 81 00 50 */	ble lbl_809AC50C
/* 809AC4C0  7F C3 F3 78 */	mr r3, r30
/* 809AC4C4  38 80 00 00 */	li r4, 0
/* 809AC4C8  3C A0 80 9B */	lis r5, lit_4321@ha /* 0x809ADA2C@ha */
/* 809AC4CC  C0 25 DA 2C */	lfs f1, lit_4321@l(r5)  /* 0x809ADA2C@l */
/* 809AC4D0  38 A0 00 00 */	li r5, 0
/* 809AC4D4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809AC4D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AC4DC  7D 89 03 A6 */	mtctr r12
/* 809AC4E0  4E 80 04 21 */	bctrl 
/* 809AC4E4  38 00 00 00 */	li r0, 0
/* 809AC4E8  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809AC4EC  48 00 00 20 */	b lbl_809AC50C
lbl_809AC4F0:
/* 809AC4F0  88 1E 09 EC */	lbz r0, 0x9ec(r30)
/* 809AC4F4  28 00 00 00 */	cmplwi r0, 0
/* 809AC4F8  40 82 00 14 */	bne lbl_809AC50C
/* 809AC4FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AC500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AC504  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809AC508  4B 69 5F 61 */	bl reset__14dEvt_control_cFv
lbl_809AC50C:
/* 809AC50C  7F E3 FB 78 */	mr r3, r31
/* 809AC510  39 61 00 40 */	addi r11, r1, 0x40
/* 809AC514  4B 9B 5D 15 */	bl _restgpr_29
/* 809AC518  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809AC51C  7C 08 03 A6 */	mtlr r0
/* 809AC520  38 21 00 40 */	addi r1, r1, 0x40
/* 809AC524  4E 80 00 20 */	blr 
