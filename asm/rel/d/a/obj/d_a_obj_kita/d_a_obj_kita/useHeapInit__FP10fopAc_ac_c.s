lbl_80C45B10:
/* 80C45B10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C45B14  7C 08 02 A6 */	mflr r0
/* 80C45B18  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C45B1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C45B20  4B 71 C6 A4 */	b _savegpr_23
/* 80C45B24  7C 79 1B 78 */	mr r25, r3
/* 80C45B28  3B 40 00 00 */	li r26, 0
/* 80C45B2C  3B 00 00 00 */	li r24, 0
/* 80C45B30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C45B34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C45B38  3F 83 00 02 */	addis r28, r3, 2
/* 80C45B3C  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C45B40  3B A3 5F 80 */	addi r29, r3, stringBase0@l
/* 80C45B44  3F C0 11 00 */	lis r30, 0x1100
/* 80C45B48  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C45B4C  3B E3 5A 24 */	addi r31, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C45B50  3C 60 80 C4 */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80C45B54  3A E3 54 24 */	addi r23, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80C45B58  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80C45B5C  48 00 00 C4 */	b lbl_80C45C20
lbl_80C45B60:
/* 80C45B60  7F A3 EB 78 */	mr r3, r29
/* 80C45B64  38 80 00 04 */	li r4, 4
/* 80C45B68  7F 85 E3 78 */	mr r5, r28
/* 80C45B6C  38 C0 00 80 */	li r6, 0x80
/* 80C45B70  4B 3F 67 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C45B74  3C 80 00 08 */	lis r4, 8
/* 80C45B78  38 BE 00 84 */	addi r5, r30, 0x84
/* 80C45B7C  4B 3C F0 D8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C45B80  7F 79 C2 14 */	add r27, r25, r24
/* 80C45B84  90 7B 05 94 */	stw r3, 0x594(r27)
/* 80C45B88  80 1B 05 94 */	lwz r0, 0x594(r27)
/* 80C45B8C  28 00 00 00 */	cmplwi r0, 0
/* 80C45B90  40 82 00 0C */	bne lbl_80C45B9C
/* 80C45B94  38 60 00 00 */	li r3, 0
/* 80C45B98  48 00 00 9C */	b lbl_80C45C34
lbl_80C45B9C:
/* 80C45B9C  38 60 00 C0 */	li r3, 0xc0
/* 80C45BA0  4B 68 90 AC */	b __nw__FUl
/* 80C45BA4  7C 60 1B 79 */	or. r0, r3, r3
/* 80C45BA8  41 82 00 0C */	beq lbl_80C45BB4
/* 80C45BAC  4B 43 5D C4 */	b __ct__4dBgWFv
/* 80C45BB0  7C 60 1B 78 */	mr r0, r3
lbl_80C45BB4:
/* 80C45BB4  90 1B 05 F0 */	stw r0, 0x5f0(r27)
/* 80C45BB8  80 1B 05 F0 */	lwz r0, 0x5f0(r27)
/* 80C45BBC  28 00 00 00 */	cmplwi r0, 0
/* 80C45BC0  40 82 00 0C */	bne lbl_80C45BCC
/* 80C45BC4  38 60 00 00 */	li r3, 0
/* 80C45BC8  48 00 00 6C */	b lbl_80C45C34
lbl_80C45BCC:
/* 80C45BCC  7F A3 EB 78 */	mr r3, r29
/* 80C45BD0  38 80 00 07 */	li r4, 7
/* 80C45BD4  7F 85 E3 78 */	mr r5, r28
/* 80C45BD8  38 C0 00 80 */	li r6, 0x80
/* 80C45BDC  4B 3F 67 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C45BE0  7C 64 1B 78 */	mr r4, r3
/* 80C45BE4  80 7B 05 F0 */	lwz r3, 0x5f0(r27)
/* 80C45BE8  38 A0 00 01 */	li r5, 1
/* 80C45BEC  38 DB 05 C0 */	addi r6, r27, 0x5c0
/* 80C45BF0  4B 43 43 48 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C45BF4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C45BF8  28 00 00 01 */	cmplwi r0, 1
/* 80C45BFC  40 82 00 0C */	bne lbl_80C45C08
/* 80C45C00  38 60 00 00 */	li r3, 0
/* 80C45C04  48 00 00 30 */	b lbl_80C45C34
lbl_80C45C08:
/* 80C45C08  80 7B 05 F0 */	lwz r3, 0x5f0(r27)
/* 80C45C0C  93 E3 00 B0 */	stw r31, 0xb0(r3)
/* 80C45C10  80 7B 05 F0 */	lwz r3, 0x5f0(r27)
/* 80C45C14  92 E3 00 B4 */	stw r23, 0xb4(r3)
/* 80C45C18  3B 5A 00 01 */	addi r26, r26, 1
/* 80C45C1C  3B 18 00 60 */	addi r24, r24, 0x60
lbl_80C45C20:
/* 80C45C20  80 79 05 7C */	lwz r3, 0x57c(r25)
/* 80C45C24  38 03 FF FF */	addi r0, r3, -1
/* 80C45C28  7C 1A 00 00 */	cmpw r26, r0
/* 80C45C2C  41 80 FF 34 */	blt lbl_80C45B60
/* 80C45C30  38 60 00 01 */	li r3, 1
lbl_80C45C34:
/* 80C45C34  39 61 00 30 */	addi r11, r1, 0x30
/* 80C45C38  4B 71 C5 D8 */	b _restgpr_23
/* 80C45C3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C45C40  7C 08 03 A6 */	mtlr r0
/* 80C45C44  38 21 00 30 */	addi r1, r1, 0x30
/* 80C45C48  4E 80 00 20 */	blr 
