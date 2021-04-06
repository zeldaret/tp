lbl_80480920:
/* 80480920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80480924  7C 08 02 A6 */	mflr r0
/* 80480928  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048092C  39 61 00 20 */	addi r11, r1, 0x20
/* 80480930  4B EE 18 AD */	bl _savegpr_29
/* 80480934  7C 7F 1B 78 */	mr r31, r3
/* 80480938  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048093C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80480940  40 82 00 BC */	bne lbl_804809FC
/* 80480944  7F E0 FB 79 */	or. r0, r31, r31
/* 80480948  41 82 00 A8 */	beq lbl_804809F0
/* 8048094C  7C 1E 03 78 */	mr r30, r0
/* 80480950  4B BF 7C D5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80480954  3C 60 80 48 */	lis r3, __vt__Q212daObjMovebox5Act_c@ha /* 0x80481828@ha */
/* 80480958  38 03 18 28 */	addi r0, r3, __vt__Q212daObjMovebox5Act_c@l /* 0x80481828@l */
/* 8048095C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80480960  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80480964  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80480968  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 8048096C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80480970  4B C0 2D F1 */	bl __ct__10dCcD_GSttsFv
/* 80480974  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80480978  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8048097C  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80480980  38 03 00 20 */	addi r0, r3, 0x20
/* 80480984  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80480988  3B BE 05 EC */	addi r29, r30, 0x5ec
/* 8048098C  7F A3 EB 78 */	mr r3, r29
/* 80480990  4B C0 30 99 */	bl __ct__12dCcD_GObjInfFv
/* 80480994  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80480998  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8048099C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 804809A0  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha /* 0x804817E0@ha */
/* 804809A4  38 03 17 E0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804817E0@l */
/* 804809A8  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 804809AC  3C 60 80 48 */	lis r3, __vt__8cM3dGCyl@ha /* 0x804817D4@ha */
/* 804809B0  38 03 17 D4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x804817D4@l */
/* 804809B4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 804809B8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 804809BC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 804809C0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 804809C4  38 03 00 58 */	addi r0, r3, 0x58
/* 804809C8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 804809CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 804809D0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 804809D4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 804809D8  38 03 00 2C */	addi r0, r3, 0x2c
/* 804809DC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 804809E0  38 03 00 84 */	addi r0, r3, 0x84
/* 804809E4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 804809E8  38 7E 07 28 */	addi r3, r30, 0x728
/* 804809EC  4B FF D1 01 */	bl __ct__Q212daObjMovebox5Bgc_cFv
lbl_804809F0:
/* 804809F0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804809F4  60 00 00 08 */	ori r0, r0, 8
/* 804809F8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804809FC:
/* 804809FC  7F E3 FB 78 */	mr r3, r31
/* 80480A00  38 80 00 04 */	li r4, 4
/* 80480A04  38 A0 00 18 */	li r5, 0x18
/* 80480A08  48 00 02 D1 */	bl func_80480CD8
/* 80480A0C  90 7F 08 AC */	stw r3, 0x8ac(r31)
/* 80480A10  7F E3 FB 78 */	mr r3, r31
/* 80480A14  4B FF DC 6D */	bl prmX_init__Q212daObjMovebox5Act_cFv
/* 80480A18  7F E3 FB 78 */	mr r3, r31
/* 80480A1C  4B FF DC 35 */	bl prmZ_init__Q212daObjMovebox5Act_cFv
/* 80480A20  7F E3 FB 78 */	mr r3, r31
/* 80480A24  4B FF EB 0D */	bl chk_appear__Q212daObjMovebox5Act_cCFv
/* 80480A28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80480A2C  40 82 00 0C */	bne lbl_80480A38
/* 80480A30  38 60 00 05 */	li r3, 5
/* 80480A34  48 00 00 88 */	b lbl_80480ABC
lbl_80480A38:
/* 80480A38  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80480A3C  80 1F 08 AC */	lwz r0, 0x8ac(r31)
/* 80480A40  54 00 10 3A */	slwi r0, r0, 2
/* 80480A44  3C 80 80 48 */	lis r4, M_arcname__Q212daObjMovebox5Act_c@ha /* 0x80481104@ha */
/* 80480A48  38 84 11 04 */	addi r4, r4, M_arcname__Q212daObjMovebox5Act_c@l /* 0x80481104@l */
/* 80480A4C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80480A50  4B BA C4 6D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80480A54  2C 03 00 04 */	cmpwi r3, 4
/* 80480A58  40 82 00 64 */	bne lbl_80480ABC
/* 80480A5C  80 1F 08 AC */	lwz r0, 0x8ac(r31)
/* 80480A60  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 80480A64  3C 60 80 48 */	lis r3, M_attr__Q212daObjMovebox5Act_c@ha /* 0x80481168@ha */
/* 80480A68  38 03 11 68 */	addi r0, r3, M_attr__Q212daObjMovebox5Act_c@l /* 0x80481168@l */
/* 80480A6C  7C 60 22 14 */	add r3, r0, r4
/* 80480A70  83 C3 00 60 */	lwz r30, 0x60(r3)
/* 80480A74  7F E3 FB 78 */	mr r3, r31
/* 80480A78  4B FF DD 7D */	bl path_init__Q212daObjMovebox5Act_cFv
/* 80480A7C  80 BF 08 AC */	lwz r5, 0x8ac(r31)
/* 80480A80  7F E3 FB 78 */	mr r3, r31
/* 80480A84  54 A0 10 3A */	slwi r0, r5, 2
/* 80480A88  3C 80 80 48 */	lis r4, M_arcname__Q212daObjMovebox5Act_c@ha /* 0x80481104@ha */
/* 80480A8C  38 84 11 04 */	addi r4, r4, M_arcname__Q212daObjMovebox5Act_c@l /* 0x80481104@l */
/* 80480A90  7C 84 00 2E */	lwzx r4, r4, r0
/* 80480A94  1C C5 00 A0 */	mulli r6, r5, 0xa0
/* 80480A98  3C A0 80 48 */	lis r5, M_attr__Q212daObjMovebox5Act_c@ha /* 0x80481168@ha */
/* 80480A9C  38 05 11 68 */	addi r0, r5, M_attr__Q212daObjMovebox5Act_c@l /* 0x80481168@l */
/* 80480AA0  7C A0 32 14 */	add r5, r0, r6
/* 80480AA4  80 A5 00 5C */	lwz r5, 0x5c(r5)
/* 80480AA8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075B44@ha */
/* 80480AAC  38 C6 5B 44 */	addi r6, r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075B44@l */
/* 80480AB0  7F C7 F3 78 */	mr r7, r30
/* 80480AB4  39 00 00 00 */	li r8, 0
/* 80480AB8  4B BF 7D 05 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
lbl_80480ABC:
/* 80480ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 80480AC0  4B EE 17 69 */	bl _restgpr_29
/* 80480AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80480AC8  7C 08 03 A6 */	mtlr r0
/* 80480ACC  38 21 00 20 */	addi r1, r1, 0x20
/* 80480AD0  4E 80 00 20 */	blr 
