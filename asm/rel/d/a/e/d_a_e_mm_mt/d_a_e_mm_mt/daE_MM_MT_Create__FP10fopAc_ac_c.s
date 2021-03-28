lbl_80724EE0:
/* 80724EE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80724EE4  7C 08 02 A6 */	mflr r0
/* 80724EE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80724EEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80724EF0  4B C3 D2 DC */	b _savegpr_25
/* 80724EF4  7C 7B 1B 78 */	mr r27, r3
/* 80724EF8  3C 80 80 72 */	lis r4, lit_3789@ha
/* 80724EFC  3B E4 58 58 */	addi r31, r4, lit_3789@l
/* 80724F00  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80724F04  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80724F08  40 82 01 3C */	bne lbl_80725044
/* 80724F0C  7F 60 DB 79 */	or. r0, r27, r27
/* 80724F10  41 82 01 28 */	beq lbl_80725038
/* 80724F14  7C 1A 03 78 */	mr r26, r0
/* 80724F18  4B 8F 3C 4C */	b __ct__10fopAc_ac_cFv
/* 80724F1C  38 7A 05 B4 */	addi r3, r26, 0x5b4
/* 80724F20  4B B9 C0 44 */	b __ct__15Z2CreatureEnemyFv
/* 80724F24  38 7A 06 AC */	addi r3, r26, 0x6ac
/* 80724F28  4B 95 0F 84 */	b __ct__12dBgS_AcchCirFv
/* 80724F2C  3B 3A 06 EC */	addi r25, r26, 0x6ec
/* 80724F30  7F 23 CB 78 */	mr r3, r25
/* 80724F34  4B 95 11 6C */	b __ct__9dBgS_AcchFv
/* 80724F38  3C 60 80 72 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80724F3C  38 63 5A 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80724F40  90 79 00 10 */	stw r3, 0x10(r25)
/* 80724F44  38 03 00 0C */	addi r0, r3, 0xc
/* 80724F48  90 19 00 14 */	stw r0, 0x14(r25)
/* 80724F4C  38 03 00 18 */	addi r0, r3, 0x18
/* 80724F50  90 19 00 24 */	stw r0, 0x24(r25)
/* 80724F54  38 79 00 14 */	addi r3, r25, 0x14
/* 80724F58  4B 95 3F 10 */	b SetObj__16dBgS_PolyPassChkFv
/* 80724F5C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80724F60  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80724F64  90 1A 08 DC */	stw r0, 0x8dc(r26)
/* 80724F68  38 7A 08 E0 */	addi r3, r26, 0x8e0
/* 80724F6C  4B 95 E7 F4 */	b __ct__10dCcD_GSttsFv
/* 80724F70  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80724F74  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80724F78  90 7A 08 DC */	stw r3, 0x8dc(r26)
/* 80724F7C  38 03 00 20 */	addi r0, r3, 0x20
/* 80724F80  90 1A 08 E0 */	stw r0, 0x8e0(r26)
/* 80724F84  3B 3A 09 00 */	addi r25, r26, 0x900
/* 80724F88  7F 23 CB 78 */	mr r3, r25
/* 80724F8C  4B 95 EA 9C */	b __ct__12dCcD_GObjInfFv
/* 80724F90  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80724F94  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80724F98  90 19 01 20 */	stw r0, 0x120(r25)
/* 80724F9C  3C 60 80 72 */	lis r3, __vt__8cM3dGAab@ha
/* 80724FA0  38 03 5A 6C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80724FA4  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80724FA8  3C 60 80 72 */	lis r3, __vt__8cM3dGSph@ha
/* 80724FAC  38 03 5A 60 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80724FB0  90 19 01 34 */	stw r0, 0x134(r25)
/* 80724FB4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80724FB8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80724FBC  90 79 01 20 */	stw r3, 0x120(r25)
/* 80724FC0  3B C3 00 58 */	addi r30, r3, 0x58
/* 80724FC4  93 D9 01 34 */	stw r30, 0x134(r25)
/* 80724FC8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80724FCC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80724FD0  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80724FD4  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80724FD8  93 B9 01 20 */	stw r29, 0x120(r25)
/* 80724FDC  3B 83 00 84 */	addi r28, r3, 0x84
/* 80724FE0  93 99 01 34 */	stw r28, 0x134(r25)
/* 80724FE4  3B 3A 0A 38 */	addi r25, r26, 0xa38
/* 80724FE8  7F 23 CB 78 */	mr r3, r25
/* 80724FEC  4B 95 EA 3C */	b __ct__12dCcD_GObjInfFv
/* 80724FF0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80724FF4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80724FF8  90 19 01 20 */	stw r0, 0x120(r25)
/* 80724FFC  3C 60 80 72 */	lis r3, __vt__8cM3dGAab@ha
/* 80725000  38 03 5A 6C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80725004  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80725008  3C 60 80 72 */	lis r3, __vt__8cM3dGSph@ha
/* 8072500C  38 03 5A 60 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80725010  90 19 01 34 */	stw r0, 0x134(r25)
/* 80725014  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80725018  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 8072501C  90 19 01 20 */	stw r0, 0x120(r25)
/* 80725020  93 D9 01 34 */	stw r30, 0x134(r25)
/* 80725024  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80725028  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 8072502C  90 19 00 3C */	stw r0, 0x3c(r25)
/* 80725030  93 B9 01 20 */	stw r29, 0x120(r25)
/* 80725034  93 99 01 34 */	stw r28, 0x134(r25)
lbl_80725038:
/* 80725038  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 8072503C  60 00 00 08 */	ori r0, r0, 8
/* 80725040  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80725044:
/* 80725044  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 80725048  3C 80 80 72 */	lis r4, stringBase0@ha
/* 8072504C  38 84 59 2C */	addi r4, r4, stringBase0@l
/* 80725050  4B 90 7E 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80725054  7C 7C 1B 78 */	mr r28, r3
/* 80725058  2C 1C 00 04 */	cmpwi r28, 4
/* 8072505C  40 82 01 A0 */	bne lbl_807251FC
/* 80725060  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80725064  98 1B 06 58 */	stb r0, 0x658(r27)
/* 80725068  7F 63 DB 78 */	mr r3, r27
/* 8072506C  3C 80 80 72 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80725070  38 84 4E 58 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80725074  38 A0 08 50 */	li r5, 0x850
/* 80725078  4B 8F 54 38 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8072507C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80725080  40 82 00 0C */	bne lbl_8072508C
/* 80725084  38 60 00 05 */	li r3, 5
/* 80725088  48 00 01 78 */	b lbl_80725200
lbl_8072508C:
/* 8072508C  80 7B 06 5C */	lwz r3, 0x65c(r27)
/* 80725090  38 03 00 24 */	addi r0, r3, 0x24
/* 80725094  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80725098  7F 63 DB 78 */	mr r3, r27
/* 8072509C  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 807250A0  FC 40 08 90 */	fmr f2, f1
/* 807250A4  FC 60 08 90 */	fmr f3, f1
/* 807250A8  4B 8F 54 80 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807250AC  7F 63 DB 78 */	mr r3, r27
/* 807250B0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807250B4  FC 40 08 90 */	fmr f2, f1
/* 807250B8  FC 60 08 90 */	fmr f3, f1
/* 807250BC  4B 8F 54 7C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807250C0  38 7B 08 C4 */	addi r3, r27, 0x8c4
/* 807250C4  38 80 00 64 */	li r4, 0x64
/* 807250C8  38 A0 00 00 */	li r5, 0
/* 807250CC  7F 66 DB 78 */	mr r6, r27
/* 807250D0  4B 95 E7 90 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807250D4  88 1B 04 99 */	lbz r0, 0x499(r27)
/* 807250D8  2C 00 00 01 */	cmpwi r0, 1
/* 807250DC  40 82 00 10 */	bne lbl_807250EC
/* 807250E0  38 00 00 FE */	li r0, 0xfe
/* 807250E4  98 1B 08 D8 */	stb r0, 0x8d8(r27)
/* 807250E8  48 00 00 0C */	b lbl_807250F4
lbl_807250EC:
/* 807250EC  38 00 00 C8 */	li r0, 0xc8
/* 807250F0  98 1B 08 D8 */	stb r0, 0x8d8(r27)
lbl_807250F4:
/* 807250F4  38 00 07 D0 */	li r0, 0x7d0
/* 807250F8  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 807250FC  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 80725100  38 7B 09 00 */	addi r3, r27, 0x900
/* 80725104  3C 80 80 72 */	lis r4, cc_sph_src@ha
/* 80725108  38 84 59 6C */	addi r4, r4, cc_sph_src@l
/* 8072510C  4B 95 F9 28 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80725110  38 1B 08 C4 */	addi r0, r27, 0x8c4
/* 80725114  90 1B 09 44 */	stw r0, 0x944(r27)
/* 80725118  88 1B 04 99 */	lbz r0, 0x499(r27)
/* 8072511C  2C 00 00 01 */	cmpwi r0, 1
/* 80725120  40 82 00 30 */	bne lbl_80725150
/* 80725124  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80725128  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 8072512C  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 80725130  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBBDFF@ha */
/* 80725134  38 03 BD FF */	addi r0, r3, 0xBDFF /* 0xD8FBBDFF@l */
/* 80725138  90 1B 09 10 */	stw r0, 0x910(r27)
/* 8072513C  38 00 00 FE */	li r0, 0xfe
/* 80725140  98 1B 08 D8 */	stb r0, 0x8d8(r27)
/* 80725144  38 00 00 02 */	li r0, 2
/* 80725148  98 1B 09 14 */	stb r0, 0x914(r27)
/* 8072514C  48 00 00 24 */	b lbl_80725170
lbl_80725150:
/* 80725150  38 00 00 C8 */	li r0, 0xc8
/* 80725154  98 1B 08 D8 */	stb r0, 0x8d8(r27)
/* 80725158  38 7B 0A 38 */	addi r3, r27, 0xa38
/* 8072515C  3C 80 80 72 */	lis r4, hk_sph_src@ha
/* 80725160  38 84 59 AC */	addi r4, r4, hk_sph_src@l
/* 80725164  4B 95 F8 D0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80725168  38 1B 08 C4 */	addi r0, r27, 0x8c4
/* 8072516C  90 1B 0A 7C */	stw r0, 0xa7c(r27)
lbl_80725170:
/* 80725170  38 00 00 00 */	li r0, 0
/* 80725174  90 01 00 08 */	stw r0, 8(r1)
/* 80725178  38 7B 06 EC */	addi r3, r27, 0x6ec
/* 8072517C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80725180  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 80725184  7F 66 DB 78 */	mr r6, r27
/* 80725188  38 E0 00 01 */	li r7, 1
/* 8072518C  39 1B 06 AC */	addi r8, r27, 0x6ac
/* 80725190  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 80725194  39 40 00 00 */	li r10, 0
/* 80725198  4B 95 10 B0 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8072519C  38 7B 06 AC */	addi r3, r27, 0x6ac
/* 807251A0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807251A4  FC 40 08 90 */	fmr f2, f1
/* 807251A8  4B 95 0D B0 */	b SetWall__12dBgS_AcchCirFff
/* 807251AC  38 7B 05 B4 */	addi r3, r27, 0x5b4
/* 807251B0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 807251B4  38 BB 05 38 */	addi r5, r27, 0x538
/* 807251B8  38 C0 00 03 */	li r6, 3
/* 807251BC  38 E0 00 01 */	li r7, 1
/* 807251C0  4B B9 BE D4 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807251C4  38 1B 05 B4 */	addi r0, r27, 0x5b4
/* 807251C8  90 1B 0B 78 */	stw r0, 0xb78(r27)
/* 807251CC  38 00 00 09 */	li r0, 9
/* 807251D0  98 1B 0B 8E */	stb r0, 0xb8e(r27)
/* 807251D4  38 00 00 07 */	li r0, 7
/* 807251D8  98 1B 05 48 */	stb r0, 0x548(r27)
/* 807251DC  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 807251E0  4B B4 27 74 */	b cM_rndF__Ff
/* 807251E4  FC 00 08 1E */	fctiwz f0, f1
/* 807251E8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807251EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807251F0  B0 1B 06 64 */	sth r0, 0x664(r27)
/* 807251F4  7F 63 DB 78 */	mr r3, r27
/* 807251F8  4B FF FB 49 */	bl daE_MM_MT_Execute__FP13e_mm_mt_class
lbl_807251FC:
/* 807251FC  7F 83 E3 78 */	mr r3, r28
lbl_80725200:
/* 80725200  39 61 00 40 */	addi r11, r1, 0x40
/* 80725204  4B C3 D0 14 */	b _restgpr_25
/* 80725208  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072520C  7C 08 03 A6 */	mtlr r0
/* 80725210  38 21 00 40 */	addi r1, r1, 0x40
/* 80725214  4E 80 00 20 */	blr 
