lbl_80562174:
/* 80562174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80562178  7C 08 02 A6 */	mflr r0
/* 8056217C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80562180  39 61 00 20 */	addi r11, r1, 0x20
/* 80562184  4B E0 00 59 */	bl _savegpr_29
/* 80562188  7C 7E 1B 78 */	mr r30, r3
/* 8056218C  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 80562190  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 80562194  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80562198  2C 00 00 02 */	cmpwi r0, 2
/* 8056219C  41 82 00 84 */	beq lbl_80562220
/* 805621A0  40 80 07 E8 */	bge lbl_80562988
/* 805621A4  2C 00 00 00 */	cmpwi r0, 0
/* 805621A8  40 80 00 0C */	bge lbl_805621B4
/* 805621AC  48 00 07 DC */	b lbl_80562988
/* 805621B0  48 00 07 D8 */	b lbl_80562988
lbl_805621B4:
/* 805621B4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 805621B8  2C 00 00 00 */	cmpwi r0, 0
/* 805621BC  40 82 00 64 */	bne lbl_80562220
/* 805621C0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 805621C4  2C 00 00 09 */	cmpwi r0, 9
/* 805621C8  41 82 00 24 */	beq lbl_805621EC
/* 805621CC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 805621D0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 805621D4  4B BE 36 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805621D8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 805621DC  38 00 00 09 */	li r0, 9
/* 805621E0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 805621E4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 805621E8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_805621EC:
/* 805621EC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 805621F0  2C 00 00 00 */	cmpwi r0, 0
/* 805621F4  41 82 00 24 */	beq lbl_80562218
/* 805621F8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 805621FC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80562200  4B BE 36 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562204  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80562208  38 00 00 00 */	li r0, 0
/* 8056220C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80562210  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80562214  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80562218:
/* 80562218  38 00 00 02 */	li r0, 2
/* 8056221C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80562220:
/* 80562220  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 80562224  2C 00 00 03 */	cmpwi r0, 3
/* 80562228  41 82 00 58 */	beq lbl_80562280
/* 8056222C  40 80 00 10 */	bge lbl_8056223C
/* 80562230  2C 00 00 00 */	cmpwi r0, 0
/* 80562234  41 82 00 20 */	beq lbl_80562254
/* 80562238  48 00 01 14 */	b lbl_8056234C
lbl_8056223C:
/* 8056223C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80562240  41 82 00 EC */	beq lbl_8056232C
/* 80562244  40 80 01 08 */	bge lbl_8056234C
/* 80562248  2C 00 00 0B */	cmpwi r0, 0xb
/* 8056224C  40 80 00 C0 */	bge lbl_8056230C
/* 80562250  48 00 00 FC */	b lbl_8056234C
lbl_80562254:
/* 80562254  38 60 00 1F */	li r3, 0x1f
/* 80562258  4B BE A8 55 */	bl daNpcT_chkEvtBit__FUl
/* 8056225C  2C 03 00 00 */	cmpwi r3, 0
/* 80562260  41 82 00 EC */	beq lbl_8056234C
/* 80562264  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80562268  28 00 00 00 */	cmplwi r0, 0
/* 8056226C  41 82 00 E0 */	beq lbl_8056234C
/* 80562270  7F C3 F3 78 */	mr r3, r30
/* 80562274  4B AB 7A 09 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80562278  38 60 00 01 */	li r3, 1
/* 8056227C  48 00 07 10 */	b lbl_8056298C
lbl_80562280:
/* 80562280  38 7E 11 04 */	addi r3, r30, 0x1104
/* 80562284  4B BE 34 85 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562288  28 03 00 00 */	cmplwi r3, 0
/* 8056228C  41 82 00 44 */	beq lbl_805622D0
/* 80562290  7F C4 F3 78 */	mr r4, r30
/* 80562294  38 BF 00 00 */	addi r5, r31, 0
/* 80562298  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8056229C  C0 45 00 74 */	lfs f2, 0x74(r5)
/* 805622A0  C0 65 00 78 */	lfs f3, 0x78(r5)
/* 805622A4  C0 85 00 7C */	lfs f4, 0x7c(r5)
/* 805622A8  C0 A5 00 80 */	lfs f5, 0x80(r5)
/* 805622AC  C0 C5 00 84 */	lfs f6, 0x84(r5)
/* 805622B0  C0 E5 00 88 */	lfs f7, 0x88(r5)
/* 805622B4  48 50 3E 25 */	bl checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff
/* 805622B8  2C 03 00 00 */	cmpwi r3, 0
/* 805622BC  41 82 00 14 */	beq lbl_805622D0
/* 805622C0  38 00 00 07 */	li r0, 7
/* 805622C4  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 805622C8  38 00 00 01 */	li r0, 1
/* 805622CC  98 1E 11 33 */	stb r0, 0x1133(r30)
lbl_805622D0:
/* 805622D0  88 1E 11 33 */	lbz r0, 0x1133(r30)
/* 805622D4  28 00 00 00 */	cmplwi r0, 0
/* 805622D8  41 82 00 74 */	beq lbl_8056234C
/* 805622DC  38 60 00 3C */	li r3, 0x3c
/* 805622E0  4B BE A7 CD */	bl daNpcT_chkEvtBit__FUl
/* 805622E4  2C 03 00 00 */	cmpwi r3, 0
/* 805622E8  41 82 00 64 */	beq lbl_8056234C
/* 805622EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805622F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805622F4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805622F8  28 00 00 00 */	cmplwi r0, 0
/* 805622FC  40 82 00 50 */	bne lbl_8056234C
/* 80562300  38 00 00 00 */	li r0, 0
/* 80562304  98 1E 11 33 */	stb r0, 0x1133(r30)
/* 80562308  48 00 00 44 */	b lbl_8056234C
lbl_8056230C:
/* 8056230C  38 60 02 66 */	li r3, 0x266
/* 80562310  4B BE A7 9D */	bl daNpcT_chkEvtBit__FUl
/* 80562314  2C 03 00 00 */	cmpwi r3, 0
/* 80562318  40 82 00 34 */	bne lbl_8056234C
/* 8056231C  38 00 00 01 */	li r0, 1
/* 80562320  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 80562324  98 1E 0E 33 */	stb r0, 0xe33(r30)
/* 80562328  48 00 00 24 */	b lbl_8056234C
lbl_8056232C:
/* 8056232C  38 60 02 5C */	li r3, 0x25c
/* 80562330  4B BE A7 7D */	bl daNpcT_chkEvtBit__FUl
/* 80562334  2C 03 00 00 */	cmpwi r3, 0
/* 80562338  41 82 00 14 */	beq lbl_8056234C
/* 8056233C  7F C3 F3 78 */	mr r3, r30
/* 80562340  4B AB 79 3D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80562344  38 60 00 01 */	li r3, 1
/* 80562348  48 00 06 44 */	b lbl_8056298C
lbl_8056234C:
/* 8056234C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80562350  2C 00 00 00 */	cmpwi r0, 0
/* 80562354  40 82 06 34 */	bne lbl_80562988
/* 80562358  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 8056235C  28 00 00 03 */	cmplwi r0, 3
/* 80562360  40 82 00 F0 */	bne lbl_80562450
/* 80562364  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80562368  2C 00 00 00 */	cmpwi r0, 0
/* 8056236C  41 82 00 24 */	beq lbl_80562390
/* 80562370  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80562374  4B BE 33 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562378  38 00 00 00 */	li r0, 0
/* 8056237C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80562380  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80562384  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80562388  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056238C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80562390:
/* 80562390  38 00 00 00 */	li r0, 0
/* 80562394  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80562398  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8056239C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 805623A0  28 04 00 FF */	cmplwi r4, 0xff
/* 805623A4  41 82 00 A0 */	beq lbl_80562444
/* 805623A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805623AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805623B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805623B4  7C 05 07 74 */	extsb r5, r0
/* 805623B8  4B AD 2F A9 */	bl isSwitch__10dSv_info_cCFii
/* 805623BC  2C 03 00 00 */	cmpwi r3, 0
/* 805623C0  41 82 00 84 */	beq lbl_80562444
/* 805623C4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805623C8  D0 1E 0D 6C */	stfs f0, 0xd6c(r30)
/* 805623CC  D0 1E 0D 70 */	stfs f0, 0xd70(r30)
/* 805623D0  D0 1E 0D 74 */	stfs f0, 0xd74(r30)
/* 805623D4  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 805623D8  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 805623DC  7C 63 00 50 */	subf r3, r3, r0
/* 805623E0  30 03 FF FF */	addic r0, r3, -1
/* 805623E4  7C 00 19 10 */	subfe r0, r0, r3
/* 805623E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805623EC  40 82 00 10 */	bne lbl_805623FC
/* 805623F0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805623F4  2C 00 00 03 */	cmpwi r0, 3
/* 805623F8  41 82 00 30 */	beq lbl_80562428
lbl_805623FC:
/* 805623FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80562400  4B BE 32 FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562404  38 00 00 00 */	li r0, 0
/* 80562408  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8056240C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80562410  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80562414  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80562418  38 00 00 03 */	li r0, 3
/* 8056241C  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80562420  38 00 00 01 */	li r0, 1
/* 80562424  48 00 00 08 */	b lbl_8056242C
lbl_80562428:
/* 80562428  38 00 00 00 */	li r0, 0
lbl_8056242C:
/* 8056242C  2C 00 00 00 */	cmpwi r0, 0
/* 80562430  41 82 00 0C */	beq lbl_8056243C
/* 80562434  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 80562438  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_8056243C:
/* 8056243C  38 00 00 00 */	li r0, 0
/* 80562440  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80562444:
/* 80562444  38 00 00 00 */	li r0, 0
/* 80562448  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8056244C  48 00 02 D4 */	b lbl_80562720
lbl_80562450:
/* 80562450  2C 00 00 06 */	cmpwi r0, 6
/* 80562454  40 80 00 1C */	bge lbl_80562470
/* 80562458  2C 00 00 03 */	cmpwi r0, 3
/* 8056245C  41 82 00 A4 */	beq lbl_80562500
/* 80562460  40 80 00 28 */	bge lbl_80562488
/* 80562464  2C 00 00 01 */	cmpwi r0, 1
/* 80562468  40 80 00 14 */	bge lbl_8056247C
/* 8056246C  48 00 00 94 */	b lbl_80562500
lbl_80562470:
/* 80562470  2C 00 00 0A */	cmpwi r0, 0xa
/* 80562474  41 82 00 84 */	beq lbl_805624F8
/* 80562478  48 00 00 88 */	b lbl_80562500
lbl_8056247C:
/* 8056247C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80562480  4B BE 32 7D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562484  48 00 00 7C */	b lbl_80562500
lbl_80562488:
/* 80562488  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8056248C  4B BE 32 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562490  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80562494  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80562498  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8056249C  38 80 0D 02 */	li r4, 0xd02
/* 805624A0  4B AD 25 1D */	bl isEventBit__11dSv_event_cCFUs
/* 805624A4  2C 03 00 00 */	cmpwi r3, 0
/* 805624A8  41 82 00 18 */	beq lbl_805624C0
/* 805624AC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 805624B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805624B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805624B8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805624BC  4B BE 32 25 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_805624C0:
/* 805624C0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805624C4  2C 00 00 00 */	cmpwi r0, 0
/* 805624C8  41 82 00 24 */	beq lbl_805624EC
/* 805624CC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805624D0  4B BE 32 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 805624D4  38 00 00 00 */	li r0, 0
/* 805624D8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805624DC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805624E0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805624E4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805624E8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805624EC:
/* 805624EC  38 00 00 00 */	li r0, 0
/* 805624F0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805624F4  48 00 00 0C */	b lbl_80562500
lbl_805624F8:
/* 805624F8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 805624FC  4B BE 32 01 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80562500:
/* 80562500  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80562504  4B BE 32 05 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562508  28 03 00 00 */	cmplwi r3, 0
/* 8056250C  41 82 00 D4 */	beq lbl_805625E0
/* 80562510  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 80562514  28 00 00 04 */	cmplwi r0, 4
/* 80562518  41 82 01 88 */	beq lbl_805626A0
/* 8056251C  28 00 00 05 */	cmplwi r0, 5
/* 80562520  41 82 01 80 */	beq lbl_805626A0
/* 80562524  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80562528  2C 00 00 01 */	cmpwi r0, 1
/* 8056252C  41 82 00 28 */	beq lbl_80562554
/* 80562530  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80562534  4B BE 31 C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562538  38 00 00 00 */	li r0, 0
/* 8056253C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80562540  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80562544  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80562548  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056254C  38 00 00 01 */	li r0, 1
/* 80562550  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80562554:
/* 80562554  38 00 00 00 */	li r0, 0
/* 80562558  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056255C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80562560  4B BE 31 A9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562564  7C 64 1B 78 */	mr r4, r3
/* 80562568  7F C3 F3 78 */	mr r3, r30
/* 8056256C  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80562570  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80562574  4B BE 86 5D */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80562578  2C 03 00 00 */	cmpwi r3, 0
/* 8056257C  40 82 00 38 */	bne lbl_805625B4
/* 80562580  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80562584  2C 00 00 00 */	cmpwi r0, 0
/* 80562588  41 82 00 24 */	beq lbl_805625AC
/* 8056258C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80562590  4B BE 31 6D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562594  38 00 00 00 */	li r0, 0
/* 80562598  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8056259C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805625A0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805625A4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805625A8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805625AC:
/* 805625AC  38 00 00 00 */	li r0, 0
/* 805625B0  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_805625B4:
/* 805625B4  7F C3 F3 78 */	mr r3, r30
/* 805625B8  4B BE 8D 81 */	bl srchPlayerActor__8daNpcT_cFv
/* 805625BC  2C 03 00 00 */	cmpwi r3, 0
/* 805625C0  40 82 00 E0 */	bne lbl_805626A0
/* 805625C4  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 805625C8  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 805625CC  7C 03 00 00 */	cmpw r3, r0
/* 805625D0  40 82 00 D0 */	bne lbl_805626A0
/* 805625D4  38 00 00 01 */	li r0, 1
/* 805625D8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 805625DC  48 00 00 C4 */	b lbl_805626A0
lbl_805625E0:
/* 805625E0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805625E4  2C 00 00 00 */	cmpwi r0, 0
/* 805625E8  41 82 00 24 */	beq lbl_8056260C
/* 805625EC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805625F0  4B BE 31 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 805625F4  38 00 00 00 */	li r0, 0
/* 805625F8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805625FC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80562600  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80562604  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80562608  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056260C:
/* 8056260C  38 00 00 00 */	li r0, 0
/* 80562610  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80562614  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80562618  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8056261C  7C 04 00 00 */	cmpw r4, r0
/* 80562620  41 82 00 58 */	beq lbl_80562678
/* 80562624  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80562628  28 00 00 00 */	cmplwi r0, 0
/* 8056262C  41 82 00 30 */	beq lbl_8056265C
/* 80562630  7F C3 F3 78 */	mr r3, r30
/* 80562634  38 A0 00 09 */	li r5, 9
/* 80562638  38 C0 00 07 */	li r6, 7
/* 8056263C  38 E0 00 0F */	li r7, 0xf
/* 80562640  39 00 00 00 */	li r8, 0
/* 80562644  4B BE 90 05 */	bl step__8daNpcT_cFsiiii
/* 80562648  2C 03 00 00 */	cmpwi r3, 0
/* 8056264C  41 82 00 20 */	beq lbl_8056266C
/* 80562650  38 00 00 01 */	li r0, 1
/* 80562654  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80562658  48 00 00 14 */	b lbl_8056266C
lbl_8056265C:
/* 8056265C  7F C3 F3 78 */	mr r3, r30
/* 80562660  4B BE 83 B9 */	bl setAngle__8daNpcT_cFs
/* 80562664  38 00 00 01 */	li r0, 1
/* 80562668  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_8056266C:
/* 8056266C  38 00 00 00 */	li r0, 0
/* 80562670  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80562674  48 00 00 2C */	b lbl_805626A0
lbl_80562678:
/* 80562678  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8056267C  28 00 00 00 */	cmplwi r0, 0
/* 80562680  40 82 00 20 */	bne lbl_805626A0
/* 80562684  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 80562688  28 00 00 04 */	cmplwi r0, 4
/* 8056268C  41 82 00 14 */	beq lbl_805626A0
/* 80562690  28 00 00 05 */	cmplwi r0, 5
/* 80562694  41 82 00 0C */	beq lbl_805626A0
/* 80562698  7F C3 F3 78 */	mr r3, r30
/* 8056269C  4B BE 8C 9D */	bl srchPlayerActor__8daNpcT_cFv
lbl_805626A0:
/* 805626A0  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 805626A4  28 00 00 0B */	cmplwi r0, 0xb
/* 805626A8  40 82 00 78 */	bne lbl_80562720
/* 805626AC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805626B0  2C 00 00 01 */	cmpwi r0, 1
/* 805626B4  40 82 00 24 */	bne lbl_805626D8
/* 805626B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805626BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805626C0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 805626C4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 805626C8  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 805626CC  38 A0 00 02 */	li r5, 2
/* 805626D0  4B AD 23 11 */	bl setEventReg__11dSv_event_cFUsUc
/* 805626D4  48 00 00 20 */	b lbl_805626F4
lbl_805626D8:
/* 805626D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805626DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805626E0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 805626E4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 805626E8  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 805626EC  38 A0 00 01 */	li r5, 1
/* 805626F0  4B AD 22 F1 */	bl setEventReg__11dSv_event_cFUsUc
lbl_805626F4:
/* 805626F4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 805626F8  4B BE 30 11 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805626FC  28 03 00 00 */	cmplwi r3, 0
/* 80562700  40 82 00 20 */	bne lbl_80562720
/* 80562704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80562708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056270C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80562710  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 80562714  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 80562718  38 A0 00 00 */	li r5, 0
/* 8056271C  4B AD 22 C5 */	bl setEventReg__11dSv_event_cFUsUc
lbl_80562720:
/* 80562720  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80562724  2C 00 00 00 */	cmpwi r0, 0
/* 80562728  41 82 00 08 */	beq lbl_80562730
/* 8056272C  48 00 02 30 */	b lbl_8056295C
lbl_80562730:
/* 80562730  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 80562734  2C 00 00 06 */	cmpwi r0, 6
/* 80562738  40 80 00 1C */	bge lbl_80562754
/* 8056273C  2C 00 00 03 */	cmpwi r0, 3
/* 80562740  41 82 02 1C */	beq lbl_8056295C
/* 80562744  40 80 00 BC */	bge lbl_80562800
/* 80562748  2C 00 00 01 */	cmpwi r0, 1
/* 8056274C  40 80 00 14 */	bge lbl_80562760
/* 80562750  48 00 02 0C */	b lbl_8056295C
lbl_80562754:
/* 80562754  2C 00 00 0A */	cmpwi r0, 0xa
/* 80562758  41 82 01 00 */	beq lbl_80562858
/* 8056275C  48 00 02 00 */	b lbl_8056295C
lbl_80562760:
/* 80562760  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 80562764  4B BE 2F A5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562768  7C 7D 1B 79 */	or. r29, r3, r3
/* 8056276C  41 82 01 F0 */	beq lbl_8056295C
/* 80562770  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80562774  4B BE 2F 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562778  7C 63 E8 50 */	subf r3, r3, r29
/* 8056277C  30 03 FF FF */	addic r0, r3, -1
/* 80562780  7C 00 19 10 */	subfe r0, r0, r3
/* 80562784  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80562788  40 82 00 10 */	bne lbl_80562798
/* 8056278C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80562790  2C 00 00 02 */	cmpwi r0, 2
/* 80562794  41 82 00 30 */	beq lbl_805627C4
lbl_80562798:
/* 80562798  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8056279C  4B BE 2F 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805627A0  38 00 00 00 */	li r0, 0
/* 805627A4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805627A8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805627AC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805627B0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805627B4  38 00 00 02 */	li r0, 2
/* 805627B8  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 805627BC  38 00 00 01 */	li r0, 1
/* 805627C0  48 00 00 08 */	b lbl_805627C8
lbl_805627C4:
/* 805627C4  38 00 00 00 */	li r0, 0
lbl_805627C8:
/* 805627C8  2C 00 00 00 */	cmpwi r0, 0
/* 805627CC  41 82 00 28 */	beq lbl_805627F4
/* 805627D0  7F A3 EB 78 */	mr r3, r29
/* 805627D4  4B AB 65 0D */	bl fopAc_IsActor__FPv
/* 805627D8  2C 03 00 00 */	cmpwi r3, 0
/* 805627DC  41 82 00 18 */	beq lbl_805627F4
/* 805627E0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805627E4  7F A4 EB 78 */	mr r4, r29
/* 805627E8  4B BE 2E F9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805627EC  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 805627F0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_805627F4:
/* 805627F4  38 00 00 00 */	li r0, 0
/* 805627F8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805627FC  48 00 01 60 */	b lbl_8056295C
lbl_80562800:
/* 80562800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80562804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80562808  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8056280C  38 80 0E 40 */	li r4, 0xe40
/* 80562810  4B AD 21 AD */	bl isEventBit__11dSv_event_cCFUs
/* 80562814  2C 03 00 00 */	cmpwi r3, 0
/* 80562818  41 82 01 44 */	beq lbl_8056295C
/* 8056281C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80562820  2C 00 00 01 */	cmpwi r0, 1
/* 80562824  41 82 00 28 */	beq lbl_8056284C
/* 80562828  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8056282C  4B BE 2E D1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562830  38 00 00 00 */	li r0, 0
/* 80562834  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80562838  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8056283C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80562840  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80562844  38 00 00 01 */	li r0, 1
/* 80562848  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056284C:
/* 8056284C  38 00 00 00 */	li r0, 0
/* 80562850  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80562854  48 00 01 08 */	b lbl_8056295C
lbl_80562858:
/* 80562858  38 60 00 64 */	li r3, 0x64
/* 8056285C  4B BE A3 11 */	bl daNpcT_chkTmpBit__FUl
/* 80562860  2C 03 00 00 */	cmpwi r3, 0
/* 80562864  41 82 00 14 */	beq lbl_80562878
/* 80562868  38 00 00 01 */	li r0, 1
/* 8056286C  98 1E 11 39 */	stb r0, 0x1139(r30)
/* 80562870  38 00 80 00 */	li r0, -32768
/* 80562874  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
lbl_80562878:
/* 80562878  88 1E 11 39 */	lbz r0, 0x1139(r30)
/* 8056287C  28 00 00 00 */	cmplwi r0, 0
/* 80562880  41 82 00 40 */	beq lbl_805628C0
/* 80562884  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80562888  2C 00 00 04 */	cmpwi r0, 4
/* 8056288C  41 82 00 28 */	beq lbl_805628B4
/* 80562890  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80562894  4B BE 2E 69 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562898  38 00 00 00 */	li r0, 0
/* 8056289C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805628A0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805628A4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805628A8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805628AC  38 00 00 04 */	li r0, 4
/* 805628B0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805628B4:
/* 805628B4  38 00 00 00 */	li r0, 0
/* 805628B8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805628BC  48 00 00 A0 */	b lbl_8056295C
lbl_805628C0:
/* 805628C0  38 7E 10 D4 */	addi r3, r30, 0x10d4
/* 805628C4  4B BE 2E 45 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805628C8  7C 7D 1B 79 */	or. r29, r3, r3
/* 805628CC  41 82 00 90 */	beq lbl_8056295C
/* 805628D0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805628D4  4B BE 2E 35 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805628D8  7C 63 E8 50 */	subf r3, r3, r29
/* 805628DC  30 03 FF FF */	addic r0, r3, -1
/* 805628E0  7C 00 19 10 */	subfe r0, r0, r3
/* 805628E4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805628E8  40 82 00 10 */	bne lbl_805628F8
/* 805628EC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805628F0  2C 00 00 02 */	cmpwi r0, 2
/* 805628F4  41 82 00 30 */	beq lbl_80562924
lbl_805628F8:
/* 805628F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805628FC  4B BE 2E 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562900  38 00 00 00 */	li r0, 0
/* 80562904  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80562908  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8056290C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80562910  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80562914  38 00 00 02 */	li r0, 2
/* 80562918  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8056291C  38 00 00 01 */	li r0, 1
/* 80562920  48 00 00 08 */	b lbl_80562928
lbl_80562924:
/* 80562924  38 00 00 00 */	li r0, 0
lbl_80562928:
/* 80562928  2C 00 00 00 */	cmpwi r0, 0
/* 8056292C  41 82 00 28 */	beq lbl_80562954
/* 80562930  7F A3 EB 78 */	mr r3, r29
/* 80562934  4B AB 63 AD */	bl fopAc_IsActor__FPv
/* 80562938  2C 03 00 00 */	cmpwi r3, 0
/* 8056293C  41 82 00 18 */	beq lbl_80562954
/* 80562940  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80562944  7F A4 EB 78 */	mr r4, r29
/* 80562948  4B BE 2D 99 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056294C  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80562950  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80562954:
/* 80562954  38 00 00 00 */	li r0, 0
/* 80562958  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_8056295C:
/* 8056295C  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 80562960  2C 00 00 0A */	cmpwi r0, 0xa
/* 80562964  41 82 00 1C */	beq lbl_80562980
/* 80562968  40 80 00 20 */	bge lbl_80562988
/* 8056296C  2C 00 00 06 */	cmpwi r0, 6
/* 80562970  40 80 00 18 */	bge lbl_80562988
/* 80562974  2C 00 00 04 */	cmpwi r0, 4
/* 80562978  40 80 00 08 */	bge lbl_80562980
/* 8056297C  48 00 00 0C */	b lbl_80562988
lbl_80562980:
/* 80562980  38 00 00 00 */	li r0, 0
/* 80562984  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80562988:
/* 80562988  38 60 00 01 */	li r3, 1
lbl_8056298C:
/* 8056298C  39 61 00 20 */	addi r11, r1, 0x20
/* 80562990  4B DF F8 99 */	bl _restgpr_29
/* 80562994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80562998  7C 08 03 A6 */	mtlr r0
/* 8056299C  38 21 00 20 */	addi r1, r1, 0x20
/* 805629A0  4E 80 00 20 */	blr 
