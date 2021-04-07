lbl_80965CCC:
/* 80965CCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80965CD0  7C 08 02 A6 */	mflr r0
/* 80965CD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80965CD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80965CDC  4B 9F C5 01 */	bl _savegpr_29
/* 80965CE0  7C 7E 1B 78 */	mr r30, r3
/* 80965CE4  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha /* 0x80967E20@ha */
/* 80965CE8  3B E3 7E 20 */	addi r31, r3, m__18daNpc_Bans_Param_c@l /* 0x80967E20@l */
/* 80965CEC  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80965CF0  2C 00 00 02 */	cmpwi r0, 2
/* 80965CF4  41 82 02 20 */	beq lbl_80965F14
/* 80965CF8  40 80 04 DC */	bge lbl_809661D4
/* 80965CFC  2C 00 00 00 */	cmpwi r0, 0
/* 80965D00  40 80 00 0C */	bge lbl_80965D0C
/* 80965D04  48 00 04 D0 */	b lbl_809661D4
/* 80965D08  48 00 04 CC */	b lbl_809661D4
lbl_80965D0C:
/* 80965D0C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80965D10  2C 00 00 00 */	cmpwi r0, 0
/* 80965D14  40 82 02 00 */	bne lbl_80965F14
/* 80965D18  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80965D1C  2C 00 00 02 */	cmpwi r0, 2
/* 80965D20  41 82 00 DC */	beq lbl_80965DFC
/* 80965D24  40 80 00 14 */	bge lbl_80965D38
/* 80965D28  2C 00 00 00 */	cmpwi r0, 0
/* 80965D2C  41 82 00 18 */	beq lbl_80965D44
/* 80965D30  40 80 00 70 */	bge lbl_80965DA0
/* 80965D34  48 00 01 80 */	b lbl_80965EB4
lbl_80965D38:
/* 80965D38  2C 00 00 04 */	cmpwi r0, 4
/* 80965D3C  40 80 01 78 */	bge lbl_80965EB4
/* 80965D40  48 00 01 18 */	b lbl_80965E58
lbl_80965D44:
/* 80965D44  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80965D48  2C 00 00 03 */	cmpwi r0, 3
/* 80965D4C  41 82 00 24 */	beq lbl_80965D70
/* 80965D50  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80965D54  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80965D58  4B 7D FB 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965D5C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80965D60  38 00 00 03 */	li r0, 3
/* 80965D64  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80965D68  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965D6C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80965D70:
/* 80965D70  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80965D74  2C 00 00 0C */	cmpwi r0, 0xc
/* 80965D78  41 82 01 94 */	beq lbl_80965F0C
/* 80965D7C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80965D80  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80965D84  4B 7D FB 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965D88  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80965D8C  38 00 00 0C */	li r0, 0xc
/* 80965D90  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80965D94  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965D98  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80965D9C  48 00 01 70 */	b lbl_80965F0C
lbl_80965DA0:
/* 80965DA0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80965DA4  2C 00 00 04 */	cmpwi r0, 4
/* 80965DA8  41 82 00 24 */	beq lbl_80965DCC
/* 80965DAC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80965DB0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80965DB4  4B 7D FA E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965DB8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80965DBC  38 00 00 04 */	li r0, 4
/* 80965DC0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80965DC4  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965DC8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80965DCC:
/* 80965DCC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80965DD0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80965DD4  41 82 01 38 */	beq lbl_80965F0C
/* 80965DD8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80965DDC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80965DE0  4B 7D FA B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965DE4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80965DE8  38 00 00 10 */	li r0, 0x10
/* 80965DEC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80965DF0  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965DF4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80965DF8  48 00 01 14 */	b lbl_80965F0C
lbl_80965DFC:
/* 80965DFC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80965E00  2C 00 00 03 */	cmpwi r0, 3
/* 80965E04  41 82 00 24 */	beq lbl_80965E28
/* 80965E08  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80965E0C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80965E10  4B 7D FA 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965E14  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80965E18  38 00 00 03 */	li r0, 3
/* 80965E1C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80965E20  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965E24  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80965E28:
/* 80965E28  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80965E2C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80965E30  41 82 00 DC */	beq lbl_80965F0C
/* 80965E34  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80965E38  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80965E3C  4B 7D FA 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965E40  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80965E44  38 00 00 0D */	li r0, 0xd
/* 80965E48  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80965E4C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965E50  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80965E54  48 00 00 B8 */	b lbl_80965F0C
lbl_80965E58:
/* 80965E58  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80965E5C  2C 00 00 03 */	cmpwi r0, 3
/* 80965E60  41 82 00 24 */	beq lbl_80965E84
/* 80965E64  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80965E68  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80965E6C  4B 7D FA 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965E70  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80965E74  38 00 00 03 */	li r0, 3
/* 80965E78  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80965E7C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965E80  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80965E84:
/* 80965E84  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80965E88  2C 00 00 0B */	cmpwi r0, 0xb
/* 80965E8C  41 82 00 80 */	beq lbl_80965F0C
/* 80965E90  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80965E94  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80965E98  4B 7D FA 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965E9C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80965EA0  38 00 00 0B */	li r0, 0xb
/* 80965EA4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80965EA8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965EAC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80965EB0  48 00 00 5C */	b lbl_80965F0C
lbl_80965EB4:
/* 80965EB4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80965EB8  2C 00 00 03 */	cmpwi r0, 3
/* 80965EBC  41 82 00 24 */	beq lbl_80965EE0
/* 80965EC0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80965EC4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80965EC8  4B 7D F9 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965ECC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80965ED0  38 00 00 03 */	li r0, 3
/* 80965ED4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80965ED8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965EDC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80965EE0:
/* 80965EE0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80965EE4  2C 00 00 00 */	cmpwi r0, 0
/* 80965EE8  41 82 00 24 */	beq lbl_80965F0C
/* 80965EEC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80965EF0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80965EF4  4B 7D F9 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965EF8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80965EFC  38 00 00 00 */	li r0, 0
/* 80965F00  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80965F04  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965F08  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80965F0C:
/* 80965F0C  38 00 00 02 */	li r0, 2
/* 80965F10  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80965F14:
/* 80965F14  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80965F18  28 00 00 01 */	cmplwi r0, 1
/* 80965F1C  40 82 00 8C */	bne lbl_80965FA8
/* 80965F20  38 7E 12 1C */	addi r3, r30, 0x121c
/* 80965F24  4B 7D F7 E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80965F28  28 03 00 00 */	cmplwi r3, 0
/* 80965F2C  41 82 00 44 */	beq lbl_80965F70
/* 80965F30  7F C4 F3 78 */	mr r4, r30
/* 80965F34  38 BF 00 00 */	addi r5, r31, 0
/* 80965F38  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 80965F3C  C0 45 00 74 */	lfs f2, 0x74(r5)
/* 80965F40  C0 65 00 78 */	lfs f3, 0x78(r5)
/* 80965F44  C0 85 00 7C */	lfs f4, 0x7c(r5)
/* 80965F48  C0 A5 00 80 */	lfs f5, 0x80(r5)
/* 80965F4C  C0 C5 00 84 */	lfs f6, 0x84(r5)
/* 80965F50  C0 E5 00 88 */	lfs f7, 0x88(r5)
/* 80965F54  48 10 01 85 */	bl checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff
/* 80965F58  2C 03 00 00 */	cmpwi r3, 0
/* 80965F5C  41 82 00 14 */	beq lbl_80965F70
/* 80965F60  38 00 00 03 */	li r0, 3
/* 80965F64  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80965F68  38 00 00 01 */	li r0, 1
/* 80965F6C  98 1E 12 67 */	stb r0, 0x1267(r30)
lbl_80965F70:
/* 80965F70  88 1E 12 67 */	lbz r0, 0x1267(r30)
/* 80965F74  28 00 00 00 */	cmplwi r0, 0
/* 80965F78  41 82 00 30 */	beq lbl_80965FA8
/* 80965F7C  38 60 00 3C */	li r3, 0x3c
/* 80965F80  4B 7E 6B 2D */	bl daNpcT_chkEvtBit__FUl
/* 80965F84  2C 03 00 00 */	cmpwi r3, 0
/* 80965F88  41 82 00 20 */	beq lbl_80965FA8
/* 80965F8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80965F90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80965F94  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80965F98  28 00 00 00 */	cmplwi r0, 0
/* 80965F9C  40 82 00 0C */	bne lbl_80965FA8
/* 80965FA0  38 00 00 00 */	li r0, 0
/* 80965FA4  98 1E 12 67 */	stb r0, 0x1267(r30)
lbl_80965FA8:
/* 80965FA8  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80965FAC  28 00 00 01 */	cmplwi r0, 1
/* 80965FB0  41 82 00 48 */	beq lbl_80965FF8
/* 80965FB4  28 00 00 02 */	cmplwi r0, 2
/* 80965FB8  41 82 00 40 */	beq lbl_80965FF8
/* 80965FBC  7F C3 F3 78 */	mr r3, r30
/* 80965FC0  4B FF EE 11 */	bl orderAngerEvt__12daNpc_Bans_cFv
/* 80965FC4  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80965FC8  28 00 00 03 */	cmplwi r0, 3
/* 80965FCC  40 82 00 2C */	bne lbl_80965FF8
/* 80965FD0  A0 1E 0E 30 */	lhz r0, 0xe30(r30)
/* 80965FD4  28 00 00 04 */	cmplwi r0, 4
/* 80965FD8  40 82 00 0C */	bne lbl_80965FE4
/* 80965FDC  38 00 00 05 */	li r0, 5
/* 80965FE0  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_80965FE4:
/* 80965FE4  A0 1E 0E 30 */	lhz r0, 0xe30(r30)
/* 80965FE8  28 00 00 06 */	cmplwi r0, 6
/* 80965FEC  40 82 00 0C */	bne lbl_80965FF8
/* 80965FF0  38 00 00 07 */	li r0, 7
/* 80965FF4  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_80965FF8:
/* 80965FF8  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80965FFC  2C 00 00 00 */	cmpwi r0, 0
/* 80966000  40 82 01 D4 */	bne lbl_809661D4
/* 80966004  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80966008  28 00 00 00 */	cmplwi r0, 0
/* 8096600C  41 82 00 14 */	beq lbl_80966020
/* 80966010  28 00 00 02 */	cmplwi r0, 2
/* 80966014  41 82 00 0C */	beq lbl_80966020
/* 80966018  28 00 00 03 */	cmplwi r0, 3
/* 8096601C  40 82 00 0C */	bne lbl_80966028
lbl_80966020:
/* 80966020  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80966024  4B 7D F6 D9 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80966028:
/* 80966028  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8096602C  4B 7D F6 DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80966030  28 03 00 00 */	cmplwi r3, 0
/* 80966034  41 82 00 D8 */	beq lbl_8096610C
/* 80966038  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8096603C  28 00 00 00 */	cmplwi r0, 0
/* 80966040  40 82 00 CC */	bne lbl_8096610C
/* 80966044  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 80966048  28 00 00 02 */	cmplwi r0, 2
/* 8096604C  41 82 00 C0 */	beq lbl_8096610C
/* 80966050  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80966054  2C 00 00 01 */	cmpwi r0, 1
/* 80966058  41 82 00 28 */	beq lbl_80966080
/* 8096605C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80966060  4B 7D F6 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80966064  38 00 00 00 */	li r0, 0
/* 80966068  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096606C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80966070  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80966074  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80966078  38 00 00 01 */	li r0, 1
/* 8096607C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80966080:
/* 80966080  38 00 00 00 */	li r0, 0
/* 80966084  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80966088  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8096608C  4B 7D F6 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80966090  7C 64 1B 78 */	mr r4, r3
/* 80966094  7F C3 F3 78 */	mr r3, r30
/* 80966098  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 8096609C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809660A0  4B 7E 4B 31 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 809660A4  2C 03 00 00 */	cmpwi r3, 0
/* 809660A8  40 82 00 38 */	bne lbl_809660E0
/* 809660AC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809660B0  2C 00 00 00 */	cmpwi r0, 0
/* 809660B4  41 82 00 24 */	beq lbl_809660D8
/* 809660B8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809660BC  4B 7D F6 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809660C0  38 00 00 00 */	li r0, 0
/* 809660C4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809660C8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809660CC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809660D0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809660D4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809660D8:
/* 809660D8  38 00 00 00 */	li r0, 0
/* 809660DC  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_809660E0:
/* 809660E0  7F C3 F3 78 */	mr r3, r30
/* 809660E4  4B 7E 52 55 */	bl srchPlayerActor__8daNpcT_cFv
/* 809660E8  2C 03 00 00 */	cmpwi r3, 0
/* 809660EC  40 82 00 E8 */	bne lbl_809661D4
/* 809660F0  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 809660F4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809660F8  7C 03 00 00 */	cmpw r3, r0
/* 809660FC  40 82 00 D8 */	bne lbl_809661D4
/* 80966100  38 00 00 01 */	li r0, 1
/* 80966104  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80966108  48 00 00 CC */	b lbl_809661D4
lbl_8096610C:
/* 8096610C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80966110  2C 00 00 00 */	cmpwi r0, 0
/* 80966114  41 82 00 24 */	beq lbl_80966138
/* 80966118  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096611C  4B 7D F5 E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80966120  38 00 00 00 */	li r0, 0
/* 80966124  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80966128  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096612C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80966130  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80966134  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80966138:
/* 80966138  38 00 00 00 */	li r0, 0
/* 8096613C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80966140  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80966144  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80966148  7C 04 00 00 */	cmpw r4, r0
/* 8096614C  41 82 00 58 */	beq lbl_809661A4
/* 80966150  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80966154  28 00 00 00 */	cmplwi r0, 0
/* 80966158  41 82 00 30 */	beq lbl_80966188
/* 8096615C  7F C3 F3 78 */	mr r3, r30
/* 80966160  38 A0 FF FF */	li r5, -1
/* 80966164  38 C0 FF FF */	li r6, -1
/* 80966168  38 E0 00 0F */	li r7, 0xf
/* 8096616C  39 00 00 00 */	li r8, 0
/* 80966170  4B 7E 54 D9 */	bl step__8daNpcT_cFsiiii
/* 80966174  2C 03 00 00 */	cmpwi r3, 0
/* 80966178  41 82 00 20 */	beq lbl_80966198
/* 8096617C  38 00 00 01 */	li r0, 1
/* 80966180  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80966184  48 00 00 14 */	b lbl_80966198
lbl_80966188:
/* 80966188  7F C3 F3 78 */	mr r3, r30
/* 8096618C  4B 7E 48 8D */	bl setAngle__8daNpcT_cFs
/* 80966190  38 00 00 01 */	li r0, 1
/* 80966194  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80966198:
/* 80966198  38 00 00 00 */	li r0, 0
/* 8096619C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809661A0  48 00 00 34 */	b lbl_809661D4
lbl_809661A4:
/* 809661A4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809661A8  28 00 00 00 */	cmplwi r0, 0
/* 809661AC  40 82 00 28 */	bne lbl_809661D4
/* 809661B0  88 1E 12 00 */	lbz r0, 0x1200(r30)
/* 809661B4  28 00 00 00 */	cmplwi r0, 0
/* 809661B8  41 82 00 1C */	beq lbl_809661D4
/* 809661BC  28 00 00 02 */	cmplwi r0, 2
/* 809661C0  41 82 00 14 */	beq lbl_809661D4
/* 809661C4  28 00 00 03 */	cmplwi r0, 3
/* 809661C8  40 82 00 0C */	bne lbl_809661D4
/* 809661CC  7F C3 F3 78 */	mr r3, r30
/* 809661D0  4B 7E 51 69 */	bl srchPlayerActor__8daNpcT_cFv
lbl_809661D4:
/* 809661D4  38 60 00 01 */	li r3, 1
/* 809661D8  39 61 00 20 */	addi r11, r1, 0x20
/* 809661DC  4B 9F C0 4D */	bl _restgpr_29
/* 809661E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809661E4  7C 08 03 A6 */	mtlr r0
/* 809661E8  38 21 00 20 */	addi r1, r1, 0x20
/* 809661EC  4E 80 00 20 */	blr 
