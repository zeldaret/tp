lbl_80A0FFF0:
/* 80A0FFF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A0FFF4  7C 08 02 A6 */	mflr r0
/* 80A0FFF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0FFFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A10000  4B 95 21 DC */	b _savegpr_29
/* 80A10004  7C 7F 1B 78 */	mr r31, r3
/* 80A10008  3C 80 80 A1 */	lis r4, l_insectParams@ha
/* 80A1000C  3B A4 3D AC */	addi r29, r4, l_insectParams@l
/* 80A10010  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80A10014  2C 00 00 02 */	cmpwi r0, 2
/* 80A10018  41 82 00 80 */	beq lbl_80A10098
/* 80A1001C  40 80 03 68 */	bge lbl_80A10384
/* 80A10020  2C 00 00 00 */	cmpwi r0, 0
/* 80A10024  41 82 00 0C */	beq lbl_80A10030
/* 80A10028  48 00 03 5C */	b lbl_80A10384
/* 80A1002C  48 00 03 58 */	b lbl_80A10384
lbl_80A10030:
/* 80A10030  38 80 00 09 */	li r4, 9
/* 80A10034  C0 3D 03 6C */	lfs f1, 0x36c(r29)
/* 80A10038  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1003C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A10040  7D 89 03 A6 */	mtctr r12
/* 80A10044  4E 80 04 21 */	bctrl 
/* 80A10048  7F E3 FB 78 */	mr r3, r31
/* 80A1004C  38 80 00 00 */	li r4, 0
/* 80A10050  C0 3D 03 6C */	lfs f1, 0x36c(r29)
/* 80A10054  38 A0 00 00 */	li r5, 0
/* 80A10058  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A1005C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A10060  7D 89 03 A6 */	mtctr r12
/* 80A10064  4E 80 04 21 */	bctrl 
/* 80A10068  A8 1F 0E 1A */	lha r0, 0xe1a(r31)
/* 80A1006C  2C 00 00 02 */	cmpwi r0, 2
/* 80A10070  41 82 00 0C */	beq lbl_80A1007C
/* 80A10074  38 00 00 02 */	li r0, 2
/* 80A10078  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
lbl_80A1007C:
/* 80A1007C  38 00 00 00 */	li r0, 0
/* 80A10080  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A10084  C0 1D 01 44 */	lfs f0, 0x144(r29)
/* 80A10088  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A1008C  38 00 00 02 */	li r0, 2
/* 80A10090  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A10094  48 00 02 F0 */	b lbl_80A10384
lbl_80A10098:
/* 80A10098  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A1009C  4B 74 06 50 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A100A0  28 03 00 00 */	cmplwi r3, 0
/* 80A100A4  41 82 00 B0 */	beq lbl_80A10154
/* 80A100A8  7F E3 FB 78 */	mr r3, r31
/* 80A100AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A100B0  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80A100B4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A100B8  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 80A100BC  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A100C0  4B 74 39 30 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A100C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A100C8  40 82 00 14 */	bne lbl_80A100DC
/* 80A100CC  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A100D0  4B 74 06 10 */	b remove__18daNpcF_ActorMngr_cFv
/* 80A100D4  3B A0 00 00 */	li r29, 0
/* 80A100D8  48 00 00 68 */	b lbl_80A10140
lbl_80A100DC:
/* 80A100DC  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A100E0  4B 74 06 0C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A100E4  28 03 00 00 */	cmplwi r3, 0
/* 80A100E8  40 82 00 20 */	bne lbl_80A10108
/* 80A100EC  7F E3 FB 78 */	mr r3, r31
/* 80A100F0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A100F4  7F E5 FB 78 */	mr r5, r31
/* 80A100F8  88 DF 05 47 */	lbz r6, 0x547(r31)
/* 80A100FC  4B 74 3A E0 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A10100  7C 7D 1B 78 */	mr r29, r3
/* 80A10104  48 00 00 1C */	b lbl_80A10120
lbl_80A10108:
/* 80A10108  7F E3 FB 78 */	mr r3, r31
/* 80A1010C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A10110  7F E5 FB 78 */	mr r5, r31
/* 80A10114  88 DF 05 45 */	lbz r6, 0x545(r31)
/* 80A10118  4B 74 3A C4 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A1011C  7C 7D 1B 78 */	mr r29, r3
lbl_80A10120:
/* 80A10120  2C 1D 00 00 */	cmpwi r29, 0
/* 80A10124  41 82 00 14 */	beq lbl_80A10138
/* 80A10128  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A1012C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A10130  4B 74 05 8C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A10134  48 00 00 0C */	b lbl_80A10140
lbl_80A10138:
/* 80A10138  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A1013C  4B 74 05 A4 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80A10140:
/* 80A10140  2C 1D 00 00 */	cmpwi r29, 0
/* 80A10144  40 82 00 B8 */	bne lbl_80A101FC
/* 80A10148  38 00 00 00 */	li r0, 0
/* 80A1014C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A10150  48 00 00 AC */	b lbl_80A101FC
lbl_80A10154:
/* 80A10154  7F E3 FB 78 */	mr r3, r31
/* 80A10158  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A1015C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80A10160  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A10164  38 BD 00 C0 */	addi r5, r29, 0xc0
/* 80A10168  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A1016C  4B 74 38 84 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A10170  2C 03 00 00 */	cmpwi r3, 0
/* 80A10174  40 82 00 14 */	bne lbl_80A10188
/* 80A10178  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A1017C  4B 74 05 64 */	b remove__18daNpcF_ActorMngr_cFv
/* 80A10180  3B A0 00 00 */	li r29, 0
/* 80A10184  48 00 00 68 */	b lbl_80A101EC
lbl_80A10188:
/* 80A10188  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A1018C  4B 74 05 60 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A10190  28 03 00 00 */	cmplwi r3, 0
/* 80A10194  40 82 00 20 */	bne lbl_80A101B4
/* 80A10198  7F E3 FB 78 */	mr r3, r31
/* 80A1019C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A101A0  7F E5 FB 78 */	mr r5, r31
/* 80A101A4  88 DF 05 47 */	lbz r6, 0x547(r31)
/* 80A101A8  4B 74 3A 34 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A101AC  7C 7D 1B 78 */	mr r29, r3
/* 80A101B0  48 00 00 1C */	b lbl_80A101CC
lbl_80A101B4:
/* 80A101B4  7F E3 FB 78 */	mr r3, r31
/* 80A101B8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A101BC  7F E5 FB 78 */	mr r5, r31
/* 80A101C0  88 DF 05 45 */	lbz r6, 0x545(r31)
/* 80A101C4  4B 74 3A 18 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A101C8  7C 7D 1B 78 */	mr r29, r3
lbl_80A101CC:
/* 80A101CC  2C 1D 00 00 */	cmpwi r29, 0
/* 80A101D0  41 82 00 14 */	beq lbl_80A101E4
/* 80A101D4  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A101D8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80A101DC  4B 74 04 E0 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A101E0  48 00 00 0C */	b lbl_80A101EC
lbl_80A101E4:
/* 80A101E4  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80A101E8  4B 74 04 F8 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80A101EC:
/* 80A101EC  2C 1D 00 00 */	cmpwi r29, 0
/* 80A101F0  41 82 00 0C */	beq lbl_80A101FC
/* 80A101F4  38 00 00 00 */	li r0, 0
/* 80A101F8  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80A101FC:
/* 80A101FC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A10200  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
/* 80A10204  8B BE 00 C3 */	lbz r29, 0xc3(r30)
/* 80A10208  28 1D 00 FF */	cmplwi r29, 0xff
/* 80A1020C  41 82 00 AC */	beq lbl_80A102B8
/* 80A10210  28 1D 00 00 */	cmplwi r29, 0
/* 80A10214  41 82 00 24 */	beq lbl_80A10238
/* 80A10218  38 00 00 00 */	li r0, 0
/* 80A1021C  2C 1D 00 C0 */	cmpwi r29, 0xc0
/* 80A10220  41 80 00 10 */	blt lbl_80A10230
/* 80A10224  2C 1D 00 D7 */	cmpwi r29, 0xd7
/* 80A10228  41 81 00 08 */	bgt lbl_80A10230
/* 80A1022C  38 00 00 01 */	li r0, 1
lbl_80A10230:
/* 80A10230  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A10234  41 82 01 50 */	beq lbl_80A10384
lbl_80A10238:
/* 80A10238  28 1D 00 00 */	cmplwi r29, 0
/* 80A1023C  41 82 00 6C */	beq lbl_80A102A8
/* 80A10240  7F E3 FB 78 */	mr r3, r31
/* 80A10244  7F A4 EB 78 */	mr r4, r29
/* 80A10248  48 00 1A 09 */	bl getInsectParamData__10daNpcIns_cFi
/* 80A1024C  A8 03 00 04 */	lha r0, 4(r3)
/* 80A10250  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80A10254  7F E3 FB 78 */	mr r3, r31
/* 80A10258  7F A4 EB 78 */	mr r4, r29
/* 80A1025C  48 00 19 F5 */	bl getInsectParamData__10daNpcIns_cFi
/* 80A10260  80 63 00 00 */	lwz r3, 0(r3)
/* 80A10264  4B 74 54 10 */	b daNpcF_onEvtBit__FUl
/* 80A10268  7F A3 EB 78 */	mr r3, r29
/* 80A1026C  4B 82 82 44 */	b setInsectItemNo__12dMsgObject_cFUc
/* 80A10270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A10274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A10278  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80A1027C  38 00 00 03 */	li r0, 3
/* 80A10280  B0 04 06 04 */	sth r0, 0x604(r4)
/* 80A10284  38 60 00 00 */	li r3, 0
/* 80A10288  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80A1028C  38 00 00 25 */	li r0, 0x25
/* 80A10290  90 04 06 14 */	stw r0, 0x614(r4)
/* 80A10294  38 00 00 02 */	li r0, 2
/* 80A10298  90 04 06 0C */	stw r0, 0x60c(r4)
/* 80A1029C  93 A4 06 10 */	stw r29, 0x610(r4)
/* 80A102A0  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 80A102A4  48 00 00 0C */	b lbl_80A102B0
lbl_80A102A8:
/* 80A102A8  38 00 07 19 */	li r0, 0x719
/* 80A102AC  B0 1F 0E 18 */	sth r0, 0xe18(r31)
lbl_80A102B0:
/* 80A102B0  38 00 00 FF */	li r0, 0xff
/* 80A102B4  98 1E 00 C3 */	stb r0, 0xc3(r30)
lbl_80A102B8:
/* 80A102B8  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80A102BC  2C 00 07 19 */	cmpwi r0, 0x719
/* 80A102C0  41 82 00 1C */	beq lbl_80A102DC
/* 80A102C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A102C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A102CC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A102D0  80 03 05 84 */	lwz r0, 0x584(r3)
/* 80A102D4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A102D8  41 82 00 AC */	beq lbl_80A10384
lbl_80A102DC:
/* 80A102DC  3C 60 80 A1 */	lis r3, lit_5026@ha
/* 80A102E0  38 83 43 F0 */	addi r4, r3, lit_5026@l
/* 80A102E4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A102E8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A102EC  90 61 00 08 */	stw r3, 8(r1)
/* 80A102F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A102F4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A102F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A102FC  38 00 00 03 */	li r0, 3
/* 80A10300  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A10304  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A10308  4B 95 1D 10 */	b __ptmf_test
/* 80A1030C  2C 03 00 00 */	cmpwi r3, 0
/* 80A10310  41 82 00 18 */	beq lbl_80A10328
/* 80A10314  7F E3 FB 78 */	mr r3, r31
/* 80A10318  38 80 00 00 */	li r4, 0
/* 80A1031C  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A10320  4B 95 1D 64 */	b __ptmf_scall
/* 80A10324  60 00 00 00 */	nop 
lbl_80A10328:
/* 80A10328  80 7F 0D C8 */	lwz r3, 0xdc8(r31)
/* 80A1032C  80 1F 0D CC */	lwz r0, 0xdcc(r31)
/* 80A10330  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 80A10334  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 80A10338  80 1F 0D D0 */	lwz r0, 0xdd0(r31)
/* 80A1033C  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80A10340  38 00 00 00 */	li r0, 0
/* 80A10344  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 80A10348  80 61 00 08 */	lwz r3, 8(r1)
/* 80A1034C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A10350  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 80A10354  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 80A10358  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A1035C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80A10360  38 7F 0D C8 */	addi r3, r31, 0xdc8
/* 80A10364  4B 95 1C B4 */	b __ptmf_test
/* 80A10368  2C 03 00 00 */	cmpwi r3, 0
/* 80A1036C  41 82 00 18 */	beq lbl_80A10384
/* 80A10370  7F E3 FB 78 */	mr r3, r31
/* 80A10374  38 80 00 00 */	li r4, 0
/* 80A10378  39 9F 0D C8 */	addi r12, r31, 0xdc8
/* 80A1037C  4B 95 1D 08 */	b __ptmf_scall
/* 80A10380  60 00 00 00 */	nop 
lbl_80A10384:
/* 80A10384  38 60 00 01 */	li r3, 1
/* 80A10388  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1038C  4B 95 1E 9C */	b _restgpr_29
/* 80A10390  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A10394  7C 08 03 A6 */	mtlr r0
/* 80A10398  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1039C  4E 80 00 20 */	blr 
