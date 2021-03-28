lbl_80955080:
/* 80955080  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80955084  7C 08 02 A6 */	mflr r0
/* 80955088  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095508C  39 61 00 30 */	addi r11, r1, 0x30
/* 80955090  4B A0 D1 44 */	b _savegpr_27
/* 80955094  7C 7D 1B 78 */	mr r29, r3
/* 80955098  7C 9B 23 78 */	mr r27, r4
/* 8095509C  3B E0 00 00 */	li r31, 0
/* 809550A0  3B C0 FF FF */	li r30, -1
/* 809550A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809550A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809550AC  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809550B0  7F 83 E3 78 */	mr r3, r28
/* 809550B4  3C A0 80 95 */	lis r5, struct_8095781C+0x0@ha
/* 809550B8  38 A5 78 1C */	addi r5, r5, struct_8095781C+0x0@l
/* 809550BC  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 809550C0  38 C0 00 03 */	li r6, 3
/* 809550C4  4B 6F 30 28 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809550C8  28 03 00 00 */	cmplwi r3, 0
/* 809550CC  41 82 00 08 */	beq lbl_809550D4
/* 809550D0  83 C3 00 00 */	lwz r30, 0(r3)
lbl_809550D4:
/* 809550D4  7F 83 E3 78 */	mr r3, r28
/* 809550D8  7F 64 DB 78 */	mr r4, r27
/* 809550DC  4B 6F 2C 70 */	b getIsAddvance__16dEvent_manager_cFi
/* 809550E0  2C 03 00 00 */	cmpwi r3, 0
/* 809550E4  41 82 00 BC */	beq lbl_809551A0
/* 809550E8  2C 1E 00 01 */	cmpwi r30, 1
/* 809550EC  41 82 00 44 */	beq lbl_80955130
/* 809550F0  40 80 00 B0 */	bge lbl_809551A0
/* 809550F4  2C 1E 00 00 */	cmpwi r30, 0
/* 809550F8  40 80 00 08 */	bge lbl_80955100
/* 809550FC  48 00 00 A4 */	b lbl_809551A0
lbl_80955100:
/* 80955100  7F A3 EB 78 */	mr r3, r29
/* 80955104  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80955108  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095510C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80955110  4B 6C 56 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80955114  B0 7D 0D C8 */	sth r3, 0xdc8(r29)
/* 80955118  A8 1D 0D D8 */	lha r0, 0xdd8(r29)
/* 8095511C  2C 00 00 01 */	cmpwi r0, 1
/* 80955120  40 82 00 80 */	bne lbl_809551A0
/* 80955124  38 00 00 00 */	li r0, 0
/* 80955128  B0 1D 0D D8 */	sth r0, 0xdd8(r29)
/* 8095512C  48 00 00 74 */	b lbl_809551A0
lbl_80955130:
/* 80955130  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80955134  2C 00 00 0C */	cmpwi r0, 0xc
/* 80955138  41 82 00 28 */	beq lbl_80955160
/* 8095513C  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80955140  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80955144  4B 7F 07 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955148  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8095514C  38 00 00 0C */	li r0, 0xc
/* 80955150  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80955154  3C 60 80 95 */	lis r3, lit_4804@ha
/* 80955158  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 8095515C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80955160:
/* 80955160  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80955164  2C 00 00 00 */	cmpwi r0, 0
/* 80955168  41 82 00 28 */	beq lbl_80955190
/* 8095516C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80955170  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80955174  4B 7F 07 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955178  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8095517C  38 00 00 00 */	li r0, 0
/* 80955180  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80955184  3C 60 80 95 */	lis r3, lit_4804@ha
/* 80955188  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 8095518C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80955190:
/* 80955190  7F A3 EB 78 */	mr r3, r29
/* 80955194  38 80 00 2E */	li r4, 0x2e
/* 80955198  38 A0 00 00 */	li r5, 0
/* 8095519C  4B 7F 6A 54 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_809551A0:
/* 809551A0  2C 1E 00 01 */	cmpwi r30, 1
/* 809551A4  41 82 00 84 */	beq lbl_80955228
/* 809551A8  40 80 01 78 */	bge lbl_80955320
/* 809551AC  2C 1E 00 00 */	cmpwi r30, 0
/* 809551B0  40 80 00 08 */	bge lbl_809551B8
/* 809551B4  48 00 01 6C */	b lbl_80955320
lbl_809551B8:
/* 809551B8  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 809551BC  2C 00 00 01 */	cmpwi r0, 1
/* 809551C0  41 82 00 2C */	beq lbl_809551EC
/* 809551C4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809551C8  4B 7F 05 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 809551CC  38 00 00 00 */	li r0, 0
/* 809551D0  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 809551D4  3C 60 80 95 */	lis r3, lit_4100@ha
/* 809551D8  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 809551DC  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 809551E0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 809551E4  38 00 00 01 */	li r0, 1
/* 809551E8  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_809551EC:
/* 809551EC  38 00 00 00 */	li r0, 0
/* 809551F0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 809551F4  A8 9D 0D C8 */	lha r4, 0xdc8(r29)
/* 809551F8  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 809551FC  7C 04 00 00 */	cmpw r4, r0
/* 80955200  40 82 00 0C */	bne lbl_8095520C
/* 80955204  3B E0 00 01 */	li r31, 1
/* 80955208  48 00 01 18 */	b lbl_80955320
lbl_8095520C:
/* 8095520C  7F A3 EB 78 */	mr r3, r29
/* 80955210  38 A0 00 0C */	li r5, 0xc
/* 80955214  38 C0 00 0B */	li r6, 0xb
/* 80955218  38 E0 00 0F */	li r7, 0xf
/* 8095521C  39 00 00 00 */	li r8, 0
/* 80955220  4B 7F 64 28 */	b step__8daNpcT_cFsiiii
/* 80955224  48 00 00 FC */	b lbl_80955320
lbl_80955228:
/* 80955228  7F A3 EB 78 */	mr r3, r29
/* 8095522C  38 80 00 00 */	li r4, 0
/* 80955230  38 A0 00 00 */	li r5, 0
/* 80955234  38 C0 00 00 */	li r6, 0
/* 80955238  38 E0 00 00 */	li r7, 0
/* 8095523C  4B 7F 6A 3C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80955240  2C 03 00 00 */	cmpwi r3, 0
/* 80955244  41 82 00 DC */	beq lbl_80955320
/* 80955248  38 7D 09 74 */	addi r3, r29, 0x974
/* 8095524C  38 81 00 08 */	addi r4, r1, 8
/* 80955250  4B 8F 52 D8 */	b getEventId__10dMsgFlow_cFPi
/* 80955254  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80955258  38 00 00 00 */	li r0, 0
/* 8095525C  98 1D 0F CF */	stb r0, 0xfcf(r29)
/* 80955260  2C 03 00 02 */	cmpwi r3, 2
/* 80955264  41 82 00 98 */	beq lbl_809552FC
/* 80955268  40 80 00 10 */	bge lbl_80955278
/* 8095526C  2C 03 00 01 */	cmpwi r3, 1
/* 80955270  40 80 00 14 */	bge lbl_80955284
/* 80955274  48 00 00 88 */	b lbl_809552FC
lbl_80955278:
/* 80955278  2C 03 00 04 */	cmpwi r3, 4
/* 8095527C  40 80 00 80 */	bge lbl_809552FC
/* 80955280  48 00 00 60 */	b lbl_809552E0
lbl_80955284:
/* 80955284  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 80955288  3C 03 00 01 */	addis r0, r3, 1
/* 8095528C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80955290  40 82 00 28 */	bne lbl_809552B8
/* 80955294  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80955298  80 81 00 08 */	lwz r4, 8(r1)
/* 8095529C  38 A0 00 00 */	li r5, 0
/* 809552A0  38 C0 FF FF */	li r6, -1
/* 809552A4  38 E0 FF FF */	li r7, -1
/* 809552A8  39 00 00 00 */	li r8, 0
/* 809552AC  39 20 00 00 */	li r9, 0
/* 809552B0  4B 6C 69 38 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809552B4  90 7D 0D 90 */	stw r3, 0xd90(r29)
lbl_809552B8:
/* 809552B8  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 809552BC  4B 6C C0 E0 */	b fpcEx_IsExist__FUi
/* 809552C0  2C 03 00 00 */	cmpwi r3, 0
/* 809552C4  41 82 00 5C */	beq lbl_80955320
/* 809552C8  38 00 00 01 */	li r0, 1
/* 809552CC  98 1D 0F CF */	stb r0, 0xfcf(r29)
/* 809552D0  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 809552D4  7F A3 EB 78 */	mr r3, r29
/* 809552D8  4B 7F 4F 4C */	b evtChange__8daNpcT_cFv
/* 809552DC  48 00 00 44 */	b lbl_80955320
lbl_809552E0:
/* 809552E0  38 00 00 01 */	li r0, 1
/* 809552E4  98 1D 0F D0 */	stb r0, 0xfd0(r29)
/* 809552E8  38 00 00 09 */	li r0, 9
/* 809552EC  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 809552F0  7F A3 EB 78 */	mr r3, r29
/* 809552F4  4B 7F 4F 30 */	b evtChange__8daNpcT_cFv
/* 809552F8  48 00 00 28 */	b lbl_80955320
lbl_809552FC:
/* 809552FC  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80955300  28 00 00 01 */	cmplwi r0, 1
/* 80955304  40 82 00 1C */	bne lbl_80955320
/* 80955308  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 8095530C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80955310  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80955314  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80955318  4B 7F 03 C8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8095531C  3B E0 00 01 */	li r31, 1
lbl_80955320:
/* 80955320  7F E3 FB 78 */	mr r3, r31
/* 80955324  39 61 00 30 */	addi r11, r1, 0x30
/* 80955328  4B A0 CE F8 */	b _restgpr_27
/* 8095532C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80955330  7C 08 03 A6 */	mtlr r0
/* 80955334  38 21 00 30 */	addi r1, r1, 0x30
/* 80955338  4E 80 00 20 */	blr 
