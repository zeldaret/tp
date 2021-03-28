lbl_809DDCF8:
/* 809DDCF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809DDCFC  7C 08 02 A6 */	mflr r0
/* 809DDD00  90 01 00 34 */	stw r0, 0x34(r1)
/* 809DDD04  39 61 00 30 */	addi r11, r1, 0x30
/* 809DDD08  4B 98 44 CC */	b _savegpr_27
/* 809DDD0C  7C 7C 1B 78 */	mr r28, r3
/* 809DDD10  3C 60 80 9E */	lis r3, cNullVec__6Z2Calc@ha
/* 809DDD14  3B E3 F2 F8 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 809DDD18  3B C0 00 00 */	li r30, 0
/* 809DDD1C  3B A0 00 00 */	li r29, 0
/* 809DDD20  38 00 00 00 */	li r0, 0
/* 809DDD24  90 01 00 08 */	stw r0, 8(r1)
/* 809DDD28  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 809DDD2C  2C 00 00 02 */	cmpwi r0, 2
/* 809DDD30  41 82 00 84 */	beq lbl_809DDDB4
/* 809DDD34  40 80 03 34 */	bge lbl_809DE068
/* 809DDD38  2C 00 00 00 */	cmpwi r0, 0
/* 809DDD3C  41 82 00 0C */	beq lbl_809DDD48
/* 809DDD40  48 00 03 28 */	b lbl_809DE068
/* 809DDD44  48 00 03 24 */	b lbl_809DE068
lbl_809DDD48:
/* 809DDD48  88 1C 09 F0 */	lbz r0, 0x9f0(r28)
/* 809DDD4C  28 00 00 00 */	cmplwi r0, 0
/* 809DDD50  40 82 03 18 */	bne lbl_809DE068
/* 809DDD54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DDD58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DDD5C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809DDD60  3C 80 80 9E */	lis r4, stringBase0@ha
/* 809DDD64  38 84 F2 B8 */	addi r4, r4, stringBase0@l
/* 809DDD68  38 84 00 25 */	addi r4, r4, 0x25
/* 809DDD6C  4B 98 AC 28 */	b strcmp
/* 809DDD70  2C 03 00 00 */	cmpwi r3, 0
/* 809DDD74  40 82 00 18 */	bne lbl_809DDD8C
/* 809DDD78  88 1C 0E 2C */	lbz r0, 0xe2c(r28)
/* 809DDD7C  28 00 00 00 */	cmplwi r0, 0
/* 809DDD80  40 82 00 0C */	bne lbl_809DDD8C
/* 809DDD84  38 60 00 0B */	li r3, 0xb
/* 809DDD88  4B 77 79 AC */	b daNpcF_offTmpBit__FUl
lbl_809DDD8C:
/* 809DDD8C  80 9C 0E 1C */	lwz r4, 0xe1c(r28)
/* 809DDD90  38 00 00 00 */	li r0, 0
/* 809DDD94  98 1C 0E 2C */	stb r0, 0xe2c(r28)
/* 809DDD98  7F 83 E3 78 */	mr r3, r28
/* 809DDD9C  38 A0 00 00 */	li r5, 0
/* 809DDDA0  4B 77 5F 7C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809DDDA4  38 00 00 00 */	li r0, 0
/* 809DDDA8  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 809DDDAC  38 00 00 02 */	li r0, 2
/* 809DDDB0  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_809DDDB4:
/* 809DDDB4  88 1C 09 EA */	lbz r0, 0x9ea(r28)
/* 809DDDB8  28 00 00 00 */	cmplwi r0, 0
/* 809DDDBC  41 82 00 0C */	beq lbl_809DDDC8
/* 809DDDC0  3B A0 00 01 */	li r29, 1
/* 809DDDC4  48 00 01 10 */	b lbl_809DDED4
lbl_809DDDC8:
/* 809DDDC8  88 1C 0E 24 */	lbz r0, 0xe24(r28)
/* 809DDDCC  28 00 00 01 */	cmplwi r0, 1
/* 809DDDD0  40 82 00 48 */	bne lbl_809DDE18
/* 809DDDD4  3B A0 00 01 */	li r29, 1
/* 809DDDD8  A8 1C 09 E0 */	lha r0, 0x9e0(r28)
/* 809DDDDC  2C 00 00 05 */	cmpwi r0, 5
/* 809DDDE0  40 82 00 14 */	bne lbl_809DDDF4
/* 809DDDE4  7F 83 E3 78 */	mr r3, r28
/* 809DDDE8  38 80 00 00 */	li r4, 0
/* 809DDDEC  4B FF F5 ED */	bl setLookMode__11daNpc_grO_cFi
/* 809DDDF0  48 00 00 E4 */	b lbl_809DDED4
lbl_809DDDF4:
/* 809DDDF4  7F 83 E3 78 */	mr r3, r28
/* 809DDDF8  38 80 00 02 */	li r4, 2
/* 809DDDFC  4B FF F5 DD */	bl setLookMode__11daNpc_grO_cFi
/* 809DDE00  38 7C 0C 7C */	addi r3, r28, 0xc7c
/* 809DDE04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809DDE08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809DDE0C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809DDE10  4B 77 28 AC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DDE14  48 00 00 C0 */	b lbl_809DDED4
lbl_809DDE18:
/* 809DDE18  7F 83 E3 78 */	mr r3, r28
/* 809DDE1C  38 80 00 03 */	li r4, 3
/* 809DDE20  4B FF F5 B9 */	bl setLookMode__11daNpc_grO_cFi
/* 809DDE24  38 7C 0C 7C */	addi r3, r28, 0xc7c
/* 809DDE28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809DDE2C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 809DDE30  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 809DDE34  4B 77 28 88 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DDE38  7F 83 E3 78 */	mr r3, r28
/* 809DDE3C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 809DDE40  4B 63 C8 D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809DDE44  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 809DDE48  7C 60 07 34 */	extsh r0, r3
/* 809DDE4C  7C 04 00 00 */	cmpw r4, r0
/* 809DDE50  40 82 00 0C */	bne lbl_809DDE5C
/* 809DDE54  3B A0 00 01 */	li r29, 1
/* 809DDE58  48 00 00 7C */	b lbl_809DDED4
lbl_809DDE5C:
/* 809DDE5C  7F 83 E3 78 */	mr r3, r28
/* 809DDE60  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 809DDE64  4B 63 C8 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809DDE68  7C 64 1B 78 */	mr r4, r3
/* 809DDE6C  7F 83 E3 78 */	mr r3, r28
/* 809DDE70  38 A0 00 0C */	li r5, 0xc
/* 809DDE74  38 C0 00 08 */	li r6, 8
/* 809DDE78  38 E0 00 0F */	li r7, 0xf
/* 809DDE7C  4B 77 62 28 */	b step__8daNpcF_cFsiii
/* 809DDE80  2C 03 00 00 */	cmpwi r3, 0
/* 809DDE84  41 82 00 50 */	beq lbl_809DDED4
/* 809DDE88  7F 83 E3 78 */	mr r3, r28
/* 809DDE8C  38 80 00 0C */	li r4, 0xc
/* 809DDE90  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DDE94  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DDE98  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809DDE9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DDEA0  7D 89 03 A6 */	mtctr r12
/* 809DDEA4  4E 80 04 21 */	bctrl 
/* 809DDEA8  7F 83 E3 78 */	mr r3, r28
/* 809DDEAC  38 80 00 00 */	li r4, 0
/* 809DDEB0  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DDEB4  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DDEB8  38 A0 00 00 */	li r5, 0
/* 809DDEBC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809DDEC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809DDEC4  7D 89 03 A6 */	mtctr r12
/* 809DDEC8  4E 80 04 21 */	bctrl 
/* 809DDECC  38 00 00 00 */	li r0, 0
/* 809DDED0  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_809DDED4:
/* 809DDED4  2C 1D 00 00 */	cmpwi r29, 0
/* 809DDED8  41 82 01 5C */	beq lbl_809DE034
/* 809DDEDC  7F 83 E3 78 */	mr r3, r28
/* 809DDEE0  38 80 00 00 */	li r4, 0
/* 809DDEE4  38 A0 00 01 */	li r5, 1
/* 809DDEE8  38 C0 00 00 */	li r6, 0
/* 809DDEEC  4B 77 5E 98 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809DDEF0  2C 03 00 00 */	cmpwi r3, 0
/* 809DDEF4  41 82 01 40 */	beq lbl_809DE034
/* 809DDEF8  88 1C 0E 24 */	lbz r0, 0xe24(r28)
/* 809DDEFC  28 00 00 00 */	cmplwi r0, 0
/* 809DDF00  40 82 00 B0 */	bne lbl_809DDFB0
/* 809DDF04  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 809DDF08  38 81 00 08 */	addi r4, r1, 8
/* 809DDF0C  4B 86 C6 1C */	b getEventId__10dMsgFlow_cFPi
/* 809DDF10  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809DDF14  28 00 00 01 */	cmplwi r0, 1
/* 809DDF18  40 82 01 18 */	bne lbl_809DE030
/* 809DDF1C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 809DDF20  80 81 00 08 */	lwz r4, 8(r1)
/* 809DDF24  38 A0 00 00 */	li r5, 0
/* 809DDF28  38 C0 FF FF */	li r6, -1
/* 809DDF2C  38 E0 FF FF */	li r7, -1
/* 809DDF30  39 00 00 00 */	li r8, 0
/* 809DDF34  39 20 00 00 */	li r9, 0
/* 809DDF38  4B 63 DC B0 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809DDF3C  90 7C 0E 28 */	stw r3, 0xe28(r28)
/* 809DDF40  80 7C 0E 28 */	lwz r3, 0xe28(r28)
/* 809DDF44  3C 03 00 01 */	addis r0, r3, 1
/* 809DDF48  28 00 FF FF */	cmplwi r0, 0xffff
/* 809DDF4C  41 82 00 E4 */	beq lbl_809DE030
/* 809DDF50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DDF54  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809DDF58  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 809DDF5C  7F 84 E3 78 */	mr r4, r28
/* 809DDF60  3C A0 80 9E */	lis r5, stringBase0@ha
/* 809DDF64  38 A5 F2 B8 */	addi r5, r5, stringBase0@l
/* 809DDF68  38 A5 00 2C */	addi r5, r5, 0x2c
/* 809DDF6C  38 C0 00 FF */	li r6, 0xff
/* 809DDF70  4B 66 97 E8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 809DDF74  7C 7B 1B 78 */	mr r27, r3
/* 809DDF78  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 809DDF7C  7F 84 E3 78 */	mr r4, r28
/* 809DDF80  4B 66 45 98 */	b reset__14dEvt_control_cFPv
/* 809DDF84  7F 83 E3 78 */	mr r3, r28
/* 809DDF88  7F 64 DB 78 */	mr r4, r27
/* 809DDF8C  38 A0 00 01 */	li r5, 1
/* 809DDF90  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809DDF94  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809DDF98  4B 63 D6 4C */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 809DDF9C  38 00 00 01 */	li r0, 1
/* 809DDFA0  98 1C 0E 2C */	stb r0, 0xe2c(r28)
/* 809DDFA4  98 1C 09 EC */	stb r0, 0x9ec(r28)
/* 809DDFA8  98 1C 09 ED */	stb r0, 0x9ed(r28)
/* 809DDFAC  48 00 00 84 */	b lbl_809DE030
lbl_809DDFB0:
/* 809DDFB0  28 00 00 01 */	cmplwi r0, 1
/* 809DDFB4  40 82 00 7C */	bne lbl_809DE030
/* 809DDFB8  38 60 00 51 */	li r3, 0x51
/* 809DDFBC  4B 77 76 F8 */	b daNpcF_chkTmpBit__FUl
/* 809DDFC0  2C 03 00 00 */	cmpwi r3, 0
/* 809DDFC4  41 82 00 6C */	beq lbl_809DE030
/* 809DDFC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DDFCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DDFD0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809DDFD4  7F 84 E3 78 */	mr r4, r28
/* 809DDFD8  4B 66 45 40 */	b reset__14dEvt_control_cFPv
/* 809DDFDC  38 00 00 01 */	li r0, 1
/* 809DDFE0  98 1C 09 EC */	stb r0, 0x9ec(r28)
/* 809DDFE4  98 1C 09 ED */	stb r0, 0x9ed(r28)
/* 809DDFE8  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809DDFEC  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809DDFF0  54 06 18 38 */	slwi r6, r0, 3
/* 809DDFF4  7F 83 E3 78 */	mr r3, r28
/* 809DDFF8  38 BF 01 34 */	addi r5, r31, 0x134
/* 809DDFFC  7C 85 32 14 */	add r4, r5, r6
/* 809DE000  80 04 00 04 */	lwz r0, 4(r4)
/* 809DE004  54 00 10 3A */	slwi r0, r0, 2
/* 809DE008  38 9F 01 AC */	addi r4, r31, 0x1ac
/* 809DE00C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809DE010  7C 05 30 2E */	lwzx r0, r5, r6
/* 809DE014  54 00 10 3A */	slwi r0, r0, 2
/* 809DE018  38 BF 01 B8 */	addi r5, r31, 0x1b8
/* 809DE01C  7C A5 00 2E */	lwzx r5, r5, r0
/* 809DE020  38 C0 00 02 */	li r6, 2
/* 809DE024  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 809DE028  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 809DE02C  4B 77 59 28 */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_809DE030:
/* 809DE030  3B C0 00 01 */	li r30, 1
lbl_809DE034:
/* 809DE034  2C 1E 00 00 */	cmpwi r30, 0
/* 809DE038  41 82 00 30 */	beq lbl_809DE068
/* 809DE03C  38 00 00 03 */	li r0, 3
/* 809DE040  B0 1C 0E 22 */	sth r0, 0xe22(r28)
/* 809DE044  88 1C 09 EC */	lbz r0, 0x9ec(r28)
/* 809DE048  28 00 00 00 */	cmplwi r0, 0
/* 809DE04C  40 82 00 14 */	bne lbl_809DE060
/* 809DE050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DE054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DE058  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809DE05C  4B 66 44 0C */	b reset__14dEvt_control_cFv
lbl_809DE060:
/* 809DE060  38 00 00 00 */	li r0, 0
/* 809DE064  98 1C 09 EC */	stb r0, 0x9ec(r28)
lbl_809DE068:
/* 809DE068  7F C3 F3 78 */	mr r3, r30
/* 809DE06C  39 61 00 30 */	addi r11, r1, 0x30
/* 809DE070  4B 98 41 B0 */	b _restgpr_27
/* 809DE074  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809DE078  7C 08 03 A6 */	mtlr r0
/* 809DE07C  38 21 00 30 */	addi r1, r1, 0x30
/* 809DE080  4E 80 00 20 */	blr 
