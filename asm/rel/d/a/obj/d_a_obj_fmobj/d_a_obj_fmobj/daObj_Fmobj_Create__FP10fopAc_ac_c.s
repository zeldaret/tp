lbl_8057CDE0:
/* 8057CDE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057CDE4  7C 08 02 A6 */	mflr r0
/* 8057CDE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057CDEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CDF0  4B DE 53 EC */	b _savegpr_29
/* 8057CDF4  7C 7E 1B 78 */	mr r30, r3
/* 8057CDF8  3C 80 80 58 */	lis r4, lit_3743@ha
/* 8057CDFC  3B E4 CF 68 */	addi r31, r4, lit_3743@l
/* 8057CE00  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8057CE04  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8057CE08  40 82 00 1C */	bne lbl_8057CE24
/* 8057CE0C  28 1E 00 00 */	cmplwi r30, 0
/* 8057CE10  41 82 00 08 */	beq lbl_8057CE18
/* 8057CE14  4B A9 BD 50 */	b __ct__10fopAc_ac_cFv
lbl_8057CE18:
/* 8057CE18  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8057CE1C  60 00 00 08 */	ori r0, r0, 8
/* 8057CE20  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8057CE24:
/* 8057CE24  38 7E 05 68 */	addi r3, r30, 0x568
/* 8057CE28  3C 80 80 58 */	lis r4, stringBase0@ha
/* 8057CE2C  38 84 CF 74 */	addi r4, r4, stringBase0@l
/* 8057CE30  4B AB 00 8C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8057CE34  7C 7D 1B 78 */	mr r29, r3
/* 8057CE38  2C 1D 00 04 */	cmpwi r29, 4
/* 8057CE3C  40 82 01 08 */	bne lbl_8057CF44
/* 8057CE40  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8057CE44  98 1E 05 70 */	stb r0, 0x570(r30)
/* 8057CE48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057CE4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057CE50  38 63 09 58 */	addi r3, r3, 0x958
/* 8057CE54  38 80 00 03 */	li r4, 3
/* 8057CE58  4B AB 7A DC */	b isDungeonItem__12dSv_memBit_cCFi
/* 8057CE5C  2C 03 00 00 */	cmpwi r3, 0
/* 8057CE60  41 82 00 0C */	beq lbl_8057CE6C
/* 8057CE64  38 60 00 05 */	li r3, 5
/* 8057CE68  48 00 00 E0 */	b lbl_8057CF48
lbl_8057CE6C:
/* 8057CE6C  7F C3 F3 78 */	mr r3, r30
/* 8057CE70  3C 80 80 58 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8057CE74  38 84 CC DC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8057CE78  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 8057CE7C  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 8057CE80  4B A9 D6 30 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8057CE84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057CE88  40 82 00 0C */	bne lbl_8057CE94
/* 8057CE8C  38 60 00 05 */	li r3, 5
/* 8057CE90  48 00 00 B8 */	b lbl_8057CF48
lbl_8057CE94:
/* 8057CE94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057CE98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057CE9C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057CEA0  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 8057CEA4  7F C5 F3 78 */	mr r5, r30
/* 8057CEA8  4B AF 7B 60 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8057CEAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057CEB0  41 82 00 0C */	beq lbl_8057CEBC
/* 8057CEB4  38 60 00 05 */	li r3, 5
/* 8057CEB8  48 00 00 90 */	b lbl_8057CF48
lbl_8057CEBC:
/* 8057CEBC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8057CEC0  38 03 00 24 */	addi r0, r3, 0x24
/* 8057CEC4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8057CEC8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8057CECC  4B CE AA 88 */	b cM_rndF__Ff
/* 8057CED0  FC 00 08 1E */	fctiwz f0, f1
/* 8057CED4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057CED8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8057CEDC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8057CEE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057CEE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057CEE8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8057CEEC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8057CEF0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8057CEF4  4B DC 99 F4 */	b PSMTXTrans
/* 8057CEF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057CEFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057CF00  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8057CF04  4B A8 F5 30 */	b mDoMtx_YrotM__FPA4_fs
/* 8057CF08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057CF0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057CF10  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 8057CF14  38 84 00 24 */	addi r4, r4, 0x24
/* 8057CF18  4B DC 95 98 */	b PSMTXCopy
/* 8057CF1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8057CF20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8057CF24  FC 60 08 90 */	fmr f3, f1
/* 8057CF28  4B A8 FE 74 */	b transM__14mDoMtx_stack_cFfff
/* 8057CF2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057CF30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057CF34  38 9E 05 88 */	addi r4, r30, 0x588
/* 8057CF38  4B DC 95 78 */	b PSMTXCopy
/* 8057CF3C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8057CF40  4B AF EA 80 */	b Move__4dBgWFv
lbl_8057CF44:
/* 8057CF44  7F A3 EB 78 */	mr r3, r29
lbl_8057CF48:
/* 8057CF48  39 61 00 20 */	addi r11, r1, 0x20
/* 8057CF4C  4B DE 52 DC */	b _restgpr_29
/* 8057CF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057CF54  7C 08 03 A6 */	mtlr r0
/* 8057CF58  38 21 00 20 */	addi r1, r1, 0x20
/* 8057CF5C  4E 80 00 20 */	blr 
