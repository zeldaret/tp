lbl_80BDDEFC:
/* 80BDDEFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDDF00  7C 08 02 A6 */	mflr r0
/* 80BDDF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDDF08  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDDF0C  4B 78 42 CC */	b _savegpr_28
/* 80BDDF10  7C 7D 1B 78 */	mr r29, r3
/* 80BDDF14  3C 80 80 BE */	lis r4, cNullVec__6Z2Calc@ha
/* 80BDDF18  3B E4 F9 44 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80BDDF1C  3C 80 80 BE */	lis r4, l_swOffset@ha
/* 80BDDF20  3B 84 F8 70 */	addi r28, r4, l_swOffset@l
/* 80BDDF24  88 03 05 E0 */	lbz r0, 0x5e0(r3)
/* 80BDDF28  28 00 00 01 */	cmplwi r0, 1
/* 80BDDF2C  40 82 00 24 */	bne lbl_80BDDF50
/* 80BDDF30  38 00 00 0E */	li r0, 0xe
/* 80BDDF34  98 1D 06 37 */	stb r0, 0x637(r29)
/* 80BDDF38  38 00 00 01 */	li r0, 1
/* 80BDDF3C  98 1D 06 36 */	stb r0, 0x636(r29)
/* 80BDDF40  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80BDDF44  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80BDDF48  98 1D 06 2B */	stb r0, 0x62b(r29)
/* 80BDDF4C  48 00 0D 49 */	bl modeSwWaitUpperInit__17daObjDmElevator_cFv
lbl_80BDDF50:
/* 80BDDF50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDDF54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDDF58  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80BDDF5C  7F C3 F3 78 */	mr r3, r30
/* 80BDDF60  80 9D 05 E8 */	lwz r4, 0x5e8(r29)
/* 80BDDF64  7F A5 EB 78 */	mr r5, r29
/* 80BDDF68  4B 49 6A A0 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BDDF6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDDF70  41 82 00 0C */	beq lbl_80BDDF7C
/* 80BDDF74  38 60 00 00 */	li r3, 0
/* 80BDDF78  48 00 01 14 */	b lbl_80BDE08C
lbl_80BDDF7C:
/* 80BDDF7C  7F A3 EB 78 */	mr r3, r29
/* 80BDDF80  4B FF FD B9 */	bl initBaseMtx__17daObjDmElevator_cFv
/* 80BDDF84  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80BDDF88  38 03 00 24 */	addi r0, r3, 0x24
/* 80BDDF8C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BDDF90  7F A3 EB 78 */	mr r3, r29
/* 80BDDF94  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 80BDDF98  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 80BDDF9C  C0 7C 00 24 */	lfs f3, 0x24(r28)
/* 80BDDFA0  C0 9C 00 28 */	lfs f4, 0x28(r28)
/* 80BDDFA4  C0 BC 00 2C */	lfs f5, 0x2c(r28)
/* 80BDDFA8  C0 DC 00 30 */	lfs f6, 0x30(r28)
/* 80BDDFAC  4B 43 C5 9C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BDDFB0  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80BDDFB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80BDDFB8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BDDFBC  80 83 00 08 */	lwz r4, 8(r3)
/* 80BDDFC0  3C 60 80 BE */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80BDDFC4  38 03 DC A0 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 80BDDFC8  90 04 00 04 */	stw r0, 4(r4)
/* 80BDDFCC  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80BDDFD0  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80BDDFD4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80BDDFD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80BDDFDC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BDDFE0  80 83 00 04 */	lwz r4, 4(r3)
/* 80BDDFE4  3C 60 80 BE */	lis r3, nodeCallBackForSw__FP8J3DJointi@ha
/* 80BDDFE8  38 03 DB F0 */	addi r0, r3, nodeCallBackForSw__FP8J3DJointi@l
/* 80BDDFEC  90 04 00 04 */	stw r0, 4(r4)
/* 80BDDFF0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80BDDFF4  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80BDDFF8  3C 60 80 BE */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80BDDFFC  38 03 D9 6C */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80BDE000  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80BDE004  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80BDE008  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80BDE00C  4B 49 D9 B4 */	b Move__4dBgWFv
/* 80BDE010  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80BDE014  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80BDE018  3B 9E 3E C8 */	addi r28, r30, 0x3ec8
/* 80BDE01C  7F 83 E3 78 */	mr r3, r28
/* 80BDE020  3C 80 80 BE */	lis r4, struct_80BDF8EC+0x0@ha
/* 80BDE024  38 84 F8 EC */	addi r4, r4, struct_80BDF8EC+0x0@l
/* 80BDE028  38 84 00 36 */	addi r4, r4, 0x36
/* 80BDE02C  4B 78 A9 68 */	b strcmp
/* 80BDE030  2C 03 00 00 */	cmpwi r3, 0
/* 80BDE034  40 82 00 20 */	bne lbl_80BDE054
/* 80BDE038  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 80BDE03C  7F A4 EB 78 */	mr r4, r29
/* 80BDE040  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 80BDE044  38 C0 00 FF */	li r6, 0xff
/* 80BDE048  4B 46 97 10 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80BDE04C  B0 7D 05 E6 */	sth r3, 0x5e6(r29)
/* 80BDE050  48 00 00 38 */	b lbl_80BDE088
lbl_80BDE054:
/* 80BDE054  7F 83 E3 78 */	mr r3, r28
/* 80BDE058  3C 80 80 BE */	lis r4, struct_80BDF8EC+0x0@ha
/* 80BDE05C  38 84 F8 EC */	addi r4, r4, struct_80BDF8EC+0x0@l
/* 80BDE060  38 84 00 3E */	addi r4, r4, 0x3e
/* 80BDE064  4B 78 A9 30 */	b strcmp
/* 80BDE068  2C 03 00 00 */	cmpwi r3, 0
/* 80BDE06C  40 82 00 1C */	bne lbl_80BDE088
/* 80BDE070  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 80BDE074  7F A4 EB 78 */	mr r4, r29
/* 80BDE078  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 80BDE07C  38 C0 00 FF */	li r6, 0xff
/* 80BDE080  4B 46 96 D8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80BDE084  B0 7D 05 E6 */	sth r3, 0x5e6(r29)
lbl_80BDE088:
/* 80BDE088  38 60 00 01 */	li r3, 1
lbl_80BDE08C:
/* 80BDE08C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDE090  4B 78 41 94 */	b _restgpr_28
/* 80BDE094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDE098  7C 08 03 A6 */	mtlr r0
/* 80BDE09C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDE0A0  4E 80 00 20 */	blr 
