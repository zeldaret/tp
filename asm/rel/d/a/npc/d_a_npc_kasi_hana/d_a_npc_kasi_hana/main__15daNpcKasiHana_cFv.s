lbl_80A1CA60:
/* 80A1CA60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A1CA64  7C 08 02 A6 */	mflr r0
/* 80A1CA68  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A1CA6C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80A1CA70  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80A1CA74  7C 7E 1B 78 */	mr r30, r3
/* 80A1CA78  3C 60 80 A2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A213D4@ha */
/* 80A1CA7C  3B E3 13 D4 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80A213D4@l */
/* 80A1CA80  38 00 00 00 */	li r0, 0
/* 80A1CA84  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1CA88  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CA8C  4B FF F1 55 */	bl schMemberActor__15daNpcKasi_Mng_cFv
/* 80A1CA90  88 1E 14 04 */	lbz r0, 0x1404(r30)
/* 80A1CA94  2C 00 00 01 */	cmpwi r0, 1
/* 80A1CA98  40 82 00 0C */	bne lbl_80A1CAA4
/* 80A1CA9C  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CAA0  4B FF F1 E9 */	bl schDanchoActor__15daNpcKasi_Mng_cFv
lbl_80A1CAA4:
/* 80A1CAA4  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CAA8  4B FF EC CD */	bl chkTalk__15daNpcKasi_Mng_cFv
/* 80A1CAAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CAB0  41 82 01 F4 */	beq lbl_80A1CCA4
/* 80A1CAB4  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CAB8  4B FF EC 41 */	bl offTalk__15daNpcKasi_Mng_cFv
/* 80A1CABC  88 7E 14 04 */	lbz r3, 0x1404(r30)
/* 80A1CAC0  7C 60 07 75 */	extsb. r0, r3
/* 80A1CAC4  40 82 01 1C */	bne lbl_80A1CBE0
/* 80A1CAC8  80 7F 01 8C */	lwz r3, 0x18c(r31)
/* 80A1CACC  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80A1CAD0  90 61 00 44 */	stw r3, 0x44(r1)
/* 80A1CAD4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A1CAD8  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 80A1CADC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A1CAE0  38 61 00 44 */	addi r3, r1, 0x44
/* 80A1CAE4  38 9E 14 08 */	addi r4, r30, 0x1408
/* 80A1CAE8  4B 94 55 61 */	bl __ptmf_cmpr
/* 80A1CAEC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CAF0  40 82 01 B4 */	bne lbl_80A1CCA4
/* 80A1CAF4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A1CAF8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A1CAFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1CB00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1CB04  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80A1CB08  7C 05 07 74 */	extsb r5, r0
/* 80A1CB0C  4B 61 88 55 */	bl isSwitch__10dSv_info_cCFii
/* 80A1CB10  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CB14  41 82 00 68 */	beq lbl_80A1CB7C
/* 80A1CB18  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CB1C  4B FF F2 51 */	bl chgWeightHeavy__15daNpcKasi_Mng_cFv
/* 80A1CB20  38 00 00 03 */	li r0, 3
/* 80A1CB24  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80A1CB28  7F C3 F3 78 */	mr r3, r30
/* 80A1CB2C  3C 80 80 A2 */	lis r4, d_a_npc_kasi_hana__stringBase0@ha /* 0x80A21358@ha */
/* 80A1CB30  38 84 13 58 */	addi r4, r4, d_a_npc_kasi_hana__stringBase0@l /* 0x80A21358@l */
/* 80A1CB34  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A1CB38  54 00 10 3A */	slwi r0, r0, 2
/* 80A1CB3C  38 BF 00 EC */	addi r5, r31, 0xec
/* 80A1CB40  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A1CB44  38 C0 00 02 */	li r6, 2
/* 80A1CB48  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80A1CB4C  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80A1CB50  4B 73 6E 05 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80A1CB54  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 80A1CB58  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 80A1CB5C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A1CB60  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A1CB64  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80A1CB68  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A1CB6C  7F C3 F3 78 */	mr r3, r30
/* 80A1CB70  38 81 00 38 */	addi r4, r1, 0x38
/* 80A1CB74  48 00 0C 09 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1CB78  48 00 01 2C */	b lbl_80A1CCA4
lbl_80A1CB7C:
/* 80A1CB7C  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CB80  4B FF EF 2D */	bl allDemoMove__15daNpcKasi_Mng_cFv
/* 80A1CB84  38 00 00 02 */	li r0, 2
/* 80A1CB88  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80A1CB8C  7F C3 F3 78 */	mr r3, r30
/* 80A1CB90  3C 80 80 A2 */	lis r4, d_a_npc_kasi_hana__stringBase0@ha /* 0x80A21358@ha */
/* 80A1CB94  38 84 13 58 */	addi r4, r4, d_a_npc_kasi_hana__stringBase0@l /* 0x80A21358@l */
/* 80A1CB98  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A1CB9C  54 00 10 3A */	slwi r0, r0, 2
/* 80A1CBA0  38 BF 00 EC */	addi r5, r31, 0xec
/* 80A1CBA4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A1CBA8  38 C0 00 02 */	li r6, 2
/* 80A1CBAC  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80A1CBB0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80A1CBB4  4B 73 6D A1 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80A1CBB8  80 7F 01 A4 */	lwz r3, 0x1a4(r31)
/* 80A1CBBC  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 80A1CBC0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A1CBC4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A1CBC8  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 80A1CBCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1CBD0  7F C3 F3 78 */	mr r3, r30
/* 80A1CBD4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A1CBD8  48 00 0B A5 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1CBDC  48 00 00 C8 */	b lbl_80A1CCA4
lbl_80A1CBE0:
/* 80A1CBE0  7C 60 07 74 */	extsb r0, r3
/* 80A1CBE4  2C 00 00 01 */	cmpwi r0, 1
/* 80A1CBE8  40 82 00 BC */	bne lbl_80A1CCA4
/* 80A1CBEC  80 7F 01 B0 */	lwz r3, 0x1b0(r31)
/* 80A1CBF0  80 1F 01 B4 */	lwz r0, 0x1b4(r31)
/* 80A1CBF4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A1CBF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1CBFC  80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 80A1CC00  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A1CC04  38 61 00 20 */	addi r3, r1, 0x20
/* 80A1CC08  38 9E 14 08 */	addi r4, r30, 0x1408
/* 80A1CC0C  4B 94 54 3D */	bl __ptmf_cmpr
/* 80A1CC10  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CC14  40 82 00 90 */	bne lbl_80A1CCA4
/* 80A1CC18  38 60 01 25 */	li r3, 0x125
/* 80A1CC1C  4B 73 8A 19 */	bl daNpcF_chkEvtBit__FUl
/* 80A1CC20  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CC24  41 82 00 10 */	beq lbl_80A1CC34
/* 80A1CC28  38 00 00 05 */	li r0, 5
/* 80A1CC2C  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80A1CC30  48 00 00 0C */	b lbl_80A1CC3C
lbl_80A1CC34:
/* 80A1CC34  38 00 00 04 */	li r0, 4
/* 80A1CC38  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
lbl_80A1CC3C:
/* 80A1CC3C  38 60 00 06 */	li r3, 6
/* 80A1CC40  4B 61 29 81 */	bl dComIfG_TimerStop__Fi
/* 80A1CC44  4B 84 46 A9 */	bl dTimer_hide__Fv
/* 80A1CC48  7F C3 F3 78 */	mr r3, r30
/* 80A1CC4C  3C 80 80 A2 */	lis r4, d_a_npc_kasi_hana__stringBase0@ha /* 0x80A21358@ha */
/* 80A1CC50  38 84 13 58 */	addi r4, r4, d_a_npc_kasi_hana__stringBase0@l /* 0x80A21358@l */
/* 80A1CC54  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A1CC58  54 00 10 3A */	slwi r0, r0, 2
/* 80A1CC5C  38 BF 00 EC */	addi r5, r31, 0xec
/* 80A1CC60  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A1CC64  38 C0 00 02 */	li r6, 2
/* 80A1CC68  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80A1CC6C  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80A1CC70  4B 73 6C E5 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80A1CC74  80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 80A1CC78  80 1F 01 C0 */	lwz r0, 0x1c0(r31)
/* 80A1CC7C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A1CC80  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1CC84  80 1F 01 C4 */	lwz r0, 0x1c4(r31)
/* 80A1CC88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1CC8C  7F C3 F3 78 */	mr r3, r30
/* 80A1CC90  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1CC94  48 00 0A E9 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1CC98  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1CC9C  60 00 00 01 */	ori r0, r0, 1
/* 80A1CCA0  90 1E 14 68 */	stw r0, 0x1468(r30)
lbl_80A1CCA4:
/* 80A1CCA4  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CCA8  4B FF EB 69 */	bl chkFear__15daNpcKasi_Mng_cFv
/* 80A1CCAC  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CCB0  41 82 00 28 */	beq lbl_80A1CCD8
/* 80A1CCB4  80 7F 01 C8 */	lwz r3, 0x1c8(r31)
/* 80A1CCB8  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 80A1CCBC  90 61 00 08 */	stw r3, 8(r1)
/* 80A1CCC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1CCC4  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 80A1CCC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1CCCC  7F C3 F3 78 */	mr r3, r30
/* 80A1CCD0  38 81 00 08 */	addi r4, r1, 8
/* 80A1CCD4  48 00 0A A9 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
lbl_80A1CCD8:
/* 80A1CCD8  38 7E 14 08 */	addi r3, r30, 0x1408
/* 80A1CCDC  4B 94 53 3D */	bl __ptmf_test
/* 80A1CCE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A1CCE4  41 82 00 18 */	beq lbl_80A1CCFC
/* 80A1CCE8  7F C3 F3 78 */	mr r3, r30
/* 80A1CCEC  38 80 00 00 */	li r4, 0
/* 80A1CCF0  39 9E 14 08 */	addi r12, r30, 0x1408
/* 80A1CCF4  4B 94 53 91 */	bl __ptmf_scall
/* 80A1CCF8  60 00 00 00 */	nop 
lbl_80A1CCFC:
/* 80A1CCFC  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1CD00  4B FF E9 29 */	bl sendInfo__15daNpcKasi_Mng_cFv
/* 80A1CD04  7F C3 F3 78 */	mr r3, r30
/* 80A1CD08  48 00 05 31 */	bl playMotion__15daNpcKasiHana_cFv
/* 80A1CD0C  38 60 00 01 */	li r3, 1
/* 80A1CD10  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80A1CD14  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80A1CD18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A1CD1C  7C 08 03 A6 */	mtlr r0
/* 80A1CD20  38 21 00 60 */	addi r1, r1, 0x60
/* 80A1CD24  4E 80 00 20 */	blr 
