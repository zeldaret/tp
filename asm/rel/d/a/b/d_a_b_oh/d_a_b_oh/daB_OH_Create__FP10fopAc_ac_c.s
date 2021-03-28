lbl_8061D3E4:
/* 8061D3E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8061D3E8  7C 08 02 A6 */	mflr r0
/* 8061D3EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061D3F0  39 61 00 50 */	addi r11, r1, 0x50
/* 8061D3F4  4B D4 4D D0 */	b _savegpr_23
/* 8061D3F8  7C 7F 1B 78 */	mr r31, r3
/* 8061D3FC  3C 80 80 62 */	lis r4, lit_1109@ha
/* 8061D400  3B A4 DB 78 */	addi r29, r4, lit_1109@l
/* 8061D404  3C 80 80 62 */	lis r4, lit_3650@ha
/* 8061D408  3B C4 D9 D4 */	addi r30, r4, lit_3650@l
/* 8061D40C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8061D410  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8061D414  40 82 01 28 */	bne lbl_8061D53C
/* 8061D418  7F E0 FB 79 */	or. r0, r31, r31
/* 8061D41C  41 82 01 14 */	beq lbl_8061D530
/* 8061D420  7C 1C 03 78 */	mr r28, r0
/* 8061D424  4B 9F B7 40 */	b __ct__10fopAc_ac_cFv
/* 8061D428  38 7C 06 1C */	addi r3, r28, 0x61c
/* 8061D42C  3C 80 80 62 */	lis r4, __ct__5csXyzFv@ha
/* 8061D430  38 84 D9 38 */	addi r4, r4, __ct__5csXyzFv@l
/* 8061D434  3C A0 80 62 */	lis r5, __dt__5csXyzFv@ha
/* 8061D438  38 A5 D8 FC */	addi r5, r5, __dt__5csXyzFv@l
/* 8061D43C  38 C0 00 06 */	li r6, 6
/* 8061D440  38 E0 00 1E */	li r7, 0x1e
/* 8061D444  4B D4 49 1C */	b __construct_array
/* 8061D448  38 7C 06 D0 */	addi r3, r28, 0x6d0
/* 8061D44C  3C 80 80 62 */	lis r4, __ct__5csXyzFv@ha
/* 8061D450  38 84 D9 38 */	addi r4, r4, __ct__5csXyzFv@l
/* 8061D454  3C A0 80 62 */	lis r5, __dt__5csXyzFv@ha
/* 8061D458  38 A5 D8 FC */	addi r5, r5, __dt__5csXyzFv@l
/* 8061D45C  38 C0 00 06 */	li r6, 6
/* 8061D460  38 E0 00 1E */	li r7, 0x1e
/* 8061D464  4B D4 48 FC */	b __construct_array
/* 8061D468  38 7C 07 84 */	addi r3, r28, 0x784
/* 8061D46C  3C 80 80 62 */	lis r4, __ct__5csXyzFv@ha
/* 8061D470  38 84 D9 38 */	addi r4, r4, __ct__5csXyzFv@l
/* 8061D474  3C A0 80 62 */	lis r5, __dt__5csXyzFv@ha
/* 8061D478  38 A5 D8 FC */	addi r5, r5, __dt__5csXyzFv@l
/* 8061D47C  38 C0 00 06 */	li r6, 6
/* 8061D480  38 E0 00 1E */	li r7, 0x1e
/* 8061D484  4B D4 48 DC */	b __construct_array
/* 8061D488  38 7C 08 38 */	addi r3, r28, 0x838
/* 8061D48C  3C 80 80 62 */	lis r4, __ct__5csXyzFv@ha
/* 8061D490  38 84 D9 38 */	addi r4, r4, __ct__5csXyzFv@l
/* 8061D494  3C A0 80 62 */	lis r5, __dt__5csXyzFv@ha
/* 8061D498  38 A5 D8 FC */	addi r5, r5, __dt__5csXyzFv@l
/* 8061D49C  38 C0 00 06 */	li r6, 6
/* 8061D4A0  38 E0 00 1E */	li r7, 0x1e
/* 8061D4A4  4B D4 48 BC */	b __construct_array
/* 8061D4A8  38 7C 0A 58 */	addi r3, r28, 0xa58
/* 8061D4AC  3C 80 80 62 */	lis r4, __ct__4cXyzFv@ha
/* 8061D4B0  38 84 D8 F8 */	addi r4, r4, __ct__4cXyzFv@l
/* 8061D4B4  3C A0 80 62 */	lis r5, __dt__4cXyzFv@ha
/* 8061D4B8  38 A5 BB 18 */	addi r5, r5, __dt__4cXyzFv@l
/* 8061D4BC  38 C0 00 0C */	li r6, 0xc
/* 8061D4C0  38 E0 00 1F */	li r7, 0x1f
/* 8061D4C4  4B D4 48 9C */	b __construct_array
/* 8061D4C8  38 7C 0B CC */	addi r3, r28, 0xbcc
/* 8061D4CC  3C 80 80 62 */	lis r4, __ct__5csXyzFv@ha
/* 8061D4D0  38 84 D9 38 */	addi r4, r4, __ct__5csXyzFv@l
/* 8061D4D4  3C A0 80 62 */	lis r5, __dt__5csXyzFv@ha
/* 8061D4D8  38 A5 D8 FC */	addi r5, r5, __dt__5csXyzFv@l
/* 8061D4DC  38 C0 00 06 */	li r6, 6
/* 8061D4E0  38 E0 00 1F */	li r7, 0x1f
/* 8061D4E4  4B D4 48 7C */	b __construct_array
/* 8061D4E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8061D4EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8061D4F0  90 1C 0C C8 */	stw r0, 0xcc8(r28)
/* 8061D4F4  38 7C 0C CC */	addi r3, r28, 0xccc
/* 8061D4F8  4B A6 62 68 */	b __ct__10dCcD_GSttsFv
/* 8061D4FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8061D500  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8061D504  90 7C 0C C8 */	stw r3, 0xcc8(r28)
/* 8061D508  38 03 00 20 */	addi r0, r3, 0x20
/* 8061D50C  90 1C 0C CC */	stw r0, 0xccc(r28)
/* 8061D510  38 7C 0C EC */	addi r3, r28, 0xcec
/* 8061D514  3C 80 80 62 */	lis r4, __ct__8dCcD_SphFv@ha
/* 8061D518  38 84 D7 E4 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 8061D51C  3C A0 80 62 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8061D520  38 A5 D7 18 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 8061D524  38 C0 01 38 */	li r6, 0x138
/* 8061D528  38 E0 00 0F */	li r7, 0xf
/* 8061D52C  4B D4 48 34 */	b __construct_array
lbl_8061D530:
/* 8061D530  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8061D534  60 00 00 08 */	ori r0, r0, 8
/* 8061D538  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8061D53C:
/* 8061D53C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8061D540  3C 80 80 62 */	lis r4, stringBase0@ha
/* 8061D544  38 84 DA 74 */	addi r4, r4, stringBase0@l
/* 8061D548  4B A0 F9 74 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8061D54C  7C 7C 1B 78 */	mr r28, r3
/* 8061D550  2C 1C 00 04 */	cmpwi r28, 4
/* 8061D554  40 82 01 A8 */	bne lbl_8061D6FC
/* 8061D558  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8061D55C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8061D560  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 8061D564  7F E3 FB 78 */	mr r3, r31
/* 8061D568  3C 80 80 62 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8061D56C  38 84 D0 B8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8061D570  38 A0 23 E0 */	li r5, 0x23e0
/* 8061D574  4B 9F CF 3C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8061D578  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8061D57C  40 82 00 0C */	bne lbl_8061D588
/* 8061D580  38 60 00 05 */	li r3, 5
/* 8061D584  48 00 01 7C */	b lbl_8061D700
lbl_8061D588:
/* 8061D588  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 8061D58C  28 00 00 00 */	cmplwi r0, 0
/* 8061D590  40 82 00 1C */	bne lbl_8061D5AC
/* 8061D594  38 00 00 01 */	li r0, 1
/* 8061D598  98 1F 1F 86 */	stb r0, 0x1f86(r31)
/* 8061D59C  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 8061D5A0  38 00 FF FF */	li r0, -1
/* 8061D5A4  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8061D5A8  98 03 00 04 */	stb r0, 4(r3)
lbl_8061D5AC:
/* 8061D5AC  38 00 03 E8 */	li r0, 0x3e8
/* 8061D5B0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8061D5B4  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8061D5B8  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8061D5BC  4B C4 A3 98 */	b cM_rndF__Ff
/* 8061D5C0  FC 00 08 1E */	fctiwz f0, f1
/* 8061D5C4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061D5C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061D5CC  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 8061D5D0  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8061D5D4  4B C4 A3 80 */	b cM_rndF__Ff
/* 8061D5D8  FC 00 08 1E */	fctiwz f0, f1
/* 8061D5DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8061D5E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D5E4  B0 1F 05 F6 */	sth r0, 0x5f6(r31)
/* 8061D5E8  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8061D5EC  4B C4 A3 68 */	b cM_rndF__Ff
/* 8061D5F0  FC 00 08 1E */	fctiwz f0, f1
/* 8061D5F4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8061D5F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8061D5FC  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 8061D600  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8061D604  4B C4 A3 50 */	b cM_rndF__Ff
/* 8061D608  FC 00 08 1E */	fctiwz f0, f1
/* 8061D60C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8061D610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061D614  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 8061D618  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8061D61C  4B C4 A3 38 */	b cM_rndF__Ff
/* 8061D620  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8061D624  EC 00 08 2A */	fadds f0, f0, f1
/* 8061D628  D0 1F 06 14 */	stfs f0, 0x614(r31)
/* 8061D62C  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 8061D630  38 80 00 FF */	li r4, 0xff
/* 8061D634  38 A0 00 00 */	li r5, 0
/* 8061D638  7F E6 FB 78 */	mr r6, r31
/* 8061D63C  4B A6 62 24 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8061D640  3A E0 00 00 */	li r23, 0
/* 8061D644  3B 60 00 00 */	li r27, 0
/* 8061D648  3C 60 80 62 */	lis r3, cc_sph_src@ha
/* 8061D64C  3B 23 DA AC */	addi r25, r3, cc_sph_src@l
/* 8061D650  3B 5F 0C B0 */	addi r26, r31, 0xcb0
lbl_8061D654:
/* 8061D654  7F 1F DA 14 */	add r24, r31, r27
/* 8061D658  38 78 0C EC */	addi r3, r24, 0xcec
/* 8061D65C  7F 24 CB 78 */	mr r4, r25
/* 8061D660  4B A6 73 D4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8061D664  93 58 0D 30 */	stw r26, 0xd30(r24)
/* 8061D668  80 18 0D 88 */	lwz r0, 0xd88(r24)
/* 8061D66C  60 00 00 04 */	ori r0, r0, 4
/* 8061D670  90 18 0D 88 */	stw r0, 0xd88(r24)
/* 8061D674  3A F7 00 01 */	addi r23, r23, 1
/* 8061D678  2C 17 00 0F */	cmpwi r23, 0xf
/* 8061D67C  3B 7B 01 38 */	addi r27, r27, 0x138
/* 8061D680  41 80 FF D4 */	blt lbl_8061D654
/* 8061D684  38 00 CB B8 */	li r0, -13384
/* 8061D688  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8061D68C  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 8061D690  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 8061D694  28 00 00 00 */	cmplwi r0, 0
/* 8061D698  41 82 00 50 */	beq lbl_8061D6E8
/* 8061D69C  38 00 00 01 */	li r0, 1
/* 8061D6A0  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 8061D6A4  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 8061D6A8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8061D6AC  4B C4 A2 A8 */	b cM_rndF__Ff
/* 8061D6B0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8061D6B4  EC 00 08 2A */	fadds f0, f0, f1
/* 8061D6B8  FC 00 00 1E */	fctiwz f0, f0
/* 8061D6BC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8061D6C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061D6C4  B0 1F 05 EC */	sth r0, 0x5ec(r31)
/* 8061D6C8  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8061D6CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8061D6D0  D0 1F 06 18 */	stfs f0, 0x618(r31)
/* 8061D6D4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8061D6D8  D0 1F 06 08 */	stfs f0, 0x608(r31)
/* 8061D6DC  38 00 00 01 */	li r0, 1
/* 8061D6E0  90 1D 00 60 */	stw r0, 0x60(r29)
/* 8061D6E4  48 00 00 10 */	b lbl_8061D6F4
lbl_8061D6E8:
/* 8061D6E8  38 00 00 00 */	li r0, 0
/* 8061D6EC  B0 1F 05 CE */	sth r0, 0x5ce(r31)
/* 8061D6F0  90 1D 00 60 */	stw r0, 0x60(r29)
lbl_8061D6F4:
/* 8061D6F4  7F E3 FB 78 */	mr r3, r31
/* 8061D6F8  4B FF F6 A1 */	bl daB_OH_Execute__FP10b_oh_class
lbl_8061D6FC:
/* 8061D6FC  7F 83 E3 78 */	mr r3, r28
lbl_8061D700:
/* 8061D700  39 61 00 50 */	addi r11, r1, 0x50
/* 8061D704  4B D4 4B 0C */	b _restgpr_23
/* 8061D708  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061D70C  7C 08 03 A6 */	mtlr r0
/* 8061D710  38 21 00 50 */	addi r1, r1, 0x50
/* 8061D714  4E 80 00 20 */	blr 
