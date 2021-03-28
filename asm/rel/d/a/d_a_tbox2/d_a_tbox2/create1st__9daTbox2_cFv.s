lbl_80496E3C:
/* 80496E3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80496E40  7C 08 02 A6 */	mflr r0
/* 80496E44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80496E48  39 61 00 30 */	addi r11, r1, 0x30
/* 80496E4C  4B EC B3 7C */	b _savegpr_24
/* 80496E50  7C 7A 1B 78 */	mr r26, r3
/* 80496E54  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80496E58  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80496E5C  40 82 01 74 */	bne lbl_80496FD0
/* 80496E60  7F 40 D3 79 */	or. r0, r26, r26
/* 80496E64  41 82 01 60 */	beq lbl_80496FC4
/* 80496E68  7C 19 03 78 */	mr r25, r0
/* 80496E6C  7C 1C 03 78 */	mr r28, r0
/* 80496E70  4B BE 17 B4 */	b __ct__16dBgS_MoveBgActorFv
/* 80496E74  3C 60 80 4A */	lis r3, __vt__12daTboxBase_c@ha
/* 80496E78  38 03 84 18 */	addi r0, r3, __vt__12daTboxBase_c@l
/* 80496E7C  90 1C 05 9C */	stw r0, 0x59c(r28)
/* 80496E80  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80496E84  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80496E88  90 1C 05 B8 */	stw r0, 0x5b8(r28)
/* 80496E8C  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 80496E90  4B BE C8 D0 */	b __ct__10dCcD_GSttsFv
/* 80496E94  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80496E98  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80496E9C  90 7C 05 B8 */	stw r3, 0x5b8(r28)
/* 80496EA0  3B E3 00 20 */	addi r31, r3, 0x20
/* 80496EA4  93 FC 05 BC */	stw r31, 0x5bc(r28)
/* 80496EA8  3B 1C 05 DC */	addi r24, r28, 0x5dc
/* 80496EAC  7F 03 C3 78 */	mr r3, r24
/* 80496EB0  4B BE CB 78 */	b __ct__12dCcD_GObjInfFv
/* 80496EB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80496EB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80496EBC  90 18 01 20 */	stw r0, 0x120(r24)
/* 80496EC0  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 80496EC4  38 03 84 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80496EC8  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80496ECC  3C 60 80 4A */	lis r3, __vt__8cM3dGCyl@ha
/* 80496ED0  38 03 84 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80496ED4  90 18 01 38 */	stw r0, 0x138(r24)
/* 80496ED8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80496EDC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80496EE0  90 78 01 20 */	stw r3, 0x120(r24)
/* 80496EE4  3B C3 00 58 */	addi r30, r3, 0x58
/* 80496EE8  93 D8 01 38 */	stw r30, 0x138(r24)
/* 80496EEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80496EF0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80496EF4  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80496EF8  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80496EFC  93 B8 01 20 */	stw r29, 0x120(r24)
/* 80496F00  3B 83 00 84 */	addi r28, r3, 0x84
/* 80496F04  93 98 01 38 */	stw r28, 0x138(r24)
/* 80496F08  3C 60 80 4A */	lis r3, __vt__9daTbox2_c@ha
/* 80496F0C  38 03 84 50 */	addi r0, r3, __vt__9daTbox2_c@l
/* 80496F10  90 19 05 9C */	stw r0, 0x59c(r25)
/* 80496F14  3B 19 07 2C */	addi r24, r25, 0x72c
/* 80496F18  7F 03 C3 78 */	mr r3, r24
/* 80496F1C  4B BD F1 84 */	b __ct__9dBgS_AcchFv
/* 80496F20  3C 60 80 4A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80496F24  38 63 83 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80496F28  90 78 00 10 */	stw r3, 0x10(r24)
/* 80496F2C  38 03 00 0C */	addi r0, r3, 0xc
/* 80496F30  90 18 00 14 */	stw r0, 0x14(r24)
/* 80496F34  38 03 00 18 */	addi r0, r3, 0x18
/* 80496F38  90 18 00 24 */	stw r0, 0x24(r24)
/* 80496F3C  38 78 00 14 */	addi r3, r24, 0x14
/* 80496F40  4B BE 1F 28 */	b SetObj__16dBgS_PolyPassChkFv
/* 80496F44  38 79 09 04 */	addi r3, r25, 0x904
/* 80496F48  4B BD EF 64 */	b __ct__12dBgS_AcchCirFv
/* 80496F4C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80496F50  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80496F54  90 19 09 5C */	stw r0, 0x95c(r25)
/* 80496F58  38 79 09 60 */	addi r3, r25, 0x960
/* 80496F5C  4B BE C8 04 */	b __ct__10dCcD_GSttsFv
/* 80496F60  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80496F64  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80496F68  90 19 09 5C */	stw r0, 0x95c(r25)
/* 80496F6C  93 F9 09 60 */	stw r31, 0x960(r25)
/* 80496F70  3B 19 09 80 */	addi r24, r25, 0x980
/* 80496F74  7F 03 C3 78 */	mr r3, r24
/* 80496F78  4B BE CA B0 */	b __ct__12dCcD_GObjInfFv
/* 80496F7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80496F80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80496F84  90 18 01 20 */	stw r0, 0x120(r24)
/* 80496F88  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha
/* 80496F8C  38 03 84 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80496F90  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80496F94  3C 60 80 4A */	lis r3, __vt__8cM3dGCyl@ha
/* 80496F98  38 03 84 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80496F9C  90 18 01 38 */	stw r0, 0x138(r24)
/* 80496FA0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80496FA4  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80496FA8  90 18 01 20 */	stw r0, 0x120(r24)
/* 80496FAC  93 D8 01 38 */	stw r30, 0x138(r24)
/* 80496FB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80496FB4  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80496FB8  90 18 00 3C */	stw r0, 0x3c(r24)
/* 80496FBC  93 B8 01 20 */	stw r29, 0x120(r24)
/* 80496FC0  93 98 01 38 */	stw r28, 0x138(r24)
lbl_80496FC4:
/* 80496FC4  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80496FC8  60 00 00 08 */	ori r0, r0, 8
/* 80496FCC  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80496FD0:
/* 80496FD0  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80496FD4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80496FD8  98 1A 0A BC */	stb r0, 0xabc(r26)
/* 80496FDC  38 7A 07 1C */	addi r3, r26, 0x71c
/* 80496FE0  3C 80 80 4A */	lis r4, l_arcName@ha
/* 80496FE4  38 84 82 7C */	addi r4, r4, l_arcName@l
/* 80496FE8  80 84 00 00 */	lwz r4, 0(r4)
/* 80496FEC  4B B9 5E D0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80496FF0  7C 60 1B 78 */	mr r0, r3
/* 80496FF4  2C 00 00 04 */	cmpwi r0, 4
/* 80496FF8  40 82 00 6C */	bne lbl_80497064
/* 80496FFC  88 1A 0A BC */	lbz r0, 0xabc(r26)
/* 80497000  28 00 00 00 */	cmplwi r0, 0
/* 80497004  40 82 00 0C */	bne lbl_80497010
/* 80497008  3B 60 18 20 */	li r27, 0x1820
/* 8049700C  48 00 00 10 */	b lbl_8049701C
lbl_80497010:
/* 80497010  28 00 00 01 */	cmplwi r0, 1
/* 80497014  40 82 00 08 */	bne lbl_8049701C
/* 80497018  3B 60 20 40 */	li r27, 0x2040
lbl_8049701C:
/* 8049701C  7F 43 D3 78 */	mr r3, r26
/* 80497020  3C 80 80 4A */	lis r4, l_arcName@ha
/* 80497024  38 84 82 7C */	addi r4, r4, l_arcName@l
/* 80497028  80 84 00 00 */	lwz r4, 0(r4)
/* 8049702C  3C A0 80 4A */	lis r5, l_resInfo@ha
/* 80497030  38 A5 81 60 */	addi r5, r5, l_resInfo@l
/* 80497034  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80497038  7C A5 02 14 */	add r5, r5, r0
/* 8049703C  80 A5 00 08 */	lwz r5, 8(r5)
/* 80497040  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80497044  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80497048  7F 67 DB 78 */	mr r7, r27
/* 8049704C  39 00 00 00 */	li r8, 0
/* 80497050  4B BE 17 6C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80497054  7C 60 1B 78 */	mr r0, r3
/* 80497058  2C 00 00 05 */	cmpwi r0, 5
/* 8049705C  40 82 00 08 */	bne lbl_80497064
/* 80497060  48 00 00 08 */	b lbl_80497068
lbl_80497064:
/* 80497064  7C 03 03 78 */	mr r3, r0
lbl_80497068:
/* 80497068  39 61 00 30 */	addi r11, r1, 0x30
/* 8049706C  4B EC B1 A8 */	b _restgpr_24
/* 80497070  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80497074  7C 08 03 A6 */	mtlr r0
/* 80497078  38 21 00 30 */	addi r1, r1, 0x30
/* 8049707C  4E 80 00 20 */	blr 
