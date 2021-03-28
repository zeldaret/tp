lbl_80A1705C:
/* 80A1705C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A17060  7C 08 02 A6 */	mflr r0
/* 80A17064  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A17068  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1706C  4B 94 B1 5C */	b _savegpr_24
/* 80A17070  7C 78 1B 78 */	mr r24, r3
/* 80A17074  7C 99 23 78 */	mr r25, r4
/* 80A17078  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha
/* 80A1707C  3B C3 A3 30 */	addi r30, r3, m__19daNpc_Jagar_Param_c@l
/* 80A17080  3B 80 00 00 */	li r28, 0
/* 80A17084  3B 60 FF FF */	li r27, -1
/* 80A17088  3B 40 00 00 */	li r26, 0
/* 80A1708C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A17090  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A17094  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80A17098  7F A3 EB 78 */	mr r3, r29
/* 80A1709C  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A170A0  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A170A4  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80A170A8  38 C0 00 03 */	li r6, 3
/* 80A170AC  4B 63 10 40 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A170B0  28 03 00 00 */	cmplwi r3, 0
/* 80A170B4  41 82 00 08 */	beq lbl_80A170BC
/* 80A170B8  83 63 00 00 */	lwz r27, 0(r3)
lbl_80A170BC:
/* 80A170BC  7F A3 EB 78 */	mr r3, r29
/* 80A170C0  7F 24 CB 78 */	mr r4, r25
/* 80A170C4  3C A0 80 A2 */	lis r5, struct_80A1A49C+0x0@ha
/* 80A170C8  38 A5 A4 9C */	addi r5, r5, struct_80A1A49C+0x0@l
/* 80A170CC  38 A5 00 92 */	addi r5, r5, 0x92
/* 80A170D0  38 C0 00 03 */	li r6, 3
/* 80A170D4  4B 63 10 18 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A170D8  28 03 00 00 */	cmplwi r3, 0
/* 80A170DC  41 82 00 08 */	beq lbl_80A170E4
/* 80A170E0  83 43 00 00 */	lwz r26, 0(r3)
lbl_80A170E4:
/* 80A170E4  80 7E 01 34 */	lwz r3, 0x134(r30)
/* 80A170E8  80 1E 01 38 */	lwz r0, 0x138(r30)
/* 80A170EC  90 61 00 08 */	stw r3, 8(r1)
/* 80A170F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A170F4  93 01 00 08 */	stw r24, 8(r1)
/* 80A170F8  38 78 0F 94 */	addi r3, r24, 0xf94
/* 80A170FC  4B 72 E6 0C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A17100  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A17104  80 01 00 08 */	lwz r0, 8(r1)
/* 80A17108  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A1710C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A17110  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80A17114  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80A17118  38 00 00 00 */	li r0, 0
/* 80A1711C  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80A17120  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80A17124  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80A17128  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80A1712C  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80A17130  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80A17134  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80A17138  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80A1713C  7F A3 EB 78 */	mr r3, r29
/* 80A17140  7F 24 CB 78 */	mr r4, r25
/* 80A17144  4B 63 0C 08 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A17148  2C 03 00 00 */	cmpwi r3, 0
/* 80A1714C  41 82 00 A0 */	beq lbl_80A171EC
/* 80A17150  2C 1B 00 01 */	cmpwi r27, 1
/* 80A17154  41 82 00 84 */	beq lbl_80A171D8
/* 80A17158  40 80 00 94 */	bge lbl_80A171EC
/* 80A1715C  2C 1B 00 00 */	cmpwi r27, 0
/* 80A17160  40 80 00 0C */	bge lbl_80A1716C
/* 80A17164  48 00 00 88 */	b lbl_80A171EC
/* 80A17168  48 00 00 84 */	b lbl_80A171EC
lbl_80A1716C:
/* 80A1716C  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80A17170  2C 00 00 08 */	cmpwi r0, 8
/* 80A17174  41 82 00 24 */	beq lbl_80A17198
/* 80A17178  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 80A1717C  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80A17180  4B 72 E7 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17184  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 80A17188  38 00 00 08 */	li r0, 8
/* 80A1718C  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80A17190  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80A17194  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80A17198:
/* 80A17198  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80A1719C  2C 00 00 05 */	cmpwi r0, 5
/* 80A171A0  41 82 00 24 */	beq lbl_80A171C4
/* 80A171A4  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 80A171A8  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80A171AC  4B 72 E6 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A171B0  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 80A171B4  38 00 00 05 */	li r0, 5
/* 80A171B8  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80A171BC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80A171C0  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80A171C4:
/* 80A171C4  7F 03 C3 78 */	mr r3, r24
/* 80A171C8  38 80 00 D7 */	li r4, 0xd7
/* 80A171CC  38 A1 00 08 */	addi r5, r1, 8
/* 80A171D0  4B 73 4A 20 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A171D4  48 00 00 18 */	b lbl_80A171EC
lbl_80A171D8:
/* 80A171D8  38 78 0F 8C */	addi r3, r24, 0xf8c
/* 80A171DC  4B 72 E5 2C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A171E0  7C 64 1B 78 */	mr r4, r3
/* 80A171E4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80A171E8  4B 62 C4 74 */	b setPt2__14dEvt_control_cFPv
lbl_80A171EC:
/* 80A171EC  80 7E 01 3C */	lwz r3, 0x13c(r30)
/* 80A171F0  80 1E 01 40 */	lwz r0, 0x140(r30)
/* 80A171F4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A171F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A171FC  80 1E 01 44 */	lwz r0, 0x144(r30)
/* 80A17200  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A17204  2C 1B 00 04 */	cmpwi r27, 4
/* 80A17208  41 82 01 A4 */	beq lbl_80A173AC
/* 80A1720C  40 80 01 B0 */	bge lbl_80A173BC
/* 80A17210  2C 1B 00 00 */	cmpwi r27, 0
/* 80A17214  40 80 00 08 */	bge lbl_80A1721C
/* 80A17218  48 00 01 A4 */	b lbl_80A173BC
lbl_80A1721C:
/* 80A1721C  41 82 00 0C */	beq lbl_80A17228
/* 80A17220  2C 1B 00 02 */	cmpwi r27, 2
/* 80A17224  40 82 00 A0 */	bne lbl_80A172C4
lbl_80A17228:
/* 80A17228  38 78 0F 94 */	addi r3, r24, 0xf94
/* 80A1722C  4B 72 E4 DC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A17230  7C 79 1B 78 */	mr r25, r3
/* 80A17234  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80A17238  4B 72 E4 D0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A1723C  7C 63 C8 50 */	subf r3, r3, r25
/* 80A17240  30 03 FF FF */	addic r0, r3, -1
/* 80A17244  7C 00 19 10 */	subfe r0, r0, r3
/* 80A17248  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A1724C  40 82 00 10 */	bne lbl_80A1725C
/* 80A17250  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80A17254  2C 00 00 02 */	cmpwi r0, 2
/* 80A17258  41 82 00 30 */	beq lbl_80A17288
lbl_80A1725C:
/* 80A1725C  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80A17260  4B 72 E4 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A17264  38 00 00 00 */	li r0, 0
/* 80A17268  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80A1726C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A17270  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80A17274  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80A17278  38 00 00 02 */	li r0, 2
/* 80A1727C  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 80A17280  38 00 00 01 */	li r0, 1
/* 80A17284  48 00 00 08 */	b lbl_80A1728C
lbl_80A17288:
/* 80A17288  38 00 00 00 */	li r0, 0
lbl_80A1728C:
/* 80A1728C  2C 00 00 00 */	cmpwi r0, 0
/* 80A17290  41 82 00 28 */	beq lbl_80A172B8
/* 80A17294  7F 23 CB 78 */	mr r3, r25
/* 80A17298  4B 60 1A 48 */	b fopAc_IsActor__FPv
/* 80A1729C  2C 03 00 00 */	cmpwi r3, 0
/* 80A172A0  41 82 00 18 */	beq lbl_80A172B8
/* 80A172A4  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80A172A8  7F 24 CB 78 */	mr r4, r25
/* 80A172AC  4B 72 E4 34 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A172B0  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80A172B4  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
lbl_80A172B8:
/* 80A172B8  38 00 00 00 */	li r0, 0
/* 80A172BC  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80A172C0  48 00 00 A4 */	b lbl_80A17364
lbl_80A172C4:
/* 80A172C4  2C 1B 00 01 */	cmpwi r27, 1
/* 80A172C8  40 82 00 9C */	bne lbl_80A17364
/* 80A172CC  38 78 0F 8C */	addi r3, r24, 0xf8c
/* 80A172D0  4B 72 E4 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A172D4  7C 79 1B 78 */	mr r25, r3
/* 80A172D8  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80A172DC  4B 72 E4 2C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A172E0  7C 63 C8 50 */	subf r3, r3, r25
/* 80A172E4  30 03 FF FF */	addic r0, r3, -1
/* 80A172E8  7C 00 19 10 */	subfe r0, r0, r3
/* 80A172EC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A172F0  40 82 00 10 */	bne lbl_80A17300
/* 80A172F4  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80A172F8  2C 00 00 02 */	cmpwi r0, 2
/* 80A172FC  41 82 00 30 */	beq lbl_80A1732C
lbl_80A17300:
/* 80A17300  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80A17304  4B 72 E3 F8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A17308  38 00 00 00 */	li r0, 0
/* 80A1730C  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80A17310  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A17314  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80A17318  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80A1731C  38 00 00 02 */	li r0, 2
/* 80A17320  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 80A17324  38 00 00 01 */	li r0, 1
/* 80A17328  48 00 00 08 */	b lbl_80A17330
lbl_80A1732C:
/* 80A1732C  38 00 00 00 */	li r0, 0
lbl_80A17330:
/* 80A17330  2C 00 00 00 */	cmpwi r0, 0
/* 80A17334  41 82 00 28 */	beq lbl_80A1735C
/* 80A17338  7F 23 CB 78 */	mr r3, r25
/* 80A1733C  4B 60 19 A4 */	b fopAc_IsActor__FPv
/* 80A17340  2C 03 00 00 */	cmpwi r3, 0
/* 80A17344  41 82 00 18 */	beq lbl_80A1735C
/* 80A17348  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80A1734C  7F 24 CB 78 */	mr r4, r25
/* 80A17350  4B 72 E3 90 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A17354  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A17358  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
lbl_80A1735C:
/* 80A1735C  38 00 00 00 */	li r0, 0
/* 80A17360  98 18 0C FF */	stb r0, 0xcff(r24)
lbl_80A17364:
/* 80A17364  93 41 00 10 */	stw r26, 0x10(r1)
/* 80A17368  7F 03 C3 78 */	mr r3, r24
/* 80A1736C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A17370  38 A0 00 00 */	li r5, 0
/* 80A17374  38 C1 00 08 */	addi r6, r1, 8
/* 80A17378  38 E0 00 00 */	li r7, 0
/* 80A1737C  4B 73 48 FC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A17380  2C 03 00 00 */	cmpwi r3, 0
/* 80A17384  41 82 00 38 */	beq lbl_80A173BC
/* 80A17388  2C 1A 00 00 */	cmpwi r26, 0
/* 80A1738C  40 82 00 18 */	bne lbl_80A173A4
/* 80A17390  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80A17394  28 00 00 01 */	cmplwi r0, 1
/* 80A17398  40 82 00 24 */	bne lbl_80A173BC
/* 80A1739C  3B 80 00 01 */	li r28, 1
/* 80A173A0  48 00 00 1C */	b lbl_80A173BC
lbl_80A173A4:
/* 80A173A4  3B 80 00 01 */	li r28, 1
/* 80A173A8  48 00 00 14 */	b lbl_80A173BC
lbl_80A173AC:
/* 80A173AC  38 00 00 07 */	li r0, 7
/* 80A173B0  B0 18 0E 30 */	sth r0, 0xe30(r24)
/* 80A173B4  7F 03 C3 78 */	mr r3, r24
/* 80A173B8  4B 73 2E 6C */	b evtChange__8daNpcT_cFv
lbl_80A173BC:
/* 80A173BC  7F 83 E3 78 */	mr r3, r28
/* 80A173C0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A173C4  4B 94 AE 50 */	b _restgpr_24
/* 80A173C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A173CC  7C 08 03 A6 */	mtlr r0
/* 80A173D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A173D4  4E 80 00 20 */	blr 
