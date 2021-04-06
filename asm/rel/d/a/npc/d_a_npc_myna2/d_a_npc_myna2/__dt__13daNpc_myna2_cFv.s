lbl_80A840A0:
/* 80A840A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A840A4  7C 08 02 A6 */	mflr r0
/* 80A840A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A840AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A840B0  4B 8D E1 21 */	bl _savegpr_26
/* 80A840B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A840B8  7C 9F 23 78 */	mr r31, r4
/* 80A840BC  41 82 01 F0 */	beq lbl_80A842AC
/* 80A840C0  3C 60 80 A9 */	lis r3, __vt__13daNpc_myna2_c@ha /* 0x80A88A14@ha */
/* 80A840C4  38 03 8A 14 */	addi r0, r3, __vt__13daNpc_myna2_c@l /* 0x80A88A14@l */
/* 80A840C8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A840CC  88 1E 0E 0C */	lbz r0, 0xe0c(r30)
/* 80A840D0  28 00 00 01 */	cmplwi r0, 1
/* 80A840D4  40 82 00 0C */	bne lbl_80A840E0
/* 80A840D8  38 60 00 4A */	li r3, 0x4a
/* 80A840DC  4B 6D 16 59 */	bl daNpcF_offTmpBit__FUl
lbl_80A840E0:
/* 80A840E0  3B A0 00 00 */	li r29, 0
/* 80A840E4  3B 80 00 00 */	li r28, 0
/* 80A840E8  3C 60 80 A9 */	lis r3, l_resNames@ha /* 0x80A887DC@ha */
/* 80A840EC  3B 43 87 DC */	addi r26, r3, l_resNames@l /* 0x80A887DC@l */
/* 80A840F0  3C 60 80 A9 */	lis r3, l_loadRes_list@ha /* 0x80A887C8@ha */
/* 80A840F4  3B 63 87 C8 */	addi r27, r3, l_loadRes_list@l /* 0x80A887C8@l */
/* 80A840F8  48 00 00 20 */	b lbl_80A84118
lbl_80A840FC:
/* 80A840FC  38 7C 0D D8 */	addi r3, r28, 0xdd8
/* 80A84100  7C 7E 1A 14 */	add r3, r30, r3
/* 80A84104  54 00 10 3A */	slwi r0, r0, 2
/* 80A84108  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80A8410C  4B 5A 8E FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A84110  3B BD 00 04 */	addi r29, r29, 4
/* 80A84114  3B 9C 00 08 */	addi r28, r28, 8
lbl_80A84118:
/* 80A84118  88 1E 0E 0C */	lbz r0, 0xe0c(r30)
/* 80A8411C  54 00 10 3A */	slwi r0, r0, 2
/* 80A84120  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80A84124  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80A84128  2C 00 00 00 */	cmpwi r0, 0
/* 80A8412C  40 80 FF D0 */	bge lbl_80A840FC
/* 80A84130  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A84134  28 00 00 00 */	cmplwi r0, 0
/* 80A84138  41 82 00 0C */	beq lbl_80A84144
/* 80A8413C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A84140  4B 58 D1 D1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A84144:
/* 80A84144  34 1E 0C 84 */	addic. r0, r30, 0xc84
/* 80A84148  41 82 00 84 */	beq lbl_80A841CC
/* 80A8414C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A84150  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A84154  90 7E 0C C0 */	stw r3, 0xcc0(r30)
/* 80A84158  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A8415C  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80A84160  38 03 00 84 */	addi r0, r3, 0x84
/* 80A84164  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80A84168  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80A8416C  41 82 00 54 */	beq lbl_80A841C0
/* 80A84170  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A84174  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A84178  90 7E 0D A4 */	stw r3, 0xda4(r30)
/* 80A8417C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A84180  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80A84184  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 80A84188  41 82 00 10 */	beq lbl_80A84198
/* 80A8418C  3C 60 80 A9 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A88ABC@ha */
/* 80A84190  38 03 8A BC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A88ABC@l */
/* 80A84194  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_80A84198:
/* 80A84198  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80A8419C  41 82 00 24 */	beq lbl_80A841C0
/* 80A841A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A841A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A841A8  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80A841AC  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80A841B0  41 82 00 10 */	beq lbl_80A841C0
/* 80A841B4  3C 60 80 A9 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A88AC8@ha */
/* 80A841B8  38 03 8A C8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A88AC8@l */
/* 80A841BC  90 1E 0D A0 */	stw r0, 0xda0(r30)
lbl_80A841C0:
/* 80A841C0  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80A841C4  38 80 00 00 */	li r4, 0
/* 80A841C8  4B 5F FF 1D */	bl __dt__12dCcD_GObjInfFv
lbl_80A841CC:
/* 80A841CC  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80A841D0  3C 80 80 A8 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A87A28@ha */
/* 80A841D4  38 84 7A 28 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A87A28@l */
/* 80A841D8  38 A0 00 08 */	li r5, 8
/* 80A841DC  38 C0 00 01 */	li r6, 1
/* 80A841E0  4B 8D DB 09 */	bl __destroy_arr
/* 80A841E4  34 1E 0B E8 */	addic. r0, r30, 0xbe8
/* 80A841E8  41 82 00 1C */	beq lbl_80A84204
/* 80A841EC  3C 60 80 3D */	lis r3, __vt__16Z2CreatureSumomo@ha /* 0x803CB830@ha */
/* 80A841F0  38 03 B8 30 */	addi r0, r3, __vt__16Z2CreatureSumomo@l /* 0x803CB830@l */
/* 80A841F4  90 1E 0B E8 */	stw r0, 0xbe8(r30)
/* 80A841F8  38 7E 0B E8 */	addi r3, r30, 0xbe8
/* 80A841FC  38 80 00 00 */	li r4, 0
/* 80A84200  4B 83 C2 21 */	bl __dt__10Z2CreatureFv
lbl_80A84204:
/* 80A84204  34 1E 0B 4C */	addic. r0, r30, 0xb4c
/* 80A84208  41 82 00 88 */	beq lbl_80A84290
/* 80A8420C  3C 60 80 A9 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A88AD4@ha */
/* 80A84210  38 03 8A D4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A88AD4@l */
/* 80A84214  90 1E 0B E4 */	stw r0, 0xbe4(r30)
/* 80A84218  38 7E 0B C8 */	addi r3, r30, 0xbc8
/* 80A8421C  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A84220  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A84224  38 A0 00 06 */	li r5, 6
/* 80A84228  38 C0 00 04 */	li r6, 4
/* 80A8422C  4B 8D DA BD */	bl __destroy_arr
/* 80A84230  38 7E 0B B0 */	addi r3, r30, 0xbb0
/* 80A84234  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A84238  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A8423C  38 A0 00 06 */	li r5, 6
/* 80A84240  38 C0 00 04 */	li r6, 4
/* 80A84244  4B 8D DA A5 */	bl __destroy_arr
/* 80A84248  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A8424C  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A84250  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A84254  38 A0 00 06 */	li r5, 6
/* 80A84258  38 C0 00 04 */	li r6, 4
/* 80A8425C  4B 8D DA 8D */	bl __destroy_arr
/* 80A84260  38 7E 0B 80 */	addi r3, r30, 0xb80
/* 80A84264  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A84268  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A8426C  38 A0 00 06 */	li r5, 6
/* 80A84270  38 C0 00 04 */	li r6, 4
/* 80A84274  4B 8D DA 75 */	bl __destroy_arr
/* 80A84278  38 7E 0B 4C */	addi r3, r30, 0xb4c
/* 80A8427C  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A87BBC@ha */
/* 80A84280  38 84 7B BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A87BBC@l */
/* 80A84284  38 A0 00 0C */	li r5, 0xc
/* 80A84288  38 C0 00 04 */	li r6, 4
/* 80A8428C  4B 8D DA 5D */	bl __destroy_arr
lbl_80A84290:
/* 80A84290  7F C3 F3 78 */	mr r3, r30
/* 80A84294  38 80 00 00 */	li r4, 0
/* 80A84298  48 00 39 65 */	bl __dt__8daNpcF_cFv
/* 80A8429C  7F E0 07 35 */	extsh. r0, r31
/* 80A842A0  40 81 00 0C */	ble lbl_80A842AC
/* 80A842A4  7F C3 F3 78 */	mr r3, r30
/* 80A842A8  4B 84 AA 95 */	bl __dl__FPv
lbl_80A842AC:
/* 80A842AC  7F C3 F3 78 */	mr r3, r30
/* 80A842B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A842B4  4B 8D DF 69 */	bl _restgpr_26
/* 80A842B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A842BC  7C 08 03 A6 */	mtlr r0
/* 80A842C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A842C4  4E 80 00 20 */	blr 
