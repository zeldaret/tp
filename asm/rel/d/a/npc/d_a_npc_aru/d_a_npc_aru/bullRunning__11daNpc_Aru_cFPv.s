lbl_80955B48:
/* 80955B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80955B4C  7C 08 02 A6 */	mflr r0
/* 80955B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80955B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80955B58  93 C1 00 08 */	stw r30, 8(r1)
/* 80955B5C  7C 7F 1B 78 */	mr r31, r3
/* 80955B60  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80955B64  2C 00 00 02 */	cmpwi r0, 2
/* 80955B68  41 82 00 94 */	beq lbl_80955BFC
/* 80955B6C  40 80 02 60 */	bge lbl_80955DCC
/* 80955B70  2C 00 00 00 */	cmpwi r0, 0
/* 80955B74  40 80 00 0C */	bge lbl_80955B80
/* 80955B78  48 00 02 54 */	b lbl_80955DCC
/* 80955B7C  48 00 02 50 */	b lbl_80955DCC
lbl_80955B80:
/* 80955B80  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80955B84  2C 00 00 00 */	cmpwi r0, 0
/* 80955B88  40 82 00 74 */	bne lbl_80955BFC
/* 80955B8C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80955B90  2C 00 00 0C */	cmpwi r0, 0xc
/* 80955B94  41 82 00 28 */	beq lbl_80955BBC
/* 80955B98  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80955B9C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80955BA0  4B 7E FC F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955BA4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80955BA8  38 00 00 0C */	li r0, 0xc
/* 80955BAC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80955BB0  3C 60 80 95 */	lis r3, lit_4804@ha
/* 80955BB4  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 80955BB8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80955BBC:
/* 80955BBC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80955BC0  2C 00 00 00 */	cmpwi r0, 0
/* 80955BC4  41 82 00 28 */	beq lbl_80955BEC
/* 80955BC8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80955BCC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80955BD0  4B 7E FC C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955BD4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80955BD8  38 00 00 00 */	li r0, 0
/* 80955BDC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80955BE0  3C 60 80 95 */	lis r3, lit_4804@ha
/* 80955BE4  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 80955BE8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80955BEC:
/* 80955BEC  38 00 00 00 */	li r0, 0
/* 80955BF0  98 1F 0F D1 */	stb r0, 0xfd1(r31)
/* 80955BF4  38 00 00 02 */	li r0, 2
/* 80955BF8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80955BFC:
/* 80955BFC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80955C00  38 83 01 88 */	addi r4, r3, g_meter2_info@l
/* 80955C04  88 64 00 BC */	lbz r3, 0xbc(r4)
/* 80955C08  88 04 00 BB */	lbz r0, 0xbb(r4)
/* 80955C0C  7C 03 00 40 */	cmplw r3, r0
/* 80955C10  40 82 00 58 */	bne lbl_80955C68
/* 80955C14  88 1F 0F D3 */	lbz r0, 0xfd3(r31)
/* 80955C18  28 00 00 00 */	cmplwi r0, 0
/* 80955C1C  41 82 00 4C */	beq lbl_80955C68
/* 80955C20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80955C24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80955C28  80 63 00 00 */	lwz r3, 0(r3)
/* 80955C2C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80955C30  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009C@ha */
/* 80955C34  38 84 00 9C */	addi r4, r4, 0x009C /* 0x0100009C@l */
/* 80955C38  4B 95 98 64 */	b subBgmStart__8Z2SeqMgrFUl
/* 80955C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80955C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80955C44  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80955C48  4B 6D 6F 94 */	b getTimerPtr__14dComIfG_play_cFv
/* 80955C4C  28 03 00 00 */	cmplwi r3, 0
/* 80955C50  41 82 00 10 */	beq lbl_80955C60
/* 80955C54  38 60 00 02 */	li r3, 2
/* 80955C58  38 80 FF FF */	li r4, -1
/* 80955C5C  4B 6D 9A 54 */	b dComIfG_TimerEnd__Fii
lbl_80955C60:
/* 80955C60  38 00 00 00 */	li r0, 0
/* 80955C64  98 1F 0F D3 */	stb r0, 0xfd3(r31)
lbl_80955C68:
/* 80955C68  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 80955C6C  28 00 00 00 */	cmplwi r0, 0
/* 80955C70  41 82 00 10 */	beq lbl_80955C80
/* 80955C74  38 00 00 06 */	li r0, 6
/* 80955C78  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80955C7C  48 00 00 B8 */	b lbl_80955D34
lbl_80955C80:
/* 80955C80  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80955C84  28 00 00 04 */	cmplwi r0, 4
/* 80955C88  40 82 00 24 */	bne lbl_80955CAC
/* 80955C8C  38 60 00 AF */	li r3, 0xaf
/* 80955C90  4B 7F 6E DC */	b daNpcT_chkTmpBit__FUl
/* 80955C94  2C 03 00 00 */	cmpwi r3, 0
/* 80955C98  40 82 00 14 */	bne lbl_80955CAC
/* 80955C9C  38 00 00 01 */	li r0, 1
/* 80955CA0  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80955CA4  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80955CA8  48 00 00 8C */	b lbl_80955D34
lbl_80955CAC:
/* 80955CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80955CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80955CB4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80955CB8  7F C3 F3 78 */	mr r3, r30
/* 80955CBC  4B 6D 6F 20 */	b getTimerPtr__14dComIfG_play_cFv
/* 80955CC0  28 03 00 00 */	cmplwi r3, 0
/* 80955CC4  41 82 00 70 */	beq lbl_80955D34
/* 80955CC8  7F C3 F3 78 */	mr r3, r30
/* 80955CCC  4B 6D 6E F0 */	b getTimerMode__14dComIfG_play_cFv
/* 80955CD0  2C 03 00 02 */	cmpwi r3, 2
/* 80955CD4  40 82 00 60 */	bne lbl_80955D34
/* 80955CD8  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80955CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80955CE0  41 82 00 54 */	beq lbl_80955D34
/* 80955CE4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80955CE8  40 82 00 2C */	bne lbl_80955D14
/* 80955CEC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80955CF0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80955CF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80955CF8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80955CFC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000006@ha */
/* 80955D00  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x01000006@l */
/* 80955D04  4B 95 97 98 */	b subBgmStart__8Z2SeqMgrFUl
/* 80955D08  38 60 00 02 */	li r3, 2
/* 80955D0C  38 80 FF FF */	li r4, -1
/* 80955D10  4B 6D 98 1C */	b dComIfG_TimerStart__Fis
lbl_80955D14:
/* 80955D14  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80955D18  48 00 16 7D */	bl func_80957394
/* 80955D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80955D20  40 82 00 14 */	bne lbl_80955D34
/* 80955D24  38 60 00 02 */	li r3, 2
/* 80955D28  4B 6D 99 10 */	b dComIfG_TimerReStart__Fi
/* 80955D2C  38 00 00 01 */	li r0, 1
/* 80955D30  98 1F 0F D3 */	stb r0, 0xfd3(r31)
lbl_80955D34:
/* 80955D34  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80955D38  2C 00 00 00 */	cmpwi r0, 0
/* 80955D3C  40 82 00 90 */	bne lbl_80955DCC
/* 80955D40  7F E3 FB 78 */	mr r3, r31
/* 80955D44  38 80 00 01 */	li r4, 1
/* 80955D48  4B FF E6 B1 */	bl duck__11daNpc_Aru_cFi
/* 80955D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80955D50  41 82 00 20 */	beq lbl_80955D70
/* 80955D54  38 60 00 00 */	li r3, 0
/* 80955D58  98 7F 0F D1 */	stb r3, 0xfd1(r31)
/* 80955D5C  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80955D60  2C 00 00 01 */	cmpwi r0, 1
/* 80955D64  40 82 00 68 */	bne lbl_80955DCC
/* 80955D68  B0 7F 0D D8 */	sth r3, 0xdd8(r31)
/* 80955D6C  48 00 00 60 */	b lbl_80955DCC
lbl_80955D70:
/* 80955D70  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80955D74  2C 00 00 01 */	cmpwi r0, 1
/* 80955D78  41 82 00 2C */	beq lbl_80955DA4
/* 80955D7C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80955D80  4B 7E F9 7C */	b remove__18daNpcT_ActorMngr_cFv
/* 80955D84  38 00 00 00 */	li r0, 0
/* 80955D88  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80955D8C  3C 60 80 95 */	lis r3, lit_4100@ha
/* 80955D90  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 80955D94  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80955D98  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955D9C  38 00 00 01 */	li r0, 1
/* 80955DA0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80955DA4:
/* 80955DA4  38 00 00 00 */	li r0, 0
/* 80955DA8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955DAC  7F E3 FB 78 */	mr r3, r31
/* 80955DB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80955DB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80955DB8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80955DBC  4B 6C 49 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80955DC0  7C 64 1B 78 */	mr r4, r3
/* 80955DC4  7F E3 FB 78 */	mr r3, r31
/* 80955DC8  4B FF E9 7D */	bl lookround__11daNpc_Aru_cFs
lbl_80955DCC:
/* 80955DCC  38 60 00 01 */	li r3, 1
/* 80955DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80955DD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80955DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80955DDC  7C 08 03 A6 */	mtlr r0
/* 80955DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80955DE4  4E 80 00 20 */	blr 
