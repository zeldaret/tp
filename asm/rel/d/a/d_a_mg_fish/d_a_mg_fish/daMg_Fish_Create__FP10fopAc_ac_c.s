lbl_80535138:
/* 80535138  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8053513C  7C 08 02 A6 */	mflr r0
/* 80535140  90 01 00 64 */	stw r0, 0x64(r1)
/* 80535144  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80535148  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8053514C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80535150  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80535154  39 61 00 40 */	addi r11, r1, 0x40
/* 80535158  4B E2 D0 75 */	bl _savegpr_25
/* 8053515C  7C 7F 1B 78 */	mr r31, r3
/* 80535160  3C 80 80 53 */	lis r4, lit_1109@ha /* 0x80536B80@ha */
/* 80535164  3B 84 6B 80 */	addi r28, r4, lit_1109@l /* 0x80536B80@l */
/* 80535168  3C 80 80 53 */	lis r4, cNullVec__6Z2Calc@ha /* 0x805364A4@ha */
/* 8053516C  3B A4 64 A4 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x805364A4@l */
/* 80535170  3C 80 80 53 */	lis r4, lit_3679@ha /* 0x80536168@ha */
/* 80535174  3B C4 61 68 */	addi r30, r4, lit_3679@l /* 0x80536168@l */
/* 80535178  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8053517C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80535180  40 82 01 60 */	bne lbl_805352E0
/* 80535184  7F E0 FB 79 */	or. r0, r31, r31
/* 80535188  41 82 01 4C */	beq lbl_805352D4
/* 8053518C  7C 19 03 78 */	mr r25, r0
/* 80535190  4B AE 39 D5 */	bl __ct__10fopAc_ac_cFv
/* 80535194  38 79 06 64 */	addi r3, r25, 0x664
/* 80535198  3C 80 80 53 */	lis r4, __ct__4cXyzFv@ha /* 0x8053605C@ha */
/* 8053519C  38 84 60 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8053605C@l */
/* 805351A0  3C A0 80 53 */	lis r5, __dt__4cXyzFv@ha /* 0x80529E4C@ha */
/* 805351A4  38 A5 9E 4C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80529E4C@l */
/* 805351A8  38 C0 00 0C */	li r6, 0xc
/* 805351AC  38 E0 00 0A */	li r7, 0xa
/* 805351B0  4B E2 CB B1 */	bl __construct_array
/* 805351B4  38 79 06 DC */	addi r3, r25, 0x6dc
/* 805351B8  3C 80 80 53 */	lis r4, __ct__5csXyzFv@ha /* 0x80536058@ha */
/* 805351BC  38 84 60 58 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80536058@l */
/* 805351C0  3C A0 80 53 */	lis r5, __dt__5csXyzFv@ha /* 0x8053601C@ha */
/* 805351C4  38 A5 60 1C */	addi r5, r5, __dt__5csXyzFv@l /* 0x8053601C@l */
/* 805351C8  38 C0 00 06 */	li r6, 6
/* 805351CC  38 E0 00 0A */	li r7, 0xa
/* 805351D0  4B E2 CB 91 */	bl __construct_array
/* 805351D4  38 79 07 54 */	addi r3, r25, 0x754
/* 805351D8  3C 80 80 53 */	lis r4, __ct__7mf_ke_sFv@ha /* 0x80535FD4@ha */
/* 805351DC  38 84 5F D4 */	addi r4, r4, __ct__7mf_ke_sFv@l /* 0x80535FD4@l */
/* 805351E0  3C A0 80 53 */	lis r5, __dt__7mf_ke_sFv@ha /* 0x80535F74@ha */
/* 805351E4  38 A5 5F 74 */	addi r5, r5, __dt__7mf_ke_sFv@l /* 0x80535F74@l */
/* 805351E8  38 C0 00 48 */	li r6, 0x48
/* 805351EC  38 E0 00 02 */	li r7, 2
/* 805351F0  4B E2 CB 71 */	bl __construct_array
/* 805351F4  3C 60 80 53 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x80536B1C@ha */
/* 805351F8  38 03 6B 1C */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x80536B1C@l */
/* 805351FC  90 19 07 E4 */	stw r0, 0x7e4(r25)
/* 80535200  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha /* 0x803A325C@ha */
/* 80535204  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l /* 0x803A325C@l */
/* 80535208  90 19 07 E4 */	stw r0, 0x7e4(r25)
/* 8053520C  38 79 08 00 */	addi r3, r25, 0x800
/* 80535210  4B D8 B1 B9 */	bl __ct__10Z2CreatureFv
/* 80535214  38 79 08 90 */	addi r3, r25, 0x890
/* 80535218  4B B4 0C 95 */	bl __ct__12dBgS_AcchCirFv
/* 8053521C  3B 59 08 D0 */	addi r26, r25, 0x8d0
/* 80535220  7F 43 D3 78 */	mr r3, r26
/* 80535224  4B B4 0E 7D */	bl __ct__9dBgS_AcchFv
/* 80535228  3C 60 80 53 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80536AF8@ha */
/* 8053522C  38 63 6A F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80536AF8@l */
/* 80535230  90 7A 00 10 */	stw r3, 0x10(r26)
/* 80535234  38 03 00 0C */	addi r0, r3, 0xc
/* 80535238  90 1A 00 14 */	stw r0, 0x14(r26)
/* 8053523C  38 03 00 18 */	addi r0, r3, 0x18
/* 80535240  90 1A 00 24 */	stw r0, 0x24(r26)
/* 80535244  38 7A 00 14 */	addi r3, r26, 0x14
/* 80535248  4B B4 3C 21 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8053524C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80535250  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80535254  90 19 0A C0 */	stw r0, 0xac0(r25)
/* 80535258  38 79 0A C4 */	addi r3, r25, 0xac4
/* 8053525C  4B B4 E5 05 */	bl __ct__10dCcD_GSttsFv
/* 80535260  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80535264  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80535268  90 79 0A C0 */	stw r3, 0xac0(r25)
/* 8053526C  38 03 00 20 */	addi r0, r3, 0x20
/* 80535270  90 19 0A C4 */	stw r0, 0xac4(r25)
/* 80535274  3B 39 0A E4 */	addi r25, r25, 0xae4
/* 80535278  7F 23 CB 78 */	mr r3, r25
/* 8053527C  4B B4 E7 AD */	bl __ct__12dCcD_GObjInfFv
/* 80535280  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80535284  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80535288  90 19 01 20 */	stw r0, 0x120(r25)
/* 8053528C  3C 60 80 53 */	lis r3, __vt__8cM3dGAab@ha /* 0x80536AEC@ha */
/* 80535290  38 03 6A EC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80536AEC@l */
/* 80535294  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80535298  3C 60 80 53 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80536AE0@ha */
/* 8053529C  38 03 6A E0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80536AE0@l */
/* 805352A0  90 19 01 38 */	stw r0, 0x138(r25)
/* 805352A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 805352A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 805352AC  90 79 01 20 */	stw r3, 0x120(r25)
/* 805352B0  38 03 00 58 */	addi r0, r3, 0x58
/* 805352B4  90 19 01 38 */	stw r0, 0x138(r25)
/* 805352B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 805352BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 805352C0  90 79 00 3C */	stw r3, 0x3c(r25)
/* 805352C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 805352C8  90 19 01 20 */	stw r0, 0x120(r25)
/* 805352CC  38 03 00 84 */	addi r0, r3, 0x84
/* 805352D0  90 19 01 38 */	stw r0, 0x138(r25)
lbl_805352D4:
/* 805352D4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805352D8  60 00 00 08 */	ori r0, r0, 8
/* 805352DC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805352E0:
/* 805352E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805352E4  98 1F 06 34 */	stb r0, 0x634(r31)
/* 805352E8  3B 60 00 00 */	li r27, 0
/* 805352EC  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 805352F0  28 00 00 6A */	cmplwi r0, 0x6a
/* 805352F4  40 82 00 10 */	bne lbl_80535304
/* 805352F8  38 00 00 05 */	li r0, 5
/* 805352FC  98 1F 06 34 */	stb r0, 0x634(r31)
/* 80535300  3B 60 00 01 */	li r27, 1
lbl_80535304:
/* 80535304  88 7F 06 34 */	lbz r3, 0x634(r31)
/* 80535308  28 03 00 64 */	cmplwi r3, 0x64
/* 8053530C  41 80 00 0C */	blt lbl_80535318
/* 80535310  38 03 FF A1 */	addi r0, r3, -95
/* 80535314  98 1F 06 34 */	stb r0, 0x634(r31)
lbl_80535318:
/* 80535318  3B 40 10 00 */	li r26, 0x1000
/* 8053531C  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535320  28 00 00 00 */	cmplwi r0, 0
/* 80535324  41 82 00 0C */	beq lbl_80535330
/* 80535328  28 00 00 06 */	cmplwi r0, 6
/* 8053532C  40 82 00 24 */	bne lbl_80535350
lbl_80535330:
/* 80535330  38 00 00 00 */	li r0, 0
/* 80535334  98 1F 06 35 */	stb r0, 0x635(r31)
/* 80535338  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 8053533C  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535340  38 03 00 08 */	addi r0, r3, 8
/* 80535344  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80535348  3B 40 14 20 */	li r26, 0x1420
/* 8053534C  48 00 01 8C */	b lbl_805354D8
lbl_80535350:
/* 80535350  28 00 00 02 */	cmplwi r0, 2
/* 80535354  41 82 00 0C */	beq lbl_80535360
/* 80535358  28 00 00 08 */	cmplwi r0, 8
/* 8053535C  40 82 00 24 */	bne lbl_80535380
lbl_80535360:
/* 80535360  38 00 00 02 */	li r0, 2
/* 80535364  98 1F 06 35 */	stb r0, 0x635(r31)
/* 80535368  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 8053536C  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535370  38 03 00 10 */	addi r0, r3, 0x10
/* 80535374  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80535378  3B 40 0D 60 */	li r26, 0xd60
/* 8053537C  48 00 01 5C */	b lbl_805354D8
lbl_80535380:
/* 80535380  28 00 00 03 */	cmplwi r0, 3
/* 80535384  41 82 00 0C */	beq lbl_80535390
/* 80535388  28 00 00 09 */	cmplwi r0, 9
/* 8053538C  40 82 00 24 */	bne lbl_805353B0
lbl_80535390:
/* 80535390  38 00 00 03 */	li r0, 3
/* 80535394  98 1F 06 35 */	stb r0, 0x635(r31)
/* 80535398  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 8053539C  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 805353A0  38 03 00 18 */	addi r0, r3, 0x18
/* 805353A4  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 805353A8  3B 40 12 00 */	li r26, 0x1200
/* 805353AC  48 00 01 2C */	b lbl_805354D8
lbl_805353B0:
/* 805353B0  28 00 00 01 */	cmplwi r0, 1
/* 805353B4  41 82 00 0C */	beq lbl_805353C0
/* 805353B8  28 00 00 07 */	cmplwi r0, 7
/* 805353BC  40 82 00 24 */	bne lbl_805353E0
lbl_805353C0:
/* 805353C0  38 00 00 01 */	li r0, 1
/* 805353C4  98 1F 06 35 */	stb r0, 0x635(r31)
/* 805353C8  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 805353CC  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 805353D0  38 03 00 20 */	addi r0, r3, 0x20
/* 805353D4  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 805353D8  3B 40 0D C0 */	li r26, 0xdc0
/* 805353DC  48 00 00 FC */	b lbl_805354D8
lbl_805353E0:
/* 805353E0  28 00 00 04 */	cmplwi r0, 4
/* 805353E4  41 82 00 0C */	beq lbl_805353F0
/* 805353E8  28 00 00 0A */	cmplwi r0, 0xa
/* 805353EC  40 82 00 24 */	bne lbl_80535410
lbl_805353F0:
/* 805353F0  38 00 00 04 */	li r0, 4
/* 805353F4  98 1F 06 35 */	stb r0, 0x635(r31)
/* 805353F8  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 805353FC  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535400  38 03 00 28 */	addi r0, r3, 0x28
/* 80535404  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80535408  3B 40 13 D0 */	li r26, 0x13d0
/* 8053540C  48 00 00 CC */	b lbl_805354D8
lbl_80535410:
/* 80535410  28 00 00 05 */	cmplwi r0, 5
/* 80535414  40 82 00 24 */	bne lbl_80535438
/* 80535418  38 00 00 05 */	li r0, 5
/* 8053541C  98 1F 06 35 */	stb r0, 0x635(r31)
/* 80535420  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 80535424  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535428  38 03 00 30 */	addi r0, r3, 0x30
/* 8053542C  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80535430  3B 40 0C 60 */	li r26, 0xc60
/* 80535434  48 00 00 A4 */	b lbl_805354D8
lbl_80535438:
/* 80535438  28 00 00 14 */	cmplwi r0, 0x14
/* 8053543C  40 82 00 18 */	bne lbl_80535454
/* 80535440  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 80535444  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535448  38 03 00 38 */	addi r0, r3, 0x38
/* 8053544C  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80535450  48 00 00 88 */	b lbl_805354D8
lbl_80535454:
/* 80535454  28 00 00 16 */	cmplwi r0, 0x16
/* 80535458  41 82 00 1C */	beq lbl_80535474
/* 8053545C  28 00 00 19 */	cmplwi r0, 0x19
/* 80535460  41 82 00 14 */	beq lbl_80535474
/* 80535464  28 00 00 1A */	cmplwi r0, 0x1a
/* 80535468  41 82 00 0C */	beq lbl_80535474
/* 8053546C  28 00 00 1B */	cmplwi r0, 0x1b
/* 80535470  40 82 00 18 */	bne lbl_80535488
lbl_80535474:
/* 80535474  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 80535478  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 8053547C  38 03 00 40 */	addi r0, r3, 0x40
/* 80535480  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80535484  48 00 00 54 */	b lbl_805354D8
lbl_80535488:
/* 80535488  28 00 00 17 */	cmplwi r0, 0x17
/* 8053548C  40 82 00 18 */	bne lbl_805354A4
/* 80535490  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 80535494  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535498  38 03 00 48 */	addi r0, r3, 0x48
/* 8053549C  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 805354A0  48 00 00 38 */	b lbl_805354D8
lbl_805354A4:
/* 805354A4  28 00 00 15 */	cmplwi r0, 0x15
/* 805354A8  40 82 00 18 */	bne lbl_805354C0
/* 805354AC  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 805354B0  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 805354B4  38 03 00 50 */	addi r0, r3, 0x50
/* 805354B8  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 805354BC  48 00 00 1C */	b lbl_805354D8
lbl_805354C0:
/* 805354C0  28 00 00 18 */	cmplwi r0, 0x18
/* 805354C4  40 82 00 14 */	bne lbl_805354D8
/* 805354C8  3C 60 80 53 */	lis r3, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 805354CC  38 63 64 38 */	addi r3, r3, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 805354D0  38 03 00 58 */	addi r0, r3, 0x58
/* 805354D4  90 1F 05 FC */	stw r0, 0x5fc(r31)
lbl_805354D8:
/* 805354D8  38 00 00 01 */	li r0, 1
/* 805354DC  98 1C 00 3D */	stb r0, 0x3d(r28)
/* 805354E0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805354E4  80 9F 05 FC */	lwz r4, 0x5fc(r31)
/* 805354E8  4B AF 79 D5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805354EC  7C 79 1B 78 */	mr r25, r3
/* 805354F0  2C 19 00 04 */	cmpwi r25, 4
/* 805354F4  40 82 08 88 */	bne lbl_80535D7C
/* 805354F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805354FC  54 04 46 3F */	rlwinm. r4, r0, 8, 0x18, 0x1f
/* 80535500  41 82 00 30 */	beq lbl_80535530
/* 80535504  2C 04 00 FF */	cmpwi r4, 0xff
/* 80535508  41 82 00 28 */	beq lbl_80535530
/* 8053550C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80535510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80535514  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80535518  7C 05 07 74 */	extsb r5, r0
/* 8053551C  4B AF FE 45 */	bl isSwitch__10dSv_info_cCFii
/* 80535520  2C 03 00 00 */	cmpwi r3, 0
/* 80535524  41 82 00 0C */	beq lbl_80535530
/* 80535528  38 60 00 05 */	li r3, 5
/* 8053552C  48 00 08 54 */	b lbl_80535D80
lbl_80535530:
/* 80535530  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535534  28 00 00 14 */	cmplwi r0, 0x14
/* 80535538  41 82 00 3C */	beq lbl_80535574
/* 8053553C  28 00 00 16 */	cmplwi r0, 0x16
/* 80535540  41 82 00 34 */	beq lbl_80535574
/* 80535544  28 00 00 17 */	cmplwi r0, 0x17
/* 80535548  41 82 00 2C */	beq lbl_80535574
/* 8053554C  28 00 00 15 */	cmplwi r0, 0x15
/* 80535550  41 82 00 24 */	beq lbl_80535574
/* 80535554  28 00 00 18 */	cmplwi r0, 0x18
/* 80535558  41 82 00 1C */	beq lbl_80535574
/* 8053555C  28 00 00 19 */	cmplwi r0, 0x19
/* 80535560  41 82 00 14 */	beq lbl_80535574
/* 80535564  28 00 00 1A */	cmplwi r0, 0x1a
/* 80535568  41 82 00 0C */	beq lbl_80535574
/* 8053556C  28 00 00 1B */	cmplwi r0, 0x1b
/* 80535570  40 82 00 C4 */	bne lbl_80535634
lbl_80535574:
/* 80535574  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80535578  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8053557C  2C 00 00 FF */	cmpwi r0, 0xff
/* 80535580  40 82 00 08 */	bne lbl_80535588
/* 80535584  38 00 00 1E */	li r0, 0x1e
lbl_80535588:
/* 80535588  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8053558C  C8 3E 02 C0 */	lfd f1, 0x2c0(r30)
/* 80535590  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80535594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535598  3C 00 43 30 */	lis r0, 0x4330
/* 8053559C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805355A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805355A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805355A8  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 805355AC  38 A0 30 00 */	li r5, 0x3000
/* 805355B0  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 805355B4  28 00 00 14 */	cmplwi r0, 0x14
/* 805355B8  40 82 00 0C */	bne lbl_805355C4
/* 805355BC  38 A0 08 00 */	li r5, 0x800
/* 805355C0  48 00 00 50 */	b lbl_80535610
lbl_805355C4:
/* 805355C4  28 00 00 15 */	cmplwi r0, 0x15
/* 805355C8  40 82 00 0C */	bne lbl_805355D4
/* 805355CC  38 A0 08 40 */	li r5, 0x840
/* 805355D0  48 00 00 40 */	b lbl_80535610
lbl_805355D4:
/* 805355D4  28 00 00 16 */	cmplwi r0, 0x16
/* 805355D8  40 82 00 0C */	bne lbl_805355E4
/* 805355DC  38 A0 1D 40 */	li r5, 0x1d40
/* 805355E0  48 00 00 30 */	b lbl_80535610
lbl_805355E4:
/* 805355E4  28 00 00 19 */	cmplwi r0, 0x19
/* 805355E8  40 82 00 0C */	bne lbl_805355F4
/* 805355EC  38 A0 08 20 */	li r5, 0x820
/* 805355F0  48 00 00 20 */	b lbl_80535610
lbl_805355F4:
/* 805355F4  28 00 00 1A */	cmplwi r0, 0x1a
/* 805355F8  40 82 00 0C */	bne lbl_80535604
/* 805355FC  38 A0 08 00 */	li r5, 0x800
/* 80535600  48 00 00 10 */	b lbl_80535610
lbl_80535604:
/* 80535604  28 00 00 1B */	cmplwi r0, 0x1b
/* 80535608  40 82 00 08 */	bne lbl_80535610
/* 8053560C  38 A0 08 20 */	li r5, 0x820
lbl_80535610:
/* 80535610  7F E3 FB 78 */	mr r3, r31
/* 80535614  3C 80 80 53 */	lis r4, useHeapInit2__FP10fopAc_ac_c@ha /* 0x805349DC@ha */
/* 80535618  38 84 49 DC */	addi r4, r4, useHeapInit2__FP10fopAc_ac_c@l /* 0x805349DC@l */
/* 8053561C  4B AE 4E 95 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80535620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80535624  38 60 00 05 */	li r3, 5
/* 80535628  41 82 07 58 */	beq lbl_80535D80
/* 8053562C  7F 23 CB 78 */	mr r3, r25
/* 80535630  48 00 07 50 */	b lbl_80535D80
lbl_80535634:
/* 80535634  7F E3 FB 78 */	mr r3, r31
/* 80535638  3C 80 80 53 */	lis r4, useHeapImg_fisht__FP10fopAc_ac_c@ha /* 0x80534ED8@ha */
/* 8053563C  38 84 4E D8 */	addi r4, r4, useHeapImg_fisht__FP10fopAc_ac_c@l /* 0x80534ED8@l */
/* 80535640  7F 45 D3 78 */	mr r5, r26
/* 80535644  4B AE 4E 6D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80535648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8053564C  40 82 00 0C */	bne lbl_80535658
/* 80535650  38 60 00 05 */	li r3, 5
/* 80535654  48 00 07 2C */	b lbl_80535D80
lbl_80535658:
/* 80535658  88 1C 00 3E */	lbz r0, 0x3e(r28)
/* 8053565C  28 00 00 00 */	cmplwi r0, 0
/* 80535660  40 82 00 1C */	bne lbl_8053567C
/* 80535664  38 00 00 01 */	li r0, 1
/* 80535668  98 1F 0C 3F */	stb r0, 0xc3f(r31)
/* 8053566C  98 1C 00 3E */	stb r0, 0x3e(r28)
/* 80535670  38 00 FF FF */	li r0, -1
/* 80535674  38 7C 00 4C */	addi r3, r28, 0x4c
/* 80535678  98 03 00 04 */	stb r0, 4(r3)
lbl_8053567C:
/* 8053567C  38 7F 0A A8 */	addi r3, r31, 0xaa8
/* 80535680  38 80 00 1E */	li r4, 0x1e
/* 80535684  38 A0 00 00 */	li r5, 0
/* 80535688  7F E6 FB 78 */	mr r6, r31
/* 8053568C  4B B4 E1 D5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80535690  38 7F 0A E4 */	addi r3, r31, 0xae4
/* 80535694  38 9D 05 58 */	addi r4, r29, 0x558
/* 80535698  4B B4 F2 1D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8053569C  38 1F 0A A8 */	addi r0, r31, 0xaa8
/* 805356A0  90 1F 0B 28 */	stw r0, 0xb28(r31)
/* 805356A4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 805356A8  80 63 00 04 */	lwz r3, 4(r3)
/* 805356AC  38 03 00 24 */	addi r0, r3, 0x24
/* 805356B0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 805356B4  7F E3 FB 78 */	mr r3, r31
/* 805356B8  C0 3E 02 7C */	lfs f1, 0x27c(r30)
/* 805356BC  FC 40 08 90 */	fmr f2, f1
/* 805356C0  FC 60 08 90 */	fmr f3, f1
/* 805356C4  4B AE 4E 65 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 805356C8  7F E3 FB 78 */	mr r3, r31
/* 805356CC  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805356D0  FC 40 08 90 */	fmr f2, f1
/* 805356D4  FC 60 08 90 */	fmr f3, f1
/* 805356D8  4B AE 4E 61 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 805356DC  38 00 00 00 */	li r0, 0
/* 805356E0  90 01 00 08 */	stw r0, 8(r1)
/* 805356E4  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 805356E8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805356EC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 805356F0  7F E6 FB 78 */	mr r6, r31
/* 805356F4  38 E0 00 01 */	li r7, 1
/* 805356F8  39 1F 08 90 */	addi r8, r31, 0x890
/* 805356FC  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80535700  39 40 00 00 */	li r10, 0
/* 80535704  4B B4 0B 45 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80535708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053570C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80535710  3B 43 07 F0 */	addi r26, r3, 0x7f0
/* 80535714  7F 43 D3 78 */	mr r3, r26
/* 80535718  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F11F@ha */
/* 8053571C  38 84 F1 1F */	addi r4, r4, 0xF11F /* 0x0000F11F@l */
/* 80535720  4B AF F2 E5 */	bl getEventReg__11dSv_event_cCFUs
/* 80535724  98 7F 0C 44 */	stb r3, 0xc44(r31)
/* 80535728  C0 7E 01 C8 */	lfs f3, 0x1c8(r30)
/* 8053572C  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80535730  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80535734  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80535738  C8 5E 02 C8 */	lfd f2, 0x2c8(r30)
/* 8053573C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535740  3C 80 43 30 */	lis r4, 0x4330
/* 80535744  90 81 00 10 */	stw r4, 0x10(r1)
/* 80535748  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8053574C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80535750  EC 01 00 32 */	fmuls f0, f1, f0
/* 80535754  EC 03 00 2A */	fadds f0, f3, f0
/* 80535758  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 8053575C  88 BF 06 34 */	lbz r5, 0x634(r31)
/* 80535760  28 05 00 05 */	cmplwi r5, 5
/* 80535764  41 80 01 44 */	blt lbl_805358A8
/* 80535768  88 BC 00 3D */	lbz r5, 0x3d(r28)
/* 8053576C  28 05 00 01 */	cmplwi r5, 1
/* 80535770  40 82 00 38 */	bne lbl_805357A8
/* 80535774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80535778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053577C  38 63 01 6C */	addi r3, r3, 0x16c
/* 80535780  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 80535784  7C 63 02 14 */	add r3, r3, r0
/* 80535788  88 03 00 20 */	lbz r0, 0x20(r3)
/* 8053578C  C0 3E 02 80 */	lfs f1, 0x280(r30)
/* 80535790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535794  90 81 00 10 */	stw r4, 0x10(r1)
/* 80535798  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8053579C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805357A0  EF C1 00 32 */	fmuls f30, f1, f0
/* 805357A4  48 00 00 2C */	b lbl_805357D0
lbl_805357A8:
/* 805357A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805357AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805357B0  38 63 01 6C */	addi r3, r3, 0x16c
/* 805357B4  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 805357B8  7C 63 02 14 */	add r3, r3, r0
/* 805357BC  88 03 00 20 */	lbz r0, 0x20(r3)
/* 805357C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805357C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 805357C8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805357CC  EF C0 10 28 */	fsubs f30, f0, f2
lbl_805357D0:
/* 805357D0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805357D4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 805357D8  40 81 00 44 */	ble lbl_8053581C
/* 805357DC  28 05 00 00 */	cmplwi r5, 0
/* 805357E0  41 82 00 20 */	beq lbl_80535800
/* 805357E4  C0 3E 02 84 */	lfs f1, 0x284(r30)
/* 805357E8  4B D3 21 A5 */	bl cM_rndFX__Ff
/* 805357EC  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 805357F0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805357F4  EC 00 08 2A */	fadds f0, f0, f1
/* 805357F8  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 805357FC  48 00 02 B8 */	b lbl_80535AB4
lbl_80535800:
/* 80535800  C0 3E 02 88 */	lfs f1, 0x288(r30)
/* 80535804  4B D3 21 89 */	bl cM_rndFX__Ff
/* 80535808  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8053580C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80535810  EC 00 08 2A */	fadds f0, f0, f1
/* 80535814  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535818  48 00 02 9C */	b lbl_80535AB4
lbl_8053581C:
/* 8053581C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80535820  4B D3 21 6D */	bl cM_rndFX__Ff
/* 80535824  C0 1E 02 8C */	lfs f0, 0x28c(r30)
/* 80535828  EC 00 08 2A */	fadds f0, f0, f1
/* 8053582C  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535830  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535834  28 00 00 05 */	cmplwi r0, 5
/* 80535838  41 82 02 7C */	beq lbl_80535AB4
/* 8053583C  28 00 00 06 */	cmplwi r0, 6
/* 80535840  40 82 00 18 */	bne lbl_80535858
/* 80535844  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80535848  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 8053584C  EC 01 00 2A */	fadds f0, f1, f0
/* 80535850  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535854  48 00 02 60 */	b lbl_80535AB4
lbl_80535858:
/* 80535858  28 00 00 0A */	cmplwi r0, 0xa
/* 8053585C  40 82 00 1C */	bne lbl_80535878
/* 80535860  C0 3E 02 94 */	lfs f1, 0x294(r30)
/* 80535864  4B D3 21 29 */	bl cM_rndFX__Ff
/* 80535868  C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 8053586C  EC 00 08 2A */	fadds f0, f0, f1
/* 80535870  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535874  48 00 02 40 */	b lbl_80535AB4
lbl_80535878:
/* 80535878  28 00 00 09 */	cmplwi r0, 9
/* 8053587C  40 82 00 18 */	bne lbl_80535894
/* 80535880  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80535884  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80535888  EC 01 00 2A */	fadds f0, f1, f0
/* 8053588C  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535890  48 00 02 24 */	b lbl_80535AB4
lbl_80535894:
/* 80535894  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80535898  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8053589C  EC 01 00 2A */	fadds f0, f1, f0
/* 805358A0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 805358A4  48 00 02 10 */	b lbl_80535AB4
lbl_805358A8:
/* 805358A8  28 05 00 03 */	cmplwi r5, 3
/* 805358AC  41 81 02 08 */	bgt lbl_80535AB4
/* 805358B0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805358B4  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 805358B8  EF C1 00 32 */	fmuls f30, f1, f0
/* 805358BC  88 1C 00 3D */	lbz r0, 0x3d(r28)
/* 805358C0  28 00 00 01 */	cmplwi r0, 1
/* 805358C4  40 82 00 40 */	bne lbl_80535904
/* 805358C8  7F 43 D3 78 */	mr r3, r26
/* 805358CC  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 805358D0  38 9D 00 20 */	addi r4, r29, 0x20
/* 805358D4  7C 84 02 2E */	lhzx r4, r4, r0
/* 805358D8  4B AF F1 2D */	bl getEventReg__11dSv_event_cCFUs
/* 805358DC  C0 5E 02 80 */	lfs f2, 0x280(r30)
/* 805358E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805358E4  C8 3E 02 C8 */	lfd f1, 0x2c8(r30)
/* 805358E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805358EC  3C 00 43 30 */	lis r0, 0x4330
/* 805358F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805358F4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805358F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805358FC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80535900  48 00 00 34 */	b lbl_80535934
lbl_80535904:
/* 80535904  7F 43 D3 78 */	mr r3, r26
/* 80535908  54 A0 0D FC */	rlwinm r0, r5, 1, 0x17, 0x1e
/* 8053590C  38 9D 00 20 */	addi r4, r29, 0x20
/* 80535910  7C 84 02 2E */	lhzx r4, r4, r0
/* 80535914  4B AF F0 F1 */	bl getEventReg__11dSv_event_cCFUs
/* 80535918  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8053591C  C8 3E 02 C8 */	lfd f1, 0x2c8(r30)
/* 80535920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535924  3C 00 43 30 */	lis r0, 0x4330
/* 80535928  90 01 00 10 */	stw r0, 0x10(r1)
/* 8053592C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80535930  EC 20 08 28 */	fsubs f1, f0, f1
lbl_80535934:
/* 80535934  FC 00 F0 1E */	fctiwz f0, f30
/* 80535938  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8053593C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80535940  FC 00 08 1E */	fctiwz f0, f1
/* 80535944  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80535948  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8053594C  7C 03 00 00 */	cmpw r3, r0
/* 80535950  41 81 01 40 */	bgt lbl_80535A90
/* 80535954  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80535958  EC 00 00 72 */	fmuls f0, f0, f1
/* 8053595C  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535960  C3 DE 00 B4 */	lfs f30, 0xb4(r30)
/* 80535964  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535968  28 00 00 01 */	cmplwi r0, 1
/* 8053596C  40 82 00 0C */	bne lbl_80535978
/* 80535970  C3 DE 01 08 */	lfs f30, 0x108(r30)
/* 80535974  48 00 00 18 */	b lbl_8053598C
lbl_80535978:
/* 80535978  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8053597C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80535980  4C 41 13 82 */	cror 2, 1, 2
/* 80535984  40 82 00 08 */	bne lbl_8053598C
/* 80535988  C3 DE 02 98 */	lfs f30, 0x298(r30)
lbl_8053598C:
/* 8053598C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80535990  4B D3 1F C5 */	bl cM_rndF__Ff
/* 80535994  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80535998  40 80 00 38 */	bge lbl_805359D0
/* 8053599C  88 1C 00 3D */	lbz r0, 0x3d(r28)
/* 805359A0  28 00 00 00 */	cmplwi r0, 0
/* 805359A4  41 82 00 18 */	beq lbl_805359BC
/* 805359A8  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 805359AC  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 805359B0  EC 01 00 2A */	fadds f0, f1, f0
/* 805359B4  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 805359B8  48 00 00 60 */	b lbl_80535A18
lbl_805359BC:
/* 805359BC  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 805359C0  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 805359C4  EC 01 00 2A */	fadds f0, f1, f0
/* 805359C8  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 805359CC  48 00 00 4C */	b lbl_80535A18
lbl_805359D0:
/* 805359D0  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 805359D4  28 00 00 01 */	cmplwi r0, 1
/* 805359D8  40 82 00 24 */	bne lbl_805359FC
/* 805359DC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 805359E0  4B D3 1F 75 */	bl cM_rndF__Ff
/* 805359E4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805359E8  EC 20 08 28 */	fsubs f1, f0, f1
/* 805359EC  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 805359F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805359F4  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 805359F8  48 00 00 20 */	b lbl_80535A18
lbl_805359FC:
/* 805359FC  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80535A00  4B D3 1F 55 */	bl cM_rndF__Ff
/* 80535A04  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80535A08  EC 20 08 28 */	fsubs f1, f0, f1
/* 80535A0C  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80535A10  EC 00 00 72 */	fmuls f0, f0, f1
/* 80535A14  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
lbl_80535A18:
/* 80535A18  88 1F 0C 44 */	lbz r0, 0xc44(r31)
/* 80535A1C  28 00 00 14 */	cmplwi r0, 0x14
/* 80535A20  40 80 00 24 */	bge lbl_80535A44
/* 80535A24  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535A28  28 00 00 01 */	cmplwi r0, 1
/* 80535A2C  41 82 00 2C */	beq lbl_80535A58
/* 80535A30  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80535A34  4B D3 1F 21 */	bl cM_rndF__Ff
/* 80535A38  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80535A3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80535A40  40 80 00 18 */	bge lbl_80535A58
lbl_80535A44:
/* 80535A44  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80535A48  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80535A4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80535A50  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535A54  48 00 00 3C */	b lbl_80535A90
lbl_80535A58:
/* 80535A58  88 1F 0C 44 */	lbz r0, 0xc44(r31)
/* 80535A5C  28 00 00 0A */	cmplwi r0, 0xa
/* 80535A60  41 80 00 18 */	blt lbl_80535A78
/* 80535A64  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80535A68  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80535A6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80535A70  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80535A74  48 00 00 1C */	b lbl_80535A90
lbl_80535A78:
/* 80535A78  28 00 00 05 */	cmplwi r0, 5
/* 80535A7C  41 80 00 14 */	blt lbl_80535A90
/* 80535A80  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80535A84  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 80535A88  EC 01 00 32 */	fmuls f0, f1, f0
/* 80535A8C  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
lbl_80535A90:
/* 80535A90  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80535A94  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 80535A98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80535A9C  40 80 00 18 */	bge lbl_80535AB4
/* 80535AA0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80535AA4  4B D3 1E B1 */	bl cM_rndF__Ff
/* 80535AA8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80535AAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80535AB0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
lbl_80535AB4:
/* 80535AB4  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80535AB8  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535ABC  54 00 10 3A */	slwi r0, r0, 2
/* 80535AC0  38 7D 05 9C */	addi r3, r29, 0x59c
/* 80535AC4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80535AC8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80535ACC  40 81 00 08 */	ble lbl_80535AD4
/* 80535AD0  D0 3F 05 BC */	stfs f1, 0x5bc(r31)
lbl_80535AD4:
/* 80535AD4  C0 5F 05 BC */	lfs f2, 0x5bc(r31)
/* 80535AD8  38 7F 08 90 */	addi r3, r31, 0x890
/* 80535ADC  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80535AE0  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80535AE4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80535AE8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80535AEC  4B B4 04 6D */	bl SetWall__12dBgS_AcchCirFff
/* 80535AF0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80535AF4  4B D3 1E 61 */	bl cM_rndF__Ff
/* 80535AF8  FC 00 08 1E */	fctiwz f0, f1
/* 80535AFC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80535B00  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80535B04  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80535B08  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80535B0C  4B D3 1E 49 */	bl cM_rndF__Ff
/* 80535B10  FC 00 08 1E */	fctiwz f0, f1
/* 80535B14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80535B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80535B1C  B0 1F 07 32 */	sth r0, 0x732(r31)
/* 80535B20  38 7F 08 00 */	addi r3, r31, 0x800
/* 80535B24  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80535B28  7C 85 23 78 */	mr r5, r4
/* 80535B2C  38 C0 00 03 */	li r6, 3
/* 80535B30  38 E0 00 01 */	li r7, 1
/* 80535B34  4B D8 A9 FD */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80535B38  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80535B3C  D0 1F 06 60 */	stfs f0, 0x660(r31)
/* 80535B40  38 7C 00 4C */	addi r3, r28, 0x4c
/* 80535B44  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80535B48  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80535B4C  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535B50  28 00 00 01 */	cmplwi r0, 1
/* 80535B54  40 82 00 38 */	bne lbl_80535B8C
/* 80535B58  38 00 00 0A */	li r0, 0xa
/* 80535B5C  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80535B60  38 00 00 02 */	li r0, 2
/* 80535B64  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80535B68  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80535B6C  4B D3 1D E9 */	bl cM_rndF__Ff
/* 80535B70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80535B74  EC 00 08 2A */	fadds f0, f0, f1
/* 80535B78  FC 00 00 1E */	fctiwz f0, f0
/* 80535B7C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80535B80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80535B84  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 80535B88  48 00 00 88 */	b lbl_80535C10
lbl_80535B8C:
/* 80535B8C  28 00 00 03 */	cmplwi r0, 3
/* 80535B90  40 82 00 18 */	bne lbl_80535BA8
/* 80535B94  38 00 00 04 */	li r0, 4
/* 80535B98  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80535B9C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80535BA0  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80535BA4  48 00 00 6C */	b lbl_80535C10
lbl_80535BA8:
/* 80535BA8  28 00 00 05 */	cmplwi r0, 5
/* 80535BAC  41 80 00 54 */	blt lbl_80535C00
/* 80535BB0  38 00 00 05 */	li r0, 5
/* 80535BB4  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80535BB8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80535BBC  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80535BC0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80535BC4  41 82 00 10 */	beq lbl_80535BD4
/* 80535BC8  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 80535BCC  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80535BD0  48 00 00 0C */	b lbl_80535BDC
lbl_80535BD4:
/* 80535BD4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80535BD8  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
lbl_80535BDC:
/* 80535BDC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80535BE0  4B D3 1D 75 */	bl cM_rndF__Ff
/* 80535BE4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80535BE8  EC 00 08 2A */	fadds f0, f0, f1
/* 80535BEC  FC 00 00 1E */	fctiwz f0, f0
/* 80535BF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80535BF4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80535BF8  B0 1F 06 28 */	sth r0, 0x628(r31)
/* 80535BFC  48 00 00 14 */	b lbl_80535C10
lbl_80535C00:
/* 80535C00  38 00 00 01 */	li r0, 1
/* 80535C04  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80535C08  38 00 00 02 */	li r0, 2
/* 80535C0C  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
lbl_80535C10:
/* 80535C10  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80535C14  4B D3 1D 41 */	bl cM_rndF__Ff
/* 80535C18  FC 00 08 1E */	fctiwz f0, f1
/* 80535C1C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80535C20  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80535C24  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80535C28  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80535C2C  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80535C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80535C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80535C38  3B 43 4E 00 */	addi r26, r3, 0x4e00
/* 80535C3C  7F 43 D3 78 */	mr r3, r26
/* 80535C40  3C 80 80 53 */	lis r4, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 80535C44  38 84 64 38 */	addi r4, r4, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535C48  38 84 00 62 */	addi r4, r4, 0x62
/* 80535C4C  4B E3 2D 49 */	bl strcmp
/* 80535C50  2C 03 00 00 */	cmpwi r3, 0
/* 80535C54  40 82 00 9C */	bne lbl_80535CF0
/* 80535C58  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80535C5C  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 80535C60  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80535C64  D0 1F 05 DC */	stfs f0, 0x5dc(r31)
/* 80535C68  C0 3E 01 90 */	lfs f1, 0x190(r30)
/* 80535C6C  4B D3 1D 21 */	bl cM_rndFX__Ff
/* 80535C70  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80535C74  EF C0 08 2A */	fadds f30, f0, f1
/* 80535C78  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80535C7C  4B D3 1C D9 */	bl cM_rndF__Ff
/* 80535C80  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 80535C84  EF E0 08 2A */	fadds f31, f0, f1
/* 80535C88  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80535C8C  4B D3 1D 01 */	bl cM_rndFX__Ff
/* 80535C90  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 80535C94  EC 00 08 2A */	fadds f0, f0, f1
/* 80535C98  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80535C9C  D3 FF 04 D4 */	stfs f31, 0x4d4(r31)
/* 80535CA0  D3 DF 04 D8 */	stfs f30, 0x4d8(r31)
/* 80535CA4  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535CA8  28 00 00 01 */	cmplwi r0, 1
/* 80535CAC  40 82 00 10 */	bne lbl_80535CBC
/* 80535CB0  38 00 00 15 */	li r0, 0x15
/* 80535CB4  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80535CB8  48 00 00 2C */	b lbl_80535CE4
lbl_80535CBC:
/* 80535CBC  38 00 00 14 */	li r0, 0x14
/* 80535CC0  B0 1F 05 B6 */	sth r0, 0x5b6(r31)
/* 80535CC4  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535CC8  28 00 00 05 */	cmplwi r0, 5
/* 80535CCC  40 82 00 18 */	bne lbl_80535CE4
/* 80535CD0  C0 3E 02 98 */	lfs f1, 0x298(r30)
/* 80535CD4  4B D3 1C B9 */	bl cM_rndFX__Ff
/* 80535CD8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80535CDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80535CE0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
lbl_80535CE4:
/* 80535CE4  38 00 00 00 */	li r0, 0
/* 80535CE8  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80535CEC  48 00 00 24 */	b lbl_80535D10
lbl_80535CF0:
/* 80535CF0  7F 43 D3 78 */	mr r3, r26
/* 80535CF4  3C 80 80 53 */	lis r4, d_a_mg_fish__stringBase0@ha /* 0x80536438@ha */
/* 80535CF8  38 84 64 38 */	addi r4, r4, d_a_mg_fish__stringBase0@l /* 0x80536438@l */
/* 80535CFC  4B E3 2C 99 */	bl strcmp
/* 80535D00  2C 03 00 00 */	cmpwi r3, 0
/* 80535D04  41 82 00 0C */	beq lbl_80535D10
/* 80535D08  C0 1E 02 B8 */	lfs f0, 0x2b8(r30)
/* 80535D0C  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
lbl_80535D10:
/* 80535D10  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 80535D14  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80535D18  38 00 00 14 */	li r0, 0x14
/* 80535D1C  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 80535D20  3C 60 80 53 */	lis r3, nodeCallBack2__FP8J3DJointi@ha /* 0x8052ADBC@ha */
/* 80535D24  38 03 AD BC */	addi r0, r3, nodeCallBack2__FP8J3DJointi@l /* 0x8052ADBC@l */
/* 80535D28  90 1F 0C 48 */	stw r0, 0xc48(r31)
/* 80535D2C  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80535D30  28 00 00 05 */	cmplwi r0, 5
/* 80535D34  40 80 00 38 */	bge lbl_80535D6C
/* 80535D38  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80535D3C  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80535D40  88 1F 0C 44 */	lbz r0, 0xc44(r31)
/* 80535D44  C8 3E 02 C8 */	lfd f1, 0x2c8(r30)
/* 80535D48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80535D4C  3C 00 43 30 */	lis r0, 0x4330
/* 80535D50  90 01 00 18 */	stw r0, 0x18(r1)
/* 80535D54  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80535D58  EC 00 08 28 */	fsubs f0, f0, f1
/* 80535D5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80535D60  EC 03 00 2A */	fadds f0, f3, f0
/* 80535D64  D0 1F 0C 40 */	stfs f0, 0xc40(r31)
/* 80535D68  48 00 00 0C */	b lbl_80535D74
lbl_80535D6C:
/* 80535D6C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80535D70  D0 1F 0C 40 */	stfs f0, 0xc40(r31)
lbl_80535D74:
/* 80535D74  7F E3 FB 78 */	mr r3, r31
/* 80535D78  4B FF D7 C9 */	bl daMg_Fish_Execute__FP13mg_fish_class
lbl_80535D7C:
/* 80535D7C  7F 23 CB 78 */	mr r3, r25
lbl_80535D80:
/* 80535D80  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80535D84  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80535D88  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80535D8C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80535D90  39 61 00 40 */	addi r11, r1, 0x40
/* 80535D94  4B E2 C4 85 */	bl _restgpr_25
/* 80535D98  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80535D9C  7C 08 03 A6 */	mtlr r0
/* 80535DA0  38 21 00 60 */	addi r1, r1, 0x60
/* 80535DA4  4E 80 00 20 */	blr 
