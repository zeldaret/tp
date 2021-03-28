lbl_8053C08C:
/* 8053C08C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053C090  7C 08 02 A6 */	mflr r0
/* 8053C094  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053C098  39 61 00 20 */	addi r11, r1, 0x20
/* 8053C09C  4B E2 61 40 */	b _savegpr_29
/* 8053C0A0  7C 7E 1B 78 */	mr r30, r3
/* 8053C0A4  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha
/* 8053C0A8  3B E3 E7 54 */	addi r31, r3, m__18daNpc_Besu_Param_c@l
/* 8053C0AC  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 8053C0B0  2C 00 00 02 */	cmpwi r0, 2
/* 8053C0B4  41 82 02 58 */	beq lbl_8053C30C
/* 8053C0B8  40 80 09 CC */	bge lbl_8053CA84
/* 8053C0BC  2C 00 00 00 */	cmpwi r0, 0
/* 8053C0C0  40 80 00 0C */	bge lbl_8053C0CC
/* 8053C0C4  48 00 09 C0 */	b lbl_8053CA84
/* 8053C0C8  48 00 09 BC */	b lbl_8053CA84
lbl_8053C0CC:
/* 8053C0CC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 8053C0D0  2C 00 00 00 */	cmpwi r0, 0
/* 8053C0D4  40 82 02 38 */	bne lbl_8053C30C
/* 8053C0D8  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C0DC  2C 00 00 05 */	cmpwi r0, 5
/* 8053C0E0  41 82 00 F8 */	beq lbl_8053C1D8
/* 8053C0E4  40 80 01 50 */	bge lbl_8053C234
/* 8053C0E8  2C 00 00 02 */	cmpwi r0, 2
/* 8053C0EC  41 82 00 08 */	beq lbl_8053C0F4
/* 8053C0F0  48 00 01 44 */	b lbl_8053C234
lbl_8053C0F4:
/* 8053C0F4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8053C0F8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8053C0FC  28 04 00 FF */	cmplwi r4, 0xff
/* 8053C100  41 82 00 7C */	beq lbl_8053C17C
/* 8053C104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053C108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053C10C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8053C110  7C 05 07 74 */	extsb r5, r0
/* 8053C114  4B AF 92 4C */	b isSwitch__10dSv_info_cCFii
/* 8053C118  2C 03 00 00 */	cmpwi r3, 0
/* 8053C11C  41 82 00 60 */	beq lbl_8053C17C
/* 8053C120  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8053C124  2C 00 00 18 */	cmpwi r0, 0x18
/* 8053C128  41 82 00 24 */	beq lbl_8053C14C
/* 8053C12C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8053C130  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8053C134  4B C0 97 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C138  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8053C13C  38 00 00 18 */	li r0, 0x18
/* 8053C140  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8053C144  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C148  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8053C14C:
/* 8053C14C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8053C150  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8053C154  41 82 01 A4 */	beq lbl_8053C2F8
/* 8053C158  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8053C15C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8053C160  4B C0 97 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C164  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8053C168  38 00 00 1A */	li r0, 0x1a
/* 8053C16C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8053C170  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C174  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8053C178  48 00 01 80 */	b lbl_8053C2F8
lbl_8053C17C:
/* 8053C17C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8053C180  2C 00 00 17 */	cmpwi r0, 0x17
/* 8053C184  41 82 00 24 */	beq lbl_8053C1A8
/* 8053C188  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8053C18C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8053C190  4B C0 97 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C194  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8053C198  38 00 00 17 */	li r0, 0x17
/* 8053C19C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8053C1A0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C1A4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8053C1A8:
/* 8053C1A8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8053C1AC  2C 00 00 19 */	cmpwi r0, 0x19
/* 8053C1B0  41 82 01 48 */	beq lbl_8053C2F8
/* 8053C1B4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8053C1B8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8053C1BC  4B C0 96 DC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C1C0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8053C1C4  38 00 00 19 */	li r0, 0x19
/* 8053C1C8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8053C1CC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C1D0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8053C1D4  48 00 01 24 */	b lbl_8053C2F8
lbl_8053C1D8:
/* 8053C1D8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8053C1DC  2C 00 00 13 */	cmpwi r0, 0x13
/* 8053C1E0  41 82 00 24 */	beq lbl_8053C204
/* 8053C1E4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8053C1E8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8053C1EC  4B C0 96 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C1F0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8053C1F4  38 00 00 13 */	li r0, 0x13
/* 8053C1F8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8053C1FC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C200  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8053C204:
/* 8053C204  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8053C208  2C 00 00 06 */	cmpwi r0, 6
/* 8053C20C  41 82 00 EC */	beq lbl_8053C2F8
/* 8053C210  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8053C214  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8053C218  4B C0 96 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C21C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8053C220  38 00 00 06 */	li r0, 6
/* 8053C224  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8053C228  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C22C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8053C230  48 00 00 C8 */	b lbl_8053C2F8
lbl_8053C234:
/* 8053C234  7F C3 F3 78 */	mr r3, r30
/* 8053C238  4B FF BD C5 */	bl chkBesu3__12daNpc_Besu_cFv
/* 8053C23C  2C 03 00 00 */	cmpwi r3, 0
/* 8053C240  41 82 00 60 */	beq lbl_8053C2A0
/* 8053C244  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8053C248  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053C24C  41 82 00 24 */	beq lbl_8053C270
/* 8053C250  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8053C254  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8053C258  4B C0 96 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C25C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8053C260  38 00 00 1C */	li r0, 0x1c
/* 8053C264  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8053C268  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C26C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8053C270:
/* 8053C270  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8053C274  2C 00 00 08 */	cmpwi r0, 8
/* 8053C278  41 82 00 80 */	beq lbl_8053C2F8
/* 8053C27C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8053C280  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8053C284  4B C0 96 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C288  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8053C28C  38 00 00 08 */	li r0, 8
/* 8053C290  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8053C294  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C298  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8053C29C  48 00 00 5C */	b lbl_8053C2F8
lbl_8053C2A0:
/* 8053C2A0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8053C2A4  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053C2A8  41 82 00 24 */	beq lbl_8053C2CC
/* 8053C2AC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8053C2B0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8053C2B4  4B C0 95 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C2B8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8053C2BC  38 00 00 1C */	li r0, 0x1c
/* 8053C2C0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8053C2C4  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C2C8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8053C2CC:
/* 8053C2CC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8053C2D0  2C 00 00 00 */	cmpwi r0, 0
/* 8053C2D4  41 82 00 24 */	beq lbl_8053C2F8
/* 8053C2D8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8053C2DC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8053C2E0  4B C0 95 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053C2E4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8053C2E8  38 00 00 00 */	li r0, 0
/* 8053C2EC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8053C2F0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053C2F4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8053C2F8:
/* 8053C2F8  38 00 00 00 */	li r0, 0
/* 8053C2FC  90 1E 11 18 */	stw r0, 0x1118(r30)
/* 8053C300  90 1E 11 1C */	stw r0, 0x111c(r30)
/* 8053C304  38 00 00 02 */	li r0, 2
/* 8053C308  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_8053C30C:
/* 8053C30C  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C310  2C 00 00 02 */	cmpwi r0, 2
/* 8053C314  41 82 00 4C */	beq lbl_8053C360
/* 8053C318  40 80 00 10 */	bge lbl_8053C328
/* 8053C31C  2C 00 00 00 */	cmpwi r0, 0
/* 8053C320  41 82 00 14 */	beq lbl_8053C334
/* 8053C324  48 00 00 E8 */	b lbl_8053C40C
lbl_8053C328:
/* 8053C328  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053C32C  41 82 00 C0 */	beq lbl_8053C3EC
/* 8053C330  48 00 00 DC */	b lbl_8053C40C
lbl_8053C334:
/* 8053C334  38 60 00 1F */	li r3, 0x1f
/* 8053C338  4B C1 07 74 */	b daNpcT_chkEvtBit__FUl
/* 8053C33C  2C 03 00 00 */	cmpwi r3, 0
/* 8053C340  41 82 00 CC */	beq lbl_8053C40C
/* 8053C344  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 8053C348  28 00 00 00 */	cmplwi r0, 0
/* 8053C34C  41 82 00 C0 */	beq lbl_8053C40C
/* 8053C350  7F C3 F3 78 */	mr r3, r30
/* 8053C354  4B AD D9 28 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8053C358  38 60 00 01 */	li r3, 1
/* 8053C35C  48 00 07 2C */	b lbl_8053CA88
lbl_8053C360:
/* 8053C360  38 7E 10 E0 */	addi r3, r30, 0x10e0
/* 8053C364  4B C0 93 A4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C368  28 03 00 00 */	cmplwi r3, 0
/* 8053C36C  41 82 00 44 */	beq lbl_8053C3B0
/* 8053C370  7F C4 F3 78 */	mr r4, r30
/* 8053C374  38 BF 00 00 */	addi r5, r31, 0
/* 8053C378  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8053C37C  C0 45 00 74 */	lfs f2, 0x74(r5)
/* 8053C380  C0 65 00 78 */	lfs f3, 0x78(r5)
/* 8053C384  C0 85 00 7C */	lfs f4, 0x7c(r5)
/* 8053C388  C0 A5 00 80 */	lfs f5, 0x80(r5)
/* 8053C38C  C0 C5 00 84 */	lfs f6, 0x84(r5)
/* 8053C390  C0 E5 00 88 */	lfs f7, 0x88(r5)
/* 8053C394  48 52 9D 44 */	b checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff
/* 8053C398  2C 03 00 00 */	cmpwi r3, 0
/* 8053C39C  41 82 00 14 */	beq lbl_8053C3B0
/* 8053C3A0  38 00 00 08 */	li r0, 8
/* 8053C3A4  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 8053C3A8  38 00 00 01 */	li r0, 1
/* 8053C3AC  98 1E 11 2F */	stb r0, 0x112f(r30)
lbl_8053C3B0:
/* 8053C3B0  88 1E 11 2F */	lbz r0, 0x112f(r30)
/* 8053C3B4  28 00 00 00 */	cmplwi r0, 0
/* 8053C3B8  41 82 00 54 */	beq lbl_8053C40C
/* 8053C3BC  38 60 00 3C */	li r3, 0x3c
/* 8053C3C0  4B C1 06 EC */	b daNpcT_chkEvtBit__FUl
/* 8053C3C4  2C 03 00 00 */	cmpwi r3, 0
/* 8053C3C8  41 82 00 44 */	beq lbl_8053C40C
/* 8053C3CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053C3D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053C3D4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8053C3D8  28 00 00 00 */	cmplwi r0, 0
/* 8053C3DC  40 82 00 30 */	bne lbl_8053C40C
/* 8053C3E0  38 00 00 00 */	li r0, 0
/* 8053C3E4  98 1E 11 2F */	stb r0, 0x112f(r30)
/* 8053C3E8  48 00 00 24 */	b lbl_8053C40C
lbl_8053C3EC:
/* 8053C3EC  38 60 02 5C */	li r3, 0x25c
/* 8053C3F0  4B C1 06 BC */	b daNpcT_chkEvtBit__FUl
/* 8053C3F4  2C 03 00 00 */	cmpwi r3, 0
/* 8053C3F8  41 82 00 14 */	beq lbl_8053C40C
/* 8053C3FC  7F C3 F3 78 */	mr r3, r30
/* 8053C400  4B AD D8 7C */	b fopAcM_delete__FP10fopAc_ac_c
/* 8053C404  38 60 00 01 */	li r3, 1
/* 8053C408  48 00 06 80 */	b lbl_8053CA88
lbl_8053C40C:
/* 8053C40C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 8053C410  2C 00 00 00 */	cmpwi r0, 0
/* 8053C414  40 82 06 70 */	bne lbl_8053CA84
/* 8053C418  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C41C  28 00 00 02 */	cmplwi r0, 2
/* 8053C420  40 82 00 84 */	bne lbl_8053C4A4
/* 8053C424  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C428  2C 00 00 00 */	cmpwi r0, 0
/* 8053C42C  41 82 00 24 */	beq lbl_8053C450
/* 8053C430  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C434  4B C0 92 C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C438  38 00 00 00 */	li r0, 0
/* 8053C43C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C440  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C444  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C448  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C44C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053C450:
/* 8053C450  38 00 00 00 */	li r0, 0
/* 8053C454  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C458  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8053C45C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8053C460  28 04 00 FF */	cmplwi r4, 0xff
/* 8053C464  41 82 00 34 */	beq lbl_8053C498
/* 8053C468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053C46C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053C470  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8053C474  7C 05 07 74 */	extsb r5, r0
/* 8053C478  4B AF 8E E8 */	b isSwitch__10dSv_info_cCFii
/* 8053C47C  2C 03 00 00 */	cmpwi r3, 0
/* 8053C480  41 82 00 18 */	beq lbl_8053C498
/* 8053C484  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8053C488  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8053C48C  41 82 00 0C */	beq lbl_8053C498
/* 8053C490  38 00 00 01 */	li r0, 1
/* 8053C494  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_8053C498:
/* 8053C498  38 00 00 00 */	li r0, 0
/* 8053C49C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8053C4A0  48 00 03 50 */	b lbl_8053C7F0
lbl_8053C4A4:
/* 8053C4A4  3B A0 00 00 */	li r29, 0
/* 8053C4A8  4B AF 51 A0 */	b daNpcKakashi_chkSwdTutorialStage__Fv
/* 8053C4AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8053C4B0  41 82 00 10 */	beq lbl_8053C4C0
/* 8053C4B4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8053C4B8  4B C0 92 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C4BC  48 00 00 84 */	b lbl_8053C540
lbl_8053C4C0:
/* 8053C4C0  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C4C4  28 00 00 0B */	cmplwi r0, 0xb
/* 8053C4C8  41 82 00 0C */	beq lbl_8053C4D4
/* 8053C4CC  28 00 00 11 */	cmplwi r0, 0x11
/* 8053C4D0  40 82 00 10 */	bne lbl_8053C4E0
lbl_8053C4D4:
/* 8053C4D4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8053C4D8  4B C0 92 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C4DC  48 00 00 64 */	b lbl_8053C540
lbl_8053C4E0:
/* 8053C4E0  28 00 00 0C */	cmplwi r0, 0xc
/* 8053C4E4  40 82 00 5C */	bne lbl_8053C540
/* 8053C4E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053C4EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053C4F0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8053C4F4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8053C4F8  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8053C4FC  4B AF 85 08 */	b getEventReg__11dSv_event_cCFUs
/* 8053C500  7C 7D 1B 78 */	mr r29, r3
/* 8053C504  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8053C508  28 00 00 02 */	cmplwi r0, 2
/* 8053C50C  41 82 00 0C */	beq lbl_8053C518
/* 8053C510  28 00 00 01 */	cmplwi r0, 1
/* 8053C514  40 82 00 1C */	bne lbl_8053C530
lbl_8053C518:
/* 8053C518  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8053C51C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8053C520  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8053C524  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8053C528  4B C0 91 B8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053C52C  48 00 00 14 */	b lbl_8053C540
lbl_8053C530:
/* 8053C530  28 00 00 00 */	cmplwi r0, 0
/* 8053C534  40 82 00 0C */	bne lbl_8053C540
/* 8053C538  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8053C53C  4B C0 91 C0 */	b remove__18daNpcT_ActorMngr_cFv
lbl_8053C540:
/* 8053C540  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8053C544  4B C0 91 C4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C548  28 03 00 00 */	cmplwi r3, 0
/* 8053C54C  41 82 01 44 */	beq lbl_8053C690
/* 8053C550  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8053C554  28 00 00 00 */	cmplwi r0, 0
/* 8053C558  40 82 01 38 */	bne lbl_8053C690
/* 8053C55C  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C560  28 00 00 03 */	cmplwi r0, 3
/* 8053C564  41 82 00 0C */	beq lbl_8053C570
/* 8053C568  28 00 00 04 */	cmplwi r0, 4
/* 8053C56C  40 82 00 18 */	bne lbl_8053C584
lbl_8053C570:
/* 8053C570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053C574  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053C578  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8053C57C  38 80 0D 02 */	li r4, 0xd02
/* 8053C580  4B AF 84 0C */	b onEventBit__11dSv_event_cFUs
lbl_8053C584:
/* 8053C584  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C588  2C 00 00 01 */	cmpwi r0, 1
/* 8053C58C  41 82 00 28 */	beq lbl_8053C5B4
/* 8053C590  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C594  4B C0 91 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C598  38 00 00 00 */	li r0, 0
/* 8053C59C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C5A0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C5A4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C5A8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C5AC  38 00 00 01 */	li r0, 1
/* 8053C5B0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053C5B4:
/* 8053C5B4  38 00 00 00 */	li r0, 0
/* 8053C5B8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C5BC  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C5C0  28 00 00 0C */	cmplwi r0, 0xc
/* 8053C5C4  40 82 00 48 */	bne lbl_8053C60C
/* 8053C5C8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8053C5CC  28 00 00 01 */	cmplwi r0, 1
/* 8053C5D0  40 82 02 20 */	bne lbl_8053C7F0
/* 8053C5D4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C5D8  2C 00 00 00 */	cmpwi r0, 0
/* 8053C5DC  41 82 00 24 */	beq lbl_8053C600
/* 8053C5E0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C5E4  4B C0 91 18 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C5E8  38 00 00 00 */	li r0, 0
/* 8053C5EC  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C5F0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C5F4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C5F8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C5FC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053C600:
/* 8053C600  38 00 00 00 */	li r0, 0
/* 8053C604  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C608  48 00 01 E8 */	b lbl_8053C7F0
lbl_8053C60C:
/* 8053C60C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8053C610  4B C0 90 F8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C614  7C 64 1B 78 */	mr r4, r3
/* 8053C618  7F C3 F3 78 */	mr r3, r30
/* 8053C61C  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 8053C620  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 8053C624  4B C0 E5 AC */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 8053C628  2C 03 00 00 */	cmpwi r3, 0
/* 8053C62C  40 82 00 38 */	bne lbl_8053C664
/* 8053C630  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C634  2C 00 00 00 */	cmpwi r0, 0
/* 8053C638  41 82 00 24 */	beq lbl_8053C65C
/* 8053C63C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C640  4B C0 90 BC */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C644  38 00 00 00 */	li r0, 0
/* 8053C648  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C64C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C650  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C654  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C658  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053C65C:
/* 8053C65C  38 00 00 00 */	li r0, 0
/* 8053C660  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_8053C664:
/* 8053C664  7F C3 F3 78 */	mr r3, r30
/* 8053C668  4B C0 EC D0 */	b srchPlayerActor__8daNpcT_cFv
/* 8053C66C  2C 03 00 00 */	cmpwi r3, 0
/* 8053C670  40 82 01 80 */	bne lbl_8053C7F0
/* 8053C674  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 8053C678  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8053C67C  7C 03 00 00 */	cmpw r3, r0
/* 8053C680  40 82 01 70 */	bne lbl_8053C7F0
/* 8053C684  38 00 00 01 */	li r0, 1
/* 8053C688  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 8053C68C  48 00 01 64 */	b lbl_8053C7F0
lbl_8053C690:
/* 8053C690  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C694  28 00 00 03 */	cmplwi r0, 3
/* 8053C698  41 82 00 0C */	beq lbl_8053C6A4
/* 8053C69C  28 00 00 04 */	cmplwi r0, 4
/* 8053C6A0  40 82 00 18 */	bne lbl_8053C6B8
lbl_8053C6A4:
/* 8053C6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053C6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053C6AC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8053C6B0  38 80 0D 02 */	li r4, 0xd02
/* 8053C6B4  4B AF 82 F0 */	b offEventBit__11dSv_event_cFUs
lbl_8053C6B8:
/* 8053C6B8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C6BC  2C 00 00 00 */	cmpwi r0, 0
/* 8053C6C0  41 82 00 24 */	beq lbl_8053C6E4
/* 8053C6C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C6C8  4B C0 90 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C6CC  38 00 00 00 */	li r0, 0
/* 8053C6D0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C6D4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C6D8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C6DC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C6E0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053C6E4:
/* 8053C6E4  38 00 00 00 */	li r0, 0
/* 8053C6E8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C6EC  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8053C6F0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8053C6F4  7C 04 00 00 */	cmpw r4, r0
/* 8053C6F8  41 82 00 9C */	beq lbl_8053C794
/* 8053C6FC  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 8053C700  28 00 00 00 */	cmplwi r0, 0
/* 8053C704  41 82 00 74 */	beq lbl_8053C778
/* 8053C708  7F C3 F3 78 */	mr r3, r30
/* 8053C70C  4B FF B8 F1 */	bl chkBesu3__12daNpc_Besu_cFv
/* 8053C710  2C 03 00 00 */	cmpwi r3, 0
/* 8053C714  41 82 00 34 */	beq lbl_8053C748
/* 8053C718  7F C3 F3 78 */	mr r3, r30
/* 8053C71C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8053C720  38 A0 00 1C */	li r5, 0x1c
/* 8053C724  38 C0 00 1D */	li r6, 0x1d
/* 8053C728  38 E0 00 0F */	li r7, 0xf
/* 8053C72C  39 00 00 00 */	li r8, 0
/* 8053C730  4B C0 EF 18 */	b step__8daNpcT_cFsiiii
/* 8053C734  2C 03 00 00 */	cmpwi r3, 0
/* 8053C738  41 82 00 50 */	beq lbl_8053C788
/* 8053C73C  38 00 00 01 */	li r0, 1
/* 8053C740  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 8053C744  48 00 00 44 */	b lbl_8053C788
lbl_8053C748:
/* 8053C748  7F C3 F3 78 */	mr r3, r30
/* 8053C74C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8053C750  38 A0 00 1C */	li r5, 0x1c
/* 8053C754  38 C0 00 11 */	li r6, 0x11
/* 8053C758  38 E0 00 0F */	li r7, 0xf
/* 8053C75C  39 00 00 00 */	li r8, 0
/* 8053C760  4B C0 EE E8 */	b step__8daNpcT_cFsiiii
/* 8053C764  2C 03 00 00 */	cmpwi r3, 0
/* 8053C768  41 82 00 20 */	beq lbl_8053C788
/* 8053C76C  38 00 00 01 */	li r0, 1
/* 8053C770  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 8053C774  48 00 00 14 */	b lbl_8053C788
lbl_8053C778:
/* 8053C778  7F C3 F3 78 */	mr r3, r30
/* 8053C77C  4B C0 E2 9C */	b setAngle__8daNpcT_cFs
/* 8053C780  38 00 00 01 */	li r0, 1
/* 8053C784  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_8053C788:
/* 8053C788  38 00 00 00 */	li r0, 0
/* 8053C78C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8053C790  48 00 00 60 */	b lbl_8053C7F0
lbl_8053C794:
/* 8053C794  4B AF 4E B4 */	b daNpcKakashi_chkSwdTutorialStage__Fv
/* 8053C798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8053C79C  41 82 00 40 */	beq lbl_8053C7DC
/* 8053C7A0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C7A4  2C 00 00 01 */	cmpwi r0, 1
/* 8053C7A8  41 82 00 28 */	beq lbl_8053C7D0
/* 8053C7AC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C7B0  4B C0 8F 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C7B4  38 00 00 00 */	li r0, 0
/* 8053C7B8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C7BC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C7C0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C7C4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C7C8  38 00 00 01 */	li r0, 1
/* 8053C7CC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053C7D0:
/* 8053C7D0  38 00 00 00 */	li r0, 0
/* 8053C7D4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C7D8  48 00 00 18 */	b lbl_8053C7F0
lbl_8053C7DC:
/* 8053C7DC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 8053C7E0  28 00 00 00 */	cmplwi r0, 0
/* 8053C7E4  40 82 00 0C */	bne lbl_8053C7F0
/* 8053C7E8  7F C3 F3 78 */	mr r3, r30
/* 8053C7EC  4B C0 EB 4C */	b srchPlayerActor__8daNpcT_cFv
lbl_8053C7F0:
/* 8053C7F0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C7F4  2C 00 00 01 */	cmpwi r0, 1
/* 8053C7F8  41 82 02 48 */	beq lbl_8053CA40
/* 8053C7FC  40 80 02 70 */	bge lbl_8053CA6C
/* 8053C800  2C 00 00 00 */	cmpwi r0, 0
/* 8053C804  40 80 00 08 */	bge lbl_8053C80C
/* 8053C808  48 00 02 64 */	b lbl_8053CA6C
lbl_8053C80C:
/* 8053C80C  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053C810  2C 00 00 0B */	cmpwi r0, 0xb
/* 8053C814  41 82 00 40 */	beq lbl_8053C854
/* 8053C818  40 80 00 18 */	bge lbl_8053C830
/* 8053C81C  2C 00 00 05 */	cmpwi r0, 5
/* 8053C820  40 80 02 4C */	bge lbl_8053CA6C
/* 8053C824  2C 00 00 03 */	cmpwi r0, 3
/* 8053C828  40 80 00 14 */	bge lbl_8053C83C
/* 8053C82C  48 00 02 40 */	b lbl_8053CA6C
lbl_8053C830:
/* 8053C830  2C 00 00 11 */	cmpwi r0, 0x11
/* 8053C834  41 82 01 6C */	beq lbl_8053C9A0
/* 8053C838  48 00 02 34 */	b lbl_8053CA6C
lbl_8053C83C:
/* 8053C83C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053C840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053C844  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8053C848  38 80 0E 40 */	li r4, 0xe40
/* 8053C84C  4B AF 81 58 */	b offEventBit__11dSv_event_cFUs
/* 8053C850  48 00 02 1C */	b lbl_8053CA6C
lbl_8053C854:
/* 8053C854  38 60 00 64 */	li r3, 0x64
/* 8053C858  4B C1 03 14 */	b daNpcT_chkTmpBit__FUl
/* 8053C85C  2C 03 00 00 */	cmpwi r3, 0
/* 8053C860  41 82 00 0C */	beq lbl_8053C86C
/* 8053C864  38 00 00 01 */	li r0, 1
/* 8053C868  98 1E 11 30 */	stb r0, 0x1130(r30)
lbl_8053C86C:
/* 8053C86C  88 1E 11 30 */	lbz r0, 0x1130(r30)
/* 8053C870  28 00 00 00 */	cmplwi r0, 0
/* 8053C874  41 82 00 40 */	beq lbl_8053C8B4
/* 8053C878  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C87C  2C 00 00 04 */	cmpwi r0, 4
/* 8053C880  41 82 00 28 */	beq lbl_8053C8A8
/* 8053C884  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C888  4B C0 8E 74 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C88C  38 00 00 00 */	li r0, 0
/* 8053C890  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C894  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C898  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C89C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C8A0  38 00 00 04 */	li r0, 4
/* 8053C8A4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053C8A8:
/* 8053C8A8  38 00 00 00 */	li r0, 0
/* 8053C8AC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C8B0  48 00 01 BC */	b lbl_8053CA6C
lbl_8053C8B4:
/* 8053C8B4  38 7E 11 28 */	addi r3, r30, 0x1128
/* 8053C8B8  48 00 1A 7D */	bl func_8053E334
/* 8053C8BC  2C 03 00 00 */	cmpwi r3, 0
/* 8053C8C0  40 82 00 20 */	bne lbl_8053C8E0
/* 8053C8C4  88 7E 11 2C */	lbz r3, 0x112c(r30)
/* 8053C8C8  38 03 00 01 */	addi r0, r3, 1
/* 8053C8CC  98 1E 11 2C */	stb r0, 0x112c(r30)
/* 8053C8D0  38 60 00 1E */	li r3, 0x1e
/* 8053C8D4  38 80 00 5A */	li r4, 0x5a
/* 8053C8D8  48 00 1A 79 */	bl func_8053E350
/* 8053C8DC  90 7E 11 28 */	stw r3, 0x1128(r30)
lbl_8053C8E0:
/* 8053C8E0  88 1E 11 2C */	lbz r0, 0x112c(r30)
/* 8053C8E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8053C8E8  41 82 00 14 */	beq lbl_8053C8FC
/* 8053C8EC  38 7E 10 D0 */	addi r3, r30, 0x10d0
/* 8053C8F0  4B C0 8E 18 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C8F4  7C 7D 1B 78 */	mr r29, r3
/* 8053C8F8  48 00 00 10 */	b lbl_8053C908
lbl_8053C8FC:
/* 8053C8FC  38 7E 10 C8 */	addi r3, r30, 0x10c8
/* 8053C900  4B C0 8E 08 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C904  7C 7D 1B 78 */	mr r29, r3
lbl_8053C908:
/* 8053C908  28 1D 00 00 */	cmplwi r29, 0
/* 8053C90C  41 82 01 60 */	beq lbl_8053CA6C
/* 8053C910  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C914  4B C0 8D F4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C918  7C 63 E8 50 */	subf r3, r3, r29
/* 8053C91C  30 03 FF FF */	addic r0, r3, -1
/* 8053C920  7C 00 19 10 */	subfe r0, r0, r3
/* 8053C924  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053C928  40 82 00 10 */	bne lbl_8053C938
/* 8053C92C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C930  2C 00 00 02 */	cmpwi r0, 2
/* 8053C934  41 82 00 30 */	beq lbl_8053C964
lbl_8053C938:
/* 8053C938  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C93C  4B C0 8D C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C940  38 00 00 00 */	li r0, 0
/* 8053C944  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C948  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C94C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C950  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C954  38 00 00 02 */	li r0, 2
/* 8053C958  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8053C95C  38 00 00 01 */	li r0, 1
/* 8053C960  48 00 00 08 */	b lbl_8053C968
lbl_8053C964:
/* 8053C964  38 00 00 00 */	li r0, 0
lbl_8053C968:
/* 8053C968  2C 00 00 00 */	cmpwi r0, 0
/* 8053C96C  41 82 00 28 */	beq lbl_8053C994
/* 8053C970  7F A3 EB 78 */	mr r3, r29
/* 8053C974  4B AD C3 6C */	b fopAc_IsActor__FPv
/* 8053C978  2C 03 00 00 */	cmpwi r3, 0
/* 8053C97C  41 82 00 18 */	beq lbl_8053C994
/* 8053C980  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C984  7F A4 EB 78 */	mr r4, r29
/* 8053C988  4B C0 8D 58 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053C98C  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053C990  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_8053C994:
/* 8053C994  38 00 00 00 */	li r0, 0
/* 8053C998  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C99C  48 00 00 D0 */	b lbl_8053CA6C
lbl_8053C9A0:
/* 8053C9A0  38 7E 10 F0 */	addi r3, r30, 0x10f0
/* 8053C9A4  4B C0 8D 64 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C9A8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8053C9AC  41 82 00 C0 */	beq lbl_8053CA6C
/* 8053C9B0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C9B4  4B C0 8D 54 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053C9B8  7C 63 E8 50 */	subf r3, r3, r29
/* 8053C9BC  30 03 FF FF */	addic r0, r3, -1
/* 8053C9C0  7C 00 19 10 */	subfe r0, r0, r3
/* 8053C9C4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053C9C8  40 82 00 10 */	bne lbl_8053C9D8
/* 8053C9CC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053C9D0  2C 00 00 02 */	cmpwi r0, 2
/* 8053C9D4  41 82 00 30 */	beq lbl_8053CA04
lbl_8053C9D8:
/* 8053C9D8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053C9DC  4B C0 8D 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053C9E0  38 00 00 00 */	li r0, 0
/* 8053C9E4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053C9E8  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053C9EC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053C9F0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053C9F4  38 00 00 02 */	li r0, 2
/* 8053C9F8  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8053C9FC  38 00 00 01 */	li r0, 1
/* 8053CA00  48 00 00 08 */	b lbl_8053CA08
lbl_8053CA04:
/* 8053CA04  38 00 00 00 */	li r0, 0
lbl_8053CA08:
/* 8053CA08  2C 00 00 00 */	cmpwi r0, 0
/* 8053CA0C  41 82 00 28 */	beq lbl_8053CA34
/* 8053CA10  7F A3 EB 78 */	mr r3, r29
/* 8053CA14  4B AD C2 CC */	b fopAc_IsActor__FPv
/* 8053CA18  2C 03 00 00 */	cmpwi r3, 0
/* 8053CA1C  41 82 00 18 */	beq lbl_8053CA34
/* 8053CA20  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053CA24  7F A4 EB 78 */	mr r4, r29
/* 8053CA28  4B C0 8C B8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053CA2C  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053CA30  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_8053CA34:
/* 8053CA34  38 00 00 00 */	li r0, 0
/* 8053CA38  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053CA3C  48 00 00 30 */	b lbl_8053CA6C
lbl_8053CA40:
/* 8053CA40  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053CA44  2C 00 00 05 */	cmpwi r0, 5
/* 8053CA48  40 80 00 24 */	bge lbl_8053CA6C
/* 8053CA4C  2C 00 00 03 */	cmpwi r0, 3
/* 8053CA50  40 80 00 08 */	bge lbl_8053CA58
/* 8053CA54  48 00 00 18 */	b lbl_8053CA6C
lbl_8053CA58:
/* 8053CA58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053CA5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053CA60  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8053CA64  38 80 0E 40 */	li r4, 0xe40
/* 8053CA68  4B AF 7F 24 */	b onEventBit__11dSv_event_cFUs
lbl_8053CA6C:
/* 8053CA6C  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 8053CA70  2C 00 00 0C */	cmpwi r0, 0xc
/* 8053CA74  41 82 00 08 */	beq lbl_8053CA7C
/* 8053CA78  48 00 00 0C */	b lbl_8053CA84
lbl_8053CA7C:
/* 8053CA7C  38 00 00 00 */	li r0, 0
/* 8053CA80  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8053CA84:
/* 8053CA84  38 60 00 01 */	li r3, 1
lbl_8053CA88:
/* 8053CA88  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CA8C  4B E2 57 9C */	b _restgpr_29
/* 8053CA90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053CA94  7C 08 03 A6 */	mtlr r0
/* 8053CA98  38 21 00 20 */	addi r1, r1, 0x20
/* 8053CA9C  4E 80 00 20 */	blr 
