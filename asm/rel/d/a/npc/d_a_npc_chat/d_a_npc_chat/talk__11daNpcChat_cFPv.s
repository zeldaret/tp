lbl_809856C8:
/* 809856C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809856CC  7C 08 02 A6 */	mflr r0
/* 809856D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809856D4  39 61 00 40 */	addi r11, r1, 0x40
/* 809856D8  4B 9D CB 00 */	b _savegpr_28
/* 809856DC  7C 7E 1B 78 */	mr r30, r3
/* 809856E0  3B E0 00 00 */	li r31, 0
/* 809856E4  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 809856E8  2C 00 00 02 */	cmpwi r0, 2
/* 809856EC  41 82 00 78 */	beq lbl_80985764
/* 809856F0  40 80 00 10 */	bge lbl_80985700
/* 809856F4  2C 00 00 00 */	cmpwi r0, 0
/* 809856F8  41 82 00 14 */	beq lbl_8098570C
/* 809856FC  48 00 03 6C */	b lbl_80985A68
lbl_80985700:
/* 80985700  2C 00 00 04 */	cmpwi r0, 4
/* 80985704  40 80 03 64 */	bge lbl_80985A68
/* 80985708  48 00 03 44 */	b lbl_80985A4C
lbl_8098570C:
/* 8098570C  80 9E 0E 18 */	lwz r4, 0xe18(r30)
/* 80985710  38 BE 0E 24 */	addi r5, r30, 0xe24
/* 80985714  4B 7C E6 08 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80985718  38 80 00 00 */	li r4, 0
/* 8098571C  90 9E 09 50 */	stw r4, 0x950(r30)
/* 80985720  98 9E 09 E9 */	stb r4, 0x9e9(r30)
/* 80985724  38 C0 00 00 */	li r6, 0
/* 80985728  38 60 00 01 */	li r3, 1
/* 8098572C  48 00 00 20 */	b lbl_8098574C
lbl_80985730:
/* 80985730  38 04 0E 24 */	addi r0, r4, 0xe24
/* 80985734  7C BE 00 2E */	lwzx r5, r30, r0
/* 80985738  28 05 00 00 */	cmplwi r5, 0
/* 8098573C  41 82 00 1C */	beq lbl_80985758
/* 80985740  98 65 0E 4D */	stb r3, 0xe4d(r5)
/* 80985744  38 C6 00 01 */	addi r6, r6, 1
/* 80985748  38 84 00 04 */	addi r4, r4, 4
lbl_8098574C:
/* 8098574C  88 1E 0E 21 */	lbz r0, 0xe21(r30)
/* 80985750  7C 06 00 00 */	cmpw r6, r0
/* 80985754  41 80 FF DC */	blt lbl_80985730
lbl_80985758:
/* 80985758  38 00 00 02 */	li r0, 2
/* 8098575C  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80985760  48 00 03 08 */	b lbl_80985A68
lbl_80985764:
/* 80985764  88 1E 0E 50 */	lbz r0, 0xe50(r30)
/* 80985768  28 00 00 01 */	cmplwi r0, 1
/* 8098576C  40 82 01 A8 */	bne lbl_80985914
/* 80985770  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80985774  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80985778  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8098577C  4B 69 4F 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80985780  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 80985784  7C 60 07 34 */	extsh r0, r3
/* 80985788  7C 04 00 00 */	cmpw r4, r0
/* 8098578C  40 82 01 58 */	bne lbl_809858E4
/* 80985790  7F C3 F3 78 */	mr r3, r30
/* 80985794  38 80 00 00 */	li r4, 0
/* 80985798  38 A0 00 00 */	li r5, 0
/* 8098579C  38 DE 0E 24 */	addi r6, r30, 0xe24
/* 809857A0  4B 7C E5 E4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809857A4  2C 03 00 00 */	cmpwi r3, 0
/* 809857A8  41 82 00 38 */	beq lbl_809857E0
/* 809857AC  3C 60 80 99 */	lis r3, lit_6230@ha
/* 809857B0  38 83 B9 28 */	addi r4, r3, lit_6230@l
/* 809857B4  80 64 00 00 */	lwz r3, 0(r4)
/* 809857B8  80 04 00 04 */	lwz r0, 4(r4)
/* 809857BC  90 61 00 24 */	stw r3, 0x24(r1)
/* 809857C0  90 01 00 28 */	stw r0, 0x28(r1)
/* 809857C4  80 04 00 08 */	lwz r0, 8(r4)
/* 809857C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809857CC  7F C3 F3 78 */	mr r3, r30
/* 809857D0  38 81 00 24 */	addi r4, r1, 0x24
/* 809857D4  4B FF F7 61 */	bl setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b
/* 809857D8  3B E0 00 01 */	li r31, 1
/* 809857DC  48 00 02 8C */	b lbl_80985A68
lbl_809857E0:
/* 809857E0  7F C3 F3 78 */	mr r3, r30
/* 809857E4  38 81 00 14 */	addi r4, r1, 0x14
/* 809857E8  38 A1 00 10 */	addi r5, r1, 0x10
/* 809857EC  7F C6 F3 78 */	mr r6, r30
/* 809857F0  38 E0 00 00 */	li r7, 0
/* 809857F4  4B 7C DF 24 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809857F8  2C 03 00 00 */	cmpwi r3, 0
/* 809857FC  41 82 00 28 */	beq lbl_80985824
/* 80985800  7F C3 F3 78 */	mr r3, r30
/* 80985804  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80985808  3C A0 80 98 */	lis r5, lit_4922@ha
/* 8098580C  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 80985810  38 A0 00 00 */	li r5, 0
/* 80985814  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80985818  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098581C  7D 89 03 A6 */	mtctr r12
/* 80985820  4E 80 04 21 */	bctrl 
lbl_80985824:
/* 80985824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80985828  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8098582C  3B 9D 4E C8 */	addi r28, r29, 0x4ec8
/* 80985830  7F 83 E3 78 */	mr r3, r28
/* 80985834  80 9D 4F 94 */	lwz r4, 0x4f94(r29)
/* 80985838  4B 6B DA B4 */	b convPId__14dEvt_control_cFUi
/* 8098583C  7C 03 F0 40 */	cmplw r3, r30
/* 80985840  41 82 02 28 */	beq lbl_80985A68
/* 80985844  7F 83 E3 78 */	mr r3, r28
/* 80985848  80 9D 4F 94 */	lwz r4, 0x4f94(r29)
/* 8098584C  4B 6B DA A0 */	b convPId__14dEvt_control_cFUi
/* 80985850  7C 03 F0 40 */	cmplw r3, r30
/* 80985854  41 82 02 14 */	beq lbl_80985A68
/* 80985858  88 1E 0E 51 */	lbz r0, 0xe51(r30)
/* 8098585C  28 00 00 01 */	cmplwi r0, 1
/* 80985860  40 82 00 2C */	bne lbl_8098588C
/* 80985864  7F C3 F3 78 */	mr r3, r30
/* 80985868  38 80 00 18 */	li r4, 0x18
/* 8098586C  3C A0 80 98 */	lis r5, lit_4922@ha
/* 80985870  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 80985874  38 A0 00 00 */	li r5, 0
/* 80985878  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098587C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985880  7D 89 03 A6 */	mtctr r12
/* 80985884  4E 80 04 21 */	bctrl 
/* 80985888  48 00 01 E0 */	b lbl_80985A68
lbl_8098588C:
/* 8098588C  28 00 00 02 */	cmplwi r0, 2
/* 80985890  40 82 00 2C */	bne lbl_809858BC
/* 80985894  7F C3 F3 78 */	mr r3, r30
/* 80985898  38 80 00 1A */	li r4, 0x1a
/* 8098589C  3C A0 80 98 */	lis r5, lit_4922@ha
/* 809858A0  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 809858A4  38 A0 00 00 */	li r5, 0
/* 809858A8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809858AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809858B0  7D 89 03 A6 */	mtctr r12
/* 809858B4  4E 80 04 21 */	bctrl 
/* 809858B8  48 00 01 B0 */	b lbl_80985A68
lbl_809858BC:
/* 809858BC  7F C3 F3 78 */	mr r3, r30
/* 809858C0  38 80 00 01 */	li r4, 1
/* 809858C4  3C A0 80 98 */	lis r5, lit_4922@ha
/* 809858C8  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 809858CC  38 A0 00 00 */	li r5, 0
/* 809858D0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809858D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809858D8  7D 89 03 A6 */	mtctr r12
/* 809858DC  4E 80 04 21 */	bctrl 
/* 809858E0  48 00 01 88 */	b lbl_80985A68
lbl_809858E4:
/* 809858E4  7F C3 F3 78 */	mr r3, r30
/* 809858E8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809858EC  4B 69 4E 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809858F0  7C 64 1B 78 */	mr r4, r3
/* 809858F4  7F C3 F3 78 */	mr r3, r30
/* 809858F8  38 A0 00 01 */	li r5, 1
/* 809858FC  4B FF F6 E1 */	bl step__11daNpcChat_cFsi
/* 80985900  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80985904  41 82 01 64 */	beq lbl_80985A68
/* 80985908  38 00 00 00 */	li r0, 0
/* 8098590C  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80985910  48 00 01 58 */	b lbl_80985A68
lbl_80985914:
/* 80985914  38 80 00 00 */	li r4, 0
/* 80985918  38 A0 00 00 */	li r5, 0
/* 8098591C  38 DE 0E 24 */	addi r6, r30, 0xe24
/* 80985920  4B 7C E4 64 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80985924  2C 03 00 00 */	cmpwi r3, 0
/* 80985928  41 82 00 38 */	beq lbl_80985960
/* 8098592C  3C 60 80 99 */	lis r3, lit_6251@ha
/* 80985930  38 83 B9 34 */	addi r4, r3, lit_6251@l
/* 80985934  80 64 00 00 */	lwz r3, 0(r4)
/* 80985938  80 04 00 04 */	lwz r0, 4(r4)
/* 8098593C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80985940  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80985944  80 04 00 08 */	lwz r0, 8(r4)
/* 80985948  90 01 00 20 */	stw r0, 0x20(r1)
/* 8098594C  7F C3 F3 78 */	mr r3, r30
/* 80985950  38 81 00 18 */	addi r4, r1, 0x18
/* 80985954  4B FF F5 E1 */	bl setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b
/* 80985958  3B E0 00 01 */	li r31, 1
/* 8098595C  48 00 01 0C */	b lbl_80985A68
lbl_80985960:
/* 80985960  7F C3 F3 78 */	mr r3, r30
/* 80985964  38 81 00 0C */	addi r4, r1, 0xc
/* 80985968  38 A1 00 08 */	addi r5, r1, 8
/* 8098596C  7F C6 F3 78 */	mr r6, r30
/* 80985970  38 E0 00 00 */	li r7, 0
/* 80985974  4B 7C DD A4 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80985978  2C 03 00 00 */	cmpwi r3, 0
/* 8098597C  41 82 00 28 */	beq lbl_809859A4
/* 80985980  7F C3 F3 78 */	mr r3, r30
/* 80985984  80 81 00 08 */	lwz r4, 8(r1)
/* 80985988  3C A0 80 98 */	lis r5, lit_4922@ha
/* 8098598C  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 80985990  38 A0 00 00 */	li r5, 0
/* 80985994  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80985998  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098599C  7D 89 03 A6 */	mtctr r12
/* 809859A0  4E 80 04 21 */	bctrl 
lbl_809859A4:
/* 809859A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809859A8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 809859AC  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 809859B0  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 809859B4  4B 6B D9 38 */	b convPId__14dEvt_control_cFUi
/* 809859B8  7C 03 F0 40 */	cmplw r3, r30
/* 809859BC  41 82 00 AC */	beq lbl_80985A68
/* 809859C0  88 1E 0E 51 */	lbz r0, 0xe51(r30)
/* 809859C4  28 00 00 01 */	cmplwi r0, 1
/* 809859C8  40 82 00 2C */	bne lbl_809859F4
/* 809859CC  7F C3 F3 78 */	mr r3, r30
/* 809859D0  38 80 00 18 */	li r4, 0x18
/* 809859D4  3C A0 80 98 */	lis r5, lit_4922@ha
/* 809859D8  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 809859DC  38 A0 00 00 */	li r5, 0
/* 809859E0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809859E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809859E8  7D 89 03 A6 */	mtctr r12
/* 809859EC  4E 80 04 21 */	bctrl 
/* 809859F0  48 00 00 78 */	b lbl_80985A68
lbl_809859F4:
/* 809859F4  28 00 00 02 */	cmplwi r0, 2
/* 809859F8  40 82 00 2C */	bne lbl_80985A24
/* 809859FC  7F C3 F3 78 */	mr r3, r30
/* 80985A00  38 80 00 1A */	li r4, 0x1a
/* 80985A04  3C A0 80 98 */	lis r5, lit_4922@ha
/* 80985A08  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 80985A0C  38 A0 00 00 */	li r5, 0
/* 80985A10  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80985A14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985A18  7D 89 03 A6 */	mtctr r12
/* 80985A1C  4E 80 04 21 */	bctrl 
/* 80985A20  48 00 00 48 */	b lbl_80985A68
lbl_80985A24:
/* 80985A24  7F C3 F3 78 */	mr r3, r30
/* 80985A28  38 80 00 01 */	li r4, 1
/* 80985A2C  3C A0 80 98 */	lis r5, lit_4922@ha
/* 80985A30  C0 25 6F 54 */	lfs f1, lit_4922@l(r5)
/* 80985A34  38 A0 00 00 */	li r5, 0
/* 80985A38  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80985A3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985A40  7D 89 03 A6 */	mtctr r12
/* 80985A44  4E 80 04 21 */	bctrl 
/* 80985A48  48 00 00 20 */	b lbl_80985A68
lbl_80985A4C:
/* 80985A4C  88 1E 09 EC */	lbz r0, 0x9ec(r30)
/* 80985A50  28 00 00 00 */	cmplwi r0, 0
/* 80985A54  40 82 00 14 */	bne lbl_80985A68
/* 80985A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80985A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80985A60  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80985A64  4B 6B CA 04 */	b reset__14dEvt_control_cFv
lbl_80985A68:
/* 80985A68  7F E3 FB 78 */	mr r3, r31
/* 80985A6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80985A70  4B 9D C7 B4 */	b _restgpr_28
/* 80985A74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80985A78  7C 08 03 A6 */	mtlr r0
/* 80985A7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80985A80  4E 80 00 20 */	blr 
