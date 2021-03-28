lbl_80CF3970:
/* 80CF3970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF3974  7C 08 02 A6 */	mflr r0
/* 80CF3978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF397C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF3980  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF3984  7C 7F 1B 78 */	mr r31, r3
/* 80CF3988  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CF398C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CF3990  40 82 00 48 */	bne lbl_80CF39D8
/* 80CF3994  28 1F 00 00 */	cmplwi r31, 0
/* 80CF3998  41 82 00 34 */	beq lbl_80CF39CC
/* 80CF399C  4B 32 51 C8 */	b __ct__10fopAc_ac_cFv
/* 80CF39A0  3C 60 80 CF */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CF39A4  38 03 44 E0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CF39A8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80CF39AC  93 FF 05 6C */	stw r31, 0x56c(r31)
/* 80CF39B0  38 00 00 00 */	li r0, 0
/* 80CF39B4  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CF39B8  3C 60 80 CF */	lis r3, __vt__14daObjSwBallA_c@ha
/* 80CF39BC  38 63 44 BC */	addi r3, r3, __vt__14daObjSwBallA_c@l
/* 80CF39C0  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80CF39C4  38 03 00 08 */	addi r0, r3, 8
/* 80CF39C8  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80CF39CC:
/* 80CF39CC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CF39D0  60 00 00 08 */	ori r0, r0, 8
/* 80CF39D4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CF39D8:
/* 80CF39D8  88 1F 05 C4 */	lbz r0, 0x5c4(r31)
/* 80CF39DC  28 00 00 00 */	cmplwi r0, 0
/* 80CF39E0  40 82 00 38 */	bne lbl_80CF3A18
/* 80CF39E4  38 00 00 01 */	li r0, 1
/* 80CF39E8  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80CF39EC  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CF39F0  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
/* 80CF39F4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CF39F8  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 80CF39FC  38 00 00 00 */	li r0, 0
/* 80CF3A00  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CF3A04  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CF3A08  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CF3A0C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CF3A10  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CF3A14  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
lbl_80CF3A18:
/* 80CF3A18  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80CF3A1C  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CF3A20  38 84 44 38 */	addi r4, r4, l_arcName@l
/* 80CF3A24  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF3A28  4B 33 94 94 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CF3A2C  7C 7E 1B 78 */	mr r30, r3
/* 80CF3A30  2C 1E 00 04 */	cmpwi r30, 4
/* 80CF3A34  40 82 00 40 */	bne lbl_80CF3A74
/* 80CF3A38  7F E3 FB 78 */	mr r3, r31
/* 80CF3A3C  3C 80 80 CF */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80CF3A40  38 84 33 74 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80CF3A44  38 A0 09 40 */	li r5, 0x940
/* 80CF3A48  4B 32 6A 68 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CF3A4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF3A50  40 82 00 0C */	bne lbl_80CF3A5C
/* 80CF3A54  38 60 00 05 */	li r3, 5
/* 80CF3A58  48 00 00 20 */	b lbl_80CF3A78
lbl_80CF3A5C:
/* 80CF3A5C  7F E3 FB 78 */	mr r3, r31
/* 80CF3A60  4B FF FC 35 */	bl Create__14daObjSwBallA_cFv
/* 80CF3A64  2C 03 00 00 */	cmpwi r3, 0
/* 80CF3A68  40 82 00 0C */	bne lbl_80CF3A74
/* 80CF3A6C  38 60 00 05 */	li r3, 5
/* 80CF3A70  48 00 00 08 */	b lbl_80CF3A78
lbl_80CF3A74:
/* 80CF3A74  7F C3 F3 78 */	mr r3, r30
lbl_80CF3A78:
/* 80CF3A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF3A7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF3A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF3A84  7C 08 03 A6 */	mtlr r0
/* 80CF3A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF3A8C  4E 80 00 20 */	blr 
