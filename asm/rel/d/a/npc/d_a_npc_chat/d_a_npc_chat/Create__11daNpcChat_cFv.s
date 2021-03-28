lbl_80981E90:
/* 80981E90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80981E94  7C 08 02 A6 */	mflr r0
/* 80981E98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80981E9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80981EA0  4B 9E 03 3C */	b _savegpr_29
/* 80981EA4  7C 7D 1B 78 */	mr r29, r3
/* 80981EA8  3C 80 80 98 */	lis r4, l_resMANa@ha
/* 80981EAC  3B E4 69 9C */	addi r31, r4, l_resMANa@l
/* 80981EB0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80981EB4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80981EB8  40 82 00 1C */	bne lbl_80981ED4
/* 80981EBC  28 1D 00 00 */	cmplwi r29, 0
/* 80981EC0  41 82 00 08 */	beq lbl_80981EC8
/* 80981EC4  4B FF E9 89 */	bl __ct__11daNpcChat_cFv
lbl_80981EC8:
/* 80981EC8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80981ECC  60 00 00 08 */	ori r0, r0, 8
/* 80981ED0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80981ED4:
/* 80981ED4  4B 82 A6 A8 */	b dKy_darkworld_check__Fv
/* 80981ED8  98 7D 09 F4 */	stb r3, 0x9f4(r29)
/* 80981EDC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80981EE0  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80981EE4  7F A3 EB 78 */	mr r3, r29
/* 80981EE8  4B FF EF 39 */	bl getObjNum__11daNpcChat_cFv
/* 80981EEC  90 7D 0E 14 */	stw r3, 0xe14(r29)
/* 80981EF0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80981EF4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80981EF8  98 1D 0E 22 */	stb r0, 0xe22(r29)
/* 80981EFC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80981F00  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80981F04  98 1D 0E 21 */	stb r0, 0xe21(r29)
/* 80981F08  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80981F0C  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80981F10  98 1D 0E 20 */	stb r0, 0xe20(r29)
/* 80981F14  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80981F18  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80981F1C  98 1D 0E 23 */	stb r0, 0xe23(r29)
/* 80981F20  7F A3 EB 78 */	mr r3, r29
/* 80981F24  48 00 18 81 */	bl getTalkMotionNo__11daNpcChat_cFv
/* 80981F28  98 7D 0E 4E */	stb r3, 0xe4e(r29)
/* 80981F2C  7F A3 EB 78 */	mr r3, r29
/* 80981F30  48 00 18 91 */	bl getLookPlayerCheck__11daNpcChat_cFv
/* 80981F34  98 7D 0E 50 */	stb r3, 0xe50(r29)
/* 80981F38  88 1D 0E 4E */	lbz r0, 0xe4e(r29)
/* 80981F3C  28 00 00 18 */	cmplwi r0, 0x18
/* 80981F40  41 82 00 24 */	beq lbl_80981F64
/* 80981F44  28 00 00 19 */	cmplwi r0, 0x19
/* 80981F48  41 82 00 1C */	beq lbl_80981F64
/* 80981F4C  28 00 00 1D */	cmplwi r0, 0x1d
/* 80981F50  41 82 00 14 */	beq lbl_80981F64
/* 80981F54  28 00 00 1E */	cmplwi r0, 0x1e
/* 80981F58  41 82 00 0C */	beq lbl_80981F64
/* 80981F5C  28 00 00 1F */	cmplwi r0, 0x1f
/* 80981F60  40 82 00 10 */	bne lbl_80981F70
lbl_80981F64:
/* 80981F64  38 00 00 01 */	li r0, 1
/* 80981F68  98 1D 0E 51 */	stb r0, 0xe51(r29)
/* 80981F6C  48 00 00 40 */	b lbl_80981FAC
lbl_80981F70:
/* 80981F70  28 00 00 1A */	cmplwi r0, 0x1a
/* 80981F74  41 82 00 24 */	beq lbl_80981F98
/* 80981F78  28 00 00 1B */	cmplwi r0, 0x1b
/* 80981F7C  41 82 00 1C */	beq lbl_80981F98
/* 80981F80  28 00 00 20 */	cmplwi r0, 0x20
/* 80981F84  41 82 00 14 */	beq lbl_80981F98
/* 80981F88  28 00 00 21 */	cmplwi r0, 0x21
/* 80981F8C  41 82 00 0C */	beq lbl_80981F98
/* 80981F90  28 00 00 22 */	cmplwi r0, 0x22
/* 80981F94  40 82 00 10 */	bne lbl_80981FA4
lbl_80981F98:
/* 80981F98  38 00 00 02 */	li r0, 2
/* 80981F9C  98 1D 0E 51 */	stb r0, 0xe51(r29)
/* 80981FA0  48 00 00 0C */	b lbl_80981FAC
lbl_80981FA4:
/* 80981FA4  38 00 00 00 */	li r0, 0
/* 80981FA8  98 1D 0E 51 */	stb r0, 0xe51(r29)
lbl_80981FAC:
/* 80981FAC  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80981FB0  90 1D 0E 18 */	stw r0, 0xe18(r29)
/* 80981FB4  7F A3 EB 78 */	mr r3, r29
/* 80981FB8  88 9D 0E 10 */	lbz r4, 0xe10(r29)
/* 80981FBC  80 BD 0E 14 */	lwz r5, 0xe14(r29)
/* 80981FC0  4B FF F1 81 */	bl loadResrc__11daNpcChat_cFii
/* 80981FC4  7C 7E 1B 78 */	mr r30, r3
/* 80981FC8  2C 1E 00 04 */	cmpwi r30, 4
/* 80981FCC  40 82 02 B8 */	bne lbl_80982284
/* 80981FD0  7F A3 EB 78 */	mr r3, r29
/* 80981FD4  3C 80 80 98 */	lis r4, createHeapCallBack__11daNpcChat_cFP10fopAc_ac_c@ha
/* 80981FD8  38 84 2A 98 */	addi r4, r4, createHeapCallBack__11daNpcChat_cFP10fopAc_ac_c@l
/* 80981FDC  3C A0 80 00 */	lis r5, 0x8000 /* 0x800022E0@ha */
/* 80981FE0  38 A5 22 E0 */	addi r5, r5, 0x22E0 /* 0x800022E0@l */
/* 80981FE4  4B 69 84 CC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80981FE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80981FEC  40 82 00 0C */	bne lbl_80981FF8
/* 80981FF0  38 60 00 05 */	li r3, 5
/* 80981FF4  48 00 02 94 */	b lbl_80982288
lbl_80981FF8:
/* 80981FF8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80981FFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80982000  38 03 00 24 */	addi r0, r3, 0x24
/* 80982004  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80982008  7F A3 EB 78 */	mr r3, r29
/* 8098200C  C0 3F 05 A0 */	lfs f1, 0x5a0(r31)
/* 80982010  C0 5F 05 A4 */	lfs f2, 0x5a4(r31)
/* 80982014  C0 7F 05 A8 */	lfs f3, 0x5a8(r31)
/* 80982018  C0 9F 05 AC */	lfs f4, 0x5ac(r31)
/* 8098201C  C0 BF 05 B0 */	lfs f5, 0x5b0(r31)
/* 80982020  C0 DF 05 B4 */	lfs f6, 0x5b4(r31)
/* 80982024  4B 69 85 24 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80982028  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 8098202C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80982030  38 BD 05 38 */	addi r5, r29, 0x538
/* 80982034  38 C0 00 03 */	li r6, 3
/* 80982038  38 E0 00 01 */	li r7, 1
/* 8098203C  4B 93 EC A8 */	b init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80982040  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80982044  88 1D 0E 10 */	lbz r0, 0xe10(r29)
/* 80982048  7C 04 07 74 */	extsb r4, r0
/* 8098204C  38 A0 00 00 */	li r5, 0
/* 80982050  88 DD 09 F4 */	lbz r6, 0x9f4(r29)
/* 80982054  30 06 FF FF */	addic r0, r6, -1
/* 80982058  7C 00 31 10 */	subfe r0, r0, r6
/* 8098205C  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80982060  4B 93 EC E8 */	b setMdlType__17Z2CreatureCitizenFScbb
/* 80982064  88 9D 0E 10 */	lbz r4, 0xe10(r29)
/* 80982068  2C 04 00 10 */	cmpwi r4, 0x10
/* 8098206C  40 80 00 1C */	bge lbl_80982088
/* 80982070  3C 60 80 99 */	lis r3, a_prmTbl_M@ha
/* 80982074  38 63 98 D4 */	addi r3, r3, a_prmTbl_M@l
/* 80982078  54 80 30 32 */	slwi r0, r4, 6
/* 8098207C  7C 63 02 14 */	add r3, r3, r0
/* 80982080  C0 43 00 3C */	lfs f2, 0x3c(r3)
/* 80982084  48 00 00 18 */	b lbl_8098209C
lbl_80982088:
/* 80982088  3C 60 80 99 */	lis r3, a_prmTbl_W@ha
/* 8098208C  38 63 B3 CC */	addi r3, r3, a_prmTbl_W@l
/* 80982090  54 80 30 32 */	slwi r0, r4, 6
/* 80982094  7C 63 02 14 */	add r3, r3, r0
/* 80982098  C0 43 FC 3C */	lfs f2, -0x3c4(r3)
lbl_8098209C:
/* 8098209C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809820A0  40 80 00 1C */	bge lbl_809820BC
/* 809820A4  3C 60 80 99 */	lis r3, a_prmTbl_M@ha
/* 809820A8  38 63 98 D4 */	addi r3, r3, a_prmTbl_M@l
/* 809820AC  54 80 30 32 */	slwi r0, r4, 6
/* 809820B0  7C 63 02 14 */	add r3, r3, r0
/* 809820B4  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 809820B8  48 00 00 18 */	b lbl_809820D0
lbl_809820BC:
/* 809820BC  3C 60 80 99 */	lis r3, a_prmTbl_W@ha
/* 809820C0  38 63 B3 CC */	addi r3, r3, a_prmTbl_W@l
/* 809820C4  54 80 30 32 */	slwi r0, r4, 6
/* 809820C8  7C 63 02 14 */	add r3, r3, r0
/* 809820CC  C0 23 FC 38 */	lfs f1, -0x3c8(r3)
lbl_809820D0:
/* 809820D0  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 809820D4  4B 6F 3E 84 */	b SetWall__12dBgS_AcchCirFff
/* 809820D8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809820DC  90 01 00 08 */	stw r0, 8(r1)
/* 809820E0  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 809820E4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809820E8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809820EC  7F A6 EB 78 */	mr r6, r29
/* 809820F0  38 E0 00 01 */	li r7, 1
/* 809820F4  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 809820F8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809820FC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80982100  4B 6F 41 48 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80982104  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80982108  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8098210C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80982110  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80982114  4B 6F 49 98 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80982118  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 8098211C  38 9F 03 A0 */	addi r4, r31, 0x3a0
/* 80982120  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80982124  FC 00 00 1E */	fctiwz f0, f0
/* 80982128  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8098212C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80982130  38 A0 00 00 */	li r5, 0
/* 80982134  7F A6 EB 78 */	mr r6, r29
/* 80982138  4B 70 17 28 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8098213C  38 7D 0C 9C */	addi r3, r29, 0xc9c
/* 80982140  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80982144  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80982148  4B 70 27 6C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8098214C  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80982150  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80982154  38 00 00 00 */	li r0, 0
/* 80982158  90 1D 0C C4 */	stw r0, 0xcc4(r29)
/* 8098215C  90 1D 0C B4 */	stw r0, 0xcb4(r29)
/* 80982160  88 1D 0E 10 */	lbz r0, 0xe10(r29)
/* 80982164  2C 00 00 10 */	cmpwi r0, 0x10
/* 80982168  40 80 00 1C */	bge lbl_80982184
/* 8098216C  3C 60 80 99 */	lis r3, a_prmTbl_M@ha
/* 80982170  38 63 98 D4 */	addi r3, r3, a_prmTbl_M@l
/* 80982174  54 00 30 32 */	slwi r0, r0, 6
/* 80982178  7C 63 02 14 */	add r3, r3, r0
/* 8098217C  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 80982180  48 00 00 18 */	b lbl_80982198
lbl_80982184:
/* 80982184  3C 60 80 99 */	lis r3, a_prmTbl_W@ha
/* 80982188  38 63 B3 CC */	addi r3, r3, a_prmTbl_W@l
/* 8098218C  54 00 30 32 */	slwi r0, r0, 6
/* 80982190  7C 63 02 14 */	add r3, r3, r0
/* 80982194  C0 23 FC 34 */	lfs f1, -0x3cc(r3)
lbl_80982198:
/* 80982198  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 8098219C  4B 8E D0 64 */	b SetR__8cM3dGCylFf
/* 809821A0  88 1D 0E 10 */	lbz r0, 0xe10(r29)
/* 809821A4  2C 00 00 10 */	cmpwi r0, 0x10
/* 809821A8  40 80 00 1C */	bge lbl_809821C4
/* 809821AC  3C 60 80 99 */	lis r3, a_prmTbl_M@ha
/* 809821B0  38 63 98 D4 */	addi r3, r3, a_prmTbl_M@l
/* 809821B4  54 00 30 32 */	slwi r0, r0, 6
/* 809821B8  7C 63 02 14 */	add r3, r3, r0
/* 809821BC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 809821C0  48 00 00 18 */	b lbl_809821D8
lbl_809821C4:
/* 809821C4  3C 60 80 99 */	lis r3, a_prmTbl_W@ha
/* 809821C8  38 63 B3 CC */	addi r3, r3, a_prmTbl_W@l
/* 809821CC  54 00 30 32 */	slwi r0, r0, 6
/* 809821D0  7C 63 02 14 */	add r3, r3, r0
/* 809821D4  C0 23 FC 30 */	lfs f1, -0x3d0(r3)
lbl_809821D8:
/* 809821D8  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 809821DC  4B 8E D0 1C */	b SetH__8cM3dGCylFf
/* 809821E0  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 809821E4  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 809821E8  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 809821EC  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 809821F0  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 809821F4  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 809821F8  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 809821FC  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80982200  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80982204  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80982208  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 8098220C  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80982210  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80982214  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80982218  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 8098221C  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80982220  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80982224  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80982228  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 8098222C  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80982230  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80982234  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80982238  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 8098223C  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80982240  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80982244  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80982248  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 8098224C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80982250  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80982254  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80982258  7F A3 EB 78 */	mr r3, r29
/* 8098225C  4B 7D 0B 28 */	b setEnvTevColor__8daNpcF_cFv
/* 80982260  7F A3 EB 78 */	mr r3, r29
/* 80982264  4B 7D 0B 7C */	b setRoomNo__8daNpcF_cFv
/* 80982268  38 00 00 D9 */	li r0, 0xd9
/* 8098226C  98 1D 05 47 */	stb r0, 0x547(r29)
/* 80982270  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80982274  7F A3 EB 78 */	mr r3, r29
/* 80982278  48 00 15 75 */	bl reset__11daNpcChat_cFv
/* 8098227C  7F A3 EB 78 */	mr r3, r29
/* 80982280  48 00 01 69 */	bl Execute__11daNpcChat_cFv
lbl_80982284:
/* 80982284  7F C3 F3 78 */	mr r3, r30
lbl_80982288:
/* 80982288  39 61 00 30 */	addi r11, r1, 0x30
/* 8098228C  4B 9D FF 9C */	b _restgpr_29
/* 80982290  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80982294  7C 08 03 A6 */	mtlr r0
/* 80982298  38 21 00 30 */	addi r1, r1, 0x30
/* 8098229C  4E 80 00 20 */	blr 
