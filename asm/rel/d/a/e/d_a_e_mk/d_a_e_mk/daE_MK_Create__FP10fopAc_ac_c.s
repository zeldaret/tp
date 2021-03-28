lbl_8071BD14:
/* 8071BD14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8071BD18  7C 08 02 A6 */	mflr r0
/* 8071BD1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8071BD20  39 61 00 40 */	addi r11, r1, 0x40
/* 8071BD24  4B C4 64 B0 */	b _savegpr_27
/* 8071BD28  7C 7E 1B 78 */	mr r30, r3
/* 8071BD2C  3C 80 80 72 */	lis r4, lit_1109@ha
/* 8071BD30  3B A4 CA 68 */	addi r29, r4, lit_1109@l
/* 8071BD34  3C 80 80 72 */	lis r4, lit_3777@ha
/* 8071BD38  3B E4 C5 44 */	addi r31, r4, lit_3777@l
/* 8071BD3C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8071BD40  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8071BD44  40 82 00 1C */	bne lbl_8071BD60
/* 8071BD48  28 1E 00 00 */	cmplwi r30, 0
/* 8071BD4C  41 82 00 08 */	beq lbl_8071BD54
/* 8071BD50  48 00 04 41 */	bl __ct__10e_mk_classFv
lbl_8071BD54:
/* 8071BD54  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8071BD58  60 00 00 08 */	ori r0, r0, 8
/* 8071BD5C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8071BD60:
/* 8071BD60  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8071BD64  3C 80 80 72 */	lis r4, stringBase0@ha
/* 8071BD68  38 84 C7 E8 */	addi r4, r4, stringBase0@l
/* 8071BD6C  4B 91 11 50 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8071BD70  7C 7C 1B 78 */	mr r28, r3
/* 8071BD74  2C 1C 00 04 */	cmpwi r28, 4
/* 8071BD78  40 82 03 FC */	bne lbl_8071C174
/* 8071BD7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071BD80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071BD84  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8071BD88  3C 80 80 72 */	lis r4, stringBase0@ha
/* 8071BD8C  38 84 C7 E8 */	addi r4, r4, stringBase0@l
/* 8071BD90  38 84 00 0C */	addi r4, r4, 0xc
/* 8071BD94  4B C4 CC 00 */	b strcmp
/* 8071BD98  2C 03 00 00 */	cmpwi r3, 0
/* 8071BD9C  40 82 00 28 */	bne lbl_8071BDC4
/* 8071BDA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071BDA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071BDA8  38 63 09 58 */	addi r3, r3, 0x958
/* 8071BDAC  38 80 00 07 */	li r4, 7
/* 8071BDB0  4B 91 8B 84 */	b isDungeonItem__12dSv_memBit_cCFi
/* 8071BDB4  2C 03 00 00 */	cmpwi r3, 0
/* 8071BDB8  41 82 00 0C */	beq lbl_8071BDC4
/* 8071BDBC  38 60 00 05 */	li r3, 5
/* 8071BDC0  48 00 03 B8 */	b lbl_8071C178
lbl_8071BDC4:
/* 8071BDC4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8071BDC8  54 04 46 3E */	srwi r4, r0, 0x18
/* 8071BDCC  28 04 00 FF */	cmplwi r4, 0xff
/* 8071BDD0  41 82 00 28 */	beq lbl_8071BDF8
/* 8071BDD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071BDD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071BDDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071BDE0  7C 05 07 74 */	extsb r5, r0
/* 8071BDE4  4B 91 95 7C */	b isSwitch__10dSv_info_cCFii
/* 8071BDE8  2C 03 00 00 */	cmpwi r3, 0
/* 8071BDEC  41 82 00 0C */	beq lbl_8071BDF8
/* 8071BDF0  38 60 00 05 */	li r3, 5
/* 8071BDF4  48 00 03 84 */	b lbl_8071C178
lbl_8071BDF8:
/* 8071BDF8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8071BDFC  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 8071BE00  7F C3 F3 78 */	mr r3, r30
/* 8071BE04  3C 80 80 72 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8071BE08  38 84 BA 34 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8071BE0C  38 A0 56 F0 */	li r5, 0x56f0
/* 8071BE10  4B 8F E6 A0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8071BE14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8071BE18  40 82 00 0C */	bne lbl_8071BE24
/* 8071BE1C  38 60 00 05 */	li r3, 5
/* 8071BE20  48 00 03 58 */	b lbl_8071C178
lbl_8071BE24:
/* 8071BE24  38 00 00 00 */	li r0, 0
/* 8071BE28  98 1D 01 28 */	stb r0, 0x128(r29)
/* 8071BE2C  88 1D 00 A2 */	lbz r0, 0xa2(r29)
/* 8071BE30  28 00 00 00 */	cmplwi r0, 0
/* 8071BE34  40 82 00 1C */	bne lbl_8071BE50
/* 8071BE38  38 00 00 01 */	li r0, 1
/* 8071BE3C  98 1E 0C F5 */	stb r0, 0xcf5(r30)
/* 8071BE40  98 1D 00 A2 */	stb r0, 0xa2(r29)
/* 8071BE44  38 00 FF FF */	li r0, -1
/* 8071BE48  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8071BE4C  98 03 00 04 */	stb r0, 4(r3)
lbl_8071BE50:
/* 8071BE50  38 00 00 04 */	li r0, 4
/* 8071BE54  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8071BE58  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8071BE5C  80 63 00 04 */	lwz r3, 4(r3)
/* 8071BE60  38 03 00 24 */	addi r0, r3, 0x24
/* 8071BE64  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8071BE68  7F C3 F3 78 */	mr r3, r30
/* 8071BE6C  C0 3F 02 18 */	lfs f1, 0x218(r31)
/* 8071BE70  FC 40 08 90 */	fmr f2, f1
/* 8071BE74  FC 60 08 90 */	fmr f3, f1
/* 8071BE78  4B 8F E6 B0 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8071BE7C  7F C3 F3 78 */	mr r3, r30
/* 8071BE80  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8071BE84  FC 40 08 90 */	fmr f2, f1
/* 8071BE88  FC 60 08 90 */	fmr f3, f1
/* 8071BE8C  4B 8F E6 AC */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8071BE90  38 00 00 00 */	li r0, 0
/* 8071BE94  90 01 00 08 */	stw r0, 8(r1)
/* 8071BE98  38 7E 07 60 */	addi r3, r30, 0x760
/* 8071BE9C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8071BEA0  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8071BEA4  7F C6 F3 78 */	mr r6, r30
/* 8071BEA8  38 E0 00 01 */	li r7, 1
/* 8071BEAC  39 1E 07 20 */	addi r8, r30, 0x720
/* 8071BEB0  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8071BEB4  39 40 00 00 */	li r10, 0
/* 8071BEB8  4B 95 A3 90 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8071BEBC  38 7E 07 20 */	addi r3, r30, 0x720
/* 8071BEC0  C0 3F 02 64 */	lfs f1, 0x264(r31)
/* 8071BEC4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 8071BEC8  4B 95 A0 90 */	b SetWall__12dBgS_AcchCirFff
/* 8071BECC  38 00 00 C8 */	li r0, 0xc8
/* 8071BED0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8071BED4  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 8071BED8  38 7E 06 10 */	addi r3, r30, 0x610
/* 8071BEDC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8071BEE0  38 BE 05 38 */	addi r5, r30, 0x538
/* 8071BEE4  38 C0 00 03 */	li r6, 3
/* 8071BEE8  38 E0 00 01 */	li r7, 1
/* 8071BEEC  4B BA 51 A8 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8071BEF0  38 1E 06 10 */	addi r0, r30, 0x610
/* 8071BEF4  90 1E 09 40 */	stw r0, 0x940(r30)
/* 8071BEF8  38 00 00 04 */	li r0, 4
/* 8071BEFC  98 1E 05 46 */	stb r0, 0x546(r30)
/* 8071BF00  38 7E 09 5C */	addi r3, r30, 0x95c
/* 8071BF04  38 80 00 FF */	li r4, 0xff
/* 8071BF08  38 A0 00 00 */	li r5, 0
/* 8071BF0C  7F C6 F3 78 */	mr r6, r30
/* 8071BF10  4B 96 79 50 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8071BF14  38 7E 0A D0 */	addi r3, r30, 0xad0
/* 8071BF18  3C 80 80 72 */	lis r4, cc_sph_src@ha
/* 8071BF1C  38 84 C9 78 */	addi r4, r4, cc_sph_src@l
/* 8071BF20  4B 96 8B 14 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8071BF24  38 1E 09 5C */	addi r0, r30, 0x95c
/* 8071BF28  90 1E 0B 14 */	stw r0, 0xb14(r30)
/* 8071BF2C  38 7E 09 98 */	addi r3, r30, 0x998
/* 8071BF30  3C 80 80 72 */	lis r4, cc_sph_src@ha
/* 8071BF34  38 84 C9 78 */	addi r4, r4, cc_sph_src@l
/* 8071BF38  4B 96 8A FC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8071BF3C  38 1E 09 5C */	addi r0, r30, 0x95c
/* 8071BF40  90 1E 09 DC */	stw r0, 0x9dc(r30)
/* 8071BF44  80 1E 0A 34 */	lwz r0, 0xa34(r30)
/* 8071BF48  60 00 00 04 */	ori r0, r0, 4
/* 8071BF4C  90 1E 0A 34 */	stw r0, 0xa34(r30)
/* 8071BF50  38 00 00 01 */	li r0, 1
/* 8071BF54  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 8071BF58  98 1E 06 0D */	stb r0, 0x60d(r30)
/* 8071BF5C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071BF60  2C 00 00 04 */	cmpwi r0, 4
/* 8071BF64  40 82 00 70 */	bne lbl_8071BFD4
/* 8071BF68  38 00 00 23 */	li r0, 0x23
/* 8071BF6C  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 8071BF70  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8071BF74  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8071BF78  C0 1F 02 68 */	lfs f0, 0x268(r31)
/* 8071BF7C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8071BF80  C0 1F 02 6C */	lfs f0, 0x26c(r31)
/* 8071BF84  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8071BF88  38 00 00 00 */	li r0, 0
/* 8071BF8C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8071BF90  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8071BF94  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 8071BF98  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8071BF9C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 8071BFA0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8071BFA4  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 8071BFA8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8071BFAC  B0 1E 04 B4 */	sth r0, 0x4b4(r30)
/* 8071BFB0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8071BFB4  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 8071BFB8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8071BFBC  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 8071BFC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071BFC4  98 1E 04 BA */	stb r0, 0x4ba(r30)
/* 8071BFC8  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 8071BFCC  98 1E 04 BB */	stb r0, 0x4bb(r30)
/* 8071BFD0  48 00 01 80 */	b lbl_8071C150
lbl_8071BFD4:
/* 8071BFD4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8071BFD8  D0 1D 00 94 */	stfs f0, 0x94(r29)
/* 8071BFDC  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 8071BFE0  38 7D 00 94 */	addi r3, r29, 0x94
/* 8071BFE4  D0 23 00 04 */	stfs f1, 4(r3)
/* 8071BFE8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8071BFEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8071BFF0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8071BFF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8071BFF8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8071BFFC  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8071C000  B0 1D 00 A0 */	sth r0, 0xa0(r29)
/* 8071C004  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8071C008  54 1B 86 3E */	rlwinm r27, r0, 0x10, 0x18, 0x1f
/* 8071C00C  28 1B 00 FF */	cmplwi r27, 0xff
/* 8071C010  41 82 00 64 */	beq lbl_8071C074
/* 8071C014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071C018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071C01C  7F 64 DB 78 */	mr r4, r27
/* 8071C020  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071C024  7C 05 07 74 */	extsb r5, r0
/* 8071C028  4B 91 93 38 */	b isSwitch__10dSv_info_cCFii
/* 8071C02C  2C 03 00 00 */	cmpwi r3, 0
/* 8071C030  41 82 00 44 */	beq lbl_8071C074
/* 8071C034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071C038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071C03C  7F 64 DB 78 */	mr r4, r27
/* 8071C040  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071C044  7C 05 07 74 */	extsb r5, r0
/* 8071C048  4B 91 92 68 */	b offSwitch__10dSv_info_cFii
/* 8071C04C  38 00 00 00 */	li r0, 0
/* 8071C050  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 8071C054  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8071C058  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8071C05C  80 63 00 00 */	lwz r3, 0(r3)
/* 8071C060  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8071C064  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000008@ha */
/* 8071C068  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x01000008@l */
/* 8071C06C  4B B9 34 30 */	b subBgmStart__8Z2SeqMgrFUl
/* 8071C070  48 00 00 E0 */	b lbl_8071C150
lbl_8071C074:
/* 8071C074  38 00 00 14 */	li r0, 0x14
/* 8071C078  B0 1E 06 B6 */	sth r0, 0x6b6(r30)
/* 8071C07C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8071C080  54 00 00 0E */	rlwinm r0, r0, 0, 0, 7
/* 8071C084  64 1B 00 FF */	oris r27, r0, 0xff
/* 8071C088  63 7B FF 01 */	ori r27, r27, 0xff01
/* 8071C08C  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 8071C090  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8071C094  C0 1F 02 74 */	lfs f0, 0x274(r31)
/* 8071C098  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8071C09C  C0 1F 02 78 */	lfs f0, 0x278(r31)
/* 8071C0A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8071C0A4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071C0A8  7C 07 07 74 */	extsb r7, r0
/* 8071C0AC  38 00 00 00 */	li r0, 0
/* 8071C0B0  90 01 00 08 */	stw r0, 8(r1)
/* 8071C0B4  38 60 01 C5 */	li r3, 0x1c5
/* 8071C0B8  28 1E 00 00 */	cmplwi r30, 0
/* 8071C0BC  41 82 00 0C */	beq lbl_8071C0C8
/* 8071C0C0  80 9E 00 04 */	lwz r4, 4(r30)
/* 8071C0C4  48 00 00 08 */	b lbl_8071C0CC
lbl_8071C0C8:
/* 8071C0C8  38 80 FF FF */	li r4, -1
lbl_8071C0CC:
/* 8071C0CC  7F 65 DB 78 */	mr r5, r27
/* 8071C0D0  38 C1 00 10 */	addi r6, r1, 0x10
/* 8071C0D4  39 00 00 00 */	li r8, 0
/* 8071C0D8  39 20 00 00 */	li r9, 0
/* 8071C0DC  39 40 FF FF */	li r10, -1
/* 8071C0E0  4B 8F DE 10 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8071C0E4  90 7E 07 10 */	stw r3, 0x710(r30)
/* 8071C0E8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8071C0EC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8071C0F0  C0 1F 02 74 */	lfs f0, 0x274(r31)
/* 8071C0F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8071C0F8  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 8071C0FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8071C100  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071C104  7C 07 07 74 */	extsb r7, r0
/* 8071C108  38 00 00 00 */	li r0, 0
/* 8071C10C  90 01 00 08 */	stw r0, 8(r1)
/* 8071C110  38 60 01 C5 */	li r3, 0x1c5
/* 8071C114  28 1E 00 00 */	cmplwi r30, 0
/* 8071C118  41 82 00 0C */	beq lbl_8071C124
/* 8071C11C  80 9E 00 04 */	lwz r4, 4(r30)
/* 8071C120  48 00 00 08 */	b lbl_8071C128
lbl_8071C124:
/* 8071C124  38 80 FF FF */	li r4, -1
lbl_8071C128:
/* 8071C128  7F 65 DB 78 */	mr r5, r27
/* 8071C12C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8071C130  39 00 00 00 */	li r8, 0
/* 8071C134  39 20 00 00 */	li r9, 0
/* 8071C138  39 40 FF FF */	li r10, -1
/* 8071C13C  4B 8F DD B4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8071C140  90 7E 07 14 */	stw r3, 0x714(r30)
/* 8071C144  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8071C148  60 00 40 00 */	ori r0, r0, 0x4000
/* 8071C14C  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_8071C150:
/* 8071C150  C0 1F 02 80 */	lfs f0, 0x280(r31)
/* 8071C154  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8071C158  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8071C15C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8071C160  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8071C164  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071C168  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8071C16C  7F C3 F3 78 */	mr r3, r30
/* 8071C170  4B FF ED A5 */	bl daE_MK_Execute__FP10e_mk_class
lbl_8071C174:
/* 8071C174  7F 83 E3 78 */	mr r3, r28
lbl_8071C178:
/* 8071C178  39 61 00 40 */	addi r11, r1, 0x40
/* 8071C17C  4B C4 60 A4 */	b _restgpr_27
/* 8071C180  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8071C184  7C 08 03 A6 */	mtlr r0
/* 8071C188  38 21 00 40 */	addi r1, r1, 0x40
/* 8071C18C  4E 80 00 20 */	blr 
