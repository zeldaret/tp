lbl_8096FE40:
/* 8096FE40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8096FE44  7C 08 02 A6 */	mflr r0
/* 8096FE48  90 01 00 44 */	stw r0, 0x44(r1)
/* 8096FE4C  39 61 00 40 */	addi r11, r1, 0x40
/* 8096FE50  4B 9F 23 78 */	b _savegpr_24
/* 8096FE54  7C 7B 1B 78 */	mr r27, r3
/* 8096FE58  7C 98 23 78 */	mr r24, r4
/* 8096FE5C  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 8096FE60  3B E3 28 60 */	addi r31, r3, m__17daNpc_Bou_Param_c@l
/* 8096FE64  3B C0 00 00 */	li r30, 0
/* 8096FE68  3B A0 FF FF */	li r29, -1
/* 8096FE6C  3B 80 00 00 */	li r28, 0
/* 8096FE70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096FE74  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8096FE78  3B 3A 4F F8 */	addi r25, r26, 0x4ff8
/* 8096FE7C  7F 23 CB 78 */	mr r3, r25
/* 8096FE80  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096FE84  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096FE88  38 A5 00 DA */	addi r5, r5, 0xda
/* 8096FE8C  38 C0 00 03 */	li r6, 3
/* 8096FE90  4B 6D 82 5C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096FE94  28 03 00 00 */	cmplwi r3, 0
/* 8096FE98  41 82 00 08 */	beq lbl_8096FEA0
/* 8096FE9C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8096FEA0:
/* 8096FEA0  7F 23 CB 78 */	mr r3, r25
/* 8096FEA4  7F 04 C3 78 */	mr r4, r24
/* 8096FEA8  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096FEAC  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096FEB0  38 A5 00 EB */	addi r5, r5, 0xeb
/* 8096FEB4  38 C0 00 03 */	li r6, 3
/* 8096FEB8  4B 6D 82 34 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096FEBC  28 03 00 00 */	cmplwi r3, 0
/* 8096FEC0  41 82 00 08 */	beq lbl_8096FEC8
/* 8096FEC4  83 83 00 00 */	lwz r28, 0(r3)
lbl_8096FEC8:
/* 8096FEC8  7F 23 CB 78 */	mr r3, r25
/* 8096FECC  7F 04 C3 78 */	mr r4, r24
/* 8096FED0  4B 6D 7E 7C */	b getIsAddvance__16dEvent_manager_cFi
/* 8096FED4  2C 03 00 00 */	cmpwi r3, 0
/* 8096FED8  41 82 01 BC */	beq lbl_80970094
/* 8096FEDC  2C 1D 00 02 */	cmpwi r29, 2
/* 8096FEE0  41 82 00 98 */	beq lbl_8096FF78
/* 8096FEE4  40 80 00 10 */	bge lbl_8096FEF4
/* 8096FEE8  2C 1D 00 00 */	cmpwi r29, 0
/* 8096FEEC  41 82 00 14 */	beq lbl_8096FF00
/* 8096FEF0  48 00 01 A4 */	b lbl_80970094
lbl_8096FEF4:
/* 8096FEF4  2C 1D 00 04 */	cmpwi r29, 4
/* 8096FEF8  40 80 01 9C */	bge lbl_80970094
/* 8096FEFC  48 00 00 E8 */	b lbl_8096FFE4
lbl_8096FF00:
/* 8096FF00  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8096FF04  2C 00 00 01 */	cmpwi r0, 1
/* 8096FF08  41 82 00 24 */	beq lbl_8096FF2C
/* 8096FF0C  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8096FF10  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8096FF14  4B 7D 59 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FF18  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8096FF1C  38 00 00 01 */	li r0, 1
/* 8096FF20  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8096FF24  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FF28  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8096FF2C:
/* 8096FF2C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8096FF30  2C 00 00 03 */	cmpwi r0, 3
/* 8096FF34  41 82 00 24 */	beq lbl_8096FF58
/* 8096FF38  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8096FF3C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8096FF40  4B 7D 59 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FF44  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8096FF48  38 00 00 03 */	li r0, 3
/* 8096FF4C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8096FF50  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FF54  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8096FF58:
/* 8096FF58  38 7A 4E C8 */	addi r3, r26, 0x4ec8
/* 8096FF5C  7F 64 DB 78 */	mr r4, r27
/* 8096FF60  4B 6D 37 2C */	b setPtT__14dEvt_control_cFPv
/* 8096FF64  7F 63 DB 78 */	mr r3, r27
/* 8096FF68  38 80 00 D4 */	li r4, 0xd4
/* 8096FF6C  38 A0 00 00 */	li r5, 0
/* 8096FF70  4B 7D BC 80 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8096FF74  48 00 01 20 */	b lbl_80970094
lbl_8096FF78:
/* 8096FF78  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8096FF7C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096FF80  41 82 00 24 */	beq lbl_8096FFA4
/* 8096FF84  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 8096FF88  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8096FF8C  4B 7D 59 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FF90  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 8096FF94  38 00 00 0A */	li r0, 0xa
/* 8096FF98  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8096FF9C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FFA0  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8096FFA4:
/* 8096FFA4  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8096FFA8  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096FFAC  41 82 00 24 */	beq lbl_8096FFD0
/* 8096FFB0  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 8096FFB4  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8096FFB8  4B 7D 58 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FFBC  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 8096FFC0  38 00 00 14 */	li r0, 0x14
/* 8096FFC4  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8096FFC8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FFCC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8096FFD0:
/* 8096FFD0  A8 7B 0D C8 */	lha r3, 0xdc8(r27)
/* 8096FFD4  38 03 80 00 */	addi r0, r3, -32768
/* 8096FFD8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8096FFDC  93 9B 0D C4 */	stw r28, 0xdc4(r27)
/* 8096FFE0  48 00 00 B4 */	b lbl_80970094
lbl_8096FFE4:
/* 8096FFE4  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8096FFE8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096FFEC  41 82 00 24 */	beq lbl_80970010
/* 8096FFF0  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 8096FFF4  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8096FFF8  4B 7D 58 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FFFC  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80970000  38 00 00 0A */	li r0, 0xa
/* 80970004  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80970008  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8097000C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80970010:
/* 80970010  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80970014  2C 00 00 01 */	cmpwi r0, 1
/* 80970018  41 82 00 24 */	beq lbl_8097003C
/* 8097001C  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80970020  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80970024  4B 7D 58 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80970028  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 8097002C  38 00 00 01 */	li r0, 1
/* 80970030  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80970034  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80970038  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8097003C:
/* 8097003C  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 80970040  D0 01 00 08 */	stfs f0, 8(r1)
/* 80970044  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80970048  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8097004C  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 80970050  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80970054  7F 63 DB 78 */	mr r3, r27
/* 80970058  38 81 00 08 */	addi r4, r1, 8
/* 8097005C  4B 7D A8 AC */	b setPos__8daNpcT_cF4cXyz
/* 80970060  7F 63 DB 78 */	mr r3, r27
/* 80970064  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80970068  4B 7D A9 B0 */	b setAngle__8daNpcT_cFs
/* 8097006C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80970070  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80970074  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80970078  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8097007C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80970080  80 1B 06 B8 */	lwz r0, 0x6b8(r27)
/* 80970084  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80970088  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8097008C  38 00 00 01 */	li r0, 1
/* 80970090  98 1B 0E 25 */	stb r0, 0xe25(r27)
lbl_80970094:
/* 80970094  2C 1D 00 02 */	cmpwi r29, 2
/* 80970098  41 82 00 FC */	beq lbl_80970194
/* 8097009C  40 80 00 14 */	bge lbl_809700B0
/* 809700A0  2C 1D 00 00 */	cmpwi r29, 0
/* 809700A4  41 82 00 18 */	beq lbl_809700BC
/* 809700A8  40 80 00 80 */	bge lbl_80970128
/* 809700AC  48 00 01 B0 */	b lbl_8097025C
lbl_809700B0:
/* 809700B0  2C 1D 00 04 */	cmpwi r29, 4
/* 809700B4  40 80 01 A8 */	bge lbl_8097025C
/* 809700B8  48 00 01 6C */	b lbl_80970224
lbl_809700BC:
/* 809700BC  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809700C0  2C 00 00 01 */	cmpwi r0, 1
/* 809700C4  41 82 00 28 */	beq lbl_809700EC
/* 809700C8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809700CC  4B 7D 56 30 */	b remove__18daNpcT_ActorMngr_cFv
/* 809700D0  38 00 00 00 */	li r0, 0
/* 809700D4  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809700D8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809700DC  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809700E0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809700E4  38 00 00 01 */	li r0, 1
/* 809700E8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809700EC:
/* 809700EC  38 00 00 00 */	li r0, 0
/* 809700F0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809700F4  A8 9B 0D C8 */	lha r4, 0xdc8(r27)
/* 809700F8  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 809700FC  7C 04 00 00 */	cmpw r4, r0
/* 80970100  40 82 00 0C */	bne lbl_8097010C
/* 80970104  3B C0 00 01 */	li r30, 1
/* 80970108  48 00 01 54 */	b lbl_8097025C
lbl_8097010C:
/* 8097010C  7F 63 DB 78 */	mr r3, r27
/* 80970110  38 A0 FF FF */	li r5, -1
/* 80970114  38 C0 FF FF */	li r6, -1
/* 80970118  38 E0 00 0F */	li r7, 0xf
/* 8097011C  39 00 00 00 */	li r8, 0
/* 80970120  4B 7D B5 28 */	b step__8daNpcT_cFsiiii
/* 80970124  48 00 01 38 */	b lbl_8097025C
lbl_80970128:
/* 80970128  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8097012C  2C 00 00 01 */	cmpwi r0, 1
/* 80970130  41 82 00 28 */	beq lbl_80970158
/* 80970134  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80970138  4B 7D 55 C4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8097013C  38 00 00 00 */	li r0, 0
/* 80970140  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80970144  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80970148  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8097014C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80970150  38 00 00 01 */	li r0, 1
/* 80970154  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80970158:
/* 80970158  38 00 00 00 */	li r0, 0
/* 8097015C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80970160  7F 63 DB 78 */	mr r3, r27
/* 80970164  38 80 00 00 */	li r4, 0
/* 80970168  38 A0 00 00 */	li r5, 0
/* 8097016C  38 C0 00 00 */	li r6, 0
/* 80970170  38 E0 00 00 */	li r7, 0
/* 80970174  4B 7D BB 04 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80970178  2C 03 00 00 */	cmpwi r3, 0
/* 8097017C  41 82 00 E0 */	beq lbl_8097025C
/* 80970180  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80970184  28 00 00 01 */	cmplwi r0, 1
/* 80970188  40 82 00 D4 */	bne lbl_8097025C
/* 8097018C  3B C0 00 01 */	li r30, 1
/* 80970190  48 00 00 CC */	b lbl_8097025C
lbl_80970194:
/* 80970194  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80970198  2C 00 00 01 */	cmpwi r0, 1
/* 8097019C  41 82 00 28 */	beq lbl_809701C4
/* 809701A0  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809701A4  4B 7D 55 58 */	b remove__18daNpcT_ActorMngr_cFv
/* 809701A8  38 00 00 00 */	li r0, 0
/* 809701AC  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809701B0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809701B4  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809701B8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809701BC  38 00 00 01 */	li r0, 1
/* 809701C0  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809701C4:
/* 809701C4  38 00 00 00 */	li r0, 0
/* 809701C8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809701CC  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 809701D0  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 809701D4  38 A0 08 00 */	li r5, 0x800
/* 809701D8  4B 90 04 F8 */	b cLib_chaseS__FPsss
/* 809701DC  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 809701E0  B0 1B 0D 7A */	sth r0, 0xd7a(r27)
/* 809701E4  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 809701E8  B0 1B 0D 80 */	sth r0, 0xd80(r27)
/* 809701EC  38 7B 05 2C */	addi r3, r27, 0x52c
/* 809701F0  38 9F 00 00 */	addi r4, r31, 0
/* 809701F4  C0 24 00 8C */	lfs f1, 0x8c(r4)
/* 809701F8  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 809701FC  4B 90 05 44 */	b cLib_chaseF__FPfff
/* 80970200  80 1B 06 B8 */	lwz r0, 0x6b8(r27)
/* 80970204  60 00 00 04 */	ori r0, r0, 4
/* 80970208  90 1B 06 B8 */	stw r0, 0x6b8(r27)
/* 8097020C  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 80970210  48 00 23 7D */	bl func_8097258C
/* 80970214  2C 03 00 00 */	cmpwi r3, 0
/* 80970218  40 82 00 44 */	bne lbl_8097025C
/* 8097021C  3B C0 00 01 */	li r30, 1
/* 80970220  48 00 00 3C */	b lbl_8097025C
lbl_80970224:
/* 80970224  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80970228  2C 00 00 00 */	cmpwi r0, 0
/* 8097022C  41 82 00 24 */	beq lbl_80970250
/* 80970230  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80970234  4B 7D 54 C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80970238  38 00 00 00 */	li r0, 0
/* 8097023C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80970240  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80970244  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80970248  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8097024C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80970250:
/* 80970250  38 00 00 00 */	li r0, 0
/* 80970254  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80970258  3B C0 00 01 */	li r30, 1
lbl_8097025C:
/* 8097025C  7F C3 F3 78 */	mr r3, r30
/* 80970260  39 61 00 40 */	addi r11, r1, 0x40
/* 80970264  4B 9F 1F B0 */	b _restgpr_24
/* 80970268  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8097026C  7C 08 03 A6 */	mtlr r0
/* 80970270  38 21 00 40 */	addi r1, r1, 0x40
/* 80970274  4E 80 00 20 */	blr 
