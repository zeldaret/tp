lbl_80562EC8:
/* 80562EC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80562ECC  7C 08 02 A6 */	mflr r0
/* 80562ED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80562ED4  39 61 00 20 */	addi r11, r1, 0x20
/* 80562ED8  4B DF F3 05 */	bl _savegpr_29
/* 80562EDC  7C 7E 1B 78 */	mr r30, r3
/* 80562EE0  38 7E 10 EC */	addi r3, r30, 0x10ec
/* 80562EE4  4B BE 28 25 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562EE8  7C 7F 1B 78 */	mr r31, r3
/* 80562EEC  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80562EF0  2C 00 00 02 */	cmpwi r0, 2
/* 80562EF4  41 82 01 0C */	beq lbl_80563000
/* 80562EF8  40 80 02 88 */	bge lbl_80563180
/* 80562EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80562F00  40 80 00 0C */	bge lbl_80562F0C
/* 80562F04  48 00 02 7C */	b lbl_80563180
/* 80562F08  48 00 02 78 */	b lbl_80563180
lbl_80562F0C:
/* 80562F0C  28 1F 00 00 */	cmplwi r31, 0
/* 80562F10  41 82 02 70 */	beq lbl_80563180
/* 80562F14  48 7F E1 31 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80562F18  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80562F1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80562F20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80562F24  38 63 09 58 */	addi r3, r3, 0x958
/* 80562F28  4B AD 19 39 */	bl isSwitch__12dSv_memBit_cCFi
/* 80562F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80562F30  40 82 00 68 */	bne lbl_80562F98
/* 80562F34  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80562F38  2C 00 00 07 */	cmpwi r0, 7
/* 80562F3C  41 82 00 28 */	beq lbl_80562F64
/* 80562F40  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80562F44  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80562F48  4B BE 29 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562F4C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80562F50  38 00 00 07 */	li r0, 7
/* 80562F54  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80562F58  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562F5C  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562F60  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80562F64:
/* 80562F64  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80562F68  2C 00 00 02 */	cmpwi r0, 2
/* 80562F6C  41 82 00 8C */	beq lbl_80562FF8
/* 80562F70  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80562F74  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80562F78  4B BE 29 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562F7C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80562F80  38 00 00 02 */	li r0, 2
/* 80562F84  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80562F88  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562F8C  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562F90  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80562F94  48 00 00 64 */	b lbl_80562FF8
lbl_80562F98:
/* 80562F98  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80562F9C  2C 00 00 07 */	cmpwi r0, 7
/* 80562FA0  41 82 00 28 */	beq lbl_80562FC8
/* 80562FA4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80562FA8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80562FAC  4B BE 28 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562FB0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80562FB4  38 00 00 07 */	li r0, 7
/* 80562FB8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80562FBC  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562FC0  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562FC4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80562FC8:
/* 80562FC8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80562FCC  2C 00 00 00 */	cmpwi r0, 0
/* 80562FD0  41 82 00 28 */	beq lbl_80562FF8
/* 80562FD4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80562FD8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80562FDC  4B BE 28 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562FE0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80562FE4  38 00 00 00 */	li r0, 0
/* 80562FE8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80562FEC  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562FF0  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562FF4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80562FF8:
/* 80562FF8  38 00 00 02 */	li r0, 2
/* 80562FFC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80563000:
/* 80563000  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80563004  2C 00 00 00 */	cmpwi r0, 0
/* 80563008  41 82 00 28 */	beq lbl_80563030
/* 8056300C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80563010  4B BE 26 ED */	bl remove__18daNpcT_ActorMngr_cFv
/* 80563014  38 00 00 00 */	li r0, 0
/* 80563018  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8056301C  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80563020  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80563024  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80563028  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056302C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80563030:
/* 80563030  38 00 00 00 */	li r0, 0
/* 80563034  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80563038  80 1E 11 2C */	lwz r0, 0x112c(r30)
/* 8056303C  2C 00 00 02 */	cmpwi r0, 2
/* 80563040  40 82 00 10 */	bne lbl_80563050
/* 80563044  38 00 00 01 */	li r0, 1
/* 80563048  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 8056304C  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_80563050:
/* 80563050  7F E3 FB 78 */	mr r3, r31
/* 80563054  48 7F DF F1 */	bl getSwitchBit1__16daTag_ShopItem_cFv
/* 80563058  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8056305C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80563060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80563064  38 63 09 58 */	addi r3, r3, 0x958
/* 80563068  4B AD 17 F9 */	bl isSwitch__12dSv_memBit_cCFi
/* 8056306C  2C 03 00 00 */	cmpwi r3, 0
/* 80563070  40 82 00 2C */	bne lbl_8056309C
/* 80563074  7F C3 F3 78 */	mr r3, r30
/* 80563078  4B BE 95 69 */	bl daNpcT_chkDoBtnIsSpeak__FP10fopAc_ac_c
/* 8056307C  2C 03 00 00 */	cmpwi r3, 0
/* 80563080  41 82 00 1C */	beq lbl_8056309C
/* 80563084  38 00 00 39 */	li r0, 0x39
/* 80563088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056308C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80563090  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 80563094  38 00 00 02 */	li r0, 2
/* 80563098  98 03 5E 57 */	stb r0, 0x5e57(r3)
lbl_8056309C:
/* 8056309C  7F C3 F3 78 */	mr r3, r30
/* 805630A0  4B BE 82 99 */	bl srchPlayerActor__8daNpcT_cFv
/* 805630A4  2C 03 00 00 */	cmpwi r3, 0
/* 805630A8  41 82 00 54 */	beq lbl_805630FC
/* 805630AC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805630B0  2C 00 00 01 */	cmpwi r0, 1
/* 805630B4  41 82 00 2C */	beq lbl_805630E0
/* 805630B8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805630BC  4B BE 26 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805630C0  38 00 00 00 */	li r0, 0
/* 805630C4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805630C8  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 805630CC  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 805630D0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805630D4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805630D8  38 00 00 01 */	li r0, 1
/* 805630DC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805630E0:
/* 805630E0  38 00 00 00 */	li r0, 0
/* 805630E4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805630E8  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 805630EC  20 00 00 01 */	subfic r0, r0, 1
/* 805630F0  7C 00 00 34 */	cntlzw r0, r0
/* 805630F4  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 805630F8  48 00 00 54 */	b lbl_8056314C
lbl_805630FC:
/* 805630FC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80563100  2C 00 00 00 */	cmpwi r0, 0
/* 80563104  41 82 00 28 */	beq lbl_8056312C
/* 80563108  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8056310C  4B BE 25 F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80563110  38 00 00 00 */	li r0, 0
/* 80563114  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80563118  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 8056311C  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80563120  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80563124  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80563128  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056312C:
/* 8056312C  38 00 00 00 */	li r0, 0
/* 80563130  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80563134  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80563138  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8056313C  7C 63 00 50 */	subf r3, r3, r0
/* 80563140  30 03 FF FF */	addic r0, r3, -1
/* 80563144  7C 00 19 10 */	subfe r0, r0, r3
/* 80563148  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_8056314C:
/* 8056314C  2C 00 00 00 */	cmpwi r0, 0
/* 80563150  41 82 00 30 */	beq lbl_80563180
/* 80563154  7F C3 F3 78 */	mr r3, r30
/* 80563158  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8056315C  38 A0 00 09 */	li r5, 9
/* 80563160  38 C0 00 07 */	li r6, 7
/* 80563164  38 E0 00 0F */	li r7, 0xf
/* 80563168  39 00 00 00 */	li r8, 0
/* 8056316C  4B BE 84 DD */	bl step__8daNpcT_cFsiiii
/* 80563170  2C 03 00 00 */	cmpwi r3, 0
/* 80563174  41 82 00 0C */	beq lbl_80563180
/* 80563178  38 00 00 01 */	li r0, 1
/* 8056317C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80563180:
/* 80563180  38 60 00 01 */	li r3, 1
/* 80563184  39 61 00 20 */	addi r11, r1, 0x20
/* 80563188  4B DF F0 A1 */	bl _restgpr_29
/* 8056318C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80563190  7C 08 03 A6 */	mtlr r0
/* 80563194  38 21 00 20 */	addi r1, r1, 0x20
/* 80563198  4E 80 00 20 */	blr 
